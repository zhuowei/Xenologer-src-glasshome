package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.Comparator;
import javax.annotation.Nullable;

@GwtCompatible(serializable=true)
final class GeneralRange<T>
  implements Serializable
{
  private final Comparator<? super T> comparator;
  private final boolean hasLowerBound;
  private final boolean hasUpperBound;
  private final BoundType lowerBoundType;

  @Nullable
  private final T lowerEndpoint;
  private transient GeneralRange<T> reverse;
  private final BoundType upperBoundType;

  @Nullable
  private final T upperEndpoint;

  private GeneralRange(Comparator<? super T> paramComparator, boolean paramBoolean1, @Nullable T paramT1, BoundType paramBoundType1, boolean paramBoolean2, @Nullable T paramT2, BoundType paramBoundType2)
  {
    this.comparator = ((Comparator)Preconditions.checkNotNull(paramComparator));
    this.hasLowerBound = paramBoolean1;
    this.hasUpperBound = paramBoolean2;
    this.lowerEndpoint = paramT1;
    this.lowerBoundType = ((BoundType)Preconditions.checkNotNull(paramBoundType1));
    this.upperEndpoint = paramT2;
    this.upperBoundType = ((BoundType)Preconditions.checkNotNull(paramBoundType2));
    if (paramBoolean1)
      paramComparator.compare(paramT1, paramT1);
    if (paramBoolean2)
      paramComparator.compare(paramT2, paramT2);
    boolean bool2;
    int j;
    if ((paramBoolean1) && (paramBoolean2))
    {
      int i = paramComparator.compare(paramT1, paramT2);
      if (i > 0)
        break label183;
      bool2 = bool1;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = paramT1;
      arrayOfObject[bool1] = paramT2;
      Preconditions.checkArgument(bool2, "lowerEndpoint (%s) > upperEndpoint (%s)", arrayOfObject);
      if (i == 0)
      {
        if (paramBoundType1 == BoundType.OPEN)
          break label189;
        j = bool1;
        label166: if (paramBoundType2 == BoundType.OPEN)
          break label195;
      }
    }
    while (true)
    {
      Preconditions.checkArgument(j | bool1);
      return;
      label183: bool2 = false;
      break;
      label189: j = 0;
      break label166;
      label195: bool1 = false;
    }
  }

  static <T> GeneralRange<T> all(Comparator<? super T> paramComparator)
  {
    return new GeneralRange(paramComparator, false, null, BoundType.OPEN, false, null, BoundType.OPEN);
  }

  static <T> GeneralRange<T> downTo(Comparator<? super T> paramComparator, @Nullable T paramT, BoundType paramBoundType)
  {
    return new GeneralRange(paramComparator, true, paramT, paramBoundType, false, null, BoundType.OPEN);
  }

  static <T extends Comparable> GeneralRange<T> from(Range<T> paramRange)
  {
    Comparable localComparable1;
    BoundType localBoundType1;
    label24: Comparable localComparable2;
    if (paramRange.hasLowerBound())
    {
      localComparable1 = paramRange.lowerEndpoint();
      if (!paramRange.hasLowerBound())
        break label78;
      localBoundType1 = paramRange.lowerBoundType();
      if (!paramRange.hasUpperBound())
        break label85;
      localComparable2 = paramRange.upperEndpoint();
      label36: if (!paramRange.hasUpperBound())
        break label90;
    }
    label78: label85: label90: for (BoundType localBoundType2 = paramRange.upperBoundType(); ; localBoundType2 = BoundType.OPEN)
    {
      return new GeneralRange(Ordering.natural(), paramRange.hasLowerBound(), localComparable1, localBoundType1, paramRange.hasUpperBound(), localComparable2, localBoundType2);
      localComparable1 = null;
      break;
      localBoundType1 = BoundType.OPEN;
      break label24;
      localComparable2 = null;
      break label36;
    }
  }

  static <T> GeneralRange<T> range(Comparator<? super T> paramComparator, @Nullable T paramT1, BoundType paramBoundType1, @Nullable T paramT2, BoundType paramBoundType2)
  {
    return new GeneralRange(paramComparator, true, paramT1, paramBoundType1, true, paramT2, paramBoundType2);
  }

  static <T> GeneralRange<T> upTo(Comparator<? super T> paramComparator, @Nullable T paramT, BoundType paramBoundType)
  {
    return new GeneralRange(paramComparator, false, null, BoundType.OPEN, true, paramT, paramBoundType);
  }

  Comparator<? super T> comparator()
  {
    return this.comparator;
  }

  boolean contains(@Nullable T paramT)
  {
    return (!tooLow(paramT)) && (!tooHigh(paramT));
  }

  public boolean equals(@Nullable Object paramObject)
  {
    boolean bool1 = paramObject instanceof GeneralRange;
    boolean bool2 = false;
    if (bool1)
    {
      GeneralRange localGeneralRange = (GeneralRange)paramObject;
      boolean bool3 = this.comparator.equals(localGeneralRange.comparator);
      bool2 = false;
      if (bool3)
      {
        boolean bool4 = this.hasLowerBound;
        boolean bool5 = localGeneralRange.hasLowerBound;
        bool2 = false;
        if (bool4 == bool5)
        {
          boolean bool6 = this.hasUpperBound;
          boolean bool7 = localGeneralRange.hasUpperBound;
          bool2 = false;
          if (bool6 == bool7)
          {
            boolean bool8 = this.lowerBoundType.equals(localGeneralRange.lowerBoundType);
            bool2 = false;
            if (bool8)
            {
              boolean bool9 = this.upperBoundType.equals(localGeneralRange.upperBoundType);
              bool2 = false;
              if (bool9)
              {
                boolean bool10 = Objects.equal(this.lowerEndpoint, localGeneralRange.lowerEndpoint);
                bool2 = false;
                if (bool10)
                {
                  boolean bool11 = Objects.equal(this.upperEndpoint, localGeneralRange.upperEndpoint);
                  bool2 = false;
                  if (bool11)
                    bool2 = true;
                }
              }
            }
          }
        }
      }
    }
    return bool2;
  }

  boolean hasLowerBound()
  {
    return this.hasLowerBound;
  }

  boolean hasUpperBound()
  {
    return this.hasUpperBound;
  }

  public int hashCode()
  {
    Object[] arrayOfObject = new Object[5];
    arrayOfObject[0] = this.comparator;
    arrayOfObject[1] = this.lowerEndpoint;
    arrayOfObject[2] = this.lowerBoundType;
    arrayOfObject[3] = this.upperEndpoint;
    arrayOfObject[4] = this.upperBoundType;
    return Objects.hashCode(arrayOfObject);
  }

  GeneralRange<T> intersect(GeneralRange<T> paramGeneralRange)
  {
    Preconditions.checkNotNull(paramGeneralRange);
    Preconditions.checkArgument(this.comparator.equals(paramGeneralRange.comparator));
    boolean bool1 = this.hasLowerBound;
    Object localObject1 = this.lowerEndpoint;
    BoundType localBoundType1 = this.lowerBoundType;
    boolean bool2;
    Object localObject2;
    BoundType localBoundType2;
    if (!hasLowerBound())
    {
      bool1 = paramGeneralRange.hasLowerBound;
      localObject1 = paramGeneralRange.lowerEndpoint;
      localBoundType1 = paramGeneralRange.lowerBoundType;
      bool2 = this.hasUpperBound;
      localObject2 = this.upperEndpoint;
      localBoundType2 = this.upperBoundType;
      if (hasUpperBound())
        break label251;
      bool2 = paramGeneralRange.hasUpperBound;
      localObject2 = paramGeneralRange.upperEndpoint;
      localBoundType2 = paramGeneralRange.upperBoundType;
    }
    while (true)
    {
      if ((bool1) && (bool2))
      {
        int k = this.comparator.compare(localObject1, localObject2);
        if ((k > 0) || ((k == 0) && (localBoundType1 == BoundType.OPEN) && (localBoundType2 == BoundType.OPEN)))
        {
          localObject1 = localObject2;
          localBoundType1 = BoundType.OPEN;
          localBoundType2 = BoundType.CLOSED;
        }
      }
      return new GeneralRange(this.comparator, bool1, localObject1, localBoundType1, bool2, localObject2, localBoundType2);
      if (!paramGeneralRange.hasLowerBound())
        break;
      int i = this.comparator.compare(this.lowerEndpoint, paramGeneralRange.lowerEndpoint);
      if ((i >= 0) && ((i != 0) || (paramGeneralRange.lowerBoundType != BoundType.OPEN)))
        break;
      localObject1 = paramGeneralRange.lowerEndpoint;
      localBoundType1 = paramGeneralRange.lowerBoundType;
      break;
      label251: if (paramGeneralRange.hasUpperBound())
      {
        int j = this.comparator.compare(this.upperEndpoint, paramGeneralRange.upperEndpoint);
        if ((j > 0) || ((j == 0) && (paramGeneralRange.upperBoundType == BoundType.OPEN)))
        {
          localObject2 = paramGeneralRange.upperEndpoint;
          localBoundType2 = paramGeneralRange.upperBoundType;
        }
      }
    }
  }

  boolean isEmpty()
  {
    return ((hasUpperBound()) && (tooLow(this.upperEndpoint))) || ((hasLowerBound()) && (tooHigh(this.lowerEndpoint)));
  }

  public GeneralRange<T> reverse()
  {
    GeneralRange localGeneralRange1 = this.reverse;
    if (localGeneralRange1 == null)
    {
      GeneralRange localGeneralRange2 = new GeneralRange(Ordering.from(this.comparator).reverse(), this.hasUpperBound, this.upperEndpoint, this.upperBoundType, this.hasLowerBound, this.lowerEndpoint, this.lowerBoundType);
      localGeneralRange2.reverse = this;
      this.reverse = localGeneralRange2;
      return localGeneralRange2;
    }
    return localGeneralRange1;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.comparator).append(":");
    switch (1.$SwitchMap$com$google$common$collect$BoundType[this.lowerBoundType.ordinal()])
    {
    default:
      if (hasLowerBound())
      {
        localStringBuilder.append(this.lowerEndpoint);
        label72: localStringBuilder.append(',');
        if (!hasUpperBound())
          break label163;
        localStringBuilder.append(this.upperEndpoint);
        label95: switch (1.$SwitchMap$com$google$common$collect$BoundType[this.upperBoundType.ordinal()])
        {
        default:
        case 1:
        case 2:
        }
      }
      break;
    case 1:
    case 2:
    }
    while (true)
    {
      return localStringBuilder.toString();
      localStringBuilder.append('[');
      break;
      localStringBuilder.append('(');
      break;
      localStringBuilder.append("-∞");
      break label72;
      label163: localStringBuilder.append("∞");
      break label95;
      localStringBuilder.append(']');
      continue;
      localStringBuilder.append(')');
    }
  }

  boolean tooHigh(@Nullable T paramT)
  {
    int i = 1;
    if (!hasUpperBound())
      return false;
    Object localObject = this.upperEndpoint;
    int j = this.comparator.compare(paramT, localObject);
    int k;
    int m;
    if (j > 0)
    {
      k = i;
      if (j != 0)
        break label69;
      m = i;
      label45: if (this.upperBoundType != BoundType.OPEN)
        break label75;
    }
    while (true)
    {
      return k | m & i;
      k = 0;
      break;
      label69: m = 0;
      break label45;
      label75: i = 0;
    }
  }

  boolean tooLow(@Nullable T paramT)
  {
    int i = 1;
    if (!hasLowerBound())
      return false;
    Object localObject = this.lowerEndpoint;
    int j = this.comparator.compare(paramT, localObject);
    int k;
    int m;
    if (j < 0)
    {
      k = i;
      if (j != 0)
        break label69;
      m = i;
      label45: if (this.lowerBoundType != BoundType.OPEN)
        break label75;
    }
    while (true)
    {
      return k | m & i;
      k = 0;
      break;
      label69: m = 0;
      break label45;
      label75: i = 0;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.GeneralRange
 * JD-Core Version:    0.6.2
 */