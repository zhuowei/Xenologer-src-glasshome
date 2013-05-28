package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true, serializable=true)
public abstract class ImmutableMap<K, V>
  implements Map<K, V>, Serializable
{
  public static <K, V> Builder<K, V> builder()
  {
    return new Builder();
  }

  public static <K, V> ImmutableMap<K, V> copyOf(Map<? extends K, ? extends V> paramMap)
  {
    if (((paramMap instanceof ImmutableMap)) && (!(paramMap instanceof ImmutableSortedMap)))
    {
      ImmutableMap localImmutableMap = (ImmutableMap)paramMap;
      if (!localImmutableMap.isPartialView())
        return localImmutableMap;
    }
    Map.Entry[] arrayOfEntry = (Map.Entry[])paramMap.entrySet().toArray(new Map.Entry[0]);
    int i;
    switch (arrayOfEntry.length)
    {
    default:
      i = 0;
    case 0:
    case 1:
    }
    while (i < arrayOfEntry.length)
    {
      arrayOfEntry[i] = entryOf(arrayOfEntry[i].getKey(), arrayOfEntry[i].getValue());
      i++;
      continue;
      return of();
      return new SingletonImmutableMap(entryOf(arrayOfEntry[0].getKey(), arrayOfEntry[0].getValue()));
    }
    return new RegularImmutableMap(arrayOfEntry);
  }

  static <K, V> Map.Entry<K, V> entryOf(K paramK, V paramV)
  {
    return Maps.immutableEntry(Preconditions.checkNotNull(paramK, "null key"), Preconditions.checkNotNull(paramV, "null value"));
  }

  public static <K, V> ImmutableMap<K, V> of()
  {
    return EmptyImmutableMap.INSTANCE;
  }

  public static <K, V> ImmutableMap<K, V> of(K paramK, V paramV)
  {
    return new SingletonImmutableMap(Preconditions.checkNotNull(paramK), Preconditions.checkNotNull(paramV));
  }

  public static <K, V> ImmutableMap<K, V> of(K paramK1, V paramV1, K paramK2, V paramV2)
  {
    Map.Entry[] arrayOfEntry = new Map.Entry[2];
    arrayOfEntry[0] = entryOf(paramK1, paramV1);
    arrayOfEntry[1] = entryOf(paramK2, paramV2);
    return new RegularImmutableMap(arrayOfEntry);
  }

  public static <K, V> ImmutableMap<K, V> of(K paramK1, V paramV1, K paramK2, V paramV2, K paramK3, V paramV3)
  {
    Map.Entry[] arrayOfEntry = new Map.Entry[3];
    arrayOfEntry[0] = entryOf(paramK1, paramV1);
    arrayOfEntry[1] = entryOf(paramK2, paramV2);
    arrayOfEntry[2] = entryOf(paramK3, paramV3);
    return new RegularImmutableMap(arrayOfEntry);
  }

  public static <K, V> ImmutableMap<K, V> of(K paramK1, V paramV1, K paramK2, V paramV2, K paramK3, V paramV3, K paramK4, V paramV4)
  {
    Map.Entry[] arrayOfEntry = new Map.Entry[4];
    arrayOfEntry[0] = entryOf(paramK1, paramV1);
    arrayOfEntry[1] = entryOf(paramK2, paramV2);
    arrayOfEntry[2] = entryOf(paramK3, paramV3);
    arrayOfEntry[3] = entryOf(paramK4, paramV4);
    return new RegularImmutableMap(arrayOfEntry);
  }

  public static <K, V> ImmutableMap<K, V> of(K paramK1, V paramV1, K paramK2, V paramV2, K paramK3, V paramV3, K paramK4, V paramV4, K paramK5, V paramV5)
  {
    Map.Entry[] arrayOfEntry = new Map.Entry[5];
    arrayOfEntry[0] = entryOf(paramK1, paramV1);
    arrayOfEntry[1] = entryOf(paramK2, paramV2);
    arrayOfEntry[2] = entryOf(paramK3, paramV3);
    arrayOfEntry[3] = entryOf(paramK4, paramV4);
    arrayOfEntry[4] = entryOf(paramK5, paramV5);
    return new RegularImmutableMap(arrayOfEntry);
  }

  public final void clear()
  {
    throw new UnsupportedOperationException();
  }

  public boolean containsKey(@Nullable Object paramObject)
  {
    return get(paramObject) != null;
  }

  public abstract boolean containsValue(@Nullable Object paramObject);

  public abstract ImmutableSet<Map.Entry<K, V>> entrySet();

  public boolean equals(@Nullable Object paramObject)
  {
    if (paramObject == this)
      return true;
    if ((paramObject instanceof Map))
    {
      Map localMap = (Map)paramObject;
      return entrySet().equals(localMap.entrySet());
    }
    return false;
  }

  public abstract V get(@Nullable Object paramObject);

  public int hashCode()
  {
    return entrySet().hashCode();
  }

  public boolean isEmpty()
  {
    return size() == 0;
  }

  abstract boolean isPartialView();

  public abstract ImmutableSet<K> keySet();

  public final V put(K paramK, V paramV)
  {
    throw new UnsupportedOperationException();
  }

  public final void putAll(Map<? extends K, ? extends V> paramMap)
  {
    throw new UnsupportedOperationException();
  }

  public final V remove(Object paramObject)
  {
    throw new UnsupportedOperationException();
  }

  public String toString()
  {
    return Maps.toStringImpl(this);
  }

  public abstract ImmutableCollection<V> values();

  Object writeReplace()
  {
    return new SerializedForm(this);
  }

  public static class Builder<K, V>
  {
    final ArrayList<Map.Entry<K, V>> entries = Lists.newArrayList();

    private static <K, V> ImmutableMap<K, V> fromEntryList(List<Map.Entry<K, V>> paramList)
    {
      switch (paramList.size())
      {
      default:
        return new RegularImmutableMap((Map.Entry[])paramList.toArray(new Map.Entry[paramList.size()]));
      case 0:
        return ImmutableMap.of();
      case 1:
      }
      return new SingletonImmutableMap((Map.Entry)Iterables.getOnlyElement(paramList));
    }

    public ImmutableMap<K, V> build()
    {
      return fromEntryList(this.entries);
    }

    public Builder<K, V> put(K paramK, V paramV)
    {
      this.entries.add(ImmutableMap.entryOf(paramK, paramV));
      return this;
    }

    public Builder<K, V> put(Map.Entry<? extends K, ? extends V> paramEntry)
    {
      Object localObject1 = paramEntry.getKey();
      Object localObject2 = paramEntry.getValue();
      if ((paramEntry instanceof ImmutableEntry))
      {
        Preconditions.checkNotNull(localObject1);
        Preconditions.checkNotNull(localObject2);
        this.entries.add(paramEntry);
        return this;
      }
      this.entries.add(ImmutableMap.entryOf(localObject1, localObject2));
      return this;
    }

    public Builder<K, V> putAll(Map<? extends K, ? extends V> paramMap)
    {
      this.entries.ensureCapacity(this.entries.size() + paramMap.size());
      Iterator localIterator = paramMap.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        put(localEntry.getKey(), localEntry.getValue());
      }
      return this;
    }
  }

  static class SerializedForm
    implements Serializable
  {
    private static final long serialVersionUID;
    private final Object[] keys;
    private final Object[] values;

    SerializedForm(ImmutableMap<?, ?> paramImmutableMap)
    {
      this.keys = new Object[paramImmutableMap.size()];
      this.values = new Object[paramImmutableMap.size()];
      int i = 0;
      Iterator localIterator = paramImmutableMap.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        this.keys[i] = localEntry.getKey();
        this.values[i] = localEntry.getValue();
        i++;
      }
    }

    Object createMap(ImmutableMap.Builder<Object, Object> paramBuilder)
    {
      for (int i = 0; i < this.keys.length; i++)
        paramBuilder.put(this.keys[i], this.values[i]);
      return paramBuilder.build();
    }

    Object readResolve()
    {
      return createMap(new ImmutableMap.Builder());
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ImmutableMap
 * JD-Core Version:    0.6.2
 */