package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;

@GwtCompatible
final class SortedIterables
{
  public static boolean hasSameComparator(Comparator<?> paramComparator, Iterable<?> paramIterable)
  {
    Preconditions.checkNotNull(paramComparator);
    Preconditions.checkNotNull(paramIterable);
    Object localObject;
    if ((paramIterable instanceof SortedSet))
    {
      localObject = ((SortedSet)paramIterable).comparator();
      if (localObject == null)
        localObject = Ordering.natural();
    }
    while (true)
    {
      return paramComparator.equals(localObject);
      if ((paramIterable instanceof SortedIterable))
        localObject = ((SortedIterable)paramIterable).comparator();
      else
        localObject = null;
    }
  }

  static <E> Collection<Multiset.Entry<E>> singletonEntries(Collection<E> paramCollection)
  {
    return Collections2.transform(paramCollection, new Function()
    {
      public Multiset.Entry<E> apply(E paramAnonymousE)
      {
        return Multisets.immutableEntry(paramAnonymousE, 1);
      }
    });
  }

  public static <E> Collection<Multiset.Entry<E>> sortedCounts(Comparator<? super E> paramComparator, Iterable<E> paramIterable)
  {
    if ((paramIterable instanceof Multiset))
    {
      Multiset localMultiset = (Multiset)paramIterable;
      if (hasSameComparator(paramComparator, paramIterable))
        return localMultiset.entrySet();
      ArrayList localArrayList3 = Lists.newArrayList(localMultiset.entrySet());
      Collections.sort(localArrayList3, Ordering.from(paramComparator).onResultOf(new Function()
      {
        public E apply(Multiset.Entry<E> paramAnonymousEntry)
        {
          return paramAnonymousEntry.getElement();
        }
      }));
      return localArrayList3;
    }
    if ((paramIterable instanceof Set))
    {
      if (hasSameComparator(paramComparator, paramIterable));
      ArrayList localArrayList2;
      for (Object localObject3 = (Collection)paramIterable; ; localObject3 = localArrayList2)
      {
        return singletonEntries((Collection)localObject3);
        localArrayList2 = Lists.newArrayList(paramIterable);
        Collections.sort(localArrayList2, paramComparator);
      }
    }
    if (hasSameComparator(paramComparator, paramIterable))
    {
      Object localObject1 = null;
      int i = 0;
      ArrayList localArrayList1 = Lists.newArrayList();
      Iterator localIterator = paramIterable.iterator();
      while (localIterator.hasNext())
      {
        Object localObject2 = localIterator.next();
        if (i > 0)
        {
          if (paramComparator.compare(localObject1, localObject2) == 0)
          {
            i++;
          }
          else
          {
            localArrayList1.add(Multisets.immutableEntry(localObject1, i));
            localObject1 = localObject2;
            i = 1;
          }
        }
        else
        {
          localObject1 = localObject2;
          i = 1;
        }
      }
      if (i > 0)
        localArrayList1.add(Multisets.immutableEntry(localObject1, i));
      return localArrayList1;
    }
    TreeMultiset localTreeMultiset = TreeMultiset.create(paramComparator);
    Iterables.addAll(localTreeMultiset, paramIterable);
    return localTreeMultiset.entrySet();
  }

  public static <E> Collection<Multiset.Entry<E>> sortedCounts(Comparator<? super E> paramComparator, Iterator<E> paramIterator)
  {
    TreeMultiset localTreeMultiset = TreeMultiset.create(paramComparator);
    Iterators.addAll(localTreeMultiset, paramIterator);
    return localTreeMultiset.entrySet();
  }

  public static <E> Collection<E> sortedUnique(Comparator<? super E> paramComparator, Iterable<E> paramIterable)
  {
    if ((paramIterable instanceof Multiset))
      paramIterable = ((Multiset)paramIterable).elementSet();
    if ((paramIterable instanceof Set))
    {
      if (hasSameComparator(paramComparator, paramIterable))
        return (Set)paramIterable;
      ArrayList localArrayList = Lists.newArrayList(paramIterable);
      Collections.sort(localArrayList, paramComparator);
      return localArrayList;
    }
    Object[] arrayOfObject = (Object[])Iterables.toArray(paramIterable);
    if (!hasSameComparator(paramComparator, paramIterable))
      Arrays.sort(arrayOfObject, paramComparator);
    return uniquifySortedArray(paramComparator, arrayOfObject);
  }

  public static <E> Collection<E> sortedUnique(Comparator<? super E> paramComparator, Iterator<E> paramIterator)
  {
    TreeSet localTreeSet = Sets.newTreeSet(paramComparator);
    Iterators.addAll(localTreeSet, paramIterator);
    return localTreeSet;
  }

  private static <E> Collection<E> uniquifySortedArray(Comparator<? super E> paramComparator, E[] paramArrayOfE)
  {
    if (paramArrayOfE.length == 0)
      return Collections.emptySet();
    int i = 1;
    for (int j = 1; j < paramArrayOfE.length; j++)
      if (paramComparator.compare(paramArrayOfE[j], paramArrayOfE[(i - 1)]) != 0)
      {
        int k = i + 1;
        paramArrayOfE[i] = paramArrayOfE[j];
        i = k;
      }
    if (i < paramArrayOfE.length)
      paramArrayOfE = ObjectArrays.arraysCopyOf(paramArrayOfE, i);
    return Arrays.asList(paramArrayOfE);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.SortedIterables
 * JD-Core Version:    0.6.2
 */