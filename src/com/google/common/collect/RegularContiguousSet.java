package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.Collection;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true)
final class RegularContiguousSet<C extends Comparable> extends ContiguousSet<C>
{
  private static final long serialVersionUID;
  private final Range<C> range;

  RegularContiguousSet(Range<C> paramRange, DiscreteDomain<C> paramDiscreteDomain)
  {
    super(paramDiscreteDomain);
    this.range = paramRange;
  }

  private static boolean equalsOrThrow(Comparable<?> paramComparable1, @Nullable Comparable<?> paramComparable2)
  {
    return (paramComparable2 != null) && (Range.compareOrThrow(paramComparable1, paramComparable2) == 0);
  }

  public boolean contains(Object paramObject)
  {
    try
    {
      boolean bool = this.range.contains((Comparable)paramObject);
      return bool;
    }
    catch (ClassCastException localClassCastException)
    {
    }
    return false;
  }

  public boolean containsAll(Collection<?> paramCollection)
  {
    try
    {
      boolean bool = this.range.containsAll(paramCollection);
      return bool;
    }
    catch (ClassCastException localClassCastException)
    {
    }
    return false;
  }

  public boolean equals(Object paramObject)
  {
    if (paramObject == this);
    RegularContiguousSet localRegularContiguousSet;
    do
    {
      return true;
      if (!(paramObject instanceof RegularContiguousSet))
        break;
      localRegularContiguousSet = (RegularContiguousSet)paramObject;
      if (!this.domain.equals(localRegularContiguousSet.domain))
        break;
    }
    while ((first().equals(localRegularContiguousSet.first())) && (last().equals(localRegularContiguousSet.last())));
    return false;
    return super.equals(paramObject);
  }

  public C first()
  {
    return this.range.lowerBound.leastValueAbove(this.domain);
  }

  public int hashCode()
  {
    return Sets.hashCodeImpl(this);
  }

  ContiguousSet<C> headSetImpl(C paramC, boolean paramBoolean)
  {
    return this.range.intersection(Ranges.upTo(paramC, BoundType.forBoolean(paramBoolean))).asSet(this.domain);
  }

  int indexOf(Object paramObject)
  {
    if (contains(paramObject))
      return (int)this.domain.distance(first(), (Comparable)paramObject);
    return -1;
  }

  public ContiguousSet<C> intersection(ContiguousSet<C> paramContiguousSet)
  {
    Preconditions.checkNotNull(paramContiguousSet);
    Preconditions.checkArgument(this.domain.equals(paramContiguousSet.domain));
    if (paramContiguousSet.isEmpty())
      return paramContiguousSet;
    Comparable localComparable1 = (Comparable)Ordering.natural().max(first(), paramContiguousSet.first());
    Comparable localComparable2 = (Comparable)Ordering.natural().min(last(), paramContiguousSet.last());
    if (localComparable1.compareTo(localComparable2) < 0);
    for (Object localObject = Ranges.closed(localComparable1, localComparable2).asSet(this.domain); ; localObject = new EmptyContiguousSet(this.domain))
      return localObject;
  }

  public boolean isEmpty()
  {
    return false;
  }

  boolean isPartialView()
  {
    return false;
  }

  public UnmodifiableIterator<C> iterator()
  {
    return new AbstractLinkedIterator(first())
    {
      final C last = RegularContiguousSet.this.last();

      protected C computeNext(C paramAnonymousC)
      {
        if (RegularContiguousSet.equalsOrThrow(paramAnonymousC, this.last))
          return null;
        return RegularContiguousSet.this.domain.next(paramAnonymousC);
      }
    };
  }

  public C last()
  {
    return this.range.upperBound.greatestValueBelow(this.domain);
  }

  public Range<C> range()
  {
    return range(BoundType.CLOSED, BoundType.CLOSED);
  }

  public Range<C> range(BoundType paramBoundType1, BoundType paramBoundType2)
  {
    return Ranges.create(this.range.lowerBound.withLowerBoundType(paramBoundType1, this.domain), this.range.upperBound.withUpperBoundType(paramBoundType2, this.domain));
  }

  public int size()
  {
    long l = this.domain.distance(first(), last());
    if (l >= 2147483647L)
      return 2147483647;
    return 1 + (int)l;
  }

  ContiguousSet<C> subSetImpl(C paramC1, boolean paramBoolean1, C paramC2, boolean paramBoolean2)
  {
    return this.range.intersection(Ranges.range(paramC1, BoundType.forBoolean(paramBoolean1), paramC2, BoundType.forBoolean(paramBoolean2))).asSet(this.domain);
  }

  ContiguousSet<C> tailSetImpl(C paramC, boolean paramBoolean)
  {
    return this.range.intersection(Ranges.downTo(paramC, BoundType.forBoolean(paramBoolean))).asSet(this.domain);
  }

  public Object[] toArray()
  {
    return ObjectArrays.toArrayImpl(this);
  }

  public <T> T[] toArray(T[] paramArrayOfT)
  {
    return ObjectArrays.toArrayImpl(this, paramArrayOfT);
  }

  @GwtIncompatible("serialization")
  Object writeReplace()
  {
    return new SerializedForm(this.range, this.domain, null);
  }

  @GwtIncompatible("serialization")
  private static final class SerializedForm<C extends Comparable>
    implements Serializable
  {
    final DiscreteDomain<C> domain;
    final Range<C> range;

    private SerializedForm(Range<C> paramRange, DiscreteDomain<C> paramDiscreteDomain)
    {
      this.range = paramRange;
      this.domain = paramDiscreteDomain;
    }

    private Object readResolve()
    {
      return new RegularContiguousSet(this.range, this.domain);
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.RegularContiguousSet
 * JD-Core Version:    0.6.2
 */