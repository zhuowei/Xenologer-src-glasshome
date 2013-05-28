package com.google.glass.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.text.TextUtils;
import android.util.Log;
import android.util.LruCache;
import com.google.glass.timeline.AttachmentHelper;
import com.google.googlex.glass.common.proto.Attachment;
import com.google.protobuf.ByteString;
import java.io.File;
import java.util.concurrent.LinkedBlockingQueue;

public class CachedBitmapFactory
{
  private static final String TAG = CachedBitmapFactory.class.getSimpleName();
  private static final int TEMP_STORAGE_BUFFER_SIZE_BYTES = 16384;
  private static final int TEMP_STORAGE_NUM_BUFFERS = 4;
  private static LinkedBlockingQueue<byte[]> decodeBufferPool = new LinkedBlockingQueue(4);
  private final AttachmentHelper attachmentHelper;
  private final Object bitmapLoadLock = new Object();
  private final BitmapCache decodeCache;

  static
  {
    for (int i = 0; i < 4; i++)
      decodeBufferPool.offer(new byte[16384]);
  }

  public CachedBitmapFactory(Context paramContext, final int paramInt1, final int paramInt2, int paramInt3)
  {
    this.decodeCache = new BitmapCache(paramInt3, paramInt1)
    {
      public Bitmap provideBitmap(String paramAnonymousString)
      {
        return CachedBitmapFactory.this.loadBitmap(paramAnonymousString, paramInt1, paramInt2);
      }
    };
    this.attachmentHelper = new AttachmentHelper(paramContext);
  }

  private Bitmap loadBitmap(String paramString, final int paramInt1, final int paramInt2)
  {
    Assert.assertNotUiThread();
    if (CachedFilesManager.getSharedInstance().getType(paramString) != CachedFilesManager.Type.NONE)
      return (Bitmap)CachedFilesManager.getSharedInstance().load(paramString, new CachedFilesManager.Loader()
      {
        public Bitmap load(String paramAnonymousString)
        {
          return CachedBitmapFactory.loadBitmapFile(paramAnonymousString, paramInt1, paramInt2);
        }
      });
    return loadBitmapFile(paramString, paramInt1, paramInt2);
  }

  public static Bitmap loadBitmapFile(String paramString, int paramInt1, int paramInt2)
  {
    Bitmap localBitmap;
    if (!new File(paramString).exists())
    {
      Log.v(TAG, "The file \"" + paramString + "\" does not exist. Not decoding it as an image.");
      localBitmap = null;
    }
    byte[] arrayOfByte;
    do
    {
      return localBitmap;
      BitmapFactory.Options localOptions = new BitmapFactory.Options();
      localOptions.inJustDecodeBounds = true;
      BitmapFactory.decodeFile(paramString, localOptions);
      int i = localOptions.outWidth;
      int j = localOptions.outHeight;
      if (paramInt1 <= 0)
        paramInt1 = 1;
      int k = Math.max(1, i / paramInt1);
      if (paramInt2 <= 0)
        paramInt2 = 1;
      localOptions.inSampleSize = Math.min(k, Math.max(1, j / paramInt2));
      localOptions.inPreferredConfig = Bitmap.Config.RGB_565;
      arrayOfByte = (byte[])decodeBufferPool.poll();
      if (arrayOfByte != null)
        localOptions.inTempStorage = arrayOfByte;
      localOptions.inJustDecodeBounds = false;
      localBitmap = BitmapFactory.decodeFile(paramString, localOptions);
      int m = localOptions.outWidth;
      int n = localOptions.outHeight;
      Log.v(TAG, "Decoded a " + i + "x" + j + " image (" + paramString + ") into a " + m + "x" + n + " bitmap.");
    }
    while (arrayOfByte == null);
    decodeBufferPool.offer(arrayOfByte);
    return localBitmap;
  }

  public boolean cacheContainsAttachment(Attachment paramAttachment)
  {
    Assert.assertNotUiThread();
    if (paramAttachment.hasClientCachePath())
      return true;
    return CachedFilesManager.getSharedInstance().contains(CachedFilesManager.Type.ATTACHMENT, paramAttachment.getId());
  }

  public void clearCache()
  {
    this.decodeCache.evictAll();
  }

  public Bitmap decodeAttachment(Attachment paramAttachment, boolean paramBoolean)
  {
    if (!paramBoolean)
      Assert.assertNotUiThread();
    String str = getCachedAttachmentPath(paramAttachment, paramBoolean);
    if (TextUtils.isEmpty(str))
      return null;
    return decodeFile(str, paramBoolean);
  }

  public Bitmap decodeFile(String paramString, boolean paramBoolean)
  {
    if (!paramBoolean)
      Assert.assertNotUiThread();
    Bitmap localBitmap1;
    if (paramString == null)
      localBitmap1 = null;
    do
    {
      return localBitmap1;
      localBitmap1 = (Bitmap)this.decodeCache.get(paramString);
    }
    while ((localBitmap1 != null) || (paramBoolean));
    while (true)
    {
      synchronized (this.bitmapLoadLock)
      {
        Bitmap localBitmap2 = (Bitmap)this.decodeCache.get(paramString);
        if (localBitmap2 == null)
        {
          localBitmap2 = this.decodeCache.provideBitmap(paramString);
          if (localBitmap2 != null)
            this.decodeCache.put(paramString, localBitmap2);
        }
        else
        {
          return localBitmap2;
        }
      }
      Log.e(TAG, "Image loading error, bitmap==null, path:" + paramString);
    }
  }

  public String getCachedAttachmentPath(Attachment paramAttachment, boolean paramBoolean)
  {
    if (!paramBoolean)
      Assert.assertNotUiThread();
    if (paramAttachment.hasClientCachePath())
      return paramAttachment.getClientCachePath();
    CachedFilesManager localCachedFilesManager = CachedFilesManager.getSharedInstance();
    if ((!paramBoolean) && (!localCachedFilesManager.contains(CachedFilesManager.Type.ATTACHMENT, paramAttachment.getId())))
    {
      ByteString localByteString = this.attachmentHelper.getAttachmentFromServer(paramAttachment.getId());
      if ((localByteString == null) || (localByteString.isEmpty()))
        break label96;
      localCachedFilesManager.save(CachedFilesManager.Type.ATTACHMENT, paramAttachment.getId(), FileSaver.newSaver(localByteString));
    }
    while (true)
    {
      return localCachedFilesManager.getPath(CachedFilesManager.Type.ATTACHMENT, paramAttachment.getId());
      label96: Log.e(TAG, "Failed to get attachment from server: " + paramAttachment.getId());
    }
  }

  private abstract class BitmapCache extends LruCache<String, Bitmap>
  {
    public BitmapCache(int arg2)
    {
      super();
    }

    protected void entryRemoved(boolean paramBoolean, String paramString, Bitmap paramBitmap1, Bitmap paramBitmap2)
    {
      paramBitmap1.recycle();
    }

    public abstract Bitmap provideBitmap(String paramString);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.util.CachedBitmapFactory
 * JD-Core Version:    0.6.2
 */