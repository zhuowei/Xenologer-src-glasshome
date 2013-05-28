package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.util.Comparator;
import javax.annotation.Nullable;

final class ImmutableSortedAsList<E> extends ImmutableList<E>
  implements SortedIterable<E>
{
  private final transient ImmutableList<E> backingList;
  private final transient ImmutableSortedSet<E> backingSet;

  ImmutableSortedAsList(ImmutableSortedSet<E> paramImmutableSortedSet, ImmutableList<E> paramImmutableList)
  {
    this.backingSet = paramImmutableSortedSet;
    this.backingList = paramImmutableList;
  }

  public Comparator<? super E> comparator()
  {
    return this.backingSet.comparator();
  }

  public boolean contains(@Nullable Object paramObject)
  {
    return this.backingSet.indexOf(paramObject) >= 0;
  }

  public boolean equals(@Nullable Object paramObject)
  {
    return this.backingList.equals(paramObject);
  }

  public E get(int paramInt)
  {
    return this.backingList.get(paramInt);
  }

  public int hashCode()
  {
    return this.backingList.hashCode();
  }

  public int indexOf(@Nullable Object paramObject)
  {
    return this.backingSet.indexOf(paramObject);
  }

  boolean isPartialView()
  {
    return this.backingList.isPartialView();
  }

  public UnmodifiableIterator<E> iterator()
  {
    return this.backingList.iterator();
  }

  public int lastIndexOf(@Nullable Object paramObject)
  {
    return this.backingSet.indexOf(paramObject);
  }

  public UnmodifiableListIterator<E> listIterator()
  {
    return this.backingList.listIterator();
  }

  public UnmodifiableListIterator<E> listIterator(int paramInt)
  {
    return this.backingList.listIterator(paramInt);
  }

  public int size()
  {
    return this.backingList.size();
  }

  public ImmutableList<E> subList(int paramInt1, int paramInt2)
  {
    Preconditions.checkPositionIndexes(paramInt1, paramInt2, size());
    if (paramInt1 == paramInt2)
      return ImmutableList.of();
    return new RegularImmutableSortedSet(this.backingList.subList(paramInt1, paramInt2), this.backingSet.comparator()).asList();
  }

  Object writeReplace()
  {
    return new ImmutableAsList.SerializedForm(this.backingSet);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ImmutableSortedAsList
 * JD-Core Version:    0.6.2
 */