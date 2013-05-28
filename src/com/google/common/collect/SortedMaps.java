package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.SortedMap;
import javax.annotation.Nullable;

@Deprecated
@Beta
@GwtCompatible
public final class SortedMaps
{
  @Deprecated
  public static <K, V> SortedMapDifference<K, V> difference(SortedMap<K, ? extends V> paramSortedMap, Map<? extends K, ? extends V> paramMap)
  {
    return Maps.difference(paramSortedMap, paramMap);
  }

  @GwtIncompatible("untested")
  public static <K, V> SortedMap<K, V> filterEntries(SortedMap<K, V> paramSortedMap, Predicate<? super Map.Entry<K, V>> paramPredicate)
  {
    Preconditions.checkNotNull(paramPredicate);
    if ((paramSortedMap instanceof FilteredSortedMap))
      return filterFiltered((FilteredSortedMap)paramSortedMap, paramPredicate);
    return new FilteredSortedMap((SortedMap)Preconditions.checkNotNull(paramSortedMap), paramPredicate);
  }

  private static <K, V> SortedMap<K, V> filterFiltered(FilteredSortedMap<K, V> paramFilteredSortedMap, Predicate<? super Map.Entry<K, V>> paramPredicate)
  {
    Predicate localPredicate = Predicates.and(paramFilteredSortedMap.predicate, paramPredicate);
    return new FilteredSortedMap(paramFilteredSortedMap.sortedMap(), localPredicate);
  }

  @GwtIncompatible("untested")
  public static <K, V> SortedMap<K, V> filterKeys(SortedMap<K, V> paramSortedMap, Predicate<? super K> paramPredicate)
  {
    Preconditions.checkNotNull(paramPredicate);
    return filterEntries(paramSortedMap, new Predicate()
    {
      public boolean apply(Map.Entry<K, V> paramAnonymousEntry)
      {
        return this.val$keyPredicate.apply(paramAnonymousEntry.getKey());
      }
    });
  }

  @GwtIncompatible("untested")
  public static <K, V> SortedMap<K, V> filterValues(SortedMap<K, V> paramSortedMap, Predicate<? super V> paramPredicate)
  {
    Preconditions.checkNotNull(paramPredicate);
    return filterEntries(paramSortedMap, new Predicate()
    {
      public boolean apply(Map.Entry<K, V> paramAnonymousEntry)
      {
        return this.val$valuePredicate.apply(paramAnonymousEntry.getValue());
      }
    });
  }

  static <E> Comparator<? super E> orNaturalOrder(@Nullable Comparator<? super E> paramComparator)
  {
    if (paramComparator != null)
      return paramComparator;
    return Ordering.natural();
  }

  @Deprecated
  public static <K, V1, V2> SortedMap<K, V2> transformEntries(SortedMap<K, V1> paramSortedMap, Maps.EntryTransformer<? super K, ? super V1, V2> paramEntryTransformer)
  {
    return Maps.transformEntries(paramSortedMap, paramEntryTransformer);
  }

  @Deprecated
  public static <K, V1, V2> SortedMap<K, V2> transformValues(SortedMap<K, V1> paramSortedMap, Function<? super V1, V2> paramFunction)
  {
    return Maps.transformValues(paramSortedMap, paramFunction);
  }

  private static class FilteredSortedMap<K, V> extends Maps.FilteredEntryMap<K, V>
    implements SortedMap<K, V>
  {
    FilteredSortedMap(SortedMap<K, V> paramSortedMap, Predicate<? super Map.Entry<K, V>> paramPredicate)
    {
      super(paramPredicate);
    }

    public Comparator<? super K> comparator()
    {
      return sortedMap().comparator();
    }

    public K firstKey()
    {
      return keySet().iterator().next();
    }

    public SortedMap<K, V> headMap(K paramK)
    {
      return new FilteredSortedMap(sortedMap().headMap(paramK), this.predicate);
    }

    public K lastKey()
    {
      Object localObject;
      for (SortedMap localSortedMap = sortedMap(); ; localSortedMap = sortedMap().headMap(localObject))
      {
        localObject = localSortedMap.lastKey();
        if (apply(localObject, this.unfiltered.get(localObject)))
          return localObject;
      }
    }

    SortedMap<K, V> sortedMap()
    {
      return (SortedMap)this.unfiltered;
    }

    public SortedMap<K, V> subMap(K paramK1, K paramK2)
    {
      return new FilteredSortedMap(sortedMap().subMap(paramK1, paramK2), this.predicate);
    }

    public SortedMap<K, V> tailMap(K paramK)
    {
      return new FilteredSortedMap(sortedMap().tailMap(paramK), this.predicate);
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.SortedMaps
 * JD-Core Version:    0.6.2
 */