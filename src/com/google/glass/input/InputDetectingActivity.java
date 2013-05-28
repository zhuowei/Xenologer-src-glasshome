package com.google.glass.input;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import com.google.glass.net.NetworkUtil;
import com.google.glass.util.SafeBroadcastReceiver;
import com.google.glass.voice.MockMicrophoneInputStream;
import com.google.glass.voice.VoiceCommand;
import com.google.glass.voice.VoiceConfig;
import com.google.glass.voice.network.VoiceSearchUi;

public abstract class InputDetectingActivity extends Activity
  implements InputListener
{
  private static final int LONG_PRESS_INTERCEPTOR_PRIORITY = 1;
  private InputDetector inputDetector;
  private KeyDetector keyDetector;
  private final SafeBroadcastReceiver longPressInterceptor = new SafeBroadcastReceiver()
  {
    protected String getTag()
    {
      return InputDetectingActivity.this.getTag() + "/longPressInterceptor";
    }

    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      if (("com.google.glass.action.LONG_TAP".equals(paramAnonymousIntent.getAction())) && (!InputDetectingActivity.this.shouldAllowLongPress()))
      {
        setResultCode(-1);
        abortBroadcast();
      }
    }
  };
  private boolean shouldKeepVoiceOn;
  private TouchDetector touchDetector;

  private String identityHashCode()
  {
    return Integer.toHexString(System.identityHashCode(this));
  }

  private void setLongPress()
  {
    IntentFilter localIntentFilter = new IntentFilter("com.google.glass.action.LONG_TAP");
    localIntentFilter.setPriority(1);
    this.longPressInterceptor.register(this, localIntentFilter);
  }

  private void unsetLongPress()
  {
    this.longPressInterceptor.unregister(this);
  }

  public void attachVoiceSearchUi(VoiceSearchUi paramVoiceSearchUi)
  {
    this.inputDetector.attachVoiceSearchUi(paramVoiceSearchUi);
  }

  public void bindVoiceService()
  {
    if (shouldAllowVoiceInput())
      this.inputDetector.bindVoiceService();
  }

  public void detachVoiceSearchUi()
  {
    this.inputDetector.detachVoiceSearchUi();
  }

  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    return (onGenericMotionEvent(paramMotionEvent)) || (super.dispatchTouchEvent(paramMotionEvent));
  }

  public void endpointNetworkRecognizer()
  {
    this.inputDetector.endpointNetworkRecognizer();
  }

  public VoiceConfig getInitialVoiceConfig()
  {
    return VoiceConfig.OFF;
  }

  public MockMicrophoneInputStream getMockMicrophone()
  {
    return this.inputDetector.getMockMicrophone();
  }

  protected String getTag()
  {
    return getClass().getSimpleName();
  }

  public VoiceConfig getVoiceConfig()
  {
    return this.inputDetector.getVoiceConfig();
  }

  public boolean onAudioData(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return false;
  }

  public void onBackPressed()
  {
    onDismiss(InputListener.DismissAction.SWIPE_DOWN);
  }

  public boolean onCameraButtonPressed()
  {
    return false;
  }

  public boolean onConfirm()
  {
    return false;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Log.v(getTag(), "onCreate(" + paramBundle + "): " + identityHashCode());
    this.inputDetector = new InputDetector(this, this);
    this.touchDetector = new TouchDetector(this, this);
    this.keyDetector = new KeyDetector(this, this);
  }

  protected void onDestroy()
  {
    super.onDestroy();
    Log.v(getTag(), "onDestroy: " + identityHashCode());
  }

  protected void onDisallowedInput()
  {
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

  public boolean onGenericMotionEvent(MotionEvent paramMotionEvent)
  {
    if (this.touchDetector != null)
      this.touchDetector.onTouchEvent(paramMotionEvent);
    return true;
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 27) && (paramKeyEvent.getRepeatCount() == 0))
      if (shouldAllowCameraButton())
        if (!onCameraButtonPressed())
          break label35;
    label35: 
    while ((this.keyDetector.onKeyDown(paramInt, paramKeyEvent)) || (super.onKeyDown(paramInt, paramKeyEvent)))
    {
      return true;
      onDisallowedInput();
      return true;
    }
    return false;
  }

  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    return (this.keyDetector.onKeyUp(paramInt, paramKeyEvent)) || (super.onKeyUp(paramInt, paramKeyEvent));
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    Log.v(getTag(), "onNewIntent(" + paramIntent + "): " + identityHashCode());
  }

  protected void onPause()
  {
    super.onPause();
    Log.v(getTag(), "onPause: " + identityHashCode());
    if (!this.shouldKeepVoiceOn)
      setVoiceConfig(VoiceConfig.OFF);
    unbindVoiceService();
    unsetLongPress();
  }

  public boolean onPrepareSwipe(int paramInt1, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt2, int paramInt3)
  {
    return false;
  }

  public boolean onResampledAudioData(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return false;
  }

  protected void onResume()
  {
    super.onResume();
    Log.v(getTag(), "onResume: " + identityHashCode());
    this.shouldKeepVoiceOn = false;
    bindVoiceService();
    setLongPress();
  }

  protected void onStart()
  {
    super.onStart();
    Log.v(getTag(), "onStart: " + identityHashCode());
  }

  protected void onStop()
  {
    super.onStop();
    Log.v(getTag(), "onStop: " + identityHashCode());
  }

  public boolean onSwipe(int paramInt, SwipeDirection paramSwipeDirection)
  {
    return false;
  }

  public boolean onSwipeCanceled(int paramInt)
  {
    return false;
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    return onGenericMotionEvent(paramMotionEvent);
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
    Log.d(getTag(), "Voice Service Connected");
    NetworkUtil.checkNetwork();
    updateVoiceConfigs();
    setVoiceConfig(getInitialVoiceConfig());
  }

  public void onVoiceServiceDisconnected()
  {
  }

  public void preloadVoiceConfig(VoiceConfig paramVoiceConfig)
  {
    this.shouldKeepVoiceOn = true;
    setVoiceConfig(paramVoiceConfig);
  }

  public void refeedLastVoiceCommand()
  {
    this.inputDetector.refeedLastVoiceCommand();
  }

  public void setVoiceConfig(VoiceConfig paramVoiceConfig)
  {
    this.inputDetector.setVoiceConfig(paramVoiceConfig);
  }

  protected boolean shouldAllowCameraButton()
  {
    return true;
  }

  protected boolean shouldAllowLongPress()
  {
    return true;
  }

  protected boolean shouldAllowVoiceInput()
  {
    return true;
  }

  protected void startOrientationSensors()
  {
    this.inputDetector.startOrientationSensors();
  }

  protected void stopOrientationSensors()
  {
    this.inputDetector.stopOrientationSensors();
  }

  public void unbindVoiceService()
  {
    if (shouldAllowVoiceInput())
      this.inputDetector.unbindVoiceService();
  }

  public void updateVoiceConfigs()
  {
    this.inputDetector.updateVoiceConfigs();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.input.InputDetectingActivity
 * JD-Core Version:    0.6.2
 */