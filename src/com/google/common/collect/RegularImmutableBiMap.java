package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Iterator;
import java.util.Map.Entry;

@GwtCompatible(emulated=true, serializable=true)
class RegularImmutableBiMap<K, V> extends ImmutableBiMap<K, V>
{
  final transient ImmutableMap<K, V> delegate;
  final transient ImmutableBiMap<V, K> inverse;

  RegularImmutableBiMap(ImmutableMap<K, V> paramImmutableMap)
  {
    this.delegate = paramImmutableMap;
    ImmutableMap.Builder localBuilder = ImmutableMap.builder();
    Iterator localIterator = paramImmutableMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localBuilder.put(localEntry.getValue(), localEntry.getKey());
    }
    this.inverse = new RegularImmutableBiMap(localBuilder.build(), this);
  }

  RegularImmutableBiMap(ImmutableMap<K, V> paramImmutableMap, ImmutableBiMap<V, K> paramImmutableBiMap)
  {
    this.delegate = paramImmutableMap;
    this.inverse = paramImmutableBiMap;
  }

  ImmutableMap<K, V> delegate()
  {
    return this.delegate;
  }

  public ImmutableBiMap<V, K> inverse()
  {
    return this.inverse;
  }

  boolean isPartialView()
  {
    return (this.delegate.isPartialView()) || (this.inverse.delegate().isPartialView());
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.RegularImmutableBiMap
 * JD-Core Version:    0.6.2
 */