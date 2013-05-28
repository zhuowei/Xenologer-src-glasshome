package com.google.glass.camera;

import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.os.Binder;
import android.os.IBinder;
import android.os.Process;
import android.util.Log;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.util.Assert;
import com.google.glass.util.PriorityThreadFactory;
import com.google.glass.util.SafeBroadcastReceiver;
import com.google.glass.util.SerialAsyncTask;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

public class SharedCameraService extends Service
{

  @VisibleForTesting
  public static final String ACTION_CAMERA_LOCK = "com.google.glass.action.CAMERA_LOCK";
  private static final String ACTION_PRELOAD_CAMERA = "com.google.glass.action.PRELOAD_CAMERA";
  private static final String ACTION_PREPARE_CAMERA = "com.google.glass.action.PREPARE_CAMERA";
  private static final String ACTION_SHUTDOWN_CAMERA = "com.google.glass.action.SHUTDOWN_CAMERA";

  @VisibleForTesting
  public static final String EXTRA_LOCKED = "locked";
  public static final String EXTRA_PID = "pid";
  private static final long SHUTDOWN_TIMEOUT_MILLIS = TimeUnit.SECONDS.toMillis(5L);
  private static final String TAG = SharedCameraService.class.getSimpleName();
  private SharedCameraManager cameraManager;
  private final List<Runnable> onStartUpTasks = new ArrayList();
  private final SafeBroadcastReceiver prepareCameraReceiver = new SafeBroadcastReceiver()
  {
    protected String getTag()
    {
      return SharedCameraService.TAG + "/prepareCameraReceiver";
    }

    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      if ("com.google.glass.action.PREPARE_CAMERA".equals(paramAnonymousIntent.getAction()))
      {
        if (SharedCameraService.this.cameraManager == null)
          Log.w(SharedCameraService.TAG, "No shared camera available to prepare.");
      }
      else
        return;
      SharedCameraService.this.cameraManager.prepareCamera();
    }
  };
  private final SharedCameraBinder sharedCameraBinder = new SharedCameraBinder(null);
  private final SafeBroadcastReceiver shutdownCameraReceiver = new SafeBroadcastReceiver()
  {
    protected String getTag()
    {
      return SharedCameraService.TAG + "/shutdownCameraReceiver";
    }

    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      if ("com.google.glass.action.SHUTDOWN_CAMERA".equals(paramAnonymousIntent.getAction()))
        SharedCameraService.this.stopSelf();
    }
  };
  private final ExecutorService shutdownExecutor = Executors.newSingleThreadExecutor(new PriorityThreadFactory(10, TAG + "/shutdownExecutor"));
  private final SafeBroadcastReceiver storageReceiver = new SafeBroadcastReceiver()
  {
    protected String getTag()
    {
      return SharedCameraService.TAG + "/storageReciever";
    }

    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      if ("android.intent.action.DEVICE_STORAGE_FULL".equals(paramAnonymousIntent.getAction()))
      {
        Log.w(SharedCameraService.TAG, "Received a low storage warning, stopping recording.");
        SharedCameraService.this.sharedCameraBinder.stopRecording(null);
      }
    }
  };

  public static void prepareCamera(Context paramContext)
  {
    paramContext.sendBroadcast(new Intent("com.google.glass.action.PREPARE_CAMERA"));
  }

  private void sendLockIntent(boolean paramBoolean)
  {
    Intent localIntent = new Intent("com.google.glass.action.CAMERA_LOCK");
    localIntent.putExtra("locked", paramBoolean);
    localIntent.putExtra("pid", Process.myPid());
    sendStickyBroadcast(localIntent);
  }

  private void shutDown(final boolean paramBoolean)
  {
    this.shutdownCameraReceiver.unregister(this);
    Log.v(TAG, "Shutdown requested.");
    new SerialAsyncTask()
    {
      protected Void serialDoInBackground(Void[] paramAnonymousArrayOfVoid)
      {
        if (isCancelled())
          return null;
        Log.d(SharedCameraService.TAG, "Shutting down the shared camera.");
        SharedCameraService.this.cameraManager.shutDown();
        return null;
      }

      protected void serialOnPostExecute(Void paramAnonymousVoid)
      {
        SharedCameraService.access$302(SharedCameraService.this, null);
        SharedCameraService.this.sendLockIntent(false);
        SharedCameraService.this.stopSelf();
        if (paramBoolean)
          SharedCameraService.this.sendBroadcast(new Intent("com.google.glass.action.PRELOAD_CAMERA"));
      }

      protected void serialOnPreExecute()
      {
        if (SharedCameraService.this.cameraManager == null)
        {
          Log.d(SharedCameraService.TAG, "Already shut down.");
          cancel(true);
        }
      }
    }
    .executeOnExecutor(this.shutdownExecutor, new Void[0]);
  }

  private void startUp()
  {
    Log.d(TAG, "Initializing the shared camera.");
    this.cameraManager = new SharedCameraManager(this);
    sendLockIntent(true);
    this.shutdownCameraReceiver.register(this, new String[] { "com.google.glass.action.SHUTDOWN_CAMERA" });
    Iterator localIterator = this.onStartUpTasks.iterator();
    while (localIterator.hasNext())
      ((Runnable)localIterator.next()).run();
    this.onStartUpTasks.clear();
  }

  public IBinder onBind(Intent paramIntent)
  {
    return this.sharedCameraBinder;
  }

  public void onCreate()
  {
    Log.v(TAG, "Created.");
    super.onCreate();
    Intent localIntent = registerReceiver(null, new IntentFilter("com.google.glass.action.CAMERA_LOCK"));
    if ((localIntent != null) && (localIntent.getBooleanExtra("locked", false)))
    {
      Log.d(TAG, "Requesting shutdown of other service instances.");
      sendBroadcast(new Intent("com.google.glass.action.SHUTDOWN_CAMERA"));
      new SerialAsyncTask()
      {
        private CountDownLatch lockLatch;
        private SafeBroadcastReceiver lockReceiver;

        protected Boolean serialDoInBackground(Void[] paramAnonymousArrayOfVoid)
        {
          try
          {
            Log.v(SharedCameraService.TAG, "Waiting for other service instances to shut down...");
            Boolean localBoolean = Boolean.valueOf(this.lockLatch.await(SharedCameraService.SHUTDOWN_TIMEOUT_MILLIS, TimeUnit.MILLISECONDS));
            return localBoolean;
          }
          catch (InterruptedException localInterruptedException)
          {
            Log.e(SharedCameraService.TAG, "Interrupted while waiting for shutdown.");
          }
          return Boolean.valueOf(false);
        }

        protected void serialOnPostExecute(Boolean paramAnonymousBoolean)
        {
          this.lockReceiver.unregister(SharedCameraService.this);
          if (!paramAnonymousBoolean.booleanValue())
            Log.e(SharedCameraService.TAG, "Other service instances failed to shut down.");
          SharedCameraService.this.startUp();
        }

        protected void serialOnPreExecute()
        {
          this.lockLatch = new CountDownLatch(1);
          this.lockReceiver = new SafeBroadcastReceiver()
          {
            protected String getTag()
            {
              return SharedCameraService.TAG + "/lockReceiver";
            }

            public void onReceive(Context paramAnonymous2Context, Intent paramAnonymous2Intent)
            {
              if (("com.google.glass.action.CAMERA_LOCK".equals(paramAnonymous2Intent.getAction())) && (!paramAnonymous2Intent.getBooleanExtra("locked", true)))
                SharedCameraService.4.this.lockLatch.countDown();
            }
          };
          this.lockReceiver.register(SharedCameraService.this, new String[] { "com.google.glass.action.CAMERA_LOCK" });
        }
      }
      .executeOnExecutor(this.shutdownExecutor, new Void[0]);
    }
    while (true)
    {
      this.storageReceiver.register(this, new String[] { "android.intent.action.DEVICE_STORAGE_FULL" });
      return;
      startUp();
    }
  }

  public void onDestroy()
  {
    Log.v(TAG, "Destroyed.");
    this.storageReceiver.unregister(this);
    if (!this.prepareCameraReceiver.isRegistered());
    for (boolean bool = true; ; bool = false)
    {
      this.prepareCameraReceiver.unregister(this);
      shutDown(bool);
      super.onDestroy();
      return;
    }
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    Log.d(TAG, "Starting service.");
    this.prepareCameraReceiver.register(this, new String[] { "com.google.glass.action.PREPARE_CAMERA" });
    return 1;
  }

  public static class SharedCamera
    implements ServiceConnection
  {
    private boolean isServiceConnected;
    private final List<Runnable> onConnectTasks = new ArrayList();
    private SharedCameraService.SharedCameraBinder sharedCameraBinder;

    public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
    {
      Log.d(SharedCameraService.TAG, "Camera service connected.");
      this.sharedCameraBinder = ((SharedCameraService.SharedCameraBinder)paramIBinder);
      Iterator localIterator = this.onConnectTasks.iterator();
      while (localIterator.hasNext())
        ((Runnable)localIterator.next()).run();
      this.onConnectTasks.clear();
      this.isServiceConnected = true;
    }

    public void onServiceDisconnected(ComponentName paramComponentName)
    {
      Log.d(SharedCameraService.TAG, "Camera service disconnected.");
      this.isServiceConnected = false;
    }

    public void startPreview(final SharedCameraClient paramSharedCameraClient)
    {
      Assert.assertUiThread();
      if (this.isServiceConnected)
      {
        this.sharedCameraBinder.startPreview(paramSharedCameraClient);
        return;
      }
      Log.w(SharedCameraService.TAG, "Service not connected. Will start preview on connect.");
      this.onConnectTasks.add(new Runnable()
      {
        public void run()
        {
          SharedCameraService.SharedCamera.this.sharedCameraBinder.startPreview(paramSharedCameraClient);
        }
      });
    }

    public void startRecording(final SharedCameraClient paramSharedCameraClient)
    {
      Assert.assertUiThread();
      if (this.isServiceConnected)
      {
        this.sharedCameraBinder.startRecording(paramSharedCameraClient);
        return;
      }
      Log.w(SharedCameraService.TAG, "Service not connected. Will start recording on connect.");
      this.onConnectTasks.add(new Runnable()
      {
        public void run()
        {
          SharedCameraService.SharedCamera.this.sharedCameraBinder.startRecording(paramSharedCameraClient);
        }
      });
    }

    public void stopPreview(final SharedCameraClient paramSharedCameraClient)
    {
      Assert.assertUiThread();
      if (this.isServiceConnected)
      {
        this.sharedCameraBinder.stopPreview(paramSharedCameraClient);
        return;
      }
      Log.w(SharedCameraService.TAG, "Service not connected. Will stop the preview on connect.");
      this.onConnectTasks.add(new Runnable()
      {
        public void run()
        {
          SharedCameraService.SharedCamera.this.sharedCameraBinder.stopPreview(paramSharedCameraClient);
        }
      });
    }

    public void stopRecording(final SharedCameraClient paramSharedCameraClient)
    {
      Assert.assertUiThread();
      if (this.isServiceConnected)
      {
        this.sharedCameraBinder.stopRecording(paramSharedCameraClient);
        return;
      }
      Log.w(SharedCameraService.TAG, "Service not connected. Will stop recording on connect.");
      this.onConnectTasks.add(new Runnable()
      {
        public void run()
        {
          SharedCameraService.SharedCamera.this.sharedCameraBinder.stopRecording(paramSharedCameraClient);
        }
      });
    }

    public void takePicture(final SharedCameraClient paramSharedCameraClient)
    {
      Assert.assertUiThread();
      if (this.isServiceConnected)
      {
        this.sharedCameraBinder.takePicture(paramSharedCameraClient);
        return;
      }
      Log.w(SharedCameraService.TAG, "Service not connected. Will take a picture on connect.");
      this.onConnectTasks.add(new Runnable()
      {
        public void run()
        {
          SharedCameraService.SharedCamera.this.sharedCameraBinder.takePicture(paramSharedCameraClient);
        }
      });
    }
  }

  private class SharedCameraBinder extends Binder
  {
    private SharedCameraBinder()
    {
    }

    public void startPreview(final SharedCameraClient paramSharedCameraClient)
    {
      if (SharedCameraService.this.cameraManager != null)
      {
        SharedCameraService.this.cameraManager.startPreview(paramSharedCameraClient);
        return;
      }
      Log.w(SharedCameraService.TAG, "Service not started. Will start preview on startup.");
      SharedCameraService.this.onStartUpTasks.add(new Runnable()
      {
        public void run()
        {
          SharedCameraService.this.cameraManager.startPreview(paramSharedCameraClient);
        }
      });
    }

    public void startRecording(final SharedCameraClient paramSharedCameraClient)
    {
      if (SharedCameraService.this.cameraManager != null)
      {
        SharedCameraService.this.cameraManager.startRecording(paramSharedCameraClient);
        return;
      }
      Log.w(SharedCameraService.TAG, "Service not started. Will start recording on startup.");
      SharedCameraService.this.onStartUpTasks.add(new Runnable()
      {
        public void run()
        {
          SharedCameraService.this.cameraManager.startRecording(paramSharedCameraClient);
        }
      });
    }

    public void stopPreview(final SharedCameraClient paramSharedCameraClient)
    {
      if (SharedCameraService.this.cameraManager != null)
      {
        SharedCameraService.this.cameraManager.stopPreview(paramSharedCameraClient);
        return;
      }
      Log.w(SharedCameraService.TAG, "Service not started. Will stop the preview on startup.");
      SharedCameraService.this.onStartUpTasks.add(new Runnable()
      {
        public void run()
        {
          SharedCameraService.this.cameraManager.stopPreview(paramSharedCameraClient);
        }
      });
    }

    public void stopRecording(final SharedCameraClient paramSharedCameraClient)
    {
      if (SharedCameraService.this.cameraManager != null)
      {
        SharedCameraService.this.cameraManager.stopRecording(paramSharedCameraClient);
        return;
      }
      Log.w(SharedCameraService.TAG, "Service not started. Will stop recording on startup.");
      SharedCameraService.this.onStartUpTasks.add(new Runnable()
      {
        public void run()
        {
          SharedCameraService.this.cameraManager.stopRecording(paramSharedCameraClient);
        }
      });
    }

    public void takePicture(final SharedCameraClient paramSharedCameraClient)
    {
      if (SharedCameraService.this.cameraManager != null)
      {
        SharedCameraService.this.cameraManager.takePicture(paramSharedCameraClient);
        return;
      }
      Log.w(SharedCameraService.TAG, "Service not started. Will take a picture on startup.");
      SharedCameraService.this.onStartUpTasks.add(new Runnable()
      {
        public void run()
        {
          SharedCameraService.this.sharedCameraBinder.takePicture(paramSharedCameraClient);
        }
      });
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.camera.SharedCameraService
 * JD-Core Version:    0.6.2
 */