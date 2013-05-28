package com.google.glass.input;

import com.google.glass.voice.VoiceCommand;

public abstract interface InputListener
{
  public abstract boolean onAudioData(byte[] paramArrayOfByte, int paramInt1, int paramInt2);

  public abstract boolean onCameraButtonPressed();

  public abstract boolean onConfirm();

  public abstract boolean onDismiss(DismissAction paramDismissAction);

  public abstract boolean onDoubleTap();

  public abstract boolean onFingerCountChanged(int paramInt, boolean paramBoolean);

  public abstract boolean onPrepareSwipe(int paramInt1, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt2, int paramInt3);

  public abstract boolean onResampledAudioData(byte[] paramArrayOfByte, int paramInt1, int paramInt2);

  public abstract boolean onSwipe(int paramInt, SwipeDirection paramSwipeDirection);

  public abstract boolean onSwipeCanceled(int paramInt);

  public abstract boolean onVerticalHeadScroll(float paramFloat1, float paramFloat2);

  public abstract boolean onVoiceAmplitudeChanged(double paramDouble);

  public abstract boolean onVoiceCommand(VoiceCommand paramVoiceCommand);

  public abstract void onVoiceServiceConnected();

  public abstract void onVoiceServiceDisconnected();

  public static enum DismissAction
  {
    static
    {
      NUDGE = new DismissAction("NUDGE", 1);
      OPTION_ITEM = new DismissAction("OPTION_ITEM", 2);
      DismissAction[] arrayOfDismissAction = new DismissAction[3];
      arrayOfDismissAction[0] = SWIPE_DOWN;
      arrayOfDismissAction[1] = NUDGE;
      arrayOfDismissAction[2] = OPTION_ITEM;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.input.InputListener
 * JD-Core Version:    0.6.2
 */