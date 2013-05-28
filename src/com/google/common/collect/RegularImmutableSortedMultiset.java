package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nullable;

final class RegularImmutableSortedMultiset<E> extends ImmutableSortedMultiset<E>
{
  final transient ImmutableList<CumulativeCountEntry<E>> entries;

  static
  {
    if (!RegularImmutableSortedMultiset.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  RegularImmutableSortedMultiset(Comparator<? super E> paramComparator, ImmutableList<CumulativeCountEntry<E>> paramImmutableList)
  {
    super(paramComparator);
    this.entries = paramImmutableList;
    assert (!paramImmutableList.isEmpty());
  }

  static <E> RegularImmutableSortedMultiset<E> createFromSorted(Comparator<? super E> paramComparator, List<? extends Multiset.Entry<E>> paramList)
  {
    ArrayList localArrayList = Lists.newArrayListWithCapacity(paramList.size());
    Object localObject = null;
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      Multiset.Entry localEntry = (Multiset.Entry)localIterator.next();
      CumulativeCountEntry localCumulativeCountEntry = new CumulativeCountEntry(localEntry.getElement(), localEntry.getCount(), (CumulativeCountEntry)localObject);
      localArrayList.add(localCumulativeCountEntry);
      localObject = localCumulativeCountEntry;
    }
    return new RegularImmutableSortedMultiset(paramComparator, ImmutableList.copyOf(localArrayList));
  }

  private ImmutableSortedMultiset<E> createSubMultiset(int paramInt1, int paramInt2)
  {
    if ((paramInt1 == 0) && (paramInt2 == this.entries.size()))
      return this;
    if (paramInt1 >= paramInt2)
      return emptyMultiset(comparator());
    return new RegularImmutableSortedMultiset(comparator(), this.entries.subList(paramInt1, paramInt2));
  }

  public int count(@Nullable Object paramObject)
  {
    if (paramObject == null)
      return 0;
    try
    {
      int i = SortedLists.binarySearch(elementList(), paramObject, comparator(), SortedLists.KeyPresentBehavior.ANY_PRESENT, SortedLists.KeyAbsentBehavior.INVERTED_INSERTION_INDEX);
      int j;
      if (i >= 0)
        j = ((CumulativeCountEntry)this.entries.get(i)).getCount();
      for (int k = j; ; k = 0)
        return k;
    }
    catch (ClassCastException localClassCastException)
    {
    }
    return 0;
  }

  ImmutableSortedSet<E> createDescendingElementSet()
  {
    return new RegularImmutableSortedSet(elementList().reverse(), reverseComparator());
  }

  ImmutableSortedSet<E> createElementSet()
  {
    return new RegularImmutableSortedSet(elementList(), comparator());
  }

  UnmodifiableIterator<Multiset.Entry<E>> descendingEntryIterator()
  {
    return this.entries.reverse().iterator();
  }

  int distinctElements()
  {
    return this.entries.size();
  }

  ImmutableList<E> elementList()
  {
    return new TransformedImmutableList(this.entries)
    {
      E transform(RegularImmutableSortedMultiset.CumulativeCountEntry<E> paramAnonymousCumulativeCountEntry)
      {
        return paramAnonymousCumulativeCountEntry.getElement();
      }
    };
  }

  UnmodifiableIterator<Multiset.Entry<E>> entryIterator()
  {
    return this.entries.iterator();
  }

  public CumulativeCountEntry<E> firstEntry()
  {
    return (CumulativeCountEntry)this.entries.get(0);
  }

  public ImmutableSortedMultiset<E> headMultiset(E paramE, BoundType paramBoundType)
  {
    switch (2.$SwitchMap$com$google$common$collect$BoundType[paramBoundType.ordinal()])
    {
    default:
      throw new AssertionError();
    case 1:
    case 2:
    }
    for (int i = SortedLists.binarySearch(elementList(), Preconditions.checkNotNull(paramE), comparator(), SortedLists.KeyPresentBehavior.ANY_PRESENT, SortedLists.KeyAbsentBehavior.NEXT_HIGHER); ; i = 1 + SortedLists.binarySearch(elementList(), Preconditions.checkNotNull(paramE), comparator(), SortedLists.KeyPresentBehavior.ANY_PRESENT, SortedLists.KeyAbsentBehavior.NEXT_LOWER))
      return createSubMultiset(0, i);
  }

  boolean isPartialView()
  {
    return this.entries.isPartialView();
  }

  public CumulativeCountEntry<E> lastEntry()
  {
    return (CumulativeCountEntry)this.entries.get(-1 + this.entries.size());
  }

  public int size()
  {
    CumulativeCountEntry localCumulativeCountEntry = firstEntry();
    return Ints.saturatedCast(lastEntry().cumulativeCount - localCumulativeCountEntry.cumulativeCount + localCumulativeCountEntry.count);
  }

  public ImmutableSortedMultiset<E> tailMultiset(E paramE, BoundType paramBoundType)
  {
    switch (2.$SwitchMap$com$google$common$collect$BoundType[paramBoundType.ordinal()])
    {
    default:
      throw new AssertionError();
    case 1:
    case 2:
    }
    for (int i = 1 + SortedLists.binarySearch(elementList(), Preconditions.checkNotNull(paramE), comparator(), SortedLists.KeyPresentBehavior.ANY_PRESENT, SortedLists.KeyAbsentBehavior.NEXT_LOWER); ; i = SortedLists.binarySearch(elementList(), Preconditions.checkNotNull(paramE), comparator(), SortedLists.KeyPresentBehavior.ANY_PRESENT, SortedLists.KeyAbsentBehavior.NEXT_HIGHER))
      return createSubMultiset(i, distinctElements());
  }

  private static final class CumulativeCountEntry<E> extends Multisets.AbstractEntry<E>
  {
    final int count;
    final long cumulativeCount;
    final E element;

    CumulativeCountEntry(E paramE, int paramInt, @Nullable CumulativeCountEntry<E> paramCumulativeCountEntry)
    {
      this.element = paramE;
      this.count = paramInt;
      long l1 = paramInt;
      if (paramCumulativeCountEntry == null);
      for (long l2 = 0L; ; l2 = paramCumulativeCountEntry.cumulativeCount)
      {
        this.cumulativeCount = (l2 + l1);
        return;
      }
    }

    public int getCount()
    {
      return this.count;
    }

    public E getElement()
    {
      return this.element;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.RegularImmutableSortedMultiset
 * JD-Core Version:    0.6.2
 */