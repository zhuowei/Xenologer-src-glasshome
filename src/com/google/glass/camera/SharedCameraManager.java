package com.google.glass.camera;

import android.content.Context;
import android.content.Intent;
import android.graphics.ImageFormat;
import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.PictureCallback;
import android.hardware.Camera.PreviewCallback;
import android.hardware.Camera.ShutterCallback;
import android.media.MediaRecorder;
import android.media.MediaRecorder.OnErrorListener;
import android.media.MediaRecorder.OnInfoListener;
import android.opengl.GLES20;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Message;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.TextureView;
import com.google.android.libraries.barhopper.Barcode;
import com.google.glass.barcode.BarcodeRecognizer;
import com.google.glass.barcode.BarhopperRecognizer;
import com.google.glass.hidden.HiddenCamera;
import com.google.glass.util.Assert;
import com.google.glass.util.HiddenApiHelper;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;
import com.google.glass.util.PriorityThreadFactory;
import com.google.glass.util.RetryStrategy;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

class SharedCameraManager
{
  private static final int MEDIA_RECORDER_ERROR_MALFORMED = -1007;
  private static final int MESSAGE_PREPARE_CAMERA_TIMEOUT = 1;
  private static final int NUM_PREVIEW_BUFFERS = 3;
  private static final long PRELOAD_RUN_PREVIEW_MILLIS = 500L;
  private static final long PREPARE_TIMEOUT_MILLIS = 0L;
  private static final long PREVIEW_SURFACE_WAIT_TIMEOUT_NANOS = 0L;
  private static final long RECYCLE_TIMEOUT_SECONDS = 5L;
  private static final String TAG = SharedCameraManager.class.getSimpleName();
  private static final long TAKE_PICTURE_TIMEOUT_NANOS;
  private static final RetryStrategy VIDEO_RECORDER_START_RETRY_STRATEGY;
  private final ExecutorService backgroundExecutor;
  private BarcodeRecognizer barcodeRecognizer;
  private Camera camera;
  private final ReentrantLock cameraLock;
  private final ExecutorService cameraManipulationExecutor;
  private final ReentrantLock cameraManipulationExecutorLock;
  private Video cliplet;
  private Context context;
  private SurfaceTexture invisiblePreviewSurface;
  private final byte[] postviewBuffer;
  private final Handler prepareCameraTimeoutHandler;
  private final Camera.PreviewCallback previewCallback;
  private final byte[][] previewCallbackBuffers;
  private int previewSurfaceTextureName;
  private final Set<SharedCameraClient> previewingClients;
  private final Set<SharedCameraClient> previouslyPreviewingClients;
  private SharedCameraClient recordingClient;
  private Video video;
  private MediaRecorder videoRecorder;
  private final PowerManager.WakeLock wakeLock;

  static
  {
    TimeUnit localTimeUnit = TimeUnit.SECONDS;
    if (Labs.isEnabled(Labs.Feature.GCAM));
    for (long l = 60L; ; l = 10L)
    {
      TAKE_PICTURE_TIMEOUT_NANOS = localTimeUnit.toNanos(l);
      PREVIEW_SURFACE_WAIT_TIMEOUT_NANOS = TimeUnit.SECONDS.toNanos(3L);
      PREPARE_TIMEOUT_MILLIS = TimeUnit.SECONDS.toMillis(2L);
      VIDEO_RECORDER_START_RETRY_STRATEGY = RetryStrategy.exponentialBackoff(100, 2.0D, 7);
      return;
    }
  }

  SharedCameraManager(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 126	java/lang/Object:<init>	()V
    //   4: iconst_2
    //   5: newarray int
    //   7: dup
    //   8: iconst_0
    //   9: iconst_3
    //   10: iastore
    //   11: dup
    //   12: iconst_1
    //   13: invokestatic 130	com/google/glass/camera/SharedCameraManager:calculatePreviewBufferSize	()I
    //   16: iastore
    //   17: astore_2
    //   18: aload_0
    //   19: getstatic 136	java/lang/Byte:TYPE	Ljava/lang/Class;
    //   22: aload_2
    //   23: invokestatic 142	java/lang/reflect/Array:newInstance	(Ljava/lang/Class;[I)Ljava/lang/Object;
    //   26: checkcast 143	[[B
    //   29: putfield 145	com/google/glass/camera/SharedCameraManager:previewCallbackBuffers	[[B
    //   32: aload_0
    //   33: invokestatic 148	com/google/glass/camera/SharedCameraManager:calculatePostviewBufferSize	()I
    //   36: newarray byte
    //   38: putfield 150	com/google/glass/camera/SharedCameraManager:postviewBuffer	[B
    //   41: aload_0
    //   42: new 152	java/util/concurrent/locks/ReentrantLock
    //   45: dup
    //   46: invokespecial 153	java/util/concurrent/locks/ReentrantLock:<init>	()V
    //   49: putfield 155	com/google/glass/camera/SharedCameraManager:cameraLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   52: aload_0
    //   53: new 157	com/google/glass/util/PriorityThreadFactory
    //   56: dup
    //   57: bipush 10
    //   59: new 159	java/lang/StringBuilder
    //   62: dup
    //   63: invokespecial 160	java/lang/StringBuilder:<init>	()V
    //   66: getstatic 73	com/google/glass/camera/SharedCameraManager:TAG	Ljava/lang/String;
    //   69: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   72: ldc 166
    //   74: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   77: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   80: invokespecial 172	com/google/glass/util/PriorityThreadFactory:<init>	(ILjava/lang/String;)V
    //   83: invokestatic 178	java/util/concurrent/Executors:newSingleThreadExecutor	(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;
    //   86: putfield 180	com/google/glass/camera/SharedCameraManager:cameraManipulationExecutor	Ljava/util/concurrent/ExecutorService;
    //   89: aload_0
    //   90: new 157	com/google/glass/util/PriorityThreadFactory
    //   93: dup
    //   94: iconst_5
    //   95: new 159	java/lang/StringBuilder
    //   98: dup
    //   99: invokespecial 160	java/lang/StringBuilder:<init>	()V
    //   102: getstatic 73	com/google/glass/camera/SharedCameraManager:TAG	Ljava/lang/String;
    //   105: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   108: ldc 182
    //   110: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   113: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   116: invokespecial 172	com/google/glass/util/PriorityThreadFactory:<init>	(ILjava/lang/String;)V
    //   119: invokestatic 178	java/util/concurrent/Executors:newSingleThreadExecutor	(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;
    //   122: putfield 184	com/google/glass/camera/SharedCameraManager:backgroundExecutor	Ljava/util/concurrent/ExecutorService;
    //   125: aload_0
    //   126: new 152	java/util/concurrent/locks/ReentrantLock
    //   129: dup
    //   130: invokespecial 153	java/util/concurrent/locks/ReentrantLock:<init>	()V
    //   133: putfield 186	com/google/glass/camera/SharedCameraManager:cameraManipulationExecutorLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   136: aload_0
    //   137: new 188	com/google/glass/camera/SharedCameraManager$1
    //   140: dup
    //   141: aload_0
    //   142: invokespecial 191	com/google/glass/camera/SharedCameraManager$1:<init>	(Lcom/google/glass/camera/SharedCameraManager;)V
    //   145: putfield 193	com/google/glass/camera/SharedCameraManager:prepareCameraTimeoutHandler	Landroid/os/Handler;
    //   148: aload_0
    //   149: new 195	java/util/HashSet
    //   152: dup
    //   153: invokespecial 196	java/util/HashSet:<init>	()V
    //   156: invokestatic 202	java/util/Collections:synchronizedSet	(Ljava/util/Set;)Ljava/util/Set;
    //   159: putfield 204	com/google/glass/camera/SharedCameraManager:previewingClients	Ljava/util/Set;
    //   162: aload_0
    //   163: new 195	java/util/HashSet
    //   166: dup
    //   167: invokespecial 196	java/util/HashSet:<init>	()V
    //   170: invokestatic 202	java/util/Collections:synchronizedSet	(Ljava/util/Set;)Ljava/util/Set;
    //   173: putfield 206	com/google/glass/camera/SharedCameraManager:previouslyPreviewingClients	Ljava/util/Set;
    //   176: aload_0
    //   177: new 208	com/google/glass/camera/SharedCameraManager$2
    //   180: dup
    //   181: aload_0
    //   182: invokespecial 209	com/google/glass/camera/SharedCameraManager$2:<init>	(Lcom/google/glass/camera/SharedCameraManager;)V
    //   185: putfield 211	com/google/glass/camera/SharedCameraManager:previewCallback	Landroid/hardware/Camera$PreviewCallback;
    //   188: aload_0
    //   189: aload_1
    //   190: putfield 213	com/google/glass/camera/SharedCameraManager:context	Landroid/content/Context;
    //   193: aload_0
    //   194: aload_1
    //   195: ldc 215
    //   197: invokevirtual 221	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   200: checkcast 223	android/os/PowerManager
    //   203: iconst_1
    //   204: ldc 2
    //   206: invokevirtual 71	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   209: invokevirtual 227	android/os/PowerManager:newWakeLock	(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    //   212: putfield 229	com/google/glass/camera/SharedCameraManager:wakeLock	Landroid/os/PowerManager$WakeLock;
    //   215: aload_0
    //   216: getfield 229	com/google/glass/camera/SharedCameraManager:wakeLock	Landroid/os/PowerManager$WakeLock;
    //   219: iconst_0
    //   220: invokevirtual 235	android/os/PowerManager$WakeLock:setReferenceCounted	(Z)V
    //   223: new 237	com/google/glass/camera/SharedCameraManager$3
    //   226: dup
    //   227: aload_0
    //   228: invokespecial 238	com/google/glass/camera/SharedCameraManager$3:<init>	(Lcom/google/glass/camera/SharedCameraManager;)V
    //   231: invokevirtual 241	com/google/glass/camera/SharedCameraManager$3:enqueue	()V
    //   234: return
  }

  private boolean acquireCameraSynchronously(SharedCameraClient paramSharedCameraClient)
  {
    Assert.assertNotUiThread();
    if (this.camera != null)
      return true;
    if (!stopRecordingSynchronously(paramSharedCameraClient))
      return false;
    SharedCameraLogging.logVerbose(paramSharedCameraClient, "About to acquire the camera.");
    long l = SystemClock.uptimeMillis();
    try
    {
      this.camera = Camera.open();
      if (this.camera == null)
      {
        handleCameraError(paramSharedCameraClient, "Failed to acquire the camera.");
        return false;
      }
    }
    catch (RuntimeException localRuntimeException)
    {
      this.camera = null;
      handleCameraError(paramSharedCameraClient, "Failed to acquire the camera.", localRuntimeException);
      return false;
    }
    if (paramSharedCameraClient != null)
      paramSharedCameraClient.dispatchCameraAcquired();
    SharedCameraLogging.logVerbose(paramSharedCameraClient, "Acquiring the camera took " + (SystemClock.uptimeMillis() - l) + " ms.");
    return true;
  }

