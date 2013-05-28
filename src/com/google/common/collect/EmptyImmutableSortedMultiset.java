package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.util.Comparator;
import javax.annotation.Nullable;

final class EmptyImmutableSortedMultiset<E> extends ImmutableSortedMultiset<E>
{
  EmptyImmutableSortedMultiset(Comparator<? super E> paramComparator)
  {
    super(paramComparator);
  }

  public int count(@Nullable Object paramObject)
  {
    return 0;
  }

  ImmutableSortedSet<E> createDescendingElementSet()
  {
    return ImmutableSortedSet.emptySet(reverseComparator());
  }

  ImmutableSortedSet<E> createElementSet()
  {
    return ImmutableSortedSet.emptySet(comparator());
  }

  UnmodifiableIterator<Multiset.Entry<E>> descendingEntryIterator()
  {
    return Iterators.emptyIterator();
  }

  int distinctElements()
  {
    return 0;
  }

  UnmodifiableIterator<Multiset.Entry<E>> entryIterator()
  {
    return Iterators.emptyIterator();
  }

  public Multiset.Entry<E> firstEntry()
  {
    return null;
  }

  public ImmutableSortedMultiset<E> headMultiset(E paramE, BoundType paramBoundType)
  {
    Preconditions.checkNotNull(paramE);
    Preconditions.checkNotNull(paramBoundType);
    return this;
  }

  boolean isPartialView()
  {
    return false;
  }

  public Multiset.Entry<E> lastEntry()
  {
    return null;
  }

  public int size()
  {
    return 0;
  }

  public ImmutableSortedMultiset<E> tailMultiset(E paramE, BoundType paramBoundType)
  {
    Preconditions.checkNotNull(paramE);
    Preconditions.checkNotNull(paramBoundType);
    return this;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.EmptyImmutableSortedMultiset
 * JD-Core Version:    0.6.2
 */