package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.Iterator;

@Beta
@GwtCompatible
public final class Ranges
{
  public static <C extends Comparable<?>> Range<C> all()
  {
    return create(Cut.belowAll(), Cut.aboveAll());
  }

  public static <C extends Comparable<?>> Range<C> atLeast(C paramC)
  {
    return create(Cut.belowValue(paramC), Cut.aboveAll());
  }

  public static <C extends Comparable<?>> Range<C> atMost(C paramC)
  {
    return create(Cut.belowAll(), Cut.aboveValue(paramC));
  }

  public static <C extends Comparable<?>> Range<C> closed(C paramC1, C paramC2)
  {
    return create(Cut.belowValue(paramC1), Cut.aboveValue(paramC2));
  }

  public static <C extends Comparable<?>> Range<C> closedOpen(C paramC1, C paramC2)
  {
    return create(Cut.belowValue(paramC1), Cut.belowValue(paramC2));
  }

  static <C extends Comparable<?>> Range<C> create(Cut<C> paramCut1, Cut<C> paramCut2)
  {
    return new Range(paramCut1, paramCut2);
  }

  public static <C extends Comparable<?>> Range<C> downTo(C paramC, BoundType paramBoundType)
  {
    switch (1.$SwitchMap$com$google$common$collect$BoundType[paramBoundType.ordinal()])
    {
    default:
      throw new AssertionError();
    case 1:
      return greaterThan(paramC);
    case 2:
    }
    return atLeast(paramC);
  }

  public static <C extends Comparable<?>> Range<C> encloseAll(Iterable<C> paramIterable)
  {
    Preconditions.checkNotNull(paramIterable);
    if ((paramIterable instanceof ContiguousSet))
      return ((ContiguousSet)paramIterable).range();
    Iterator localIterator = paramIterable.iterator();
    Comparable localComparable1 = (Comparable)Preconditions.checkNotNull(localIterator.next());
    Comparable localComparable3;
    for (Comparable localComparable2 = localComparable1; localIterator.hasNext(); localComparable2 = (Comparable)Ordering.natural().max(localComparable2, localComparable3))
    {
      localComparable3 = (Comparable)Preconditions.checkNotNull(localIterator.next());
      localComparable1 = (Comparable)Ordering.natural().min(localComparable1, localComparable3);
    }
    return closed(localComparable1, localComparable2);
  }

  public static <C extends Comparable<?>> Range<C> greaterThan(C paramC)
  {
    return create(Cut.aboveValue(paramC), Cut.aboveAll());
  }

  public static <C extends Comparable<?>> Range<C> lessThan(C paramC)
  {
    return create(Cut.belowAll(), Cut.belowValue(paramC));
  }

  public static <C extends Comparable<?>> Range<C> open(C paramC1, C paramC2)
  {
    return create(Cut.aboveValue(paramC1), Cut.belowValue(paramC2));
  }

  public static <C extends Comparable<?>> Range<C> openClosed(C paramC1, C paramC2)
  {
    return create(Cut.aboveValue(paramC1), Cut.aboveValue(paramC2));
  }

  public static <C extends Comparable<?>> Range<C> range(C paramC1, BoundType paramBoundType1, C paramC2, BoundType paramBoundType2)
  {
    Preconditions.checkNotNull(paramBoundType1);
    Preconditions.checkNotNull(paramBoundType2);
    Cut localCut1;
    if (paramBoundType1 == BoundType.OPEN)
    {
      localCut1 = Cut.aboveValue(paramC1);
      if (paramBoundType2 != BoundType.OPEN)
        break label53;
    }
    label53: for (Cut localCut2 = Cut.belowValue(paramC2); ; localCut2 = Cut.aboveValue(paramC2))
    {
      return create(localCut1, localCut2);
      localCut1 = Cut.belowValue(paramC1);
      break;
    }
  }

  public static <C extends Comparable<?>> Range<C> singleton(C paramC)
  {
    return closed(paramC, paramC);
  }

  public static <C extends Comparable<?>> Range<C> upTo(C paramC, BoundType paramBoundType)
  {
    switch (1.$SwitchMap$com$google$common$collect$BoundType[paramBoundType.ordinal()])
    {
    default:
      throw new AssertionError();
    case 1:
      return lessThan(paramC);
    case 2:
    }
    return atMost(paramC);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.Ranges
 * JD-Core Version:    0.6.2
 */