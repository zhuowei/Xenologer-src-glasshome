package com.google.glass.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;
import android.util.LruCache;
import android.widget.ImageView;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.primitives.Longs;
import com.google.glass.app.GlassApplication;
import com.google.glass.net.ProtoRequestDispatcher;
import com.google.glass.net.ProtoResponse;
import com.google.glass.net.ServerConstants.Action;
import com.google.googlex.glass.common.proto.ResourceRequest;
import com.google.googlex.glass.common.proto.ResourceRequest.Builder;
import com.google.googlex.glass.common.proto.ResourceRequest.ResourceType;
import com.google.googlex.glass.common.proto.ResourceResponse;
import com.google.googlex.glass.common.proto.ResourceResponse.Status;
import com.google.protobuf.ByteString;
import java.io.IOException;
import java.io.OutputStream;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

public class GlasswareIconLoadingTask extends DeferredContentLoader.LoadingTask<Bitmap>
{
  static final long CACHE_RETRY_DELAY_MS = 0L;
  static final long CACHE_VALIDATION_INTERVAL_MS = 0L;
  private static final int MAX_CACHE_ENTRIES = 64;
  private static final LruCache<String, CacheEntry> SHARED_CACHE = new LruCache(64);
  private static final String TAG = GlasswareIconLoadingTask.class.getSimpleName();
  private final Executor backgroundExecutor;
  private final String cacheFilename;
  private final CachedFilesManager cachedFilesManager;
  private final Clock clock;
  private CacheEntry entry;
  private final ImageView iconView;
  private final String projectId;
  private final ProtoRequestDispatcher requestDispatcher;
  private final ResourceRequest.ResourceType resourceType;
  private final LruCache<String, CacheEntry> sharedCache;

  static
  {
    CACHE_VALIDATION_INTERVAL_MS = TimeUnit.HOURS.toMillis(12L);
  }

  public GlasswareIconLoadingTask(Context paramContext, String paramString, IconSize paramIconSize, ImageView paramImageView)
  {
    this(CachedFilesManager.getSharedInstance(), GlassApplication.from(paramContext).getRequestDispatcher(), SHARED_CACHE, new Clock.Impl(), AsyncThreadExecutorManager.getThreadPoolExecutor(), paramString, paramIconSize, paramImageView);
  }

  @VisibleForTesting
  GlasswareIconLoadingTask(CachedFilesManager paramCachedFilesManager, ProtoRequestDispatcher paramProtoRequestDispatcher, LruCache<String, CacheEntry> paramLruCache, Clock paramClock, Executor paramExecutor, String paramString, IconSize paramIconSize, ImageView paramImageView)
  {
    this.cachedFilesManager = paramCachedFilesManager;
    this.requestDispatcher = paramProtoRequestDispatcher;
    this.sharedCache = paramLruCache;
    this.clock = paramClock;
    this.backgroundExecutor = paramExecutor;
    this.projectId = paramString;
    this.cacheFilename = (paramString + "." + paramIconSize);
    this.iconView = paramImageView;
    switch (3.$SwitchMap$com$google$glass$util$GlasswareIconLoadingTask$IconSize[paramIconSize.ordinal()])
    {
    default:
      this.resourceType = ResourceRequest.ResourceType.GLASSWARE_ICON_MEDIUM;
      return;
    case 1:
    }
    this.resourceType = ResourceRequest.ResourceType.GLASSWARE_ICON_SMALL;
  }

  private boolean downloadIcon()
  {
    Log.v(TAG, "Requesting icon: " + this.projectId + ":" + this.resourceType + ", fingerprint=" + this.entry.getFingerprint());
    ResourceRequest localResourceRequest = ResourceRequest.newBuilder().setType(this.resourceType).setName(this.projectId).setFingerprint(this.entry.getFingerprint()).build();
    ResourceResponse localResourceResponse = (ResourceResponse)this.requestDispatcher.blockingDispatch(ServerConstants.Action.RESOURCE, localResourceRequest, ResourceResponse.PARSER).getResponseProto();
    if ((localResourceResponse != null) && (localResourceResponse.getStatus() == ResourceResponse.Status.SUCCESS))
    {
      if ((localResourceResponse.hasData()) && (localResourceResponse.hasFingerprint()))
      {
        Log.v(TAG, "New icon: " + this.projectId + ":" + this.resourceType + ", fingerprint=" + localResourceResponse.getFingerprint());
        saveToDiskCache(localResourceResponse.getFingerprint(), localResourceResponse.getData().toByteArray());
        return true;
      }
      Log.v(TAG, "No update: " + this.projectId + ":" + this.resourceType);
      return true;
    }
    if ((localResourceResponse != null) && (localResourceResponse.getStatus() == ResourceResponse.Status.NOT_FOUND))
    {
      Log.v(TAG, "Icon not found: " + this.projectId + ":" + this.resourceType);
      saveToDiskCache(0L, new byte[0]);
      return true;
    }
    Log.w(TAG, "Request failed: " + this.projectId + ":" + this.resourceType);
    return false;
  }

  private void downloadIconAndUpdateValidationTime()
  {
    if (downloadIcon())
    {
      this.entry.setNextValidationTime(this.clock.elapsedRealtime() + CACHE_VALIDATION_INTERVAL_MS);
      return;
    }
    this.entry.setNextValidationTime(this.clock.elapsedRealtime() + CACHE_RETRY_DELAY_MS);
  }