  private static void applyVideoRecorderParameters(SharedCameraClient paramSharedCameraClient, MediaRecorder paramMediaRecorder)
  {
    SharedCameraLogging.logDebug(paramSharedCameraClient, "Applying video recorder parameters.");
    paramMediaRecorder.setVideoSource(0);
    paramMediaRecorder.setAudioSource(0);
    paramMediaRecorder.setOutputFormat(2);
    paramMediaRecorder.setVideoEncoder(2);
    paramMediaRecorder.setVideoEncodingBitRate(5000000);
    paramMediaRecorder.setVideoFrameRate(30);
    Size localSize = SharedCameraConstants.RECORD_VIDEO_SIZE;
    if (Labs.isEnabled(Labs.Feature.VSTAB_CALIBRATION))
      localSize = SharedCameraConstants.VSTAB_CALIBRATION_RECORD_VIDEO_SIZE;
    while (true)
    {
      paramMediaRecorder.setVideoSize(localSize.width, localSize.height);
      paramMediaRecorder.setAudioChannels(2);
      paramMediaRecorder.setAudioEncoder(3);
      paramMediaRecorder.setAudioEncodingBitRate(96000);
      paramMediaRecorder.setAudioSamplingRate(44100);
      paramMediaRecorder.setMaxDuration(0);
      return;
      if (Labs.isEnabled(Labs.Feature.VSTAB))
        localSize = SharedCameraConstants.VSTAB_RECORD_VIDEO_SIZE;
    }
  }

  private static int calculatePostviewBufferSize()
  {
    if (Labs.isEnabled(Labs.Feature.GCAM));
    for (int i = 32; ; i = ImageFormat.getBitsPerPixel(SharedCameraConstants.POSTVIEW_FORMAT))
      return (7 + i * (SharedCameraConstants.POSTVIEW_SIZE.width * SharedCameraConstants.POSTVIEW_SIZE.height)) / 8;
  }

  private static int calculatePreviewBufferSize()
  {
    return (7 + ImageFormat.getBitsPerPixel(17) * (SharedCameraConstants.PREVIEW_SIZE.width * SharedCameraConstants.PREVIEW_SIZE.height)) / 8;
  }

  private void cancelPrepareCameraTimeout()
  {
    if (!this.prepareCameraTimeoutHandler.hasMessages(1))
      return;
    SharedCameraLogging.logVerbose(null, "Canceling prepare camera timeout.");
    this.prepareCameraTimeoutHandler.removeMessages(1);
  }

  private void createInvisiblePreviewSurface()
  {
    int[] arrayOfInt = new int[1];
    GLES20.glGenTextures(1, arrayOfInt, 0);
    this.previewSurfaceTextureName = arrayOfInt[0];
    this.invisiblePreviewSurface = new SurfaceTexture(this.previewSurfaceTextureName);
    SharedCameraLogging.logDebug(null, "Created a surface texture (#" + this.previewSurfaceTextureName + ").");
  }

  private void destroyInvisiblePreviewSurface()
  {
    if (this.invisiblePreviewSurface != null)
    {
      this.invisiblePreviewSurface.release();
      this.invisiblePreviewSurface = null;
      int[] arrayOfInt = new int[1];
      arrayOfInt[0] = this.previewSurfaceTextureName;
      GLES20.glDeleteTextures(1, arrayOfInt, 0);
      SharedCameraLogging.logDebug(null, "Destroyed the surface texture (#" + this.previewSurfaceTextureName + ").");
    }
  }

  private boolean enableVideoStabilizationSynchronously(SharedCameraClient paramSharedCameraClient)
  {
    Assert.assertNotUiThread();
    if (!stopPreviewSynchronously(paramSharedCameraClient));
    while (!acquireCameraSynchronously(paramSharedCameraClient))
      return false;
    if ((Labs.isEnabled(Labs.Feature.VSTAB)) || (Labs.isEnabled(Labs.Feature.VSTAB_CALIBRATION)));
    for (int i = 1; i == 0; i = 0)
    {
      SharedCameraLogging.logVerbose(paramSharedCameraClient, "Video stabilization feature is not enabled");
      return false;
    }
    SharedCameraLogging.logVerbose(paramSharedCameraClient, "About to enable video stabilization");
    long l = SystemClock.uptimeMillis();
    Camera.Parameters localParameters = this.camera.getParameters();
    if (!localParameters.isVideoStabilizationSupported())
    {
      SharedCameraLogging.logWarning(paramSharedCameraClient, "VideoStabilization is not supported");
      return false;
    }
    boolean bool = localParameters.getVideoStabilization();
    SharedCameraLogging.logDebug(paramSharedCameraClient, "Current video stabilization state: " + bool);
    if ((i != 0) && (!bool))
    {
      SharedCameraLogging.logDebug(paramSharedCameraClient, "Enabling video stabilization");
      localParameters.setVideoStabilization(true);
    }
    try
    {
      this.camera.setParameters(localParameters);
      SharedCameraLogging.logVerbose(paramSharedCameraClient, "Enable video stabilization took " + (SystemClock.uptimeMillis() - l) + " ms.");
      return true;
    }
    catch (RuntimeException localRuntimeException)
    {
      handleCameraError(paramSharedCameraClient, "Failed to set camera parameters.", localRuntimeException);
    }
    return false;
  }

  private BarcodeRecognizer getBarcodeRecognizer()
  {
    if (this.barcodeRecognizer == null)
      this.barcodeRecognizer = new BarhopperRecognizer();
    return this.barcodeRecognizer;
  }

  private SurfaceTexture getInvisiblePreviewSurface()
  {
    if (this.invisiblePreviewSurface == null)
      createInvisiblePreviewSurface();
    return this.invisiblePreviewSurface;
  }

  private static void handleCameraError(SharedCameraClient paramSharedCameraClient, String paramString)
  {
    handleCameraError(paramSharedCameraClient, paramString, null);
  }

  private static void handleCameraError(SharedCameraClient paramSharedCameraClient, String paramString, Exception paramException)
  {
    if (paramException != null)
      SharedCameraLogging.logError(paramSharedCameraClient, "Camera error: " + paramString, paramException);
    while (true)
    {
      if (paramSharedCameraClient != null)
        paramSharedCameraClient.dispatchCameraError(paramString);
      return;
      SharedCameraLogging.logError(paramSharedCameraClient, "Camera error: " + paramString);
    }
  }

  private boolean isPreviewing()
  {
    return (this.camera != null) && (HiddenApiHelper.previewEnabled(this.camera)) && (this.videoRecorder == null);
  }

  private boolean isRecording()
  {
    return this.videoRecorder != null;
  }

  private void lockCamera()
  {
    this.cameraLock.lock();
    this.wakeLock.acquire();
  }

  private boolean preloadCameraSynchronously()
  {
    Assert.assertNotUiThread();
    if (!acquireCameraSynchronously(null));
    do
    {
      return false;
      SharedCameraLogging.logDebug(null, "About to preload the camera.");
      if (Assert.isTest())
        break;
    }
    while (!startPreviewSynchronously(null));
    while (true)
    {
      try
      {
        Thread.sleep(500L);
        if ((!stopPreviewSynchronously(null)) || (!releaseCameraSynchronously(null)))
          break;
        return true;
      }
      catch (InterruptedException localInterruptedException)
      {
        SharedCameraLogging.logError(null, "Interrupted while running the preview during camera preloading.");
        continue;
      }
      SharedCameraLogging.logWarning(null, "Skipping preview preloading for testing.");
    }
  }

  private boolean releaseCameraSynchronously(SharedCameraClient paramSharedCameraClient)
  {
    Assert.assertNotUiThread();
    if (!stopPreviewSynchronously(paramSharedCameraClient));
    while (!stopRecordingSynchronously(paramSharedCameraClient))
      return false;
    if (this.camera == null)
      return true;
    SharedCameraLogging.logVerbose(paramSharedCameraClient, "About to release the camera.");
    long l = SystemClock.uptimeMillis();
    SharedCameraLogging.logDebug(paramSharedCameraClient, "Releasing the camera.");
    try
    {
      this.camera.release();
      this.camera = null;
      if ((Labs.isEnabled(Labs.Feature.GCAM)) || (Labs.isEnabled(Labs.Feature.CLIPLET)))
        destroyInvisiblePreviewSurface();
      if (paramSharedCameraClient != null)
        paramSharedCameraClient.dispatchCameraReleased();
      SharedCameraLogging.logVerbose(paramSharedCameraClient, "Releasing the camera took " + (SystemClock.uptimeMillis() - l) + " ms.");
      return true;
    }
    catch (RuntimeException localRuntimeException)
    {
      handleCameraError(paramSharedCameraClient, "Failed to release the camera.", localRuntimeException);
      return false;
    }
    finally
    {
      this.camera = null;
    }
  }

