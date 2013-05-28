package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.Comparator;

@Beta
@GwtCompatible
public abstract class ContiguousSet<C extends Comparable> extends ImmutableSortedSet<C>
{
  final DiscreteDomain<C> domain;

  ContiguousSet(DiscreteDomain<C> paramDiscreteDomain)
  {
    super(Ordering.natural());
    this.domain = paramDiscreteDomain;
  }

  public ContiguousSet<C> headSet(C paramC)
  {
    return headSet((Comparable)Preconditions.checkNotNull(paramC), false);
  }

  ContiguousSet<C> headSet(C paramC, boolean paramBoolean)
  {
    return headSetImpl((Comparable)Preconditions.checkNotNull(paramC), paramBoolean);
  }

  abstract ContiguousSet<C> headSetImpl(C paramC, boolean paramBoolean);

  public abstract ContiguousSet<C> intersection(ContiguousSet<C> paramContiguousSet);

  public abstract Range<C> range();

  public abstract Range<C> range(BoundType paramBoundType1, BoundType paramBoundType2);

  public ContiguousSet<C> subSet(C paramC1, C paramC2)
  {
    Preconditions.checkNotNull(paramC1);
    Preconditions.checkNotNull(paramC2);
    if (comparator().compare(paramC1, paramC2) <= 0);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool);
      return subSet(paramC1, true, paramC2, false);
    }
  }

  ContiguousSet<C> subSet(C paramC1, boolean paramBoolean1, C paramC2, boolean paramBoolean2)
  {
    Preconditions.checkNotNull(paramC1);
    Preconditions.checkNotNull(paramC2);
    if (comparator().compare(paramC1, paramC2) <= 0);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool);
      return subSetImpl(paramC1, paramBoolean1, paramC2, paramBoolean2);
    }
  }

  abstract ContiguousSet<C> subSetImpl(C paramC1, boolean paramBoolean1, C paramC2, boolean paramBoolean2);

  public ContiguousSet<C> tailSet(C paramC)
  {
    return tailSet((Comparable)Preconditions.checkNotNull(paramC), true);
  }

  ContiguousSet<C> tailSet(C paramC, boolean paramBoolean)
  {
    return tailSetImpl((Comparable)Preconditions.checkNotNull(paramC), paramBoolean);
  }

  abstract ContiguousSet<C> tailSetImpl(C paramC, boolean paramBoolean);

  public String toString()
  {
    return range().toString();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ContiguousSet
 * JD-Core Version:    0.6.2
 */