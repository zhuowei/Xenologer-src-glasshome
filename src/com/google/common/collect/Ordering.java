package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.Nullable;

@GwtCompatible
public abstract class Ordering<T>
  implements Comparator<T>
{
  static final int LEFT_IS_GREATER = 1;
  static final int RIGHT_IS_GREATER = -1;

  public static Ordering<Object> arbitrary()
  {
    return ArbitraryOrderingHolder.ARBITRARY_ORDERING;
  }

  @GwtCompatible(serializable=true)
  public static <T> Ordering<T> compound(Iterable<? extends Comparator<? super T>> paramIterable)
  {
    return new CompoundOrdering(paramIterable);
  }

  @GwtCompatible(serializable=true)
  public static <T> Ordering<T> explicit(T paramT, T[] paramArrayOfT)
  {
    return explicit(Lists.asList(paramT, paramArrayOfT));
  }

  @GwtCompatible(serializable=true)
  public static <T> Ordering<T> explicit(List<T> paramList)
  {
    return new ExplicitOrdering(paramList);
  }

  @Deprecated
  @GwtCompatible(serializable=true)
  public static <T> Ordering<T> from(Ordering<T> paramOrdering)
  {
    return (Ordering)Preconditions.checkNotNull(paramOrdering);
  }

  @GwtCompatible(serializable=true)
  public static <T> Ordering<T> from(Comparator<T> paramComparator)
  {
    if ((paramComparator instanceof Ordering))
      return (Ordering)paramComparator;
    return new ComparatorOrdering(paramComparator);
  }

  @GwtCompatible(serializable=true)
  public static <C extends Comparable> Ordering<C> natural()
  {
    return NaturalOrdering.INSTANCE;
  }

  private <E extends T> int partition(E[] paramArrayOfE, int paramInt1, int paramInt2, int paramInt3)
  {
    E ? = paramArrayOfE[paramInt3];
    paramArrayOfE[paramInt3] = paramArrayOfE[paramInt2];
    paramArrayOfE[paramInt2] = ?;
    int i = paramInt1;
    for (int j = paramInt1; j < paramInt2; j++)
      if (compare(paramArrayOfE[j], ?) < 0)
      {
        ObjectArrays.swap(paramArrayOfE, i, j);
        i++;
      }
    ObjectArrays.swap(paramArrayOfE, paramInt2, i);
    return i;
  }

  private <E extends T> void quicksortLeastK(E[] paramArrayOfE, int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt2 > paramInt1)
    {
      int i = partition(paramArrayOfE, paramInt1, paramInt2, paramInt1 + paramInt2 >>> 1);
      quicksortLeastK(paramArrayOfE, paramInt1, i - 1, paramInt3);
      if (i < paramInt3)
        quicksortLeastK(paramArrayOfE, i + 1, paramInt2, paramInt3);
    }
  }

  @GwtCompatible(serializable=true)
  public static Ordering<Object> usingToString()
  {
    return UsingToStringOrdering.INSTANCE;
  }

  public int binarySearch(List<? extends T> paramList, @Nullable T paramT)
  {
    return Collections.binarySearch(paramList, paramT, this);
  }

  public abstract int compare(@Nullable T paramT1, @Nullable T paramT2);

  @GwtCompatible(serializable=true)
  public <U extends T> Ordering<U> compound(Comparator<? super U> paramComparator)
  {
    return new CompoundOrdering(this, (Comparator)Preconditions.checkNotNull(paramComparator));
  }

  @Beta
  public <E extends T> List<E> greatestOf(Iterable<E> paramIterable, int paramInt)
  {
    return reverse().leastOf(paramIterable, paramInt);
  }

  public <E extends T> ImmutableList<E> immutableSortedCopy(Iterable<E> paramIterable)
  {
    return ImmutableList.copyOf(sortedCopy(paramIterable));
  }

  public boolean isOrdered(Iterable<? extends T> paramIterable)
  {
    Iterator localIterator = paramIterable.iterator();
    if (localIterator.hasNext())
    {
      Object localObject2;
      for (Object localObject1 = localIterator.next(); localIterator.hasNext(); localObject1 = localObject2)
      {
        localObject2 = localIterator.next();
        if (compare(localObject1, localObject2) > 0)
          return false;
      }
    }
    return true;
  }

  public boolean isStrictlyOrdered(Iterable<? extends T> paramIterable)
  {
    Iterator localIterator = paramIterable.iterator();
    if (localIterator.hasNext())
    {
      Object localObject2;
      for (Object localObject1 = localIterator.next(); localIterator.hasNext(); localObject1 = localObject2)
      {
        localObject2 = localIterator.next();
        if (compare(localObject1, localObject2) >= 0)
          return false;
      }
    }
    return true;
  }

  @Beta
  public <E extends T> List<E> leastOf(Iterable<E> paramIterable, int paramInt)
  {
    boolean bool;
    Object[] arrayOfObject2;
    Object[] arrayOfObject3;
    if (paramInt >= 0)
    {
      bool = true;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(paramInt);
      Preconditions.checkArgument(bool, "%d is negative", arrayOfObject1);
      arrayOfObject2 = (Object[])Iterables.toArray(paramIterable);
      if (arrayOfObject2.length > paramInt)
        break label68;
      Arrays.sort(arrayOfObject2, this);
      arrayOfObject3 = arrayOfObject2;
    }
    while (true)
    {
      return Collections.unmodifiableList(Arrays.asList(arrayOfObject3));
      bool = false;
      break;
      label68: quicksortLeastK(arrayOfObject2, 0, -1 + arrayOfObject2.length, paramInt);
      arrayOfObject3 = (Object[])new Object[paramInt];
      System.arraycopy(arrayOfObject2, 0, arrayOfObject3, 0, paramInt);
    }
  }

  @GwtCompatible(serializable=true)
  public <S extends T> Ordering<Iterable<S>> lexicographical()
  {
    return new LexicographicalOrdering(this);
  }

  public <E extends T> E max(Iterable<E> paramIterable)
  {
    return max(paramIterable.iterator());
  }

  public <E extends T> E max(@Nullable E paramE1, @Nullable E paramE2)
  {
    if (compare(paramE1, paramE2) >= 0)
      return paramE1;
    return paramE2;
  }

  public <E extends T> E max(@Nullable E paramE1, @Nullable E paramE2, @Nullable E paramE3, E[] paramArrayOfE)
  {
    Object localObject = max(max(paramE1, paramE2), paramE3);
    int i = paramArrayOfE.length;
    for (int j = 0; j < i; j++)
      localObject = max(localObject, paramArrayOfE[j]);
    return localObject;
  }

  @Beta
  public <E extends T> E max(Iterator<E> paramIterator)
  {
    for (Object localObject = paramIterator.next(); paramIterator.hasNext(); localObject = max(localObject, paramIterator.next()));
    return localObject;
  }

  public <E extends T> E min(Iterable<E> paramIterable)
  {
    return min(paramIterable.iterator());
  }

  public <E extends T> E min(@Nullable E paramE1, @Nullable E paramE2)
  {
    if (compare(paramE1, paramE2) <= 0)
      return paramE1;
    return paramE2;
  }

  public <E extends T> E min(@Nullable E paramE1, @Nullable E paramE2, @Nullable E paramE3, E[] paramArrayOfE)
  {
    Object localObject = min(min(paramE1, paramE2), paramE3);
    int i = paramArrayOfE.length;
    for (int j = 0; j < i; j++)
      localObject = min(localObject, paramArrayOfE[j]);
    return localObject;
  }

  @Beta
  public <E extends T> E min(Iterator<E> paramIterator)
  {
    for (Object localObject = paramIterator.next(); paramIterator.hasNext(); localObject = min(localObject, paramIterator.next()));
    return localObject;
  }

  @GwtCompatible(serializable=true)
  public <S extends T> Ordering<S> nullsFirst()
  {
    return new NullsFirstOrdering(this);
  }

  @GwtCompatible(serializable=true)
  public <S extends T> Ordering<S> nullsLast()
  {
    return new NullsLastOrdering(this);
  }

  @GwtCompatible(serializable=true)
  public <F> Ordering<F> onResultOf(Function<F, ? extends T> paramFunction)
  {
    return new ByFunctionOrdering(paramFunction, this);
  }

  @GwtCompatible(serializable=true)
  public <S extends T> Ordering<S> reverse()
  {
    return new ReverseOrdering(this);
  }

  public <E extends T> List<E> sortedCopy(Iterable<E> paramIterable)
  {
    ArrayList localArrayList = Lists.newArrayList(paramIterable);
    Collections.sort(localArrayList, this);
    return localArrayList;
  }

  @VisibleForTesting
  static class ArbitraryOrdering extends Ordering<Object>
  {
    private Map<Object, Integer> uids = Platform.tryWeakKeys(new MapMaker()).makeComputingMap(new Function()
    {
      final AtomicInteger counter = new AtomicInteger(0);

      public Integer apply(Object paramAnonymousObject)
      {
        return Integer.valueOf(this.counter.getAndIncrement());
      }
    });

    public int compare(Object paramObject1, Object paramObject2)
    {
      if (paramObject1 == paramObject2)
        return 0;
      int i = identityHashCode(paramObject1);
      int j = identityHashCode(paramObject2);
      if (i != j)
      {
        if (i < j)
          return -1;
        return 1;
      }
      int k = ((Integer)this.uids.get(paramObject1)).compareTo((Integer)this.uids.get(paramObject2));
      if (k == 0)
        throw new AssertionError();
      return k;
    }

    int identityHashCode(Object paramObject)
    {
      return System.identityHashCode(paramObject);
    }

    public String toString()
    {
      return "Ordering.arbitrary()";
    }
  }

  private static class ArbitraryOrderingHolder
  {
    static final Ordering<Object> ARBITRARY_ORDERING = new Ordering.ArbitraryOrdering();
  }

  @VisibleForTesting
  static class IncomparableValueException extends ClassCastException
  {
    private static final long serialVersionUID;
    final Object value;

    IncomparableValueException(Object paramObject)
    {
      super();
      this.value = paramObject;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.Ordering
 * JD-Core Version:    0.6.2
 */