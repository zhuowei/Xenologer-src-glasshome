package com.google.glass.voice.network;

import android.util.Log;
import com.google.android.searchcommon.util.StateMachine;
import com.google.android.searchcommon.util.StateMachine.Builder;
import com.google.android.speech.audio.EndpointerListener;
import com.google.common.base.Preconditions;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;
import com.google.glass.voice.SensoryResult;
import com.google.glass.voice.VoiceCommand;
import com.google.glass.voice.VoiceCommandRecognitionResult;
import com.google.glass.voice.VoiceService;
import com.google.speech.recognizer.api.RecognizerProtos.EndpointerEvent;
import com.google.wireless.voicesearch.proto.GstaticConfiguration.EndpointerParams;

public class EndpointerEventProcessor
{
  private static final boolean DEBUG = false;
  private static final long POST_GET_DIRECTIONS_END_SPEECH_FUZZ_FACTOR_MS = 1300L;
  private static final long POST_GET_DIRECTIONS_START_SPEECH_WAIT_MS = 5000L;
  private static final String TAG = EndpointerEventProcessor.class.getSimpleName();
  private long currentProgressMs;
  private long endOfSpeechTriggerMs;
  private final EndpointerListener endpointerListener;
  private GstaticConfiguration.EndpointerParams endpointerParams;
  private final StateMachine<State> stateMachine = StateMachine.newBuilder(TAG, State.NO_SPEECH_DETECTED).addTransition(State.NO_SPEECH_DETECTED, State.SPEECH_DETECTED).addTransition(State.NO_SPEECH_DETECTED, State.END_OF_SPEECH).addTransition(State.SPEECH_DETECTED, State.DELAY_END_OF_SPEECH).addTransition(State.SPEECH_DETECTED, State.END_OF_SPEECH).addTransition(State.DELAY_END_OF_SPEECH, State.SPEECH_DETECTED).addTransition(State.DELAY_END_OF_SPEECH, State.END_OF_SPEECH).build();
  private VoiceService voiceService;

  EndpointerEventProcessor(EndpointerListener paramEndpointerListener, GstaticConfiguration.EndpointerParams paramEndpointerParams, VoiceService paramVoiceService)
  {
    this.endpointerListener = ((EndpointerListener)Preconditions.checkNotNull(paramEndpointerListener));
    this.endpointerParams = paramEndpointerParams;
    this.voiceService = paramVoiceService;
  }

  private boolean isDirections(VoiceCommandRecognitionResult paramVoiceCommandRecognitionResult)
  {
    return (paramVoiceCommandRecognitionResult != null) && (paramVoiceCommandRecognitionResult.getRecognizedCommand() == VoiceCommand.NAVIGATION);
  }

  private boolean isWithinEndSpeechFuzzFactor(long paramLong, VoiceCommandRecognitionResult paramVoiceCommandRecognitionResult)
  {
    try
    {
      Log.d(TAG, "Testing end of speech fuzz factor. End of speech event time is " + paramLong / 1000L + ", phrase duration was " + paramVoiceCommandRecognitionResult.getSensoryResult().getPhraseDurationMillis() + ", and fuzz factor is " + 1300L);
      long l1 = paramLong / 1000L;
      long l2 = paramVoiceCommandRecognitionResult.getSensoryResult().getPhraseDurationMillis();
      if (l1 < l2 + 1300L)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
    }
  }

