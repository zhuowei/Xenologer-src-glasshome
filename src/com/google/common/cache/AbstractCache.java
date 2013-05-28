package com.google.common.cache;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import com.google.common.util.concurrent.UncheckedExecutionException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicLong;

@Beta
@GwtCompatible
public abstract class AbstractCache<K, V>
  implements Cache<K, V>
{
  @Deprecated
  public V apply(K paramK)
  {
    return getUnchecked(paramK);
  }

  public ConcurrentMap<K, V> asMap()
  {
    throw new UnsupportedOperationException();
  }

  public void cleanUp()
  {
  }

  public V get(K paramK, Callable<? extends V> paramCallable)
    throws ExecutionException
  {
    throw new UnsupportedOperationException();
  }

  public ImmutableMap<K, V> getAllPresent(Iterable<? extends K> paramIterable)
  {
    LinkedHashMap localLinkedHashMap = Maps.newLinkedHashMap();
    Iterator localIterator = paramIterable.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      if (!localLinkedHashMap.containsKey(localObject))
        localLinkedHashMap.put(localObject, getIfPresent(localObject));
    }
    return ImmutableMap.copyOf(localLinkedHashMap);
  }

  @Deprecated
  public V getUnchecked(K paramK)
  {
    try
    {
      Object localObject = get(paramK);
      return localObject;
    }
    catch (ExecutionException localExecutionException)
    {
      throw new UncheckedExecutionException(localExecutionException.getCause());
    }
  }

  public void invalidate(Object paramObject)
  {
    throw new UnsupportedOperationException();
  }

  public void invalidateAll()
  {
    throw new UnsupportedOperationException();
  }

  public void invalidateAll(Iterable<?> paramIterable)
  {
    Iterator localIterator = paramIterable.iterator();
    while (localIterator.hasNext())
      invalidate(localIterator.next());
  }

  public void put(K paramK, V paramV)
  {
    throw new UnsupportedOperationException();
  }

  public long size()
  {
    throw new UnsupportedOperationException();
  }

  public CacheStats stats()
  {
    throw new UnsupportedOperationException();
  }

  @Beta
  public static class SimpleStatsCounter
    implements AbstractCache.StatsCounter
  {
    private final AtomicLong evictionCount = new AtomicLong();
    private final AtomicLong hitCount = new AtomicLong();
    private final AtomicLong loadExceptionCount = new AtomicLong();
    private final AtomicLong loadSuccessCount = new AtomicLong();
    private final AtomicLong missCount = new AtomicLong();
    private final AtomicLong totalLoadTime = new AtomicLong();

    public void incrementBy(AbstractCache.StatsCounter paramStatsCounter)
    {
      CacheStats localCacheStats = paramStatsCounter.snapshot();
      this.hitCount.addAndGet(localCacheStats.hitCount());
      this.missCount.addAndGet(localCacheStats.missCount());
      this.loadSuccessCount.addAndGet(localCacheStats.loadSuccessCount());
      this.loadExceptionCount.addAndGet(localCacheStats.loadExceptionCount());
      this.totalLoadTime.addAndGet(localCacheStats.totalLoadTime());
      this.evictionCount.addAndGet(localCacheStats.evictionCount());
    }

    public void recordEviction()
    {
      this.evictionCount.incrementAndGet();
    }

    public void recordHits(int paramInt)
    {
      this.hitCount.addAndGet(paramInt);
    }

    public void recordLoadException(long paramLong)
    {
      this.loadExceptionCount.incrementAndGet();
      this.totalLoadTime.addAndGet(paramLong);
    }

    public void recordLoadSuccess(long paramLong)
    {
      this.loadSuccessCount.incrementAndGet();
      this.totalLoadTime.addAndGet(paramLong);
    }

    public void recordMisses(int paramInt)
    {
      this.missCount.addAndGet(paramInt);
    }

    public CacheStats snapshot()
    {
      return new CacheStats(this.hitCount.get(), this.missCount.get(), this.loadSuccessCount.get(), this.loadExceptionCount.get(), this.totalLoadTime.get(), this.evictionCount.get());
    }
  }

  @Beta
  public static abstract interface StatsCounter
  {
    public abstract void recordEviction();

    public abstract void recordHits(int paramInt);

    public abstract void recordLoadException(long paramLong);

    public abstract void recordLoadSuccess(long paramLong);

    public abstract void recordMisses(int paramInt);

    public abstract CacheStats snapshot();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.cache.AbstractCache
 * JD-Core Version:    0.6.2
 */