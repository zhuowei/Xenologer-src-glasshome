package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Iterator;
import java.util.Map.Entry;
import javax.annotation.Nullable;

@GwtCompatible(serializable=true)
class RegularImmutableMultiset<E> extends ImmutableMultiset<E>
{
  private final transient ImmutableMap<E, Integer> map;
  private final transient int size;

  RegularImmutableMultiset(ImmutableMap<E, Integer> paramImmutableMap, int paramInt)
  {
    this.map = paramImmutableMap;
    this.size = paramInt;
  }

  public boolean contains(@Nullable Object paramObject)
  {
    return this.map.containsKey(paramObject);
  }

  public int count(@Nullable Object paramObject)
  {
    Integer localInteger = (Integer)this.map.get(paramObject);
    if (localInteger == null)
      return 0;
    return localInteger.intValue();
  }

  int distinctElements()
  {
    return this.map.size();
  }

  public ImmutableSet<E> elementSet()
  {
    return this.map.keySet();
  }

  UnmodifiableIterator<Multiset.Entry<E>> entryIterator()
  {
    return new UnmodifiableIterator()
    {
      public boolean hasNext()
      {
        return this.val$mapIterator.hasNext();
      }

      public Multiset.Entry<E> next()
      {
        Map.Entry localEntry = (Map.Entry)this.val$mapIterator.next();
        return Multisets.immutableEntry(localEntry.getKey(), ((Integer)localEntry.getValue()).intValue());
      }
    };
  }

  public int hashCode()
  {
    return this.map.hashCode();
  }

  boolean isPartialView()
  {
    return this.map.isPartialView();
  }

  public int size()
  {
    return this.size;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.RegularImmutableMultiset
 * JD-Core Version:    0.6.2
 */