  private boolean loadFromDiskCache()
  {
    byte[] arrayOfByte1 = (byte[])this.cachedFilesManager.load(CachedFilesManager.Type.GLASSWARE_ICON, this.cacheFilename, new CachedFilesManager.ByteArrayLoader());
    if ((arrayOfByte1 == null) || (arrayOfByte1.length < 8))
      return false;
    byte[] arrayOfByte2 = new byte[-8 + arrayOfByte1.length];
    System.arraycopy(arrayOfByte1, 8, arrayOfByte2, 0, arrayOfByte2.length);
    this.entry.populate(arrayOfByte2, Longs.fromByteArray(arrayOfByte1));
    return true;
  }

  private void populateCacheEntry()
  {
    if (!this.cachedFilesManager.contains(CachedFilesManager.Type.GLASSWARE_ICON, this.cacheFilename))
      downloadIconAndUpdateValidationTime();
    if (!loadFromDiskCache())
    {
      Log.w(TAG, "Failed to load from cache: " + this.cacheFilename);
      this.entry.populate(new byte[0], 0L);
    }
  }

  private void saveToDiskCache(final long paramLong, byte[] paramArrayOfByte)
  {
    this.cachedFilesManager.save(CachedFilesManager.Type.GLASSWARE_ICON, this.cacheFilename, new FileSaver.Saver()
    {
      public long getEstimatedSizeBytes()
      {
        return 8 + this.val$data.length;
      }

      public void save(OutputStream paramAnonymousOutputStream)
        throws IOException
      {
        paramAnonymousOutputStream.write(Longs.toByteArray(paramLong));
        paramAnonymousOutputStream.write(this.val$data);
      }
    });
  }

  protected void bindContent(Bitmap paramBitmap)
  {
    if (paramBitmap == null)
      return;
    this.iconView.setImageBitmap(paramBitmap);
    showView(this.iconView, true);
  }

  protected Bitmap loadContent()
  {
    Assert.assertNotUiThread();
    Bitmap localBitmap;
    if (isCancelled())
      localBitmap = null;
    while (true)
    {
      return localBitmap;
      synchronized (this.sharedCache)
      {
        this.entry = ((CacheEntry)this.sharedCache.get(this.cacheFilename));
        CacheEntry localCacheEntry = this.entry;
        int i = 0;
        if (localCacheEntry == null)
        {
          this.entry = new CacheEntry();
          this.sharedCache.put(this.cacheFilename, this.entry);
          i = 1;
        }
        if (i != 0)
          populateCacheEntry();
        localBitmap = this.entry.waitForBitmap();
        if (!this.entry.isUpdating.getAndSet(true))
          if (this.clock.elapsedRealtime() > this.entry.getNextValidationTime())
            try
            {
              this.backgroundExecutor.execute(new Runnable()
              {
                public void run()
                {
                  try
                  {
                    GlasswareIconLoadingTask.this.downloadIconAndUpdateValidationTime();
                    GlasswareIconLoadingTask.CacheEntry.access$200(GlasswareIconLoadingTask.this.entry).set(false);
                    GlasswareIconLoadingTask.this.loadFromDiskCache();
                    return;
                  }
                  finally
                  {
                    GlasswareIconLoadingTask.CacheEntry.access$200(GlasswareIconLoadingTask.this.entry).set(false);
                  }
                }
              });
              return localBitmap;
            }
            catch (RejectedExecutionException localRejectedExecutionException)
            {
              this.entry.isUpdating.set(false);
              return localBitmap;
            }
      }
    }
    Log.v(TAG, "Already updating icon: " + this.projectId + ":" + this.resourceType + ", fingerprint=" + this.entry.getFingerprint());
    return localBitmap;
  }

  protected Bitmap loadContentFromCache()
  {
    synchronized (this.sharedCache)
    {
      this.entry = ((CacheEntry)this.sharedCache.get(this.cacheFilename));
      if (this.entry != null)
      {
        Bitmap localBitmap = this.entry.bitmap;
        return localBitmap;
      }
      return null;
    }
  }

  protected void prepareContent()
  {
    Bitmap localBitmap = loadContentFromCache();
    if (localBitmap != null)
    {
      this.iconView.setImageBitmap(localBitmap);
      showView(this.iconView, false);
      cancel(false);
      return;
    }
    hideView(this.iconView, false, false);
  }

  static class CacheEntry
  {
    private Bitmap bitmap;
    private long fingerprint;
    private AtomicBoolean isUpdating = new AtomicBoolean();
    private final CountDownLatch latch = new CountDownLatch(1);
    private long nextValidationTime;

    long getFingerprint()
    {
      return this.fingerprint;
    }

    long getNextValidationTime()
    {
      try
      {
        long l = this.nextValidationTime;
        return l;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    void populate(byte[] paramArrayOfByte, long paramLong)
    {
      this.fingerprint = paramLong;
      if ((paramArrayOfByte != null) && (paramArrayOfByte.length > 0))
        this.bitmap = BitmapFactory.decodeByteArray(paramArrayOfByte, 0, paramArrayOfByte.length);
      this.latch.countDown();
    }

    void setNextValidationTime(long paramLong)
    {
      try
      {
        this.nextValidationTime = paramLong;
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    Bitmap waitForBitmap()
    {
      try
      {
        this.latch.await();
        return this.bitmap;
      }
      catch (InterruptedException localInterruptedException)
      {
        while (true)
        {
          Thread.currentThread().interrupt();
          Log.w(GlasswareIconLoadingTask.TAG, "Interrupted in waitForBitmap");
        }
      }
    }
  }

  public static enum IconSize
  {
    static
    {
      MEDIUM = new IconSize("MEDIUM", 1);
      IconSize[] arrayOfIconSize = new IconSize[2];
      arrayOfIconSize[0] = SMALL;
      arrayOfIconSize[1] = MEDIUM;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.util.GlasswareIconLoadingTask
 * JD-Core Version:    0.6.2
 */