package com.google.glass.input;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import com.google.glass.util.Assert;
import com.google.glass.util.LogHelper;
import com.google.glass.util.PowerHelper;
import com.google.glass.voice.MockMicrophoneInputStream;
import com.google.glass.voice.VoiceCommand;
import com.google.glass.voice.VoiceConfig;
import com.google.glass.voice.VoiceService;
import com.google.glass.voice.VoiceService.VoiceServiceBinder;
import com.google.glass.voice.VoiceServiceListener;
import com.google.glass.voice.network.VoiceSearchUi;

public class InputDetector
{
  private static final int MAX_PITCH_ACCUMULATIONS = 20;
  private static final int MSG_AUDIO_DATA = 3;
  private static final int MSG_RESAMPLED_AUDIO_DATA = 4;
  protected static final int MSG_VOICE_AMPLITUDE = 5;
  private static final int MSG_VOICE_COMMAND = 2;
  private static final int MSG_VOICE_SERVICE_CONNECTED = 0;
  private static final int MSG_VOICE_SERVICE_DISCONNECTED = 1;
  private static final float PITCH_DEGREES_TO_SCROLL_PIXELS = 45.0F;
  private static final float SCROLL_VELOCITY_DAMPENING = 0.9F;
  private static final String TAG = InputDetector.class.getSimpleName();
  private float accumulatedPitchDelta;
  private final Context context;
  private boolean hasPitch;
  private float headScrollVelocityY;
  private final InputListener inputListener;
  private long lastHeadScrollTimeMillis;
  private float lastPitch;
  private int numPitchAccumulations;
  private final OrientationHelper orientationHelper;
  private final OrientationHelper.OrientationListener orientationListener = new OrientationHelper.OrientationListener()
  {
    public void onOrientationChanged(float paramAnonymousFloat1, float paramAnonymousFloat2, float paramAnonymousFloat3, long paramAnonymousLong)
    {
      if (InputDetector.this.hasPitch)
      {
        float f = paramAnonymousFloat2 - InputDetector.this.lastPitch;
        InputDetector.this.handleHeadScroll(45.0F * f);
      }
      while (true)
      {
        InputDetector.access$1102(InputDetector.this, paramAnonymousFloat2);
        return;
        InputDetector.access$1002(InputDetector.this, true);
      }
    }
  };
  private final PowerHelper powerHelper;
  private double voiceAmplitude;
  private final Handler voiceHandler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      switch (paramAnonymousMessage.what)
      {
      default:
        return;
      case 0:
        InputDetector.this.dispatchVoiceServiceConnected();
        return;
      case 1:
        InputDetector.this.dispatchVoiceServiceDisconnected();
        return;
      case 2:
        InputDetector.this.dispatchVoiceCommand((VoiceCommand)paramAnonymousMessage.obj);
        return;
      case 3:
        InputDetector.this.dispatchAudioData((byte[])paramAnonymousMessage.obj, paramAnonymousMessage.arg1, paramAnonymousMessage.arg2);
        return;
      case 4:
        InputDetector.this.dispatchResampledAudioData((byte[])paramAnonymousMessage.obj, paramAnonymousMessage.arg1, paramAnonymousMessage.arg2);
        return;
      case 5:
      }
      InputDetector.this.dispatchVoiceAmplitude();
    }
  };
  private VoiceService.VoiceServiceBinder voiceServiceBinder;
  private final ServiceConnection voiceServiceConnection = new ServiceConnection()
  {
    public void onServiceConnected(ComponentName paramAnonymousComponentName, IBinder paramAnonymousIBinder)
    {
      Log.d(InputDetector.TAG, "Voice service connected");
      InputDetector.this.releaseVoiceServiceBinder();
      InputDetector.access$202(InputDetector.this, (VoiceService.VoiceServiceBinder)paramAnonymousIBinder);
      InputDetector.this.voiceServiceBinder.setListener(InputDetector.this.voiceServiceListener);
      InputDetector.this.voiceServiceListener.onVoiceServiceConnected();
    }

    public void onServiceDisconnected(ComponentName paramAnonymousComponentName)
    {
      Log.d(InputDetector.TAG, "Voice service disconnected");
      InputDetector.this.releaseVoiceServiceBinder();
      InputDetector.this.voiceServiceListener.onVoiceServiceDisconnected();
    }
  };
  private final VoiceServiceListener voiceServiceListener = new VoiceServiceListener()
  {
    public void onAudioData(byte[] paramAnonymousArrayOfByte, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      Message.obtain(InputDetector.this.voiceHandler, 3, paramAnonymousInt1, paramAnonymousInt2, paramAnonymousArrayOfByte).sendToTarget();
    }

    public void onResampledAudioData(byte[] paramAnonymousArrayOfByte, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      Message.obtain(InputDetector.this.voiceHandler, 4, paramAnonymousInt1, paramAnonymousInt2, paramAnonymousArrayOfByte).sendToTarget();
    }

    public void onVoiceAmplitudeChanged(double paramAnonymousDouble)
    {
      InputDetector.access$902(InputDetector.this, paramAnonymousDouble);
      Message.obtain(InputDetector.this.voiceHandler, 5).sendToTarget();
    }

    public void onVoiceCommand(VoiceCommand paramAnonymousVoiceCommand)
    {
      Message.obtain(InputDetector.this.voiceHandler, 2, paramAnonymousVoiceCommand).sendToTarget();
    }

    public void onVoiceServiceConnected()
    {
      Message.obtain(InputDetector.this.voiceHandler, 0).sendToTarget();
    }

    public void onVoiceServiceDisconnected()
    {
      Message.obtain(InputDetector.this.voiceHandler, 1).sendToTarget();
    }
  };

  public InputDetector(Context paramContext, InputListener paramInputListener)
  {
    this.context = paramContext;
    if (paramInputListener == null)
      throw new NullPointerException("InputDetector constructed with null InputListener");
    this.inputListener = paramInputListener;
    this.powerHelper = new PowerHelper(paramContext);
    this.orientationHelper = new OrientationHelper(paramContext, this.orientationListener);
  }

  private void dispatchVerticalHeadScroll(float paramFloat1, float paramFloat2)
  {
    this.inputListener.onVerticalHeadScroll(paramFloat1, paramFloat2);
  }

  private void dispatchVoiceAmplitude()
  {
    this.inputListener.onVoiceAmplitudeChanged(this.voiceAmplitude);
  }

  private boolean dispatchVoiceCommand(VoiceCommand paramVoiceCommand)
  {
    Log.d(TAG, "Voice command triggered");
    LogHelper.logPii(3, TAG, "Voice command: " + paramVoiceCommand);
    if (this.inputListener.onVoiceCommand(paramVoiceCommand))
    {
      this.powerHelper.userActivity();
      return true;
    }
    return false;
  }

  private void dispatchVoiceServiceConnected()
  {
    this.inputListener.onVoiceServiceConnected();
  }

  private void dispatchVoiceServiceDisconnected()
  {
    this.inputListener.onVoiceServiceDisconnected();
  }

  private void handleHeadScroll(float paramFloat)
  {
    long l = SystemClock.uptimeMillis();
    if ((this.lastHeadScrollTimeMillis != 0L) && (l != this.lastHeadScrollTimeMillis))
    {
      this.headScrollVelocityY = (0.1F * (paramFloat / (float)(l - this.lastHeadScrollTimeMillis)) + 0.9F * this.headScrollVelocityY);
      this.accumulatedPitchDelta = (paramFloat + this.accumulatedPitchDelta);
      int i = 1 + this.numPitchAccumulations;
      this.numPitchAccumulations = i;
      if (i >= 20)
      {
        dispatchVerticalHeadScroll(this.accumulatedPitchDelta, this.headScrollVelocityY);
        this.accumulatedPitchDelta = 0.0F;
      }
    }
    this.lastHeadScrollTimeMillis = l;
  }

  private void releaseVoiceServiceBinder()
  {
    if (this.voiceServiceBinder != null)
    {
      this.voiceServiceBinder.setListener(null);
      this.voiceServiceBinder = null;
    }
  }

  public void attachVoiceSearchUi(VoiceSearchUi paramVoiceSearchUi)
  {
    if (this.voiceServiceBinder != null)
    {
      this.voiceServiceBinder.attachVoiceSearchUi(paramVoiceSearchUi);
      return;
    }
    Log.w(TAG, "Trying to attachVoiceSearchUi before connection to VoiceService established");
  }

  public void bindVoiceService()
  {
    Log.d(TAG, "Binding voice service");
    Intent localIntent = new Intent(this.context, VoiceService.class);
    this.context.startService(localIntent);
    this.context.bindService(localIntent, this.voiceServiceConnection, 1);
  }

  public void detachVoiceSearchUi()
  {
    if (this.voiceServiceBinder != null)
    {
      this.voiceServiceBinder.detachVoiceSearchUi();
      return;
    }
    Log.w(TAG, "Trying to detachVoiceSearchUi before connection to VoiceService established");
  }

  public void dispatchAudioData(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.inputListener.onAudioData(paramArrayOfByte, paramInt1, paramInt2);
  }

  public void dispatchResampledAudioData(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.inputListener.onResampledAudioData(paramArrayOfByte, paramInt1, paramInt2);
  }

  public void endpointNetworkRecognizer()
  {
    if (this.voiceServiceBinder != null)
    {
      this.voiceServiceBinder.endpointNetworkRecognizer();
      return;
    }
    Log.w(TAG, "Trying to endpoint before connection to VoiceService established");
  }

  public MockMicrophoneInputStream getMockMicrophone()
  {
    Assert.assertIsTest();
    return this.voiceServiceBinder.getMockMicrophone();
  }

  public VoiceConfig getVoiceConfig()
  {
    if (this.voiceServiceBinder != null)
      return this.voiceServiceBinder.getConfig();
    Log.w(TAG, "Trying to get VoiceConfig before connection to VoiceService established");
    return null;
  }

  public void refeedLastVoiceCommand()
  {
    if (this.voiceServiceBinder != null)
    {
      this.voiceServiceBinder.refeedLastCommand();
      return;
    }
    Log.w(TAG, "Trying to refeed last command before connection to VoiceService established");
  }

  public void setVoiceConfig(VoiceConfig paramVoiceConfig)
  {
    if (this.voiceServiceBinder != null)
    {
      this.voiceServiceBinder.setConfig(paramVoiceConfig, false);
      return;
    }
    Log.w(TAG, "Trying to change VoiceConfig before connection to VoiceService established");
  }

  public void startOrientationSensors()
  {
    this.orientationHelper.start();
  }

  public void stopOrientationSensors()
  {
    this.orientationHelper.stop();
  }

  public void unbindVoiceService()
  {
    if (this.voiceServiceBinder != null)
      this.context.unbindService(this.voiceServiceConnection);
    releaseVoiceServiceBinder();
  }

  public void updateVoiceConfigs()
  {
    if (this.voiceServiceBinder != null)
    {
      this.voiceServiceBinder.updateConfigs();
      return;
    }
    Log.w(TAG, "Trying to update VoiceConfigs before connection to VoiceService established");
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.input.InputDetector
 * JD-Core Version:    0.6.2
 */