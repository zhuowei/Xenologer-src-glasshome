package com.google.common.cache;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import com.google.common.collect.ForwardingObject;
import com.google.common.collect.ImmutableMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;
import javax.annotation.Nullable;

@Beta
public abstract class ForwardingCache<K, V> extends ForwardingObject
  implements Cache<K, V>
{
  @Deprecated
  public V apply(K paramK)
  {
    return delegate().apply(paramK);
  }

  public ConcurrentMap<K, V> asMap()
  {
    return delegate().asMap();
  }

  public void cleanUp()
  {
    delegate().cleanUp();
  }

  protected abstract Cache<K, V> delegate();

  @Deprecated
  public V get(K paramK)
    throws ExecutionException
  {
    return delegate().get(paramK);
  }

  public V get(K paramK, Callable<? extends V> paramCallable)
    throws ExecutionException
  {
    return delegate().get(paramK, paramCallable);
  }

  public ImmutableMap<K, V> getAllPresent(Iterable<? extends K> paramIterable)
  {
    return delegate().getAllPresent(paramIterable);
  }

  @Nullable
  public V getIfPresent(K paramK)
  {
    return delegate().getIfPresent(paramK);
  }

  @Deprecated
  public V getUnchecked(K paramK)
  {
    return delegate().getUnchecked(paramK);
  }

  public void invalidate(Object paramObject)
  {
    delegate().invalidate(paramObject);
  }

  public void invalidateAll()
  {
    delegate().invalidateAll();
  }

  public void invalidateAll(Iterable<?> paramIterable)
  {
    delegate().invalidateAll(paramIterable);
  }

  public void put(K paramK, V paramV)
  {
    delegate().put(paramK, paramV);
  }

  public long size()
  {
    return delegate().size();
  }

  public CacheStats stats()
  {
    return delegate().stats();
  }

  @Beta
  public static abstract class SimpleForwardingCache<K, V> extends ForwardingCache<K, V>
  {
    private final Cache<K, V> delegate;

    protected SimpleForwardingCache(Cache<K, V> paramCache)
    {
      this.delegate = ((Cache)Preconditions.checkNotNull(paramCache));
    }

    protected final Cache<K, V> delegate()
    {
      return this.delegate;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.cache.ForwardingCache
 * JD-Core Version:    0.6.2
 */