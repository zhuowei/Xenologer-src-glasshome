package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import java.io.Serializable;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.SortedSet;
import javax.annotation.Nullable;

@Beta
@GwtCompatible
public final class Range<C extends Comparable>
  implements Predicate<C>, Serializable
{
  private static final long serialVersionUID;
  final Cut<C> lowerBound;
  final Cut<C> upperBound;

  Range(Cut<C> paramCut1, Cut<C> paramCut2)
  {
    if (paramCut1.compareTo(paramCut2) > 0)
      throw new IllegalArgumentException("Invalid range: " + toString(paramCut1, paramCut2));
    this.lowerBound = paramCut1;
    this.upperBound = paramCut2;
  }

  private static <T> SortedSet<T> cast(Iterable<T> paramIterable)
  {
    return (SortedSet)paramIterable;
  }

  static int compareOrThrow(Comparable paramComparable1, Comparable paramComparable2)
  {
    return paramComparable1.compareTo(paramComparable2);
  }

  private static String toString(Cut<?> paramCut1, Cut<?> paramCut2)
  {
    StringBuilder localStringBuilder = new StringBuilder(16);
    paramCut1.describeAsLowerBound(localStringBuilder);
    localStringBuilder.append('‥');
    paramCut2.describeAsUpperBound(localStringBuilder);
    return localStringBuilder.toString();
  }

  public boolean apply(C paramC)
  {
    return contains(paramC);
  }

  @GwtCompatible(serializable=false)
  public ContiguousSet<C> asSet(DiscreteDomain<C> paramDiscreteDomain)
  {
    Preconditions.checkNotNull(paramDiscreteDomain);
    Object localObject = this;
    while (true)
    {
      try
      {
        if (!hasLowerBound())
          localObject = ((Range)localObject).intersection(Ranges.atLeast(paramDiscreteDomain.minValue()));
        if (!hasUpperBound())
        {
          Range localRange = ((Range)localObject).intersection(Ranges.atMost(paramDiscreteDomain.maxValue()));
          localObject = localRange;
        }
        if ((((Range)localObject).isEmpty()) || (compareOrThrow(this.lowerBound.leastValueAbove(paramDiscreteDomain), this.upperBound.greatestValueBelow(paramDiscreteDomain)) > 0))
        {
          i = 1;
          if (i == 0)
            break;
          return new EmptyContiguousSet(paramDiscreteDomain);
        }
      }
      catch (NoSuchElementException localNoSuchElementException)
      {
        throw new IllegalArgumentException(localNoSuchElementException);
      }
      int i = 0;
    }
    return new RegularContiguousSet((Range)localObject, paramDiscreteDomain);
  }

  public Range<C> canonical(DiscreteDomain<C> paramDiscreteDomain)
  {
    Preconditions.checkNotNull(paramDiscreteDomain);
    Cut localCut1 = this.lowerBound.canonical(paramDiscreteDomain);
    Cut localCut2 = this.upperBound.canonical(paramDiscreteDomain);
    if ((localCut1 == this.lowerBound) && (localCut2 == this.upperBound))
      return this;
    return Ranges.create(localCut1, localCut2);
  }

  public boolean contains(C paramC)
  {
    Preconditions.checkNotNull(paramC);
    return (this.lowerBound.isLessThan(paramC)) && (!this.upperBound.isLessThan(paramC));
  }

  public boolean containsAll(Iterable<? extends C> paramIterable)
  {
    if (Iterables.isEmpty(paramIterable));
    Iterator localIterator;
    do
      while (!localIterator.hasNext())
      {
        return true;
        if ((paramIterable instanceof SortedSet))
        {
          SortedSet localSortedSet = cast(paramIterable);
          Comparator localComparator = localSortedSet.comparator();
          if ((Ordering.natural().equals(localComparator)) || (localComparator == null))
          {
            if ((contains((Comparable)localSortedSet.first())) && (contains((Comparable)localSortedSet.last())));
            for (boolean bool = true; ; bool = false)
              return bool;
          }
        }
        localIterator = paramIterable.iterator();
      }
    while (contains((Comparable)localIterator.next()));
    return false;
  }

  public boolean encloses(Range<C> paramRange)
  {
    return (this.lowerBound.compareTo(paramRange.lowerBound) <= 0) && (this.upperBound.compareTo(paramRange.upperBound) >= 0);
  }

  public boolean equals(@Nullable Object paramObject)
  {
    boolean bool1 = paramObject instanceof Range;
    boolean bool2 = false;
    if (bool1)
    {
      Range localRange = (Range)paramObject;
      boolean bool3 = this.lowerBound.equals(localRange.lowerBound);
      bool2 = false;
      if (bool3)
      {
        boolean bool4 = this.upperBound.equals(localRange.upperBound);
        bool2 = false;
        if (bool4)
          bool2 = true;
      }
    }
    return bool2;
  }

  public boolean hasLowerBound()
  {
    return this.lowerBound != Cut.belowAll();
  }

  public boolean hasUpperBound()
  {
    return this.upperBound != Cut.aboveAll();
  }

  public int hashCode()
  {
    return 31 * this.lowerBound.hashCode() + this.upperBound.hashCode();
  }

  public Range<C> intersection(Range<C> paramRange)
  {
    return Ranges.create((Cut)Ordering.natural().max(this.lowerBound, paramRange.lowerBound), (Cut)Ordering.natural().min(this.upperBound, paramRange.upperBound));
  }

  public boolean isConnected(Range<C> paramRange)
  {
    return (this.lowerBound.compareTo(paramRange.upperBound) <= 0) && (paramRange.lowerBound.compareTo(this.upperBound) <= 0);
  }

  public boolean isEmpty()
  {
    return this.lowerBound.equals(this.upperBound);
  }

  public BoundType lowerBoundType()
  {
    return this.lowerBound.typeAsLowerBound();
  }

  public C lowerEndpoint()
  {
    return this.lowerBound.endpoint();
  }

  public Range<C> span(Range<C> paramRange)
  {
    return Ranges.create((Cut)Ordering.natural().min(this.lowerBound, paramRange.lowerBound), (Cut)Ordering.natural().max(this.upperBound, paramRange.upperBound));
  }

  public String toString()
  {
    return toString(this.lowerBound, this.upperBound);
  }

  public BoundType upperBoundType()
  {
    return this.upperBound.typeAsUpperBound();
  }

  public C upperEndpoint()
  {
    return this.upperBound.endpoint();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.Range
 * JD-Core Version:    0.6.2
 */