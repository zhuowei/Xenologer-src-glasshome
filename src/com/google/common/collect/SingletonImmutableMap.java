package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true, serializable=true)
final class SingletonImmutableMap<K, V> extends ImmutableMap<K, V>
{
  private transient Map.Entry<K, V> entry;
  private transient ImmutableSet<Map.Entry<K, V>> entrySet;
  private transient ImmutableSet<K> keySet;
  final transient K singleKey;
  final transient V singleValue;
  private transient ImmutableCollection<V> values;

  SingletonImmutableMap(K paramK, V paramV)
  {
    this.singleKey = paramK;
    this.singleValue = paramV;
  }

  SingletonImmutableMap(Map.Entry<K, V> paramEntry)
  {
    this.entry = paramEntry;
    this.singleKey = paramEntry.getKey();
    this.singleValue = paramEntry.getValue();
  }

  private Map.Entry<K, V> entry()
  {
    Map.Entry localEntry = this.entry;
    if (localEntry == null)
    {
      localEntry = Maps.immutableEntry(this.singleKey, this.singleValue);
      this.entry = localEntry;
    }
    return localEntry;
  }

  public boolean containsKey(@Nullable Object paramObject)
  {
    return this.singleKey.equals(paramObject);
  }

  public boolean containsValue(@Nullable Object paramObject)
  {
    return this.singleValue.equals(paramObject);
  }

  public ImmutableSet<Map.Entry<K, V>> entrySet()
  {
    ImmutableSet localImmutableSet = this.entrySet;
    if (localImmutableSet == null)
    {
      localImmutableSet = ImmutableSet.of(entry());
      this.entrySet = localImmutableSet;
    }
    return localImmutableSet;
  }

  public boolean equals(@Nullable Object paramObject)
  {
    if (paramObject == this);
    Map.Entry localEntry;
    do
    {
      return true;
      if (!(paramObject instanceof Map))
        break;
      Map localMap = (Map)paramObject;
      if (localMap.size() != 1)
        return false;
      localEntry = (Map.Entry)localMap.entrySet().iterator().next();
    }
    while ((this.singleKey.equals(localEntry.getKey())) && (this.singleValue.equals(localEntry.getValue())));
    return false;
    return false;
  }

  public V get(@Nullable Object paramObject)
  {
    if (this.singleKey.equals(paramObject))
      return this.singleValue;
    return null;
  }

  public int hashCode()
  {
    return this.singleKey.hashCode() ^ this.singleValue.hashCode();
  }

  public boolean isEmpty()
  {
    return false;
  }

  boolean isPartialView()
  {
    return false;
  }

  public ImmutableSet<K> keySet()
  {
    ImmutableSet localImmutableSet = this.keySet;
    if (localImmutableSet == null)
    {
      localImmutableSet = ImmutableSet.of(this.singleKey);
      this.keySet = localImmutableSet;
    }
    return localImmutableSet;
  }

  public int size()
  {
    return 1;
  }

  public String toString()
  {
    return '{' + this.singleKey.toString() + '=' + this.singleValue.toString() + '}';
  }

  public ImmutableCollection<V> values()
  {
    Object localObject = this.values;
    if (localObject == null)
    {
      localObject = new Values(this.singleValue);
      this.values = ((ImmutableCollection)localObject);
    }
    return localObject;
  }

  private static class Values<V> extends ImmutableCollection<V>
  {
    final V singleValue;

    Values(V paramV)
    {
      this.singleValue = paramV;
    }

    public boolean contains(Object paramObject)
    {
      return this.singleValue.equals(paramObject);
    }

    public boolean isEmpty()
    {
      return false;
    }

    boolean isPartialView()
    {
      return true;
    }

    public UnmodifiableIterator<V> iterator()
    {
      return Iterators.singletonIterator(this.singleValue);
    }

    public int size()
    {
      return 1;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.SingletonImmutableMap
 * JD-Core Version:    0.6.2
 */