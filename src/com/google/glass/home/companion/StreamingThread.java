package com.google.glass.home.companion;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.os.Handler;
import android.util.Log;
import com.google.glass.util.Assert;
import com.google.glass.util.HiddenApiHelper;
import com.google.glass.util.SafeBroadcastReceiver;
import com.google.protobuf.ByteString;

public class StreamingThread extends Thread
{
  private static final Bitmap.CompressFormat COMPRESS_FORMAT = Bitmap.CompressFormat.JPEG;
  private static final int COMPRESS_QUALITY = 85;
  private static final int FRAME_HEIGHT = 360;
  private static final int FRAME_WIDTH = 640;
  private static String TAG = StreamingThread.class.getSimpleName();
  private static final int WHAT_HANDLE_NEW_SCREEN_SHOT = 1;
  private TransparentByteArrayOutputStream frameBuffer = new TransparentByteArrayOutputStream();
  private volatile boolean isClosed = false;
  private volatile boolean isScreenOn = true;
  private int lastSentFrameHash;
  private ScreenShotListener listener;
  private Handler onNewScreenShotHandler;
  private final SafeBroadcastReceiver screenOnOffReceiver = new SafeBroadcastReceiver()
  {
    protected String getTag()
    {
      return StreamingThread.TAG + "/screenOnOffReceiver";
    }

    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      Log.d(getTag(), "Received intent: " + paramAnonymousIntent);
      if ("android.intent.action.SCREEN_ON".equals(paramAnonymousIntent.getAction()))
        StreamingThread.access$002(StreamingThread.this, true);
      while (!"android.intent.action.SCREEN_OFF".equals(paramAnonymousIntent.getAction()))
        return;
      StreamingThread.access$002(StreamingThread.this, false);
    }
  };
  private Service service;

  public StreamingThread(Service paramService, ScreenShotListener paramScreenShotListener)
  {
    Assert.assertNotNull(paramScreenShotListener);
    this.service = paramService;
    this.listener = paramScreenShotListener;
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.intent.action.SCREEN_ON");
    localIntentFilter.addAction("android.intent.action.SCREEN_OFF");
    this.screenOnOffReceiver.register(paramService, localIntentFilter);
    start();
  }

  private static Bitmap getEmptyScreenshot()
  {
    Bitmap localBitmap = Bitmap.createBitmap(640, 360, Bitmap.Config.ARGB_8888);
    new Canvas(localBitmap).drawColor(0);
    return localBitmap;
  }

  public void close()
  {
    Log.v(TAG, "close StreamingThread");
    this.isClosed = true;
    try
    {
      join();
      this.service.unregisterReceiver(this.screenOnOffReceiver);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
        Log.e(TAG, "Interrupted while waiting for screen streaming thread to join.");
    }
  }

  public void run()
  {
    Object localObject1 = null;
    Log.v(TAG, "start of StreamingThread");
    while (true)
    {
      try
      {
        if (this.isClosed)
          break;
        if (!this.isScreenOn)
          break label151;
        if (localObject1 == null)
        {
          localObject1 = HiddenApiHelper.screenshot(640, 360);
          this.frameBuffer.reset();
          ((Bitmap)localObject1).compress(COMPRESS_FORMAT, 85, this.frameBuffer);
          if ((this.frameBuffer == null) || (this.frameBuffer.size() == this.lastSentFrameHash))
            continue;
          this.lastSentFrameHash = this.frameBuffer.size();
          ByteString localByteString = ByteString.copyFrom(this.frameBuffer.getByteArray(), 0, this.frameBuffer.size());
          this.listener.onNewScreenShot(localByteString);
          continue;
        }
      }
      finally
      {
        if (localObject1 != null)
          ((Bitmap)localObject1).recycle();
      }
      HiddenApiHelper.screenshot((Bitmap)localObject1, 640, 360);
      continue;
      label151: Bitmap localBitmap = getEmptyScreenshot();
      localObject1 = localBitmap;
    }
    if (localObject1 != null)
      ((Bitmap)localObject1).recycle();
    Log.v(TAG, "end of StreamingThread");
  }

  public static abstract interface ScreenShotListener
  {
    public abstract void onNewScreenShot(ByteString paramByteString);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.companion.StreamingThread
 * JD-Core Version:    0.6.2
 */