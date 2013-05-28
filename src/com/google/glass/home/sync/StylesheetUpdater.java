package com.google.glass.home.sync;

import android.os.SystemClock;
import android.util.Log;
import com.google.common.io.Files;
import com.google.common.primitives.Longs;
import com.google.glass.home.HomeApplication;
import com.google.glass.net.ProtoRequestDispatcher;
import com.google.glass.net.ServerConstants.Action;
import com.google.glass.net.SimpleProtoResponseHandler;
import com.google.glass.util.Assert;
import com.google.googlex.glass.common.proto.ResourceRequest;
import com.google.googlex.glass.common.proto.ResourceRequest.Builder;
import com.google.googlex.glass.common.proto.ResourceRequest.ResourceType;
import com.google.googlex.glass.common.proto.ResourceResponse;
import com.google.googlex.glass.common.proto.ResourceResponse.Status;
import com.google.googlex.glass.common.proto.ResponseWrapper.ErrorCode;
import com.google.protobuf.ByteString;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class StylesheetUpdater
{
  private static final String DIRECTORY = "stylesheets";
  private static final String FINGERPRINT_FILENAME = "base_style.css.fingerprint";
  private static final String FINGERPRINT_TEMP_FILENAME = "base_style.css.fingerprint.tmp";
  private static final long MIN_UPDATE_INTERVAL_MS = 0L;
  private static final String STYLESHEET_FILENAME = "base_style.css";
  private static final String STYLESHEET_TEMP_FILENAME = "base_style.css.tmp";
  private static final String TAG = StylesheetUpdater.class.getSimpleName();
  private final HomeApplication application;
  private final Executor backgroundExecutor;
  private final File baseDir;
  private long lastUpdateElapsedRealtime = -MIN_UPDATE_INTERVAL_MS;
  private final Lock writeLock = new ReentrantLock();

  StylesheetUpdater(HomeApplication paramHomeApplication, Executor paramExecutor)
  {
    this.application = paramHomeApplication;
    this.backgroundExecutor = paramExecutor;
    this.baseDir = new File(paramHomeApplication.getFilesDir(), "stylesheets");
  }

  private long getFingerprint()
  {
    if (!new File(this.baseDir, "base_style.css").exists())
      return 0L;
    try
    {
      long l = Longs.fromByteArray(Files.toByteArray(new File(this.baseDir, "base_style.css.fingerprint")));
      return l;
    }
    catch (IOException localIOException)
    {
      Log.e(TAG, "Could not load fingerprint: ", localIOException);
    }
    return 0L;
  }

  private void handleResponse(ResourceResponse paramResourceResponse)
  {
    Assert.assertNotUiThread();
    if (paramResourceResponse.getStatus() == ResourceResponse.Status.SUCCESS)
    {
      this.lastUpdateElapsedRealtime = SystemClock.elapsedRealtime();
      if (paramResourceResponse.hasData())
      {
        byte[] arrayOfByte = paramResourceResponse.getData().toByteArray();
        long l = paramResourceResponse.getFingerprint();
        Log.i(TAG, "Stylesheet updated! size=" + arrayOfByte.length + ", fingerprint=" + l);
        writeStylesheet(arrayOfByte, l);
        return;
      }
      Log.v(TAG, "No change.");
      return;
    }
    Log.w(TAG, "Update failed: " + paramResourceResponse.getStatus());
  }

  private void writeStylesheet(byte[] paramArrayOfByte, long paramLong)
  {
    try
    {
      this.writeLock.lock();
      if ((!this.baseDir.exists()) && (!this.baseDir.mkdirs()))
      {
        Log.e(TAG, "Unable to create directory: " + this.baseDir);
        return;
      }
      File localFile1 = new File(this.baseDir, "base_style.css.tmp");
      File localFile2 = new File(this.baseDir, "base_style.css.fingerprint.tmp");
      Files.write(paramArrayOfByte, localFile1);
      Files.write(Longs.toByteArray(paramLong), localFile2);
      Files.move(localFile1, new File(this.baseDir, "base_style.css"));
      Files.move(localFile2, new File(this.baseDir, "base_style.css.fingerprint"));
      return;
    }
    catch (IOException localIOException)
    {
      Log.e(TAG, "Error writing to cache", localIOException);
      return;
    }
    finally
    {
      this.writeLock.unlock();
    }
  }

  public void checkForUpdates()
  {
    Assert.assertNotUiThread();
    long l1 = SystemClock.elapsedRealtime() - this.lastUpdateElapsedRealtime;
    if (l1 < MIN_UPDATE_INTERVAL_MS)
    {
      Log.v(TAG, "Skipping update, last update was " + l1 / 1000L + " sec ago");
      return;
    }
    long l2 = getFingerprint();
    Log.v(TAG, "Checking for stylesheet update, fingerprint=" + l2);
    ResourceRequest localResourceRequest = ResourceRequest.newBuilder().setType(ResourceRequest.ResourceType.STYLESHEET).setName("base_style.css").setFingerprint(l2).build();
    this.application.getRequestDispatcher().dispatch(ServerConstants.Action.RESOURCE, localResourceRequest, true, ResourceResponse.PARSER, new SimpleProtoResponseHandler()
    {
      public void onError(ResponseWrapper.ErrorCode paramAnonymousErrorCode)
      {
        Log.w(StylesheetUpdater.TAG, "Server error: " + paramAnonymousErrorCode);
      }

      public void onSuccess(final ResourceResponse paramAnonymousResourceResponse)
      {
        StylesheetUpdater.this.backgroundExecutor.execute(new Runnable()
        {
          public void run()
          {
            StylesheetUpdater.this.handleResponse(paramAnonymousResourceResponse);
          }
        });
      }
    });
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.sync.StylesheetUpdater
 * JD-Core Version:    0.6.2
 */