  // ERROR //
  private boolean safeVideoRecorderStart(SharedCameraClient paramSharedCameraClient, MediaRecorder paramMediaRecorder, Video paramVideo)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 4
    //   3: getstatic 120	com/google/glass/camera/SharedCameraManager:VIDEO_RECORDER_START_RETRY_STRATEGY	Lcom/google/glass/util/RetryStrategy;
    //   6: iload 4
    //   8: invokevirtual 641	com/google/glass/util/RetryStrategy:tryAgain	(I)Z
    //   11: ifeq +260 -> 271
    //   14: getstatic 120	com/google/glass/camera/SharedCameraManager:VIDEO_RECORDER_START_RETRY_STRATEGY	Lcom/google/glass/util/RetryStrategy;
    //   17: iload 4
    //   19: invokevirtual 644	com/google/glass/util/RetryStrategy:getDelayMillis	(I)I
    //   22: istore 5
    //   24: iload 5
    //   26: ifle +44 -> 70
    //   29: aload_1
    //   30: new 159	java/lang/StringBuilder
    //   33: dup
    //   34: invokespecial 160	java/lang/StringBuilder:<init>	()V
    //   37: ldc_w 646
    //   40: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: iload 5
    //   45: invokevirtual 514	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   48: ldc_w 391
    //   51: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   54: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   57: invokestatic 585	com/google/glass/camera/SharedCameraLogging:logError	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    //   60: iload 5
    //   62: i2l
    //   63: lstore 13
    //   65: lload 13
    //   67: invokestatic 611	java/lang/Thread:sleep	(J)V
    //   70: aload_1
    //   71: invokevirtual 649	com/google/glass/camera/SharedCameraClient:isViewfinderValid	()Z
    //   74: ifne +25 -> 99
    //   77: aload_1
    //   78: ldc_w 651
    //   81: invokestatic 585	com/google/glass/camera/SharedCameraLogging:logError	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    //   84: iconst_0
    //   85: ireturn
    //   86: astore 15
    //   88: aload_1
    //   89: ldc_w 653
    //   92: aload 15
    //   94: invokestatic 306	com/google/glass/camera/SharedCameraManager:handleCameraError	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V
    //   97: iconst_0
    //   98: ireturn
    //   99: aload_0
    //   100: aload_1
    //   101: invokespecial 274	com/google/glass/camera/SharedCameraManager:acquireCameraSynchronously	(Lcom/google/glass/camera/SharedCameraClient;)Z
    //   104: ifne +12 -> 116
    //   107: aload_1
    //   108: ldc_w 655
    //   111: invokestatic 266	com/google/glass/camera/SharedCameraManager:handleCameraError	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    //   114: iconst_0
    //   115: ireturn
    //   116: aload_1
    //   117: invokevirtual 658	com/google/glass/camera/SharedCameraClient:startUsingViewfinder	()V
    //   120: aload_0
    //   121: aload_1
    //   122: invokespecial 660	com/google/glass/camera/SharedCameraManager:enableVideoStabilizationSynchronously	(Lcom/google/glass/camera/SharedCameraClient;)Z
    //   125: pop
    //   126: aload_2
    //   127: aload_0
    //   128: getfield 296	com/google/glass/camera/SharedCameraManager:camera	Landroid/hardware/Camera;
    //   131: invokevirtual 664	android/media/MediaRecorder:setCamera	(Landroid/hardware/Camera;)V
    //   134: aload_0
    //   135: getfield 296	com/google/glass/camera/SharedCameraManager:camera	Landroid/hardware/Camera;
    //   138: invokevirtual 667	android/hardware/Camera:unlock	()V
    //   141: aload_1
    //   142: aload_2
    //   143: invokestatic 669	com/google/glass/camera/SharedCameraManager:applyVideoRecorderParameters	(Lcom/google/glass/camera/SharedCameraClient;Landroid/media/MediaRecorder;)V
    //   146: aload_2
    //   147: aload_3
    //   148: invokevirtual 674	com/google/glass/camera/Video:getFilePath	()Ljava/lang/String;
    //   151: invokevirtual 677	android/media/MediaRecorder:setOutputFile	(Ljava/lang/String;)V
    //   154: aload_1
    //   155: ldc_w 679
    //   158: invokestatic 398	com/google/glass/camera/SharedCameraLogging:logDebug	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    //   161: aload_2
    //   162: invokevirtual 682	android/media/MediaRecorder:prepare	()V
    //   165: aload_1
    //   166: ldc_w 684
    //   169: invokestatic 398	com/google/glass/camera/SharedCameraLogging:logDebug	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    //   172: aload_2
    //   173: invokevirtual 687	android/media/MediaRecorder:start	()V
    //   176: iconst_1
    //   177: ireturn
    //   178: astore 9
    //   180: aload_1
    //   181: ldc_w 689
    //   184: aload 9
    //   186: invokestatic 306	com/google/glass/camera/SharedCameraManager:handleCameraError	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V
    //   189: iconst_0
    //   190: ireturn
    //   191: astore 8
    //   193: aload_1
    //   194: ldc_w 689
    //   197: aload 8
    //   199: invokestatic 306	com/google/glass/camera/SharedCameraManager:handleCameraError	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V
    //   202: iconst_0
    //   203: ireturn
    //   204: astore 7
    //   206: aload_1
    //   207: ldc_w 689
    //   210: aload 7
    //   212: invokestatic 306	com/google/glass/camera/SharedCameraManager:handleCameraError	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V
    //   215: iconst_0
    //   216: ireturn
    //   217: astore 11
    //   219: aload_1
    //   220: ldc_w 691
    //   223: aload 11
    //   225: invokestatic 579	com/google/glass/camera/SharedCameraLogging:logError	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V
    //   228: aload_1
    //   229: ldc_w 693
    //   232: invokestatic 398	com/google/glass/camera/SharedCameraLogging:logDebug	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    //   235: aload_2
    //   236: invokevirtual 696	android/media/MediaRecorder:reset	()V
    //   239: aload_0
    //   240: getfield 296	com/google/glass/camera/SharedCameraManager:camera	Landroid/hardware/Camera;
    //   243: invokevirtual 697	android/hardware/Camera:lock	()V
    //   246: aload_0
    //   247: aload_1
    //   248: invokespecial 302	com/google/glass/camera/SharedCameraManager:releaseCameraSynchronously	(Lcom/google/glass/camera/SharedCameraClient;)Z
    //   251: pop
    //   252: iinc 4 1
    //   255: goto -252 -> 3
    //   258: astore 10
    //   260: aload_1
    //   261: ldc_w 691
    //   264: aload 10
    //   266: invokestatic 306	com/google/glass/camera/SharedCameraManager:handleCameraError	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V
    //   269: iconst_0
    //   270: ireturn
    //   271: aload_1
    //   272: ldc_w 691
    //   275: invokestatic 266	com/google/glass/camera/SharedCameraManager:handleCameraError	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    //   278: iconst_0
    //   279: ireturn
    //
    // Exception table:
    //   from	to	target	type
    //   65	70	86	java/lang/InterruptedException
    //   154	165	178	java/lang/IllegalStateException
    //   154	165	191	java/io/IOException
    //   154	165	204	java/lang/RuntimeException
    //   165	176	217	java/lang/IllegalStateException
    //   165	176	258	java/lang/RuntimeException
  }

  private boolean setClipletParametersSynchronously(SharedCameraClient paramSharedCameraClient)
  {
    CameraParameter[] arrayOfCameraParameter = new CameraParameter[3];
    arrayOfCameraParameter[0] = new CameraParameter("mode", "cp-cam");
    arrayOfCameraParameter[1] = new CameraParameter("usecase", "cliplet");
    arrayOfCameraParameter[2] = new CameraParameter("cliplet-videofile", this.cliplet.getFilePath());
    return setParametersSynchronously(paramSharedCameraClient, arrayOfCameraParameter);
  }

  private boolean setParametersSynchronously(SharedCameraClient paramSharedCameraClient, CameraParameter[] paramArrayOfCameraParameter)
  {
    Assert.assertNotUiThread();
    if (paramArrayOfCameraParameter.length == 0)
    {
      SharedCameraLogging.logWarning(paramSharedCameraClient, "No parameters to set.");
      return true;
    }
    if (!acquireCameraSynchronously(paramSharedCameraClient))
      return false;
    SharedCameraLogging.logVerbose(paramSharedCameraClient, "About to set parameters.");
    long l = SystemClock.uptimeMillis();
    Camera.Parameters localParameters = this.camera.getParameters();
    int i = paramArrayOfCameraParameter.length;
    int j = 0;
    if (j < i)
    {
      CameraParameter localCameraParameter = paramArrayOfCameraParameter[j];
      if (TextUtils.isEmpty(localCameraParameter.value))
      {
        localParameters.remove(localCameraParameter.key);
        SharedCameraLogging.logVerbose(paramSharedCameraClient, "Removing parameter \"" + localCameraParameter.key + "\".");
      }
      while (true)
      {
        j++;
        break;
        localParameters.set(localCameraParameter.key, localCameraParameter.value);
        SharedCameraLogging.logVerbose(paramSharedCameraClient, "Setting parameter \"" + localCameraParameter.key + "\" to \"" + localCameraParameter.value + "\".");
      }
    }
    try
    {
      this.camera.setParameters(localParameters);
      SharedCameraLogging.logVerbose(paramSharedCameraClient, "Setting parameters took " + (SystemClock.uptimeMillis() - l) + " ms.");
      return true;
    }
    catch (RuntimeException localRuntimeException)
    {
      handleCameraError(paramSharedCameraClient, "Failed to set camera parameters.", localRuntimeException);
    }
    return false;
  }

  private boolean shutDownCameraSynchronously(SharedCameraClient paramSharedCameraClient)
  {
    Assert.assertNotUiThread();
    SharedCameraLogging.logVerbose(paramSharedCameraClient, "About to shut down the camera.");
    long l = SystemClock.uptimeMillis();
    this.cameraManipulationExecutorLock.lock();
    try
    {
      SharedCameraLogging.logDebug(paramSharedCameraClient, "Discarding any pending camera manipulations.");
      this.cameraManipulationExecutor.shutdown();
      try
      {
        if (!this.cameraManipulationExecutor.awaitTermination(5L, TimeUnit.SECONDS))
        {
          SharedCameraLogging.logError(paramSharedCameraClient, "Timed out while discarding camera manipulations.");
          return false;
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        SharedCameraLogging.logError(paramSharedCameraClient, "Interrupted while discarding camera manipulations.", localInterruptedException);
        return false;
      }
      boolean bool = releaseCameraSynchronously(paramSharedCameraClient);
      if (!bool)
        return false;
      SharedCameraLogging.logVerbose(paramSharedCameraClient, "Shutting down the camera took " + (SystemClock.uptimeMillis() - l) + " ms.");
      return true;
    }
    finally
    {
      this.cameraManipulationExecutorLock.unlock();
    }
  }

  private boolean startMeteringSynchronously(SharedCameraClient paramSharedCameraClient)
  {
    Assert.assertNotUiThread();
    if (!stopRecordingSynchronously(paramSharedCameraClient));
    while (!acquireCameraSynchronously(paramSharedCameraClient))
      return false;
    SharedCameraLogging.logVerbose(paramSharedCameraClient, "About to start GCam metering.");
    long l = SystemClock.uptimeMillis();
    if (!HiddenCamera.startGoogleCameraMetering(this.camera))
    {
      handleCameraError(paramSharedCameraClient, "GCam Metering failed.");
      return false;
    }
    SharedCameraLogging.logVerbose(paramSharedCameraClient, "GCam Metering took " + (SystemClock.uptimeMillis() - l) + " ms.");
    return true;
  }

  private void startPrepareCameraTimeout()
  {
    if (this.prepareCameraTimeoutHandler.hasMessages(1))
    {
      SharedCameraLogging.logVerbose(null, "Extending prepare camera timeout.");
      this.prepareCameraTimeoutHandler.removeMessages(1);
    }
    while (true)
    {
      this.prepareCameraTimeoutHandler.sendEmptyMessageDelayed(1, PREPARE_TIMEOUT_MILLIS);
      return;
      SharedCameraLogging.logVerbose(null, "Starting prepare camera timeout.");
    }
  }

  // ERROR //
  private boolean startPreviewSynchronously(SharedCameraClient paramSharedCameraClient)
  {
    // Byte code:
    //   0: invokestatic 359	com/google/glass/util/Assert:assertNotUiThread	()V
    //   3: aload_0
    //   4: aload_1
    //   5: invokespecial 270	com/google/glass/camera/SharedCameraManager:stopRecordingSynchronously	(Lcom/google/glass/camera/SharedCameraClient;)Z
    //   8: ifne +5 -> 13
    //   11: iconst_0
    //   12: ireturn
    //   13: aload_0
    //   14: aload_1
    //   15: invokespecial 274	com/google/glass/camera/SharedCameraManager:acquireCameraSynchronously	(Lcom/google/glass/camera/SharedCameraClient;)Z
    //   18: ifeq -7 -> 11
    //   21: aload_0
    //   22: invokespecial 790	com/google/glass/camera/SharedCameraManager:isPreviewing	()Z
    //   25: ifeq +5 -> 30
    //   28: iconst_1
    //   29: ireturn
    //   30: aload_1
    //   31: ldc_w 792
    //   34: invokestatic 366	com/google/glass/camera/SharedCameraLogging:logVerbose	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    //   37: invokestatic 371	android/os/SystemClock:uptimeMillis	()J
    //   40: lstore_2
    //   41: aload_1
    //   42: ifnull +44 -> 86
    //   45: aload_1
    //   46: invokevirtual 796	com/google/glass/camera/SharedCameraClient:getViewfinder	()Landroid/view/TextureView;
    //   49: astore 4
    //   51: aload 4
    //   53: ifnull +203 -> 256
    //   56: aload_1
    //   57: ldc_w 798
    //   60: invokestatic 398	com/google/glass/camera/SharedCameraLogging:logDebug	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    //   63: aload_1
    //   64: invokevirtual 658	com/google/glass/camera/SharedCameraClient:startUsingViewfinder	()V
    //   67: aload_1
    //   68: getstatic 103	com/google/glass/camera/SharedCameraManager:PREVIEW_SURFACE_WAIT_TIMEOUT_NANOS	J
    //   71: invokevirtual 802	com/google/glass/camera/SharedCameraClient:waitForPreviewSurface	(J)Z
    //   74: ifne +18 -> 92
    //   77: aload_1
    //   78: ldc_w 804
    //   81: invokestatic 544	com/google/glass/camera/SharedCameraLogging:logWarning	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    //   84: iconst_0
    //   85: ireturn
    //   86: aconst_null
    //   87: astore 4
    //   89: goto -38 -> 51
    //   92: aload 4
    //   94: invokevirtual 809	android/view/TextureView:getSurfaceTexture	()Landroid/graphics/SurfaceTexture;
    //   97: astore 5
    //   99: aload_1
    //   100: ldc_w 811
    //   103: invokestatic 366	com/google/glass/camera/SharedCameraLogging:logVerbose	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    //   106: iconst_2
    //   107: anewarray 699	com/google/glass/camera/SharedCameraManager$CameraParameter
    //   110: astore 9
    //   112: aload 9
    //   114: iconst_0
    //   115: new 699	com/google/glass/camera/SharedCameraManager$CameraParameter
    //   118: dup
    //   119: aload_0
    //   120: ldc_w 813
    //   123: ldc_w 815
    //   126: invokespecial 706	com/google/glass/camera/SharedCameraManager$CameraParameter:<init>	(Lcom/google/glass/camera/SharedCameraManager;Ljava/lang/String;Ljava/lang/String;)V
    //   129: aastore
    //   130: aload 9
    //   132: iconst_1
    //   133: new 699	com/google/glass/camera/SharedCameraManager$CameraParameter
    //   136: dup
    //   137: aload_0
    //   138: ldc_w 817
    //   141: ldc_w 819
    //   144: invokespecial 706	com/google/glass/camera/SharedCameraManager$CameraParameter:<init>	(Lcom/google/glass/camera/SharedCameraManager;Ljava/lang/String;Ljava/lang/String;)V
    //   147: aastore
    //   148: aload_0
    //   149: aload_1
    //   150: aload 9
    //   152: invokespecial 715	com/google/glass/camera/SharedCameraManager:setParametersSynchronously	(Lcom/google/glass/camera/SharedCameraClient;[Lcom/google/glass/camera/SharedCameraManager$CameraParameter;)Z
    //   155: pop
    //   156: aload_1
    //   157: ldc_w 821
    //   160: invokestatic 366	com/google/glass/camera/SharedCameraLogging:logVerbose	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    //   163: iconst_0
    //   164: istore 11
    //   166: iload 11
    //   168: iconst_3
    //   169: if_icmpge +23 -> 192
    //   172: aload_0
    //   173: getfield 296	com/google/glass/camera/SharedCameraManager:camera	Landroid/hardware/Camera;
    //   176: aload_0
    //   177: getfield 145	com/google/glass/camera/SharedCameraManager:previewCallbackBuffers	[[B
    //   180: iload 11
    //   182: aaload
    //   183: invokevirtual 825	android/hardware/Camera:addCallbackBuffer	([B)V
    //   186: iinc 11 1
    //   189: goto -23 -> 166
    //   192: aload_1
    //   193: ldc_w 827
    //   196: invokestatic 398	com/google/glass/camera/SharedCameraLogging:logDebug	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    //   199: aload_0
    //   200: getfield 296	com/google/glass/camera/SharedCameraManager:camera	Landroid/hardware/Camera;
    //   203: aload_0
    //   204: getfield 211	com/google/glass/camera/SharedCameraManager:previewCallback	Landroid/hardware/Camera$PreviewCallback;
    //   207: invokevirtual 831	android/hardware/Camera:setPreviewCallbackWithBuffer	(Landroid/hardware/Camera$PreviewCallback;)V
    //   210: aload_1
    //   211: ldc_w 833
    //   214: invokestatic 398	com/google/glass/camera/SharedCameraLogging:logDebug	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    //   217: aload_0
    //   218: getfield 296	com/google/glass/camera/SharedCameraManager:camera	Landroid/hardware/Camera;
    //   221: aload 5
    //   223: invokevirtual 837	android/hardware/Camera:setPreviewTexture	(Landroid/graphics/SurfaceTexture;)V
    //   226: aload_1
    //   227: ldc_w 839
    //   230: invokestatic 398	com/google/glass/camera/SharedCameraLogging:logDebug	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    //   233: aload_0
    //   234: getfield 296	com/google/glass/camera/SharedCameraManager:camera	Landroid/hardware/Camera;
    //   237: invokevirtual 842	android/hardware/Camera:startPreview	()V
    //   240: aload_0
    //   241: invokespecial 790	com/google/glass/camera/SharedCameraManager:isPreviewing	()Z
    //   244: ifne +54 -> 298
    //   247: aload_1
    //   248: ldc_w 844
    //   251: invokestatic 266	com/google/glass/camera/SharedCameraManager:handleCameraError	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    //   254: iconst_0
    //   255: ireturn
    //   256: aload_1
    //   257: ldc_w 846
    //   260: invokestatic 398	com/google/glass/camera/SharedCameraLogging:logDebug	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    //   263: aload_0
    //   264: invokespecial 848	com/google/glass/camera/SharedCameraManager:getInvisiblePreviewSurface	()Landroid/graphics/SurfaceTexture;
    //   267: astore 5
    //   269: goto -59 -> 210
    //   272: astore 6
    //   274: aload_1
    //   275: ldc_w 850
    //   278: aload 6
    //   280: invokestatic 306	com/google/glass/camera/SharedCameraManager:handleCameraError	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V
    //   283: iconst_0
    //   284: ireturn
    //   285: astore 7
    //   287: aload_1
    //   288: ldc_w 844
    //   291: aload 7
    //   293: invokestatic 306	com/google/glass/camera/SharedCameraManager:handleCameraError	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V
    //   296: iconst_0
    //   297: ireturn
    //   298: aload_1
    //   299: ifnull +21 -> 320
    //   302: aload_1
    //   303: ldc_w 852
    //   306: invokestatic 398	com/google/glass/camera/SharedCameraLogging:logDebug	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    //   309: aload_0
    //   310: getfield 204	com/google/glass/camera/SharedCameraManager:previewingClients	Ljava/util/Set;
    //   313: aload_1
    //   314: invokeinterface 858 2 0
    //   319: pop
    //   320: aload_1
    //   321: new 159	java/lang/StringBuilder
    //   324: dup
    //   325: invokespecial 160	java/lang/StringBuilder:<init>	()V
    //   328: ldc_w 860
    //   331: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   334: invokestatic 371	android/os/SystemClock:uptimeMillis	()J
    //   337: lload_2
    //   338: lsub
    //   339: invokevirtual 389	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   342: ldc_w 391
    //   345: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   348: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   351: invokestatic 366	com/google/glass/camera/SharedCameraLogging:logVerbose	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    //   354: aload_1
    //   355: ifnull +7 -> 362
    //   358: aload_1
    //   359: invokevirtual 863	com/google/glass/camera/SharedCameraClient:dispatchStartPreview	()V
    //   362: iconst_1
    //   363: ireturn
    //
    // Exception table:
    //   from	to	target	type
    //   210	226	272	java/io/IOException
    //   233	240	285	java/lang/RuntimeException
  }

  private boolean startRecordingSynchronously(final SharedCameraClient paramSharedCameraClient)
  {
    Assert.assertNotUiThread();
    if (isRecording());
    label282: 
    do
    {
      return true;
      this.previouslyPreviewingClients.clear();
      Iterator localIterator = this.previewingClients.iterator();
      while (localIterator.hasNext())
      {
        SharedCameraClient localSharedCameraClient = (SharedCameraClient)localIterator.next();
        this.previouslyPreviewingClients.add(localSharedCameraClient);
        if (!stopPreviewSynchronously(localSharedCameraClient))
          return false;
      }
      if (!releaseCameraSynchronously(paramSharedCameraClient))
        return false;
      SharedCameraLogging.logVerbose(paramSharedCameraClient, "About to start recording video.");
      long l = SystemClock.uptimeMillis();
      this.video = new Video();
      if (!this.video.start())
      {
        handleCameraError(paramSharedCameraClient, "Unable to start video recording.");
        return false;
      }
      SharedCameraLogging.logDebug(paramSharedCameraClient, "Recording video to: " + this.video.getFilePath());
      MediaRecorder localMediaRecorder = new MediaRecorder();
      localMediaRecorder.setOnInfoListener(new MediaRecorder.OnInfoListener()
      {
        public void onInfo(MediaRecorder paramAnonymousMediaRecorder, int paramAnonymousInt1, int paramAnonymousInt2)
        {
          // Byte code:
          //   0: iload_2
          //   1: tableswitch	default:+23 -> 24, 800:+24->25, 801:+45->46
          //   25: aload_0
          //   26: getfield 21	com/google/glass/camera/SharedCameraManager$9:val$client	Lcom/google/glass/camera/SharedCameraClient;
          //   29: ldc 28
          //   31: invokestatic 34	com/google/glass/camera/SharedCameraLogging:logWarning	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
          //   34: new 36	com/google/glass/camera/SharedCameraManager$9$1
          //   37: dup
          //   38: aload_0
          //   39: invokespecial 39	com/google/glass/camera/SharedCameraManager$9$1:<init>	(Lcom/google/glass/camera/SharedCameraManager$9;)V
          //   42: invokevirtual 42	com/google/glass/camera/SharedCameraManager$9$1:enqueue	()V
          //   45: return
          //   46: aload_0
          //   47: getfield 21	com/google/glass/camera/SharedCameraManager$9:val$client	Lcom/google/glass/camera/SharedCameraClient;
          //   50: ldc 44
          //   52: invokestatic 34	com/google/glass/camera/SharedCameraLogging:logWarning	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
          //   55: new 46	com/google/glass/camera/SharedCameraManager$9$2
          //   58: dup
          //   59: aload_0
          //   60: invokespecial 47	com/google/glass/camera/SharedCameraManager$9$2:<init>	(Lcom/google/glass/camera/SharedCameraManager$9;)V
          //   63: invokevirtual 48	com/google/glass/camera/SharedCameraManager$9$2:enqueue	()V
          //   66: return
        }
      });
      if (paramSharedCameraClient != null);
      for (TextureView localTextureView = paramSharedCameraClient.getViewfinder(); ; localTextureView = null)
      {
        if (localTextureView == null)
          break label282;
        SharedCameraLogging.logDebug(paramSharedCameraClient, "Using the preview surface provided by the client for video recording.");
        paramSharedCameraClient.startUsingViewfinder();
        if (paramSharedCameraClient.waitForPreviewSurface(PREVIEW_SURFACE_WAIT_TIMEOUT_NANOS))
          break;
        SharedCameraLogging.logWarning(paramSharedCameraClient, "Aborting video recording.");
        this.videoRecorder = null;
        return false;
      }
      for (SurfaceTexture localSurfaceTexture = localTextureView.getSurfaceTexture(); ; localSurfaceTexture = getInvisiblePreviewSurface())
      {
        SharedCameraLogging.logDebug(paramSharedCameraClient, "Adding the preview surface for video recording.");
        HiddenApiHelper.setSurfaceTexture(localMediaRecorder, localSurfaceTexture);
        if (safeVideoRecorderStart(paramSharedCameraClient, localMediaRecorder, this.video))
          break;
        this.videoRecorder = null;
        releaseCameraSynchronously(paramSharedCameraClient);
        return false;
        SharedCameraLogging.logDebug(paramSharedCameraClient, "Using the invisible preview surface for video recording.");
      }
      this.videoRecorder = localMediaRecorder;
      this.videoRecorder.setOnErrorListener(new MediaRecorder.OnErrorListener()
      {
        public void onError(MediaRecorder paramAnonymousMediaRecorder, int paramAnonymousInt1, int paramAnonymousInt2)
        {
          // Byte code:
          //   0: iload_3
          //   1: sipush -1007
          //   4: if_icmpne +34 -> 38
          //   7: aload_0
          //   8: getfield 21	com/google/glass/camera/SharedCameraManager$10:val$client	Lcom/google/glass/camera/SharedCameraClient;
          //   11: ldc 28
          //   13: invokestatic 34	com/google/glass/camera/SharedCameraLogging:logWarning	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
          //   16: aload_0
          //   17: getfield 19	com/google/glass/camera/SharedCameraManager$10:this$0	Lcom/google/glass/camera/SharedCameraManager;
          //   20: invokestatic 38	com/google/glass/camera/SharedCameraManager:access$3700	(Lcom/google/glass/camera/SharedCameraManager;)Lcom/google/glass/camera/Video;
          //   23: invokevirtual 43	com/google/glass/camera/Video:cancel	()V
          //   26: new 45	com/google/glass/camera/SharedCameraManager$10$1
          //   29: dup
          //   30: aload_0
          //   31: invokespecial 48	com/google/glass/camera/SharedCameraManager$10$1:<init>	(Lcom/google/glass/camera/SharedCameraManager$10;)V
          //   34: invokevirtual 51	com/google/glass/camera/SharedCameraManager$10$1:enqueue	()V
          //   37: return
          //   38: aload_0
          //   39: getfield 21	com/google/glass/camera/SharedCameraManager$10:val$client	Lcom/google/glass/camera/SharedCameraClient;
          //   42: new 53	java/lang/StringBuilder
          //   45: dup
          //   46: invokespecial 54	java/lang/StringBuilder:<init>	()V
          //   49: ldc 56
          //   51: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   54: iload_2
          //   55: invokevirtual 63	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
          //   58: ldc 65
          //   60: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   63: iload_3
          //   64: invokevirtual 63	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
          //   67: ldc 67
          //   69: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   72: invokevirtual 71	java/lang/StringBuilder:toString	()Ljava/lang/String;
          //   75: invokestatic 74	com/google/glass/camera/SharedCameraManager:access$2100	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
          //   78: aload_0
          //   79: getfield 19	com/google/glass/camera/SharedCameraManager$10:this$0	Lcom/google/glass/camera/SharedCameraManager;
          //   82: aconst_null
          //   83: invokestatic 78	com/google/glass/camera/SharedCameraManager:access$3802	(Lcom/google/glass/camera/SharedCameraManager;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;
          //   86: pop
          //   87: return
        }
      });
      this.recordingClient = paramSharedCameraClient;
      SharedCameraLogging.logVerbose(paramSharedCameraClient, "Starting recording took " + (SystemClock.uptimeMillis() - l) + " ms.");
    }
    while (paramSharedCameraClient == null);
    paramSharedCameraClient.dispatchStartRecording(this.video);
    return true;
  }

  private boolean stopPreviewSynchronously(SharedCameraClient paramSharedCameraClient)
  {
    Assert.assertNotUiThread();
    if (!this.previewingClients.isEmpty())
    {
      SharedCameraLogging.logDebug(paramSharedCameraClient, "Removing client from the previewing clients.");
      this.previewingClients.remove(paramSharedCameraClient);
    }
    if (!isPreviewing());
    while (true)
    {
      return true;
      if (!this.previewingClients.isEmpty())
      {
        SharedCameraLogging.logWarning(paramSharedCameraClient, "Not stopping the preview, because there are still clients receiving frames.");
        Iterator localIterator = this.previewingClients.iterator();
        while (localIterator.hasNext())
        {
          SharedCameraClient localSharedCameraClient = (SharedCameraClient)localIterator.next();
          SharedCameraLogging.logDebug(paramSharedCameraClient, "Client \"" + localSharedCameraClient + "\" is still receiving preview frames.");
        }
        return false;
      }
      SharedCameraLogging.logVerbose(paramSharedCameraClient, "About to stop the preview.");
      long l = SystemClock.uptimeMillis();
      SharedCameraLogging.logDebug(paramSharedCameraClient, "Stopping the preview.");
      try
      {
        this.camera.stopPreview();
        if (isPreviewing())
        {
          handleCameraError(paramSharedCameraClient, "Failed to stop the preview.");
          return false;
        }
      }
      catch (RuntimeException localRuntimeException)
      {
        handleCameraError(paramSharedCameraClient, "Failed to stop the preview.", localRuntimeException);
        return false;
      }
      SharedCameraLogging.logDebug(paramSharedCameraClient, "Removing the preview surface.");
      try
      {
        this.camera.setPreviewTexture(null);
        this.camera.setPreviewDisplay(null);
        if (paramSharedCameraClient != null)
        {
          SharedCameraLogging.logDebug(paramSharedCameraClient, "Releasing previously destroyed preview surfaces.");
          paramSharedCameraClient.releaseDestroyedPreviewSurfaces();
        }
        SharedCameraLogging.logVerbose(paramSharedCameraClient, "Stopping the preview took " + (SystemClock.uptimeMillis() - l) + " ms.");
        if (paramSharedCameraClient != null)
          paramSharedCameraClient.dispatchStopPreview();
        if (this.previewingClients.isEmpty())
        {
          releaseCameraSynchronously(paramSharedCameraClient);
          return true;
        }
      }
      catch (IOException localIOException)
      {
        handleCameraError(paramSharedCameraClient, "Failed to remove the preview surface.", localIOException);
      }
    }
    return false;
  }

  private boolean stopRecordingSynchronously(SharedCameraClient paramSharedCameraClient)
  {
    return stopRecordingSynchronously(paramSharedCameraClient, false, false);
  }

  private boolean stopRecordingSynchronously(SharedCameraClient paramSharedCameraClient, boolean paramBoolean1, boolean paramBoolean2)
  {
    Assert.assertNotUiThread();
    if (!isRecording());
    do
    {
      return true;
      SharedCameraLogging.logVerbose(paramSharedCameraClient, "About to stop recording video.");
      long l = SystemClock.uptimeMillis();
      try
      {
        SharedCameraLogging.logDebug(paramSharedCameraClient, "Stopping video recording.");
        this.videoRecorder.stop();
        SharedCameraLogging.logDebug(paramSharedCameraClient, "Releasing media recorder.");
        if (this.videoRecorder != null)
          this.videoRecorder.release();
        if (0 != 0)
          releaseCameraSynchronously(paramSharedCameraClient);
        this.video.stop(this.context);
        SharedCameraLogging.logVerbose(paramSharedCameraClient, "Stopping recording took " + (SystemClock.uptimeMillis() - l) + " ms.");
        this.recordingClient.dispatchStopRecording(this.video, paramBoolean1, paramBoolean2);
        if (!this.recordingClient.equals(paramSharedCameraClient))
          paramSharedCameraClient.dispatchStopRecording(this.video, paramBoolean1, paramBoolean2);
        this.videoRecorder = null;
        this.camera.lock();
        releaseCameraSynchronously(paramSharedCameraClient);
        SharedCameraLogging.logDebug(paramSharedCameraClient, "Releasing previously destroyed preview surfaces for video recording.");
        this.recordingClient.releaseDestroyedPreviewSurfaces();
        this.video = null;
        this.recordingClient = null;
        Iterator localIterator = this.previouslyPreviewingClients.iterator();
        while (localIterator.hasNext())
          if (!startPreviewSynchronously((SharedCameraClient)localIterator.next()))
            return false;
      }
      catch (IllegalStateException localIllegalStateException)
      {
        handleCameraError(paramSharedCameraClient, "Unable to stop video recording.", localIllegalStateException);
        SharedCameraLogging.logDebug(paramSharedCameraClient, "Releasing media recorder.");
        if (this.videoRecorder != null)
          this.videoRecorder.release();
        if (1 != 0)
          releaseCameraSynchronously(paramSharedCameraClient);
        return false;
      }
      catch (RuntimeException localRuntimeException)
      {
        handleCameraError(paramSharedCameraClient, "Unable to stop video recording.", localRuntimeException);
        SharedCameraLogging.logDebug(paramSharedCameraClient, "Releasing media recorder.");
        if (this.videoRecorder != null)
          this.videoRecorder.release();
        if (1 != 0)
          releaseCameraSynchronously(paramSharedCameraClient);
        return false;
      }
      finally
      {
        SharedCameraLogging.logDebug(paramSharedCameraClient, "Releasing media recorder.");
        if (this.videoRecorder != null)
          this.videoRecorder.release();
        if (0 != 0)
          releaseCameraSynchronously(paramSharedCameraClient);
      }
    }
    while (!this.previewingClients.isEmpty());
    releaseCameraSynchronously(paramSharedCameraClient);
    return true;
  }

  private void unlockCamera()
  {
    if (this.wakeLock.isHeld())
      this.wakeLock.release();
    this.cameraLock.unlock();
  }

  void prepareCamera()
  {
    // Byte code:
    //   0: aconst_null
    //   1: ldc_w 999
    //   4: invokestatic 398	com/google/glass/camera/SharedCameraLogging:logDebug	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    //   7: aload_0
    //   8: invokespecial 1001	com/google/glass/camera/SharedCameraManager:cancelPrepareCameraTimeout	()V
    //   11: new 1003	com/google/glass/camera/SharedCameraManager$8
    //   14: dup
    //   15: aload_0
    //   16: invokespecial 1004	com/google/glass/camera/SharedCameraManager$8:<init>	(Lcom/google/glass/camera/SharedCameraManager;)V
    //   19: invokevirtual 1005	com/google/glass/camera/SharedCameraManager$8:enqueue	()V
    //   22: return
  }

  void shutDown()
  {
    shutDownCameraSynchronously(null);
  }

  void startPreview(final SharedCameraClient paramSharedCameraClient)
  {
    // Byte code:
    //   0: aload_1
    //   1: ldc_w 1011
    //   4: invokestatic 398	com/google/glass/camera/SharedCameraLogging:logDebug	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    //   7: aload_0
    //   8: invokespecial 1001	com/google/glass/camera/SharedCameraManager:cancelPrepareCameraTimeout	()V
    //   11: new 1013	com/google/glass/camera/SharedCameraManager$4
    //   14: dup
    //   15: aload_0
    //   16: aload_1
    //   17: invokespecial 1014	com/google/glass/camera/SharedCameraManager$4:<init>	(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraClient;)V
    //   20: invokevirtual 1015	com/google/glass/camera/SharedCameraManager$4:enqueue	()V
    //   23: return
  }

  void startRecording(final SharedCameraClient paramSharedCameraClient)
  {
    // Byte code:
    //   0: aload_1
    //   1: ldc_w 1018
    //   4: invokestatic 398	com/google/glass/camera/SharedCameraLogging:logDebug	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    //   7: aload_0
    //   8: invokespecial 1001	com/google/glass/camera/SharedCameraManager:cancelPrepareCameraTimeout	()V
    //   11: new 1020	com/google/glass/camera/SharedCameraManager$6
    //   14: dup
    //   15: aload_0
    //   16: aload_1
    //   17: invokespecial 1021	com/google/glass/camera/SharedCameraManager$6:<init>	(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraClient;)V
    //   20: invokevirtual 1022	com/google/glass/camera/SharedCameraManager$6:enqueue	()V
    //   23: return
  }

  void stopPreview(final SharedCameraClient paramSharedCameraClient)
  {
    // Byte code:
    //   0: aload_1
    //   1: ldc_w 1024
    //   4: invokestatic 398	com/google/glass/camera/SharedCameraLogging:logDebug	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    //   7: aload_0
    //   8: invokespecial 1001	com/google/glass/camera/SharedCameraManager:cancelPrepareCameraTimeout	()V
    //   11: new 1026	com/google/glass/camera/SharedCameraManager$5
    //   14: dup
    //   15: aload_0
    //   16: aload_1
    //   17: invokespecial 1027	com/google/glass/camera/SharedCameraManager$5:<init>	(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraClient;)V
    //   20: invokevirtual 1028	com/google/glass/camera/SharedCameraManager$5:enqueue	()V
    //   23: return
  }

  void stopRecording(final SharedCameraClient paramSharedCameraClient)
  {
    // Byte code:
    //   0: aload_1
    //   1: ldc_w 1031
    //   4: invokestatic 398	com/google/glass/camera/SharedCameraLogging:logDebug	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
    //   7: aload_0
    //   8: invokespecial 1001	com/google/glass/camera/SharedCameraManager:cancelPrepareCameraTimeout	()V
    //   11: new 1033	com/google/glass/camera/SharedCameraManager$7
    //   14: dup
    //   15: aload_0
    //   16: aload_1
    //   17: invokespecial 1034	com/google/glass/camera/SharedCameraManager$7:<init>	(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraClient;)V
    //   20: invokevirtual 1035	com/google/glass/camera/SharedCameraManager$7:enqueue	()V
    //   23: return
  }

  void takePicture(SharedCameraClient paramSharedCameraClient)
  {
    SharedCameraLogging.logDebug(paramSharedCameraClient, "Take picture requested.");
    cancelPrepareCameraTimeout();
    new PictureRequest(paramSharedCameraClient).enqueue();
  }

  private abstract class CameraManipulation
  {
    private CameraManipulation()
    {
    }

    public void enqueue()
    {
      if (SharedCameraManager.this.cameraManipulationExecutorLock.isLocked())
      {
        SharedCameraLogging.logWarning(null, "Ignoring camera manipulation request, because the executor is locked.");
        return;
      }
      if (SharedCameraManager.this.cameraManipulationExecutor.isShutdown())
      {
        SharedCameraLogging.logWarning(null, "Ignoring camera manipulation request, because the executor has been shut down.");
        return;
      }
      SharedCameraManager.this.cameraManipulationExecutor.execute(new Runnable()
      {
        public void run()
        {
          SharedCameraManager.this.lockCamera();
          try
          {
            SharedCameraManager.CameraManipulation.this.onExecute();
            return;
          }
          finally
          {
            SharedCameraManager.this.unlockCamera();
          }
        }
      });
    }

    public abstract void onExecute();
  }

  private class CameraParameter
  {
    public final String key;
    public final String value;

    CameraParameter(String paramString1, String arg3)
    {
      this.key = paramString1;
      Object localObject;
      this.value = localObject;
    }
  }

  private class PictureRequest extends SharedCameraManager.CameraManipulation
  {
    private final SharedCameraClient client;
    private boolean isTakingPicture;
    private final Camera.PictureCallback jpegCallback = new Camera.PictureCallback()
    {
      public void onPictureTaken(final byte[] paramAnonymousArrayOfByte, Camera paramAnonymousCamera)
      {
        if (((Labs.isEnabled(Labs.Feature.GCAM)) && (SharedCameraManager.PictureRequest.this.isGcamCaptureFinished(paramAnonymousArrayOfByte))) || (SharedCameraManager.PictureRequest.this.shouldTakeCliplet))
        {
          SharedCameraManager.this.lockCamera();
          SharedCameraManager.PictureRequest.access$1902(SharedCameraManager.PictureRequest.this, false);
        }
        do
        {
          try
          {
            SharedCameraManager.PictureRequest.this.pictureCallbackCondition.signalAll();
            return;
          }
          finally
          {
            SharedCameraManager.this.unlockCamera();
          }
          Size localSize = SharedCameraConstants.PICTURE_SIZE;
          SharedCameraLogging.logDebug(SharedCameraManager.PictureRequest.this.client, "Received a " + localSize.width + "x" + localSize.height + " picture from the camera after " + (SystemClock.uptimeMillis() - SharedCameraManager.PictureRequest.this.requestTimeMillis) + " ms.");
          new AsyncTask()
          {
            protected Void doInBackground(Void[] paramAnonymous2ArrayOfVoid)
            {
              long l = SystemClock.uptimeMillis();
              if (!SharedCameraManager.PictureRequest.this.picture.saveJpeg(SharedCameraManager.this.context, paramAnonymousArrayOfByte))
              {
                SharedCameraManager.handleCameraError(SharedCameraManager.PictureRequest.this.client, "Failed to save the picture.");
                return null;
              }
              SharedCameraLogging.logVerbose(SharedCameraManager.PictureRequest.this.client, "Saving the JPEG took " + (SystemClock.uptimeMillis() - l) + " ms.");
              if (SharedCameraManager.PictureRequest.this.client != null)
                SharedCameraManager.PictureRequest.this.client.dispatchPictureSaved(SharedCameraManager.PictureRequest.this.picture);
              SharedCameraLogging.logVerbose(SharedCameraManager.PictureRequest.this.client, "Taking the picture took " + (SystemClock.uptimeMillis() - SharedCameraManager.PictureRequest.this.requestTimeMillis) + " ms total.");
              return null;
            }
          }
          .executeOnExecutor(SharedCameraManager.this.backgroundExecutor, new Void[0]);
        }
        while ((Labs.isEnabled(Labs.Feature.GCAM)) || (SharedCameraManager.PictureRequest.this.shouldTakeCliplet));
        SharedCameraManager.this.lockCamera();
        SharedCameraManager.PictureRequest.access$1902(SharedCameraManager.PictureRequest.this, false);
        try
        {
          SharedCameraManager.PictureRequest.this.pictureCallbackCondition.signalAll();
          return;
        }
        finally
        {
          SharedCameraManager.this.unlockCamera();
        }
      }
    };
    private final Picture picture = new Picture();
    private final Condition pictureCallbackCondition = SharedCameraManager.this.cameraLock.newCondition();
    private final Camera.PictureCallback postviewCallback = new Camera.PictureCallback()
    {
      public void onPictureTaken(final byte[] paramAnonymousArrayOfByte, Camera paramAnonymousCamera)
      {
        SystemClock.uptimeMillis();
        final Size localSize = SharedCameraConstants.POSTVIEW_SIZE;
        SharedCameraLogging.logDebug(SharedCameraManager.PictureRequest.this.client, "Received a " + localSize.width + "x" + localSize.height + " postview from the camera after " + (SystemClock.uptimeMillis() - SharedCameraManager.PictureRequest.this.requestTimeMillis) + " ms.");
        new AsyncTask()
        {
          protected Void doInBackground(Void[] paramAnonymous2ArrayOfVoid)
          {
            SharedCameraManager.PictureRequest.this.picture.saveThumbnail(paramAnonymousArrayOfByte, localSize.width, localSize.height);
            if (SharedCameraManager.PictureRequest.this.client != null)
              SharedCameraManager.PictureRequest.this.client.dispatchPictureTaken(SharedCameraManager.PictureRequest.this.picture);
            SharedCameraLogging.logVerbose(SharedCameraManager.PictureRequest.this.client, "Showing the picture took " + (SystemClock.uptimeMillis() - SharedCameraManager.PictureRequest.this.requestTimeMillis) + " ms.");
            long l = SystemClock.uptimeMillis();
            Barcode localBarcode = SharedCameraManager.this.getBarcodeRecognizer().recognize(paramAnonymousArrayOfByte, localSize.width, localSize.height);
            if ((localBarcode != null) && (SharedCameraManager.PictureRequest.this.client != null))
              SharedCameraManager.PictureRequest.this.client.dispatchBarcodeFound(localBarcode);
            SharedCameraLogging.logVerbose(SharedCameraManager.PictureRequest.this.client, "Scanning for a barcode took " + (SystemClock.uptimeMillis() - l) + " ms.");
            return null;
          }
        }
        .executeOnExecutor(SharedCameraManager.this.backgroundExecutor, new Void[0]);
      }
    };
    private final long requestTimeMillis = SystemClock.uptimeMillis();
    private boolean shouldTakeCliplet;
    private final Camera.ShutterCallback shutterCallback = new Camera.ShutterCallback()
    {
      public void onShutter()
      {
        SharedCameraManager.PictureRequest.this.picture.setCaptureTimeNow();
        SharedCameraManager.PictureRequest.access$1102(SharedCameraManager.PictureRequest.this, SystemClock.uptimeMillis());
        SharedCameraManager.this.context.sendBroadcast(new Intent("com.google.glass.camera.action.SHUTTER"));
        if (SharedCameraManager.PictureRequest.this.client != null)
          SharedCameraManager.PictureRequest.this.client.dispatchCameraShutter();
        SharedCameraLogging.logVerbose(SharedCameraManager.PictureRequest.this.client, "Fired shutter " + (SharedCameraManager.PictureRequest.this.shutterTimeMillis - SharedCameraManager.PictureRequest.this.requestTimeMillis) + " ms after request.");
      }
    };
    private long shutterTimeMillis;

    public PictureRequest(SharedCameraClient arg2)
    {
      super(null);
      Object localObject;
      this.client = localObject;
      if ((Labs.isEnabled(Labs.Feature.CLIPLET)) && (localObject.getTag().startsWith("RecordClipletActivity")))
        this.shouldTakeCliplet = true;
    }

    private final boolean isGcamCaptureFinished(byte[] paramArrayOfByte)
    {
      return (paramArrayOfByte.length >= 4) && (paramArrayOfByte[0] == 71) && (paramArrayOfByte[1] == 67) && (paramArrayOfByte[2] == 65) && (paramArrayOfByte[3] == 77);
    }

    // ERROR //
    public void onExecute()
    {
      // Byte code:
      //   0: aload_0
      //   1: getfield 78	com/google/glass/camera/SharedCameraManager$PictureRequest:client	Lcom/google/glass/camera/SharedCameraClient;
      //   4: ldc 138
      //   6: invokestatic 144	com/google/glass/camera/SharedCameraLogging:logDebug	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
      //   9: aload_0
      //   10: getfield 27	com/google/glass/camera/SharedCameraManager$PictureRequest:this$0	Lcom/google/glass/camera/SharedCameraManager;
      //   13: aload_0
      //   14: getfield 78	com/google/glass/camera/SharedCameraManager$PictureRequest:client	Lcom/google/glass/camera/SharedCameraClient;
      //   17: invokestatic 148	com/google/glass/camera/SharedCameraManager:access$2200	(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraClient;)Z
      //   20: ifne +13 -> 33
      //   23: aload_0
      //   24: getfield 78	com/google/glass/camera/SharedCameraManager$PictureRequest:client	Lcom/google/glass/camera/SharedCameraClient;
      //   27: ldc 150
      //   29: invokestatic 153	com/google/glass/camera/SharedCameraManager:access$2100	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
      //   32: return
      //   33: aload_0
      //   34: getfield 27	com/google/glass/camera/SharedCameraManager$PictureRequest:this$0	Lcom/google/glass/camera/SharedCameraManager;
      //   37: aload_0
      //   38: getfield 78	com/google/glass/camera/SharedCameraManager$PictureRequest:client	Lcom/google/glass/camera/SharedCameraClient;
      //   41: invokestatic 156	com/google/glass/camera/SharedCameraManager:access$2300	(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraClient;)Z
      //   44: ifne +13 -> 57
      //   47: aload_0
      //   48: getfield 78	com/google/glass/camera/SharedCameraManager$PictureRequest:client	Lcom/google/glass/camera/SharedCameraClient;
      //   51: ldc 158
      //   53: invokestatic 153	com/google/glass/camera/SharedCameraManager:access$2100	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
      //   56: return
      //   57: getstatic 161	com/google/glass/util/Labs$Feature:GCAM	Lcom/google/glass/util/Labs$Feature;
      //   60: invokestatic 90	com/google/glass/util/Labs:isEnabled	(Lcom/google/glass/util/Labs$Feature;)Z
      //   63: ifeq +191 -> 254
      //   66: aload_0
      //   67: getfield 76	com/google/glass/camera/SharedCameraManager$PictureRequest:picture	Lcom/google/glass/camera/Picture;
      //   70: iconst_1
      //   71: invokevirtual 165	com/google/glass/camera/Picture:setIsGcam	(Z)V
      //   74: aload_0
      //   75: getfield 27	com/google/glass/camera/SharedCameraManager$PictureRequest:this$0	Lcom/google/glass/camera/SharedCameraManager;
      //   78: aload_0
      //   79: getfield 78	com/google/glass/camera/SharedCameraManager$PictureRequest:client	Lcom/google/glass/camera/SharedCameraClient;
      //   82: invokestatic 168	com/google/glass/camera/SharedCameraManager:access$2400	(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraClient;)Z
      //   85: pop
      //   86: invokestatic 174	com/google/glass/util/Assert:isTest	()Z
      //   89: ifeq +18 -> 107
      //   92: aload_0
      //   93: getfield 78	com/google/glass/camera/SharedCameraManager$PictureRequest:client	Lcom/google/glass/camera/SharedCameraClient;
      //   96: ldc 176
      //   98: invokestatic 179	com/google/glass/camera/SharedCameraLogging:logWarning	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
      //   101: ldc2_w 180
      //   104: invokestatic 187	java/lang/Thread:sleep	(J)V
      //   107: aload_0
      //   108: getfield 27	com/google/glass/camera/SharedCameraManager$PictureRequest:this$0	Lcom/google/glass/camera/SharedCameraManager;
      //   111: invokestatic 191	com/google/glass/camera/SharedCameraManager:access$2800	(Lcom/google/glass/camera/SharedCameraManager;)Landroid/hardware/Camera;
      //   114: aload_0
      //   115: getfield 27	com/google/glass/camera/SharedCameraManager$PictureRequest:this$0	Lcom/google/glass/camera/SharedCameraManager;
      //   118: invokestatic 195	com/google/glass/camera/SharedCameraManager:access$2900	(Lcom/google/glass/camera/SharedCameraManager;)[B
      //   121: invokestatic 201	com/google/glass/hidden/HiddenCamera:addPostviewCallbackBuffer	(Landroid/hardware/Camera;[B)V
      //   124: aload_0
      //   125: iconst_1
      //   126: putfield 129	com/google/glass/camera/SharedCameraManager$PictureRequest:isTakingPicture	Z
      //   129: aload_0
      //   130: getfield 27	com/google/glass/camera/SharedCameraManager$PictureRequest:this$0	Lcom/google/glass/camera/SharedCameraManager;
      //   133: invokestatic 191	com/google/glass/camera/SharedCameraManager:access$2800	(Lcom/google/glass/camera/SharedCameraManager;)Landroid/hardware/Camera;
      //   136: aload_0
      //   137: getfield 51	com/google/glass/camera/SharedCameraManager$PictureRequest:shutterCallback	Landroid/hardware/Camera$ShutterCallback;
      //   140: aconst_null
      //   141: aload_0
      //   142: getfield 56	com/google/glass/camera/SharedCameraManager$PictureRequest:postviewCallback	Landroid/hardware/Camera$PictureCallback;
      //   145: aload_0
      //   146: getfield 61	com/google/glass/camera/SharedCameraManager$PictureRequest:jpegCallback	Landroid/hardware/Camera$PictureCallback;
      //   149: invokevirtual 207	android/hardware/Camera:takePicture	(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
      //   152: aload_0
      //   153: getfield 106	com/google/glass/camera/SharedCameraManager$PictureRequest:shouldTakeCliplet	Z
      //   156: ifeq +34 -> 190
      //   159: aload_0
      //   160: getfield 27	com/google/glass/camera/SharedCameraManager$PictureRequest:this$0	Lcom/google/glass/camera/SharedCameraManager;
      //   163: invokestatic 211	com/google/glass/camera/SharedCameraManager:access$2500	(Lcom/google/glass/camera/SharedCameraManager;)Lcom/google/glass/camera/Video;
      //   166: aload_0
      //   167: getfield 27	com/google/glass/camera/SharedCameraManager$PictureRequest:this$0	Lcom/google/glass/camera/SharedCameraManager;
      //   170: invokestatic 215	com/google/glass/camera/SharedCameraManager:access$1200	(Lcom/google/glass/camera/SharedCameraManager;)Landroid/content/Context;
      //   173: invokevirtual 221	com/google/glass/camera/Video:stop	(Landroid/content/Context;)V
      //   176: aload_0
      //   177: getfield 78	com/google/glass/camera/SharedCameraManager$PictureRequest:client	Lcom/google/glass/camera/SharedCameraClient;
      //   180: aload_0
      //   181: getfield 27	com/google/glass/camera/SharedCameraManager$PictureRequest:this$0	Lcom/google/glass/camera/SharedCameraManager;
      //   184: invokestatic 211	com/google/glass/camera/SharedCameraManager:access$2500	(Lcom/google/glass/camera/SharedCameraManager;)Lcom/google/glass/camera/Video;
      //   187: invokevirtual 225	com/google/glass/camera/SharedCameraClient:dispatchClipletRecorded	(Lcom/google/glass/camera/Video;)V
      //   190: aload_0
      //   191: getfield 106	com/google/glass/camera/SharedCameraManager$PictureRequest:shouldTakeCliplet	Z
      //   194: ifeq +12 -> 206
      //   197: aload_0
      //   198: getfield 27	com/google/glass/camera/SharedCameraManager$PictureRequest:this$0	Lcom/google/glass/camera/SharedCameraManager;
      //   201: aconst_null
      //   202: invokestatic 229	com/google/glass/camera/SharedCameraManager:access$2502	(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/Video;)Lcom/google/glass/camera/Video;
      //   205: pop
      //   206: aload_0
      //   207: getfield 129	com/google/glass/camera/SharedCameraManager$PictureRequest:isTakingPicture	Z
      //   210: ifeq +244 -> 454
      //   213: aload_0
      //   214: getfield 44	com/google/glass/camera/SharedCameraManager$PictureRequest:pictureCallbackCondition	Ljava/util/concurrent/locks/Condition;
      //   217: invokestatic 232	com/google/glass/camera/SharedCameraManager:access$3100	()J
      //   220: invokeinterface 238 3 0
      //   225: lconst_0
      //   226: lcmp
      //   227: ifgt -21 -> 206
      //   230: aload_0
      //   231: getfield 78	com/google/glass/camera/SharedCameraManager$PictureRequest:client	Lcom/google/glass/camera/SharedCameraClient;
      //   234: ldc 240
      //   236: invokestatic 153	com/google/glass/camera/SharedCameraManager:access$2100	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
      //   239: return
      //   240: astore 5
      //   242: aload_0
      //   243: getfield 78	com/google/glass/camera/SharedCameraManager$PictureRequest:client	Lcom/google/glass/camera/SharedCameraClient;
      //   246: ldc 242
      //   248: aload 5
      //   250: invokestatic 246	com/google/glass/camera/SharedCameraManager:access$3000	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V
      //   253: return
      //   254: aload_0
      //   255: getfield 106	com/google/glass/camera/SharedCameraManager$PictureRequest:shouldTakeCliplet	Z
      //   258: ifeq +101 -> 359
      //   261: aload_0
      //   262: getfield 27	com/google/glass/camera/SharedCameraManager$PictureRequest:this$0	Lcom/google/glass/camera/SharedCameraManager;
      //   265: new 217	com/google/glass/camera/Video
      //   268: dup
      //   269: invokespecial 247	com/google/glass/camera/Video:<init>	()V
      //   272: invokestatic 229	com/google/glass/camera/SharedCameraManager:access$2502	(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/Video;)Lcom/google/glass/camera/Video;
      //   275: pop
      //   276: aload_0
      //   277: getfield 27	com/google/glass/camera/SharedCameraManager$PictureRequest:this$0	Lcom/google/glass/camera/SharedCameraManager;
      //   280: invokestatic 211	com/google/glass/camera/SharedCameraManager:access$2500	(Lcom/google/glass/camera/SharedCameraManager;)Lcom/google/glass/camera/Video;
      //   283: invokevirtual 250	com/google/glass/camera/Video:start	()Z
      //   286: ifne +12 -> 298
      //   289: aload_0
      //   290: getfield 78	com/google/glass/camera/SharedCameraManager$PictureRequest:client	Lcom/google/glass/camera/SharedCameraClient;
      //   293: ldc 252
      //   295: invokestatic 153	com/google/glass/camera/SharedCameraManager:access$2100	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
      //   298: aload_0
      //   299: getfield 78	com/google/glass/camera/SharedCameraManager$PictureRequest:client	Lcom/google/glass/camera/SharedCameraClient;
      //   302: new 254	java/lang/StringBuilder
      //   305: dup
      //   306: invokespecial 255	java/lang/StringBuilder:<init>	()V
      //   309: ldc_w 257
      //   312: invokevirtual 261	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   315: aload_0
      //   316: getfield 27	com/google/glass/camera/SharedCameraManager$PictureRequest:this$0	Lcom/google/glass/camera/SharedCameraManager;
      //   319: invokestatic 211	com/google/glass/camera/SharedCameraManager:access$2500	(Lcom/google/glass/camera/SharedCameraManager;)Lcom/google/glass/camera/Video;
      //   322: invokevirtual 264	com/google/glass/camera/Video:getFilePath	()Ljava/lang/String;
      //   325: invokevirtual 261	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   328: invokevirtual 267	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   331: invokestatic 144	com/google/glass/camera/SharedCameraLogging:logDebug	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
      //   334: aload_0
      //   335: getfield 27	com/google/glass/camera/SharedCameraManager$PictureRequest:this$0	Lcom/google/glass/camera/SharedCameraManager;
      //   338: aload_0
      //   339: getfield 78	com/google/glass/camera/SharedCameraManager$PictureRequest:client	Lcom/google/glass/camera/SharedCameraClient;
      //   342: invokestatic 270	com/google/glass/camera/SharedCameraManager:access$2600	(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraClient;)Z
      //   345: ifne -259 -> 86
      //   348: aload_0
      //   349: getfield 78	com/google/glass/camera/SharedCameraManager$PictureRequest:client	Lcom/google/glass/camera/SharedCameraClient;
      //   352: ldc_w 272
      //   355: invokestatic 153	com/google/glass/camera/SharedCameraManager:access$2100	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
      //   358: return
      //   359: aload_0
      //   360: getfield 27	com/google/glass/camera/SharedCameraManager$PictureRequest:this$0	Lcom/google/glass/camera/SharedCameraManager;
      //   363: aload_0
      //   364: getfield 78	com/google/glass/camera/SharedCameraManager$PictureRequest:client	Lcom/google/glass/camera/SharedCameraClient;
      //   367: invokestatic 275	com/google/glass/camera/SharedCameraManager:access$2700	(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraClient;)Z
      //   370: ifne -284 -> 86
      //   373: aload_0
      //   374: getfield 78	com/google/glass/camera/SharedCameraManager$PictureRequest:client	Lcom/google/glass/camera/SharedCameraClient;
      //   377: ldc_w 277
      //   380: invokestatic 153	com/google/glass/camera/SharedCameraManager:access$2100	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;)V
      //   383: return
      //   384: astore 8
      //   386: aload_0
      //   387: getfield 78	com/google/glass/camera/SharedCameraManager$PictureRequest:client	Lcom/google/glass/camera/SharedCameraClient;
      //   390: ldc_w 279
      //   393: aload 8
      //   395: invokestatic 282	com/google/glass/camera/SharedCameraLogging:logError	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V
      //   398: goto -291 -> 107
      //   401: astore_3
      //   402: aload_0
      //   403: iconst_0
      //   404: putfield 129	com/google/glass/camera/SharedCameraManager$PictureRequest:isTakingPicture	Z
      //   407: aload_0
      //   408: getfield 78	com/google/glass/camera/SharedCameraManager$PictureRequest:client	Lcom/google/glass/camera/SharedCameraClient;
      //   411: ldc_w 284
      //   414: aload_3
      //   415: invokestatic 246	com/google/glass/camera/SharedCameraManager:access$3000	(Lcom/google/glass/camera/SharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V
      //   418: aload_0
      //   419: getfield 106	com/google/glass/camera/SharedCameraManager$PictureRequest:shouldTakeCliplet	Z
      //   422: ifeq -390 -> 32
      //   425: aload_0
      //   426: getfield 27	com/google/glass/camera/SharedCameraManager$PictureRequest:this$0	Lcom/google/glass/camera/SharedCameraManager;
      //   429: aconst_null
      //   430: invokestatic 229	com/google/glass/camera/SharedCameraManager:access$2502	(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/Video;)Lcom/google/glass/camera/Video;
      //   433: pop
      //   434: return
      //   435: astore_1
      //   436: aload_0
      //   437: getfield 106	com/google/glass/camera/SharedCameraManager$PictureRequest:shouldTakeCliplet	Z
      //   440: ifeq +12 -> 452
      //   443: aload_0
      //   444: getfield 27	com/google/glass/camera/SharedCameraManager$PictureRequest:this$0	Lcom/google/glass/camera/SharedCameraManager;
      //   447: aconst_null
      //   448: invokestatic 229	com/google/glass/camera/SharedCameraManager:access$2502	(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/Video;)Lcom/google/glass/camera/Video;
      //   451: pop
      //   452: aload_1
      //   453: athrow
      //   454: aload_0
      //   455: getfield 27	com/google/glass/camera/SharedCameraManager$PictureRequest:this$0	Lcom/google/glass/camera/SharedCameraManager;
      //   458: aload_0
      //   459: getfield 78	com/google/glass/camera/SharedCameraManager$PictureRequest:client	Lcom/google/glass/camera/SharedCameraClient;
      //   462: invokestatic 287	com/google/glass/camera/SharedCameraManager:access$300	(Lcom/google/glass/camera/SharedCameraManager;Lcom/google/glass/camera/SharedCameraClient;)Z
      //   465: pop
      //   466: return
      //
      // Exception table:
      //   from	to	target	type
      //   206	239	240	java/lang/InterruptedException
      //   101	107	384	java/lang/InterruptedException
      //   129	190	401	java/lang/RuntimeException
      //   129	190	435	finally
      //   402	418	435	finally
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.camera.SharedCameraManager
 * JD-Core Version:    0.6.2
 */