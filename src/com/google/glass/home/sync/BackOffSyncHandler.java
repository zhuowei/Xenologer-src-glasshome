package com.google.glass.home.sync;

import android.os.SystemClock;
import android.util.Log;
import com.google.glass.util.RetryStrategy;
import java.util.concurrent.TimeUnit;

abstract class BackOffSyncHandler
  implements SyncStatusReporter
{
  private static final double BACKOFF_EXPONENT = 2.0D;
  private static final int RETRY_DELAY_MILLIS = 1000;
  private long nextSyncTime;
  private int numRetries;
  private final RetryStrategy retryStrategy;

  public BackOffSyncHandler()
  {
    this(RetryStrategy.exponentialBackoffWithJitter(1000, 2.0D, -1));
  }

  public BackOffSyncHandler(RetryStrategy paramRetryStrategy)
  {
    this.retryStrategy = paramRetryStrategy;
  }

  public long getDelayRemainingSecs()
  {
    long l = SystemClock.uptimeMillis();
    if (l >= this.nextSyncTime)
      return 0L;
    return TimeUnit.MILLISECONDS.toSeconds(this.nextSyncTime - l);
  }

  protected abstract String getTag();

  public void handleFail()
  {
    this.numRetries = (1 + this.numRetries);
    long l = this.retryStrategy.getDelayMillis(this.numRetries);
    if (l >= 0L)
    {
      this.nextSyncTime = (Math.min(TimeUnit.MINUTES.toMillis(60L), l) + SystemClock.uptimeMillis());
      return;
    }
    throw new AssertionError("We should never stop trying when we use RetryStrategy.NO_MAX");
  }

  public void handleSuccess()
  {
    this.numRetries = 0;
  }

  public boolean hasFailures()
  {
    return this.numRetries > 0;
  }

  public boolean shouldRetry()
  {
    long l = this.nextSyncTime - SystemClock.uptimeMillis();
    if ((this.retryStrategy.tryAgain(this.numRetries)) && (l <= 0L));
    for (boolean bool = true; ; bool = false)
    {
      if (!bool)
        Log.d(getTag(), "Backing off for " + l + " ms");
      return bool;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.sync.BackOffSyncHandler
 * JD-Core Version:    0.6.2
 */