package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Map;
import java.util.Map.Entry;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true, serializable=true)
public abstract class ImmutableBiMap<K, V> extends ImmutableMap<K, V>
  implements BiMap<K, V>
{
  private static final ImmutableBiMap<Object, Object> EMPTY_IMMUTABLE_BIMAP = new EmptyBiMap();

  public static <K, V> Builder<K, V> builder()
  {
    return new Builder();
  }

  public static <K, V> ImmutableBiMap<K, V> copyOf(Map<? extends K, ? extends V> paramMap)
  {
    if ((paramMap instanceof ImmutableBiMap))
    {
      ImmutableBiMap localImmutableBiMap = (ImmutableBiMap)paramMap;
      if (!localImmutableBiMap.isPartialView())
        return localImmutableBiMap;
    }
    if (paramMap.isEmpty())
      return of();
    return new RegularImmutableBiMap(ImmutableMap.copyOf(paramMap));
  }

  public static <K, V> ImmutableBiMap<K, V> of()
  {
    return EMPTY_IMMUTABLE_BIMAP;
  }

  public static <K, V> ImmutableBiMap<K, V> of(K paramK, V paramV)
  {
    return new RegularImmutableBiMap(ImmutableMap.of(paramK, paramV));
  }

  public static <K, V> ImmutableBiMap<K, V> of(K paramK1, V paramV1, K paramK2, V paramV2)
  {
    return new RegularImmutableBiMap(ImmutableMap.of(paramK1, paramV1, paramK2, paramV2));
  }

  public static <K, V> ImmutableBiMap<K, V> of(K paramK1, V paramV1, K paramK2, V paramV2, K paramK3, V paramV3)
  {
    return new RegularImmutableBiMap(ImmutableMap.of(paramK1, paramV1, paramK2, paramV2, paramK3, paramV3));
  }

  public static <K, V> ImmutableBiMap<K, V> of(K paramK1, V paramV1, K paramK2, V paramV2, K paramK3, V paramV3, K paramK4, V paramV4)
  {
    return new RegularImmutableBiMap(ImmutableMap.of(paramK1, paramV1, paramK2, paramV2, paramK3, paramV3, paramK4, paramV4));
  }

  public static <K, V> ImmutableBiMap<K, V> of(K paramK1, V paramV1, K paramK2, V paramV2, K paramK3, V paramV3, K paramK4, V paramV4, K paramK5, V paramV5)
  {
    return new RegularImmutableBiMap(ImmutableMap.of(paramK1, paramV1, paramK2, paramV2, paramK3, paramV3, paramK4, paramV4, paramK5, paramV5));
  }

  public boolean containsKey(@Nullable Object paramObject)
  {
    return delegate().containsKey(paramObject);
  }

  public boolean containsValue(@Nullable Object paramObject)
  {
    return inverse().containsKey(paramObject);
  }

  abstract ImmutableMap<K, V> delegate();

  public ImmutableSet<Map.Entry<K, V>> entrySet()
  {
    return delegate().entrySet();
  }

  public boolean equals(@Nullable Object paramObject)
  {
    return (paramObject == this) || (delegate().equals(paramObject));
  }

  public V forcePut(K paramK, V paramV)
  {
    throw new UnsupportedOperationException();
  }

  public V get(@Nullable Object paramObject)
  {
    return delegate().get(paramObject);
  }

  public int hashCode()
  {
    return delegate().hashCode();
  }

  public abstract ImmutableBiMap<V, K> inverse();

  public boolean isEmpty()
  {
    return delegate().isEmpty();
  }

  public ImmutableSet<K> keySet()
  {
    return delegate().keySet();
  }

  public int size()
  {
    return delegate().size();
  }

  public String toString()
  {
    return delegate().toString();
  }

  public ImmutableSet<V> values()
  {
    return inverse().keySet();
  }

  Object writeReplace()
  {
    return new SerializedForm(this);
  }

  public static final class Builder<K, V> extends ImmutableMap.Builder<K, V>
  {
    public ImmutableBiMap<K, V> build()
    {
      ImmutableMap localImmutableMap = super.build();
      if (localImmutableMap.isEmpty())
        return ImmutableBiMap.of();
      return new RegularImmutableBiMap(localImmutableMap);
    }

    public Builder<K, V> put(K paramK, V paramV)
    {
      super.put(paramK, paramV);
      return this;
    }

    public Builder<K, V> putAll(Map<? extends K, ? extends V> paramMap)
    {
      super.putAll(paramMap);
      return this;
    }
  }

  static class EmptyBiMap extends ImmutableBiMap<Object, Object>
  {
    ImmutableMap<Object, Object> delegate()
    {
      return ImmutableMap.of();
    }

    public ImmutableBiMap<Object, Object> inverse()
    {
      return this;
    }

    boolean isPartialView()
    {
      return false;
    }

    Object readResolve()
    {
      return ImmutableBiMap.EMPTY_IMMUTABLE_BIMAP;
    }
  }

  private static class SerializedForm extends ImmutableMap.SerializedForm
  {
    private static final long serialVersionUID;

    SerializedForm(ImmutableBiMap<?, ?> paramImmutableBiMap)
    {
      super();
    }

    Object readResolve()
    {
      return createMap(new ImmutableBiMap.Builder());
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ImmutableBiMap
 * JD-Core Version:    0.6.2
 */