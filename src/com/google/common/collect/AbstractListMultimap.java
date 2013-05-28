package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import javax.annotation.Nullable;

@GwtCompatible
abstract class AbstractListMultimap<K, V> extends AbstractMultimap<K, V>
  implements ListMultimap<K, V>
{
  private static final long serialVersionUID = 6588350623831699109L;

  protected AbstractListMultimap(Map<K, Collection<V>> paramMap)
  {
    super(paramMap);
  }

  public Map<K, Collection<V>> asMap()
  {
    return super.asMap();
  }

  abstract List<V> createCollection();

  public boolean equals(@Nullable Object paramObject)
  {
    return super.equals(paramObject);
  }

  public List<V> get(@Nullable K paramK)
  {
    return (List)super.get(paramK);
  }

  public boolean put(@Nullable K paramK, @Nullable V paramV)
  {
    return super.put(paramK, paramV);
  }

  public List<V> removeAll(@Nullable Object paramObject)
  {
    return (List)super.removeAll(paramObject);
  }

  public List<V> replaceValues(@Nullable K paramK, Iterable<? extends V> paramIterable)
  {
    return (List)super.replaceValues(paramK, paramIterable);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.AbstractListMultimap
 * JD-Core Version:    0.6.2
 */