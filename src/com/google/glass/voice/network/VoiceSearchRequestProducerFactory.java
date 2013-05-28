package com.google.glass.voice.network;

import android.util.Log;
import com.google.android.speech.logger.SpeechLibLogger;
import com.google.android.speech.network.producers.AmrStreamProducer;
import com.google.android.speech.network.producers.Producers.CompositeProducer;
import com.google.android.speech.network.producers.RequestProducerFactory;
import com.google.android.speech.network.producers.S3RequestProducer;
import com.google.android.speech.network.producers.TimeoutEnforcer;
import com.google.android.speech.network.request.MobileUserInfoBuilderTask;
import com.google.android.speech.network.request.S3ClientInfoBuilderTask;
import com.google.android.speech.network.request.S3RecognizerInfoBuilderTask;
import com.google.android.speech.network.request.S3UserInfoBuilderTask;
import com.google.android.speech.params.AudioInputParams;
import com.google.android.speech.params.NetworkRequestProducerParams;
import com.google.android.speech.params.SessionParams;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.speech.s3.Audio.S3AudioInfo;
import com.google.speech.s3.MobileUser.MobileUserInfo;
import com.google.speech.s3.PinholeStream.PinholeParams;
import com.google.speech.s3.S3.S3ClientInfo;
import com.google.speech.s3.S3.S3UserInfo;
import com.google.speech.speech.s3.Majel.MajelClientInfo;
import com.google.speech.speech.s3.Recognizer.S3RecognizerInfo;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

public class VoiceSearchRequestProducerFactory
  implements RequestProducerFactory
{
  public static final String SERVICE_VOICE_ACTIONS = "glass-search";
  private static final String TAG = VoiceSearchRequestProducerFactory.class.getSimpleName();
  private final ExecutorService executor;
  private Future<Majel.MajelClientInfo> majelClientInfoFuture;
  private Future<MobileUser.MobileUserInfo> mobileUserInfoFuture;
  private final NetworkRequestProducerParams nrpp;
  private Future<PinholeStream.PinholeParams> pinholeParamsFuture;
  private Supplier<String> requestIdSupplier;
  private Audio.S3AudioInfo s3AudioInfo;
  private Future<S3.S3ClientInfo> s3ClientInfoFuture;
  private Recognizer.S3RecognizerInfo s3RecognizerInfo;
  private Future<S3.S3UserInfo> s3UserInfoFuture;
  private String service;
  private SessionParams sessionParams;
  private final SpeechLibLogger speechLibLogger;
  private final TimeoutEnforcer timeoutEnforcer;

  public VoiceSearchRequestProducerFactory(ExecutorService paramExecutorService, NetworkRequestProducerParams paramNetworkRequestProducerParams, SpeechLibLogger paramSpeechLibLogger)
  {
    this.executor = paramExecutorService;
    this.nrpp = paramNetworkRequestProducerParams;
    this.speechLibLogger = paramSpeechLibLogger;
    this.timeoutEnforcer = new TimeoutEnforcer(1000L);
  }

  private Future<Majel.MajelClientInfo> createMajelClientInfoFuture()
  {
    return this.executor.submit(new MajelClientInfoBuilderTask(this.nrpp.getDeviceParams()));
  }

  private Future<MobileUser.MobileUserInfo> createMobileUserInfoFuture()
  {
    return this.executor.submit(new MobileUserInfoBuilderTask(this.nrpp.getNetworkInformation()));
  }

  private Future<PinholeStream.PinholeParams> createPinholeParamsFuture()
  {
    return null;
  }

  private Audio.S3AudioInfo createS3AudioInfo()
  {
    AudioInputParams localAudioInputParams = this.sessionParams.getAudioInputParams();
    return new Audio.S3AudioInfo().setEncoding(localAudioInputParams.getEncoding()).setSampleRateHz(localAudioInputParams.getSamplingRate());
  }

  private Future<S3.S3ClientInfo> createS3ClientInfoFuture()
  {
    return this.executor.submit(new S3ClientInfoBuilderTask(this.nrpp.getSpeechSettings(), this.sessionParams.getApplicationId(), this.nrpp.getDeviceParams(), this.sessionParams.getTriggerApplication(), this.nrpp.getWindowManager()));
  }

  private Recognizer.S3RecognizerInfo createS3RecognizerInfo()
  {
    return (Recognizer.S3RecognizerInfo)new S3RecognizerInfoBuilderTask(this.sessionParams.getRecognitionContext(), this.nrpp.getSpeechSettings(), this.sessionParams.isPartialResultsEnabled(), this.sessionParams.isCombinedNbestEnabled(), this.sessionParams.isSuggestionsEnabled(), this.sessionParams.getMaxNbest()).call();
  }

  private Future<S3.S3UserInfo> createS3UserInfoFuture()
  {
    return this.executor.submit(S3UserInfoBuilderTask.getBuilder(this.nrpp.getAuthTokenHelper(), this.nrpp.getSpeechSettings(), this.nrpp.getLocationHelper(), this.sessionParams.getSpokenBcp47Locale(), this.sessionParams.getLocationOverride()));
  }

  public void init(SessionParams paramSessionParams)
  {
    this.sessionParams = paramSessionParams;
    this.service = "glass-search";
    this.requestIdSupplier = paramSessionParams.getRequestIdSupplier();
    this.pinholeParamsFuture = createPinholeParamsFuture();
    this.majelClientInfoFuture = createMajelClientInfoFuture();
    this.mobileUserInfoFuture = createMobileUserInfoFuture();
    this.s3AudioInfo = createS3AudioInfo();
    this.s3ClientInfoFuture = createS3ClientInfoFuture();
    this.s3UserInfoFuture = createS3UserInfoFuture();
    this.s3RecognizerInfo = createS3RecognizerInfo();
  }

  public S3RequestProducer newRequestProducer(InputStream paramInputStream)
  {
    Preconditions.checkNotNull(this.sessionParams);
    return new Producers.CompositeProducer(new VoiceSearchHeaderProducer(this.pinholeParamsFuture, this.majelClientInfoFuture, this.mobileUserInfoFuture, this.s3ClientInfoFuture, this.s3UserInfoFuture, this.s3AudioInfo, this.s3RecognizerInfo, this.requestIdSupplier, this.service, this.speechLibLogger), new AmrStreamProducer(paramInputStream, 384));
  }

  public void refresh()
  {
    if (this.sessionParams == null)
    {
      Log.w(TAG, "Trying to refresh before init.");
      return;
    }
    try
    {
      localS3UserInfo = (S3.S3UserInfo)this.timeoutEnforcer.waitForFuture(this.s3UserInfoFuture);
      if (localS3UserInfo == null)
      {
        this.s3UserInfoFuture = createS3UserInfoFuture();
        return;
      }
    }
    catch (IOException localIOException)
    {
      S3.S3UserInfo localS3UserInfo;
      while (true)
      {
        Log.w(TAG, "Could not get S3UserInfo for refresh.");
        localS3UserInfo = null;
      }
      this.s3UserInfoFuture = this.executor.submit(S3UserInfoBuilderTask.getAuthTokenRefreshingBuilder(this.nrpp.getAuthTokenHelper(), localS3UserInfo));
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.network.VoiceSearchRequestProducerFactory
 * JD-Core Version:    0.6.2
 */