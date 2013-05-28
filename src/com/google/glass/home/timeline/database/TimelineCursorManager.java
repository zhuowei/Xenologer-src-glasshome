package com.google.glass.home.timeline.database;

import android.content.Loader;
import android.content.Loader.OnLoadCompleteListener;
import android.database.Cursor;
import android.util.Log;
import android.util.LruCache;
import com.google.glass.home.timeline.TimelineItemLoader;
import com.google.glass.home.timeline.TimelineItemLoader.ReadCallback;
import com.google.glass.home.timeline.TimelineItemLoader.ReadResult;
import com.google.glass.timeline.TimelineHelper;
import com.google.glass.timeline.TimelineItemId;
import com.google.glass.util.Assert;
import com.google.glass.util.MainThreadExecutorManager;
import com.google.glass.util.PriorityThreadFactory;
import com.google.googlex.glass.common.proto.TimelineItem;
import com.google.protobuf.InvalidProtocolBufferException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import java.util.zip.CRC32;

public class TimelineCursorManager
  implements Loader.OnLoadCompleteListener<Cursor>, TimelineItemLoader
{
  private static final int[] DESCENDING_HINTS = { 0, 1 };
  private static final int ITEM_CACHE_SIZE = 100;
  private static final int LINEAR_SEARCH_MAX_ITERATIONS = 100;
  private static final int POSITION_CACHE_SIZE = 100;
  private static final String TAG = TimelineCursorManager.class.getSimpleName();
  private Cursor cursor;
  private long cursorCount;
  private final Lock cursorLock = new ReentrantLock();
  private boolean descDisplayTime;
  private final Executor executor = Executors.newSingleThreadExecutor(new PriorityThreadFactory(1, TAG));
  private LruCache<Integer, TimelineItemLoader.ReadResult> itemCache = new LruCache(100);
  private LruCache<TimelineItemId, Integer> positionCache = new LruCache(100);

  public TimelineCursorManager(boolean paramBoolean)
  {
    this.descDisplayTime = paramBoolean;
  }

  private void setCursor(Cursor paramCursor)
  {
    Assert.assertUiThread();
    this.cursorLock.lock();
    try
    {
      this.cursor = paramCursor;
      this.cursorCount = (1L + this.cursorCount);
      Log.d(TAG, "Received updated cursor: " + this.cursorCount);
      this.itemCache.evictAll();
      this.positionCache.evictAll();
      return;
    }
    finally
    {
      this.cursorLock.unlock();
    }
  }

  public void asyncRead(int paramInt, final TimelineItemLoader.ReadCallback paramReadCallback)
  {
    Assert.assertUiThread();
    final long l = this.cursorCount;
    this.executor.execute(new Runnable()
    {
      public void run()
      {
        Assert.assertNotUiThread();
        TimelineCursorManager.this.cursorLock.lock();
        try
        {
          long l1 = l;
          long l2 = TimelineCursorManager.this.cursorCount;
          if (l1 != l2);
          TimelineItemLoader.ReadResult localReadResult1;
          do
          {
            return;
            localReadResult1 = (TimelineItemLoader.ReadResult)TimelineCursorManager.this.itemCache.get(Integer.valueOf(paramReadCallback));
            if (this.val$callback != null)
            {
              boolean bool = this.val$callback.isCanceled();
              if (bool)
                return;
            }
            if (localReadResult1 == null)
            {
              Cursor localCursor = TimelineCursorManager.this.cursor;
              byte[] arrayOfByte = null;
              int i = 0;
              Object localObject2 = null;
              if (localCursor != null)
                TimelineCursorManager.this.cursor.moveToPosition(paramReadCallback);
              try
              {
                arrayOfByte = TimelineHelper.getProtobufBlob(TimelineCursorManager.this.cursor);
                TimelineItem localTimelineItem = TimelineItem.parseFrom(arrayOfByte);
                localObject2 = localTimelineItem;
                int j = TimelineHelper.getBundleCoverStatus(TimelineCursorManager.this.cursor);
                i = j;
                if (localObject2 == null)
                  return;
              }
              catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
              {
                Log.e(TimelineCursorManager.TAG, "Invalid protocol buffer.", localInvalidProtocolBufferException);
                return;
              }
              CRC32 localCRC32 = new CRC32();
              localCRC32.update(i);
              localCRC32.update(arrayOfByte);
              localReadResult1 = new TimelineItemLoader.ReadResult(localObject2, i, Long.valueOf(localCRC32.getValue()));
              TimelineCursorManager.this.itemCache.put(Integer.valueOf(paramReadCallback), localReadResult1);
              TimelineCursorManager.this.positionCache.put(new TimelineItemId(localObject2), Integer.valueOf(paramReadCallback));
            }
            TimelineCursorManager.this.cursorLock.unlock();
          }
          while (this.val$callback == null);
          final TimelineItemLoader.ReadResult localReadResult2 = localReadResult1;
          MainThreadExecutorManager.getMainThreadExecutor().execute(new Runnable()
          {
            public void run()
            {
              Assert.assertUiThread();
              if (TimelineCursorManager.1.this.val$cursorNumber != TimelineCursorManager.this.cursorCount);
              while (TimelineCursorManager.1.this.val$callback.isCanceled())
                return;
              TimelineCursorManager.1.this.val$callback.onItemRead(localReadResult2);
            }
          });
          return;
        }
        finally
        {
          TimelineCursorManager.this.cursorLock.unlock();
        }
      }
    });
  }

  public int find(TimelineItemId paramTimelineItemId)
  {
    Assert.assertUiThread();
    this.cursorLock.lock();
    try
    {
      Integer localInteger = (Integer)this.positionCache.get(paramTimelineItemId);
      int[] arrayOfInt;
      if (localInteger == null)
      {
        if (!this.descDisplayTime)
          break label151;
        arrayOfInt = DESCENDING_HINTS;
      }
      while (true)
      {
        localInteger = Integer.valueOf(TimelineHelper.binarySearch(paramTimelineItemId.getItemId(), paramTimelineItemId.getDisplayTime(), this.cursor, this.descDisplayTime, arrayOfInt));
        if (localInteger.intValue() < 0)
        {
          Log.d(TAG, "Could not find item " + paramTimelineItemId.getItemId() + " with binary search, falling back to linear search.");
          localInteger = Integer.valueOf(TimelineHelper.linearSearch(paramTimelineItemId.getItemId(), this.cursor, 100));
        }
        this.positionCache.put(paramTimelineItemId, localInteger);
        int i = localInteger.intValue();
        return i;
        label151: arrayOfInt = new int[2];
        arrayOfInt[0] = (-1 + getCount());
        arrayOfInt[1] = (-2 + getCount());
      }
    }
    finally
    {
      this.cursorLock.unlock();
    }
  }

  public int getCount()
  {
    Assert.assertUiThread();
    if (this.cursor == null)
      return 0;
    return this.cursor.getCount();
  }

  public void onLoadComplete(Loader<Cursor> paramLoader, Cursor paramCursor)
  {
    setCursor(paramCursor);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.database.TimelineCursorManager
 * JD-Core Version:    0.6.2
 */