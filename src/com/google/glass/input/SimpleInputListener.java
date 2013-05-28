package com.google.glass.input;

import com.google.glass.voice.VoiceCommand;

public class SimpleInputListener
  implements InputListener
{
  public boolean onAudioData(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return false;
  }

  public boolean onCameraButtonPressed()
  {
    return false;
  }

  public boolean onConfirm()
  {
    return false;
  }

  public boolean onDismiss(InputListener.DismissAction paramDismissAction)
  {
    return false;
  }

  public boolean onDoubleTap()
  {
    return false;
  }

  public boolean onFingerCountChanged(int paramInt, boolean paramBoolean)
  {
    return false;
  }

  public boolean onPrepareSwipe(int paramInt1, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt2, int paramInt3)
  {
    return false;
  }

  public boolean onResampledAudioData(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return false;
  }

  public boolean onSwipe(int paramInt, SwipeDirection paramSwipeDirection)
  {
    return false;
  }

  public boolean onSwipeCanceled(int paramInt)
  {
    return false;
  }

  public boolean onVerticalHeadScroll(float paramFloat1, float paramFloat2)
  {
    return false;
  }

  public boolean onVoiceAmplitudeChanged(double paramDouble)
  {
    return false;
  }

  public boolean onVoiceCommand(VoiceCommand paramVoiceCommand)
  {
    return false;
  }

  public void onVoiceServiceConnected()
  {
  }

  public void onVoiceServiceDisconnected()
  {
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.input.SimpleInputListener
 * JD-Core Version:    0.6.2
 */