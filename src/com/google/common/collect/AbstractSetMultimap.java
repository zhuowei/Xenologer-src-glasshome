package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Collection;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import javax.annotation.Nullable;

@GwtCompatible
abstract class AbstractSetMultimap<K, V> extends AbstractMultimap<K, V>
  implements SetMultimap<K, V>
{
  private static final long serialVersionUID = 7431625294878419160L;

  protected AbstractSetMultimap(Map<K, Collection<V>> paramMap)
  {
    super(paramMap);
  }

  public Map<K, Collection<V>> asMap()
  {
    return super.asMap();
  }

  abstract Set<V> createCollection();

  public Set<Map.Entry<K, V>> entries()
  {
    return (Set)super.entries();
  }

  public boolean equals(@Nullable Object paramObject)
  {
    return super.equals(paramObject);
  }

  public Set<V> get(@Nullable K paramK)
  {
    return (Set)super.get(paramK);
  }

  public boolean put(K paramK, V paramV)
  {
    return super.put(paramK, paramV);
  }

  public Set<V> removeAll(@Nullable Object paramObject)
  {
    return (Set)super.removeAll(paramObject);
  }

  public Set<V> replaceValues(@Nullable K paramK, Iterable<? extends V> paramIterable)
  {
    return (Set)super.replaceValues(paramK, paramIterable);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.AbstractSetMultimap
 * JD-Core Version:    0.6.2
 */