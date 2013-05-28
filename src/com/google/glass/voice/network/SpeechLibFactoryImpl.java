package com.google.glass.voice.network;

import android.util.Log;
import android.util.Pair;
import com.google.android.searchcommon.util.ThreadChanger;
import com.google.android.speech.EngineSelector;
import com.google.android.speech.RecognitionEngineStore;
import com.google.android.speech.SpeechLibFactory;
import com.google.android.speech.callback.RecognitionEngineCallback;
import com.google.android.speech.dispatcher.RecognitionDispatcher;
import com.google.android.speech.dispatcher.RecognitionDispatcher.ResultsMerger;
import com.google.android.speech.embedded.Greco3Mode;
import com.google.android.speech.embedded.Greco3RecognitionEngine;
import com.google.android.speech.embedded.GrecoEventLogger;
import com.google.android.speech.embedded.GrecoEventLogger.Factory;
import com.google.android.speech.engine.NetworkRecognitionEngine;
import com.google.android.speech.engine.RecognitionEngine;
import com.google.android.speech.logger.SpeechLibLogger;
import com.google.android.speech.params.RecognitionEngineParams;
import com.google.android.speech.params.RecognitionEngineParams.EmbeddedParams;
import com.google.android.speech.params.RecognitionEngineParams.HybridParams;
import com.google.android.speech.params.RecognitionEngineParams.NetworkParams;
import com.google.android.speech.params.SessionParams;
import com.google.common.collect.Lists;
import com.google.speech.logs.RecognizerOuterClass.RecognizerLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;

public class SpeechLibFactoryImpl
  implements SpeechLibFactory
{
  private static final int ENGINE_EMBEDDED = 1;
  private static final int ENGINE_NETWORK = 2;

  public EngineSelector buildEngineSelector(RecognitionEngineParams paramRecognitionEngineParams, SessionParams paramSessionParams)
  {
    return new EngineSelector()
    {
      public List<Integer> getEngineList()
      {
        ArrayList localArrayList = Lists.newArrayListWithExpectedSize(2);
        localArrayList.add(Integer.valueOf(1));
        localArrayList.add(Integer.valueOf(2));
        return localArrayList;
      }

      public int getPrimaryEngine()
      {
        return 2;
      }

      public int getSecondaryEngine()
      {
        return 1;
      }
    };
  }

  public RecognitionEngineStore buildRecognitionEngineStore(final RecognitionEngineParams paramRecognitionEngineParams)
  {
    return new RecognitionEngineStore()
    {
      private final String TAG = RecognitionEngineStore.class.getSimpleName();
      private RecognitionEngine embeddedEngine = createEmbeddedEngine();
      private RecognitionEngine networkEngine = createNetworkEngine();

      private RecognitionEngine createEmbeddedEngine()
      {
        RecognitionEngineParams.EmbeddedParams localEmbeddedParams = paramRecognitionEngineParams.getEmbeddedParams();
        return new Greco3RecognitionEngine(localEmbeddedParams.getGreco3EngineManager(), localEmbeddedParams.getSpeechLevelSource(), localEmbeddedParams.getSamplingRate(), localEmbeddedParams.getBytesPerSample(), localEmbeddedParams.getSpeechSettings(), localEmbeddedParams.getCallbackFactory(), localEmbeddedParams.getModeSelector(), new GrecoEventLogger.Factory()
        {
          public GrecoEventLogger getEventLoggerForMode(Greco3Mode paramAnonymous2Greco3Mode)
          {
            return new GrecoEventLogger()
            {
              public void recognitionCompleted(RecognizerOuterClass.RecognizerLog paramAnonymous3RecognizerLog)
              {
              }

              public void recognitionStarted()
              {
              }
            };
          }
        });
      }

      private RecognitionEngine createNetworkEngine()
      {
        RecognitionEngineParams.NetworkParams localNetworkParams = paramRecognitionEngineParams.getNetworkParams();
        SpeechLibLogger localSpeechLibLogger = SpeechLibFactoryImpl.this.buildSpeechLibLogger();
        VoiceSearchRequestProducerFactory localVoiceSearchRequestProducerFactory = new VoiceSearchRequestProducerFactory(localNetworkParams.getNetworkExecutorService(), localNetworkParams.getNetworkRequestProducerParams(), localSpeechLibLogger);
        return new NetworkRecognitionEngine(localNetworkParams.getPrimaryConnectionFactory(), localNetworkParams.getFallbackConnectionFactory(), localNetworkParams.getRetryPolicy(), localNetworkParams.getNetworkExecutorService(), localVoiceSearchRequestProducerFactory, localSpeechLibLogger);
      }

      public List<Pair<Integer, RecognitionEngine>> getEngines(List<Integer> paramAnonymousList)
      {
        ArrayList localArrayList = Lists.newArrayListWithExpectedSize(paramAnonymousList.size());
        Iterator localIterator = paramAnonymousList.iterator();
        while (localIterator.hasNext())
          switch (((Integer)localIterator.next()).intValue())
          {
          default:
            Log.w(this.TAG, "Unknown engine index");
            break;
          case 1:
            Log.d(this.TAG, "Using embedded");
            localArrayList.add(Pair.create(Integer.valueOf(1), ThreadChanger.createNonBlockingThreadChangeProxy(paramRecognitionEngineParams.getHybridParams().getLocalExecutorService(), RecognitionEngine.class, this.embeddedEngine)));
            break;
          case 2:
            Log.d(this.TAG, "Using network");
            localArrayList.add(Pair.create(Integer.valueOf(2), ThreadChanger.createNonBlockingThreadChangeProxy(paramRecognitionEngineParams.getHybridParams().getNetworkExecutorService(), RecognitionEngine.class, this.networkEngine)));
          }
        return localArrayList;
      }
    };
  }

  public RecognitionDispatcher.ResultsMerger buildResultsMerger(SessionParams paramSessionParams, RecognitionDispatcher paramRecognitionDispatcher, EngineSelector paramEngineSelector, RecognitionEngineCallback paramRecognitionEngineCallback, ExecutorService paramExecutorService, ScheduledExecutorService paramScheduledExecutorService)
  {
    return new ResultsMergerImpl(paramRecognitionDispatcher, paramRecognitionEngineCallback);
  }

  public SpeechLibLogger buildSpeechLibLogger()
  {
    return new SpeechLibLogger()
    {
      public void logAudioPathEstablished(int paramAnonymousInt)
      {
      }

      public void logEndOfSpeech()
      {
      }

      public void logNoSpeechDetected()
      {
      }

      public void logS3ConnectionDone()
      {
      }

      public void logS3ConnectionError()
      {
      }

      public void logS3ConnectionOpen()
      {
      }

      public void logS3ConnectionOpenLatency()
      {
      }

      public void logS3MajelResultReceived()
      {
      }

      public void logS3RecognitionCompleted()
      {
      }

      public void logS3SendEndOfData()
      {
      }

      public void logS3SoundSearchResultReceived()
      {
      }

      public void logS3TtsReceived()
      {
      }

      public void recordSpeechEvent(int paramAnonymousInt)
      {
      }

      public void recordSpeechEvent(int paramAnonymousInt, Object paramAnonymousObject)
      {
      }
    };
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.network.SpeechLibFactoryImpl
 * JD-Core Version:    0.6.2
 */