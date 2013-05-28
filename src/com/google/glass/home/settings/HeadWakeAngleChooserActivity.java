package com.google.glass.home.settings;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.util.Log;
import com.google.glass.app.GlassActivity;
import com.google.glass.app.GlassApplication;
import com.google.glass.home.R.drawable;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.home.R.string;
import com.google.glass.input.InputListener.DismissAction;
import com.google.glass.logging.UserEventAction;
import com.google.glass.logging.UserEventHelper;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.util.HiddenApiHelper;
import com.google.glass.widget.MessageDialog;
import com.google.glass.widget.MessageDialog.Builder;
import com.google.glass.widget.MessageDialog.SimpleListener;
import com.google.glass.widget.TypophileTextView;
import java.util.Iterator;
import java.util.List;

public class HeadWakeAngleChooserActivity extends GlassActivity
  implements SensorEventListener
{
  private static final float DEFAULT_GLU_ANGLE_DEGS = 30.0F;
  private static final String GLU_ANGLE_KEY = "glu_angle_degs";
  private static final String HEAD_GESTURE_SETTINGS_KEY = "head_gesture_settings";
  private static final float HEAD_WAKE_TRIGGER_HYSTERESIS_DEGREES = 7.0F;
  private static final float MAX_PITCH_ANGLE_DEGS = 40.0F;
  private static final float MIN_PITCH_ANGLE_DEGS = 10.0F;
  private TypophileTextView angleTextView;
  private float currentPitch;
  private Sensor gravitySensor;
  private HeadWakePosableHeadViewGroup headView;
  private SensorManager sensorManager;

  private Sensor getGravitySensor()
  {
    if (this.sensorManager == null)
      return null;
    Iterator localIterator = this.sensorManager.getSensorList(9).iterator();
    while (localIterator.hasNext())
    {
      Sensor localSensor = (Sensor)localIterator.next();
      String str1 = localSensor.getName();
      String str2 = localSensor.getVendor();
      if (("Invensense".equals(str2)) && (str1.contains("MPL")))
      {
        Log.d(getTag(), "Using sensor: " + str1 + " (" + str2 + ")");
        return localSensor;
      }
    }
    return this.sensorManager.getDefaultSensor(9);
  }

  public static float getHeadWakeAngleDegs(Context paramContext)
  {
    return GlassApplication.from(paramContext).getSharedPreferences("head_gesture_settings", 0).getFloat("glu_angle_degs", 30.0F);
  }

  public static float getHeadWakeHysteresisAngleDegs(Context paramContext)
  {
    return 7.0F;
  }

  private void onGravitySensorEvent(SensorEvent paramSensorEvent)
  {
    float f1 = paramSensorEvent.values[0];
    float f2 = paramSensorEvent.values[1];
    setPitch((float)Math.toDegrees(-(float)Math.atan2(paramSensorEvent.values[2], Math.sqrt(f1 * f1 + f2 * f2))));
  }

  private void saveHeadWakeAngleDegsToSettings(float paramFloat)
  {
    SharedPreferences localSharedPreferences = GlassApplication.from(this).getSharedPreferences("head_gesture_settings", 0);
    if (localSharedPreferences != null)
    {
      Log.w(getTag(), "Writing angle key: glu_angle_degs=" + paramFloat + " to prefs: " + "head_gesture_settings");
      localSharedPreferences.edit().putFloat("glu_angle_degs", paramFloat).commit();
      return;
    }
    Log.w(getTag(), "Can't open shared prefs: head_gesture_settings");
  }

  private void setPitch(float paramFloat)
  {
    if (paramFloat > 40.0F)
      paramFloat = 40.0F;
    while (true)
    {
      this.currentPitch = paramFloat;
      this.headView.setHeadAngleDegs(paramFloat);
      int i = (int)(0.5F + paramFloat);
      String str1 = getString(R.string.head_wake_angle_text_format);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(i);
      String str2 = String.format(str1, arrayOfObject);
      this.angleTextView.setText(str2);
      return;
      if (paramFloat < 10.0F)
        paramFloat = 10.0F;
    }
  }

  private void showConfirmationMessageThenFinish()
  {
    new MessageDialog.Builder(this).setMessage(R.string.wake_angle_set_confirmation).setIcon(R.drawable.ic_done_medium).setSound(SoundManager.SoundId.SUCCESS, getSoundManager()).setListener(new MessageDialog.SimpleListener()
    {
      public void onDone()
      {
        HeadWakeAngleChooserActivity.this.finish();
      }
    }).build().show();
  }

  private void startSensors()
  {
    this.sensorManager = ((SensorManager)getSystemService("sensor"));
    this.gravitySensor = getGravitySensor();
    this.sensorManager.registerListener(this, this.gravitySensor, 2);
  }

  private void stopSensors()
  {
    this.sensorManager.unregisterListener(this);
  }

  public void onAccuracyChanged(Sensor paramSensor, int paramInt)
  {
  }

  public boolean onConfirm()
  {
    getSoundManager().playSound(SoundManager.SoundId.TAP);
    saveHeadWakeAngleDegsToSettings(this.currentPitch);
    String str = String.valueOf(this.currentPitch);
    GlassApplication.from(this).getUserEventHelper().log(UserEventAction.HEAD_GESTURES_HEAD_WAKE_ANGLE_SETTING, str);
    Log.i(getTag(), "Writing new GLU angle to hardware: " + this.currentPitch);
    HiddenApiHelper.setGlobalLookUpGestureParameters(this, this.currentPitch, 7.0F);
    if (!HiddenApiHelper.isGlobalLookUpGestureEnabled(this))
    {
      Log.i(getTag(), "Angle chooser successfully set angle, but feature is off.  Enabling!");
      HeadWakeSettingsItemView.setHeadWakeEnabledPersistent(this, true);
    }
    showConfirmationMessageThenFinish();
    return true;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.angleTextView = ((TypophileTextView)findViewById(R.id.head_wake_angle_chooser_angle_text));
    this.headView = ((HeadWakePosableHeadViewGroup)findViewById(R.id.head_wake_angle_chooser_view));
    this.headView.setHeadWakeEnabled(true);
    this.headView.setHeadAngleDegs(getHeadWakeAngleDegs(this));
  }

  public boolean onDismiss(InputListener.DismissAction paramDismissAction)
  {
    super.onDismiss(paramDismissAction);
    finish();
    return true;
  }

  protected void onPause()
  {
    super.onPause();
    stopSensors();
  }

  protected void onResume()
  {
    super.onResume();
    startSensors();
  }

  public void onSensorChanged(SensorEvent paramSensorEvent)
  {
    try
    {
      switch (paramSensorEvent.sensor.getType())
      {
      default:
        Log.w(getTag(), "Unknown sensor event type: " + paramSensorEvent.sensor.getType());
      case 9:
      }
      while (true)
      {
        return;
        onGravitySensorEvent(paramSensorEvent);
      }
    }
    finally
    {
    }
  }

  protected int provideContentView()
  {
    return R.layout.head_wake_angle_chooser_activity;
  }

  protected boolean shouldAllowVoiceInput()
  {
    return false;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.settings.HeadWakeAngleChooserActivity
 * JD-Core Version:    0.6.2
 */