package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import javax.annotation.Nullable;

@GwtCompatible(serializable=true)
final class EmptyImmutableMultiset extends ImmutableMultiset<Object>
{
  static final EmptyImmutableMultiset INSTANCE = new EmptyImmutableMultiset();
  private static final long serialVersionUID;

  public int count(@Nullable Object paramObject)
  {
    return 0;
  }

  ImmutableSet<Multiset.Entry<Object>> createEntrySet()
  {
    return ImmutableSet.of();
  }

  int distinctElements()
  {
    return 0;
  }

  public ImmutableSet<Object> elementSet()
  {
    return ImmutableSet.of();
  }

  UnmodifiableIterator<Multiset.Entry<Object>> entryIterator()
  {
    return Iterators.emptyIterator();
  }

  boolean isPartialView()
  {
    return false;
  }

  public int size()
  {
    return 0;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.EmptyImmutableMultiset
 * JD-Core Version:    0.6.2
 */