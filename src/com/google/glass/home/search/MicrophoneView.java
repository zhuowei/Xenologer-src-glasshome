package com.google.glass.home.search;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.google.glass.home.R.drawable;
import com.google.glass.home.R.id;
import com.google.glass.voice.network.VoiceSearchUi.SpeechLevelSource;

public class MicrophoneView extends RelativeLayout
{
  private ImageView microphone;
  private BitmapSoundLevelsView soundLevels;
  private State state;

  public MicrophoneView(Context paramContext)
  {
    super(paramContext);
  }

  public MicrophoneView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public MicrophoneView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  private void refreshUi()
  {
    switch (1.$SwitchMap$com$google$glass$home$search$MicrophoneView$State[this.state.ordinal()])
    {
    default:
      return;
    case 1:
      this.microphone.setImageResource(R.drawable.ic_microphone_medium);
      this.soundLevels.setEnabled(false);
      this.soundLevels.setVisibility(8);
      return;
    case 2:
      this.microphone.setImageResource(R.drawable.ic_microphone_medium);
      this.soundLevels.setEnabled(true);
      this.soundLevels.setVisibility(0);
      return;
    case 3:
      this.microphone.setImageResource(R.drawable.ic_microphone_medium);
      this.soundLevels.setEnabled(true);
      this.soundLevels.setVisibility(0);
      return;
    case 4:
      this.microphone.setImageResource(R.drawable.ic_microphone_medium);
      this.soundLevels.setEnabled(false);
      this.soundLevels.setVisibility(8);
      return;
    case 5:
    }
    this.microphone.setImageResource(R.drawable.ic_microphone_medium);
    this.soundLevels.setEnabled(false);
    this.soundLevels.setVisibility(0);
  }

  private void updateState(State paramState)
  {
    this.state = paramState;
    refreshUi();
  }

  public void onFinishInflate()
  {
    this.soundLevels = ((BitmapSoundLevelsView)findViewById(R.id.sound_levels));
    this.microphone = ((ImageView)findViewById(R.id.microphone));
  }

  public void setSpeechLevelSource(VoiceSearchUi.SpeechLevelSource paramSpeechLevelSource)
  {
    this.soundLevels.setLevelSource(paramSpeechLevelSource);
  }

  public void showListening()
  {
    updateState(State.LISTENING);
  }

  public void showNotListening()
  {
    updateState(State.NOT_LISTENING);
  }

  public void showRecognizing()
  {
    updateState(State.RECOGNIZING);
  }

  public void showRecording()
  {
    updateState(State.RECORDING);
  }

  private static enum State
  {
    static
    {
      MIC_INITIALIZING = new State("MIC_INITIALIZING", 1);
      LISTENING = new State("LISTENING", 2);
      RECORDING = new State("RECORDING", 3);
      RECOGNIZING = new State("RECOGNIZING", 4);
      State[] arrayOfState = new State[5];
      arrayOfState[0] = NOT_LISTENING;
      arrayOfState[1] = MIC_INITIALIZING;
      arrayOfState[2] = LISTENING;
      arrayOfState[3] = RECORDING;
      arrayOfState[4] = RECOGNIZING;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.search.MicrophoneView
 * JD-Core Version:    0.6.2
 */