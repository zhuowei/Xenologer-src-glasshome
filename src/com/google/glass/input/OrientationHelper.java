package com.google.glass.input;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.AsyncTask;
import android.os.SystemClock;
import android.util.Log;
import com.google.glass.util.Assert;
import com.google.glass.util.AsyncThreadExecutorManager;
import com.google.glass.util.SerialAsyncTask;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

public class OrientationHelper
  implements SensorEventListener
{
  private static final float MAX_TIMESTAMP_DISCONTINUITY_IN_SECS = 0.25F;
  private static final float MOVING_AVERAGE_ALPHA = 1.0E-05F;
  private static final float NANOS_TO_S = 1.0E-09F;
  private static final long REBIND_WAIT_TIME = 2000L;
  private static final float ROUNDING_PRECISION = 0.1F;
  private static final int SENSOR_RATE = 0;
  private static final String TAG = OrientationHelper.class.getSimpleName();
  private static final boolean USE_INVENSENSE_MPL = true;
  private static final boolean USE_MAGNETIC_FIELD;
  private final Context context;
  private Sensor gravitySensor;
  private float gyroYMovingAverage;
  private Sensor gyroscopeSensor;
  private volatile float integratedGyroY;
  private float lastPitch;
  private float lastRoll;
  private long lastTimestamp;
  private float lastYaw;
  private OrientationListener listener;
  private float offsetPitch;
  private float offsetRoll;
  private float offsetYaw;
  private final float[] orientation = new float[3];
  private final float[] rotationMatrix = new float[16];
  private Sensor rotationVectorSensor;
  private SensorManager sensorManager;
  private final float[] tempRotationMatrix = new float[16];
  private boolean triedRebinding;
  private long triedRebindingTime;

  public OrientationHelper(Context paramContext, OrientationListener paramOrientationListener)
  {
    this.context = paramContext;
    this.listener = paramOrientationListener;
  }

  private void callListener(float paramFloat1, float paramFloat2, float paramFloat3, long paramLong)
  {
    Assert.assertUiThread();
    this.lastYaw = paramFloat1;
    this.lastPitch = paramFloat2;
    this.lastRoll = paramFloat3;
    float f1 = paramFloat1 - this.offsetYaw;
    float f2 = paramFloat2 - this.offsetPitch;
    float f3 = paramFloat3 - this.offsetRoll;
    if (this.listener != null)
      this.listener.onOrientationChanged(f1, f2, f3, paramLong);
  }

  static Sensor getPreferredSensor(SensorManager paramSensorManager, int paramInt)
  {
    Iterator localIterator = paramSensorManager.getSensorList(paramInt).iterator();
    while (localIterator.hasNext())
    {
      Sensor localSensor2 = (Sensor)localIterator.next();
      String str1 = localSensor2.getName();
      String str2 = localSensor2.getVendor();
      if (("Invensense".equals(str2)) && (str1.contains("MPL")))
      {
        Log.d(TAG, "Using sensor: " + str1 + " (" + str2 + ")");
        return localSensor2;
      }
    }
    Log.w(TAG, "Could not find Invensese MPL sensor of type " + paramInt + ".");
    Sensor localSensor1 = paramSensorManager.getDefaultSensor(paramInt);
    if (localSensor1 == null)
    {
      Log.wtf(TAG, "No default sensor of type " + paramInt + " found.");
      return null;
    }
    Log.d(TAG, "Using default sensor: " + localSensor1.getName() + " (" + localSensor1.getVendor() + ")");
    return localSensor1;
  }

  private void handleGravitySensorEvent(SensorEvent paramSensorEvent)
  {
    float f1 = paramSensorEvent.values[0];
    float f2 = paramSensorEvent.values[1];
    float f3 = paramSensorEvent.values[2];
    if ((Float.isNaN(f1)) || (Float.isNaN(f2)))
    {
      if (this.triedRebinding)
      {
        if (SystemClock.uptimeMillis() - this.triedRebindingTime > 2000L)
          throw new IllegalStateException("Received NaN values from sensor, x: " + f1 + " y: " + f2);
      }
      else
      {
        Log.d(TAG, "Rebinding since we're getting NaN values");
        this.triedRebinding = true;
        this.triedRebindingTime = SystemClock.uptimeMillis();
        stop();
        start();
      }
      return;
    }
    if (this.triedRebinding)
    {
      this.triedRebinding = false;
      Log.d(TAG, "Rebinding successfully gave us valid values");
    }
    float f4 = (float)Math.toDegrees(Math.atan2(-f1, f2));
    float f5 = (float)Math.toDegrees(Math.atan2(f3, Math.sqrt(f1 * f1 + f2 * f2)));
    callListener((float)Math.toDegrees(-this.integratedGyroY), f5, f4, paramSensorEvent.timestamp);
  }

  private void handleGyroscopeSensorEvent(SensorEvent paramSensorEvent)
  {
    float f1;
    float f2;
    float f3;
    if (this.lastTimestamp != 0L)
    {
      f1 = paramSensorEvent.values[1];
      f2 = roundValueToPrecision(f1 - this.gyroYMovingAverage, 0.1F);
      f3 = 1.0E-09F * (float)(paramSensorEvent.timestamp - this.lastTimestamp);
      if (f3 <= 0.25F)
        break label65;
    }
    for (this.gyroYMovingAverage = 0.0F; ; this.gyroYMovingAverage = (1.0E-05F * f1 + 0.99999F * this.gyroYMovingAverage))
    {
      this.lastTimestamp = paramSensorEvent.timestamp;
      return;
      label65: this.integratedGyroY += f2 * f3;
    }
  }

  private void handleRotationSensorEvent(SensorEvent paramSensorEvent)
  {
    SensorManager.getRotationMatrixFromVector(this.rotationMatrix, paramSensorEvent.values);
    SensorManager.remapCoordinateSystem(this.rotationMatrix, 1, 3, this.tempRotationMatrix);
    SensorManager.remapCoordinateSystem(this.tempRotationMatrix, 3, 2, this.rotationMatrix);
    SensorManager.getOrientation(this.rotationMatrix, this.orientation);
    callListener((float)Math.toDegrees(this.orientation[0]), (float)Math.toDegrees(this.orientation[1]), (float)Math.toDegrees(this.orientation[2]), paramSensorEvent.timestamp);
  }

  private static float roundValueToPrecision(float paramFloat1, float paramFloat2)
  {
    return paramFloat2 * Math.round(paramFloat1 / paramFloat2);
  }

  public void onAccuracyChanged(Sensor paramSensor, int paramInt)
  {
  }

  public void onSensorChanged(SensorEvent paramSensorEvent)
  {
    while (true)
    {
      try
      {
        int i = paramSensorEvent.sensor.getType();
        switch (i)
        {
        default:
          return;
        case 9:
          handleGravitySensorEvent(paramSensorEvent);
          continue;
        case 4:
        case 11:
        }
      }
      finally
      {
      }
      handleGyroscopeSensorEvent(paramSensorEvent);
      continue;
      handleRotationSensorEvent(paramSensorEvent);
    }
  }

  public void resetTare()
  {
    this.offsetYaw = 0.0F;
    this.offsetRoll = 0.0F;
  }

  public void setListener(OrientationListener paramOrientationListener)
  {
    this.listener = paramOrientationListener;
  }

  public void start()
  {
    Assert.assertUiThread();
    this.lastTimestamp = 0L;
    AsyncTask local1 = new AsyncTask()
    {
      protected SensorManager doInBackground(SensorManager[] paramAnonymousArrayOfSensorManager)
      {
        SensorManager localSensorManager = paramAnonymousArrayOfSensorManager[0];
        OrientationHelper.access$002(OrientationHelper.this, OrientationHelper.getPreferredSensor(localSensorManager, 9));
        OrientationHelper.access$102(OrientationHelper.this, OrientationHelper.getPreferredSensor(localSensorManager, 4));
        localSensorManager.registerListener(OrientationHelper.this, OrientationHelper.this.gravitySensor, 0);
        localSensorManager.registerListener(OrientationHelper.this, OrientationHelper.this.gyroscopeSensor, 0);
        return localSensorManager;
      }

      protected void onPostExecute(SensorManager paramAnonymousSensorManager)
      {
        OrientationHelper.access$202(OrientationHelper.this, paramAnonymousSensorManager);
      }
    };
    Executor localExecutor = AsyncThreadExecutorManager.getSerialExecutor();
    SensorManager[] arrayOfSensorManager = new SensorManager[1];
    arrayOfSensorManager[0] = ((SensorManager)this.context.getSystemService("sensor"));
    local1.executeOnExecutor(localExecutor, arrayOfSensorManager);
  }

  public void stop()
  {
    Assert.assertUiThread();
    new SerialAsyncTask()
    {
      protected Void serialDoInBackground(Void[] paramAnonymousArrayOfVoid)
      {
        if (isCancelled())
          return null;
        OrientationHelper.this.sensorManager.unregisterListener(OrientationHelper.this, OrientationHelper.this.gravitySensor);
        OrientationHelper.this.sensorManager.unregisterListener(OrientationHelper.this, OrientationHelper.this.gyroscopeSensor);
        return null;
      }

      protected void serialOnPostExecute(Void paramAnonymousVoid)
      {
        OrientationHelper.access$202(OrientationHelper.this, null);
      }

      protected void serialOnPreExecute()
      {
        if (OrientationHelper.this.sensorManager == null)
        {
          Log.w(OrientationHelper.TAG, "null sensorManager");
          cancel(true);
        }
      }
    }
    .executeOnExecutor(AsyncThreadExecutorManager.getSerialExecutor(), new Void[0]);
  }

  public void tare()
  {
    this.offsetYaw = this.lastYaw;
    this.offsetRoll = this.lastRoll;
  }

  public static abstract interface OrientationListener
  {
    public abstract void onOrientationChanged(float paramFloat1, float paramFloat2, float paramFloat3, long paramLong);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.input.OrientationHelper
 * JD-Core Version:    0.6.2
 */