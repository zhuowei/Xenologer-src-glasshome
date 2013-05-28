package com.google.common.cache;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.collect.ImmutableMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;
import javax.annotation.Nullable;

@Beta
@GwtCompatible
public abstract interface Cache<K, V> extends Function<K, V>
{
  @Deprecated
  public abstract V apply(K paramK);

  public abstract ConcurrentMap<K, V> asMap();

  public abstract void cleanUp();

  @Deprecated
  public abstract V get(K paramK)
    throws ExecutionException;

  public abstract V get(K paramK, Callable<? extends V> paramCallable)
    throws ExecutionException;

  public abstract ImmutableMap<K, V> getAllPresent(Iterable<? extends K> paramIterable);

  @Nullable
  public abstract V getIfPresent(K paramK);

  @Deprecated
  public abstract V getUnchecked(K paramK);

  public abstract void invalidate(Object paramObject);

  public abstract void invalidateAll();

  public abstract void invalidateAll(Iterable<?> paramIterable);

  public abstract void put(K paramK, V paramV);

  public abstract long size();

  public abstract CacheStats stats();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.cache.Cache
 * JD-Core Version:    0.6.2
 */