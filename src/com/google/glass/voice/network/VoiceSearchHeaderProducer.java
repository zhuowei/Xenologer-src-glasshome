package com.google.glass.voice.network;

import com.google.android.speech.logger.SpeechLibLogger;
import com.google.android.speech.message.S3RequestUtils;
import com.google.android.speech.network.producers.Producers.SingleRequestProducer;
import com.google.android.speech.network.producers.TimeoutEnforcer;
import com.google.common.base.Supplier;
import com.google.speech.s3.Audio.S3AudioInfo;
import com.google.speech.s3.MobileUser.MobileUserInfo;
import com.google.speech.s3.PinholeStream.PinholeParams;
import com.google.speech.s3.S3.S3ClientInfo;
import com.google.speech.s3.S3.S3Request;
import com.google.speech.s3.S3.S3SessionInfo;
import com.google.speech.s3.S3.S3UserInfo;
import com.google.speech.speech.s3.Majel.MajelClientInfo;
import com.google.speech.speech.s3.Recognizer.S3RecognizerInfo;
import java.io.IOException;
import java.util.concurrent.Future;

public class VoiceSearchHeaderProducer extends Producers.SingleRequestProducer
{
  private static final String GLASS_S3_APPLICATION_ID = "glass";
  private final Future<Majel.MajelClientInfo> majelClientInfoFuture;
  private final Future<MobileUser.MobileUserInfo> mobileUserInfoFuture;
  private final Future<PinholeStream.PinholeParams> pinholeParamsFuture;
  private final Supplier<String> requestIdSupplier;
  private final Audio.S3AudioInfo s3AudioInfo;
  private final Future<S3.S3ClientInfo> s3ClientInfoFuture;
  private final Recognizer.S3RecognizerInfo s3RecognizerInfo;
  private final Future<S3.S3UserInfo> s3UserInfoFuture;
  private final String service;
  private final SpeechLibLogger speechLibLogger;
  private final TimeoutEnforcer timeoutEnforcer;

  public VoiceSearchHeaderProducer(Future<PinholeStream.PinholeParams> paramFuture, Future<Majel.MajelClientInfo> paramFuture1, Future<MobileUser.MobileUserInfo> paramFuture2, Future<S3.S3ClientInfo> paramFuture3, Future<S3.S3UserInfo> paramFuture4, Audio.S3AudioInfo paramS3AudioInfo, Recognizer.S3RecognizerInfo paramS3RecognizerInfo, Supplier<String> paramSupplier, String paramString, SpeechLibLogger paramSpeechLibLogger)
  {
    this.pinholeParamsFuture = paramFuture;
    this.majelClientInfoFuture = paramFuture1;
    this.mobileUserInfoFuture = paramFuture2;
    this.s3ClientInfoFuture = paramFuture3;
    this.s3UserInfoFuture = paramFuture4;
    this.s3AudioInfo = paramS3AudioInfo;
    this.s3RecognizerInfo = paramS3RecognizerInfo;
    this.requestIdSupplier = paramSupplier;
    this.service = paramString;
    this.speechLibLogger = paramSpeechLibLogger;
    this.timeoutEnforcer = new TimeoutEnforcer(1000L);
  }

  public S3.S3Request produceRequest()
    throws IOException
  {
    this.speechLibLogger.recordSpeechEvent(6);
    S3.S3Request localS3Request = S3RequestUtils.createBaseS3Request().setService(this.service);
    if (this.pinholeParamsFuture != null)
      localS3Request.setPinholeParamsExtension((PinholeStream.PinholeParams)this.timeoutEnforcer.waitForFuture(this.pinholeParamsFuture));
    if (this.majelClientInfoFuture != null)
      localS3Request.setMajelClientInfoExtension((Majel.MajelClientInfo)this.timeoutEnforcer.waitForFuture(this.majelClientInfoFuture));
    S3.S3ClientInfo localS3ClientInfo = (S3.S3ClientInfo)this.timeoutEnforcer.waitForFuture(this.s3ClientInfoFuture);
    localS3ClientInfo.setApplicationId("glass");
    localS3Request.setS3ClientInfoExtension(localS3ClientInfo);
    localS3Request.setS3SessionInfoExtension(new S3.S3SessionInfo().setSessionId((String)this.requestIdSupplier.get()));
    localS3Request.setS3UserInfoExtension((S3.S3UserInfo)this.timeoutEnforcer.waitForFuture(this.s3UserInfoFuture));
    localS3Request.setMobileUserInfoExtension((MobileUser.MobileUserInfo)this.timeoutEnforcer.waitForFuture(this.mobileUserInfoFuture));
    localS3Request.setS3AudioInfoExtension(this.s3AudioInfo);
    if (this.s3RecognizerInfo != null)
      localS3Request.setS3RecognizerInfoExtension(this.s3RecognizerInfo);
    this.speechLibLogger.recordSpeechEvent(7);
    return localS3Request;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.network.VoiceSearchHeaderProducer
 * JD-Core Version:    0.6.2
 */