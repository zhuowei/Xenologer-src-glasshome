package com.google.common.collect;

import javax.annotation.Nullable;

final class DescendingImmutableSortedMultiset<E> extends ImmutableSortedMultiset<E>
{
  private final transient ImmutableSortedMultiset<E> forward;

  DescendingImmutableSortedMultiset(ImmutableSortedMultiset<E> paramImmutableSortedMultiset)
  {
    super(paramImmutableSortedMultiset.reverseComparator());
    this.forward = paramImmutableSortedMultiset;
  }

  public int count(@Nullable Object paramObject)
  {
    return this.forward.count(paramObject);
  }

  ImmutableSortedSet<E> createDescendingElementSet()
  {
    return this.forward.elementSet();
  }

  ImmutableSortedSet<E> createElementSet()
  {
    return this.forward.createDescendingElementSet();
  }

  UnmodifiableIterator<Multiset.Entry<E>> descendingEntryIterator()
  {
    return this.forward.entryIterator();
  }

  public ImmutableSortedMultiset<E> descendingMultiset()
  {
    return this.forward;
  }

  int distinctElements()
  {
    return this.forward.distinctElements();
  }

  UnmodifiableIterator<Multiset.Entry<E>> entryIterator()
  {
    return this.forward.descendingEntryIterator();
  }

  public Multiset.Entry<E> firstEntry()
  {
    return this.forward.lastEntry();
  }

  public ImmutableSortedMultiset<E> headMultiset(E paramE, BoundType paramBoundType)
  {
    return this.forward.tailMultiset(paramE, paramBoundType).descendingMultiset();
  }

  boolean isPartialView()
  {
    return this.forward.isPartialView();
  }

  public Multiset.Entry<E> lastEntry()
  {
    return this.forward.firstEntry();
  }

  public int size()
  {
    return this.forward.size();
  }

  public ImmutableSortedMultiset<E> tailMultiset(E paramE, BoundType paramBoundType)
  {
    return this.forward.headMultiset(paramE, paramBoundType).descendingMultiset();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.DescendingImmutableSortedMultiset
 * JD-Core Version:    0.6.2
 */