  private boolean processEndOfAudioAsEndOfSpeech()
  {
    try
    {
      if (this.stateMachine.isIn(State.SPEECH_DETECTED))
      {
        this.stateMachine.moveTo(State.END_OF_SPEECH);
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
    }
  }

  private boolean processEndOfAudioAsNoSpeechDetected()
  {
    try
    {
      if (this.stateMachine.isIn(State.NO_SPEECH_DETECTED))
      {
        this.stateMachine.moveTo(State.END_OF_SPEECH);
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
    }
  }

  private boolean processEndOfSpeech(long paramLong)
  {
    boolean bool = false;
    while (true)
    {
      try
      {
        VoiceCommandRecognitionResult localVoiceCommandRecognitionResult = this.voiceService.getLastSensoryRecognitionResult();
        if ((Labs.isEnabled(Labs.Feature.NAV_CONTAMINATE_FIX)) && (isDirections(localVoiceCommandRecognitionResult)) && (isWithinEndSpeechFuzzFactor(paramLong, localVoiceCommandRecognitionResult)))
        {
          Log.d(TAG, "Got end of speech for directions within fuzz factor, delaying end of speech");
          this.stateMachine.moveTo(State.DELAY_END_OF_SPEECH);
          setEndOfSpeechTriggerPoint(5000L + paramLong / 1000L);
          return bool;
        }
        if (this.endpointerParams.getExtraSilenceAfterEndOfSpeechMsec() > 0)
        {
          this.stateMachine.moveTo(State.DELAY_END_OF_SPEECH);
          setEndOfSpeechTriggerPoint(paramLong / 1000L + this.endpointerParams.getExtraSilenceAfterEndOfSpeechMsec());
          bool = false;
          continue;
        }
      }
      finally
      {
      }
      this.stateMachine.moveTo(State.END_OF_SPEECH);
      bool = true;
    }
  }

  private boolean processStartOfSpeech()
  {
    try
    {
      boolean bool2;
      if (this.stateMachine.isIn(State.NO_SPEECH_DETECTED))
      {
        this.stateMachine.moveTo(State.SPEECH_DETECTED);
        bool2 = true;
      }
      while (true)
      {
        return bool2;
        boolean bool1 = this.stateMachine.isIn(State.DELAY_END_OF_SPEECH);
        bool2 = false;
        if (bool1)
        {
          this.stateMachine.moveTo(State.SPEECH_DETECTED);
          bool2 = false;
        }
      }
    }
    finally
    {
    }
  }

  private void setEndOfSpeechTriggerPoint(long paramLong)
  {
    try
    {
      this.endOfSpeechTriggerMs = paramLong;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private boolean shouldTriggerEndOfSpeech()
  {
    try
    {
      if ((this.currentProgressMs > this.endOfSpeechTriggerMs) && (this.stateMachine.isIn(State.DELAY_END_OF_SPEECH)))
      {
        this.stateMachine.moveTo(State.END_OF_SPEECH);
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
    }
  }

  private boolean shouldTriggerNoSpeechDetected()
  {
    try
    {
      if ((this.stateMachine.isIn(State.NO_SPEECH_DETECTED)) && (this.currentProgressMs > this.endpointerParams.getNoSpeechDetectedTimeoutMsec()))
      {
        this.stateMachine.moveTo(State.END_OF_SPEECH);
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
    }
  }

  void process(RecognizerProtos.EndpointerEvent paramEndpointerEvent)
  {
    if ((paramEndpointerEvent == null) || (!paramEndpointerEvent.hasEventType()));
    label20: 
    do
    {
      int i;
      do
      {
        do
        {
          do
          {
            Log.w(TAG, "Received EP event without type.");
            break label20;
            break label20;
            do
              return;
            while (this.stateMachine.isIn(State.END_OF_SPEECH));
            i = paramEndpointerEvent.getEventType();
            if (i != 0)
              break;
          }
          while (!processStartOfSpeech());
          this.endpointerListener.onStartOfSpeech(paramEndpointerEvent.getTimeUsec());
          return;
          if (i != 1)
            break;
        }
        while (!processEndOfSpeech(paramEndpointerEvent.getTimeUsec()));
        this.endpointerListener.onEndOfSpeech();
        return;
      }
      while (i != 2);
      if (processEndOfAudioAsEndOfSpeech())
        this.endpointerListener.onEndOfSpeech();
    }
    while (!processEndOfAudioAsNoSpeechDetected());
    this.endpointerListener.onNoSpeechDetected();
  }

  void updateProgress(long paramLong)
  {
    try
    {
      this.currentProgressMs = paramLong;
      if (shouldTriggerEndOfSpeech())
        this.endpointerListener.onEndOfSpeech();
      if (shouldTriggerNoSpeechDetected())
        this.endpointerListener.onNoSpeechDetected();
      return;
    }
    finally
    {
    }
  }

  private static enum State
  {
    static
    {
      DELAY_END_OF_SPEECH = new State("DELAY_END_OF_SPEECH", 2);
      END_OF_SPEECH = new State("END_OF_SPEECH", 3);
      State[] arrayOfState = new State[4];
      arrayOfState[0] = NO_SPEECH_DETECTED;
      arrayOfState[1] = SPEECH_DETECTED;
      arrayOfState[2] = DELAY_END_OF_SPEECH;
      arrayOfState[3] = END_OF_SPEECH;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.network.EndpointerEventProcessor
 * JD-Core Version:    0.6.2
 */