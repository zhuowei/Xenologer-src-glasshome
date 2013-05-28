package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Function;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;

@GwtCompatible
abstract class RegularImmutableTable<R, C, V> extends ImmutableTable<R, C, V>
{
  private static final Function<Table.Cell<Object, Object, Object>, Object> GET_VALUE_FUNCTION = new Function()
  {
    public Object apply(Table.Cell<Object, Object, Object> paramAnonymousCell)
    {
      return paramAnonymousCell.getValue();
    }
  };
  private final ImmutableSet<Table.Cell<R, C, V>> cellSet;

  @Nullable
  private volatile transient ImmutableList<V> valueList;

  private RegularImmutableTable(ImmutableSet<Table.Cell<R, C, V>> paramImmutableSet)
  {
    this.cellSet = paramImmutableSet;
  }

  static final <R, C, V> RegularImmutableTable<R, C, V> forCells(Iterable<Table.Cell<R, C, V>> paramIterable)
  {
    return forCellsInternal(paramIterable, null, null);
  }

  static final <R, C, V> RegularImmutableTable<R, C, V> forCells(List<Table.Cell<R, C, V>> paramList, @Nullable Comparator<? super R> paramComparator, @Nullable final Comparator<? super C> paramComparator1)
  {
    Preconditions.checkNotNull(paramList);
    if ((paramComparator != null) || (paramComparator1 != null))
      Collections.sort(paramList, new Comparator()
      {
        public int compare(Table.Cell<R, C, V> paramAnonymousCell1, Table.Cell<R, C, V> paramAnonymousCell2)
        {
          if (this.val$rowComparator == null);
          for (int i = 0; i != 0; i = this.val$rowComparator.compare(paramAnonymousCell1.getRowKey(), paramAnonymousCell2.getRowKey()))
            return i;
          Comparator localComparator = paramComparator1;
          int j = 0;
          if (localComparator == null);
          while (true)
          {
            return j;
            j = paramComparator1.compare(paramAnonymousCell1.getColumnKey(), paramAnonymousCell2.getColumnKey());
          }
        }
      });
    return forCellsInternal(paramList, paramComparator, paramComparator1);
  }

  private static final <R, C, V> RegularImmutableTable<R, C, V> forCellsInternal(Iterable<Table.Cell<R, C, V>> paramIterable, @Nullable Comparator<? super R> paramComparator, @Nullable Comparator<? super C> paramComparator1)
  {
    ImmutableSet.Builder localBuilder1 = ImmutableSet.builder();
    ImmutableSet.Builder localBuilder2 = ImmutableSet.builder();
    ImmutableSet.Builder localBuilder3 = ImmutableSet.builder();
    Iterator localIterator = paramIterable.iterator();
    while (localIterator.hasNext())
    {
      Table.Cell localCell = (Table.Cell)localIterator.next();
      localBuilder1.add(localCell);
      localBuilder2.add(localCell.getRowKey());
      localBuilder3.add(localCell.getColumnKey());
    }
    ImmutableSet localImmutableSet1 = localBuilder1.build();
    ImmutableSet localImmutableSet2 = localBuilder2.build();
    if (paramComparator != null)
    {
      ArrayList localArrayList2 = Lists.newArrayList(localImmutableSet2);
      Collections.sort(localArrayList2, paramComparator);
      localImmutableSet2 = ImmutableSet.copyOf(localArrayList2);
    }
    ImmutableSet localImmutableSet3 = localBuilder3.build();
    if (paramComparator1 != null)
    {
      ArrayList localArrayList1 = Lists.newArrayList(localImmutableSet3);
      Collections.sort(localArrayList1, paramComparator1);
      localImmutableSet3 = ImmutableSet.copyOf(localArrayList1);
    }
    if (localImmutableSet1.size() > localImmutableSet2.size() * localImmutableSet3.size() / 2)
      return new DenseImmutableTable(localImmutableSet1, localImmutableSet2, localImmutableSet3);
    return new SparseImmutableTable(localImmutableSet1, localImmutableSet2, localImmutableSet3);
  }

  private Function<Table.Cell<R, C, V>, V> getValueFunction()
  {
    return GET_VALUE_FUNCTION;
  }

  public final ImmutableSet<Table.Cell<R, C, V>> cellSet()
  {
    return this.cellSet;
  }

  public final boolean containsValue(@Nullable Object paramObject)
  {
    return values().contains(paramObject);
  }

  public final boolean isEmpty()
  {
    return false;
  }

  public final int size()
  {
    return cellSet().size();
  }

  public final ImmutableCollection<V> values()
  {
    ImmutableList localImmutableList = this.valueList;
    if (localImmutableList == null)
    {
      localImmutableList = ImmutableList.copyOf(Iterables.transform(cellSet(), getValueFunction()));
      this.valueList = localImmutableList;
    }
    return localImmutableList;
  }

  @VisibleForTesting
  @Immutable
  static final class DenseImmutableTable<R, C, V> extends RegularImmutableTable<R, C, V>
  {
    private final ImmutableBiMap<C, Integer> columnKeyToIndex;
    private volatile transient ImmutableMap<C, Map<R, V>> columnMap;
    private final ImmutableBiMap<R, Integer> rowKeyToIndex;
    private volatile transient ImmutableMap<R, Map<C, V>> rowMap;
    private final V[][] values;

    DenseImmutableTable(ImmutableSet<Table.Cell<R, C, V>> paramImmutableSet, ImmutableSet<R> paramImmutableSet1, ImmutableSet<C> paramImmutableSet2)
    {
      super(null);
      this.values = ((Object[][])Array.newInstance(Object.class, new int[] { paramImmutableSet1.size(), paramImmutableSet2.size() }));
      this.rowKeyToIndex = makeIndex(paramImmutableSet1);
      this.columnKeyToIndex = makeIndex(paramImmutableSet2);
      Iterator localIterator = paramImmutableSet.iterator();
      if (localIterator.hasNext())
      {
        Table.Cell localCell = (Table.Cell)localIterator.next();
        Object localObject1 = localCell.getRowKey();
        Object localObject2 = localCell.getColumnKey();
        int i = ((Integer)this.rowKeyToIndex.get(localObject1)).intValue();
        int j = ((Integer)this.columnKeyToIndex.get(localObject2)).intValue();
        if (this.values[i][j] == null);
        for (boolean bool = true; ; bool = false)
        {
          Preconditions.checkArgument(bool, "duplicate key: (%s, %s)", new Object[] { localObject1, localObject2 });
          this.values[i][j] = localCell.getValue();
          break;
        }
      }
    }

    private ImmutableMap<C, Map<R, V>> makeColumnMap()
    {
      ImmutableMap.Builder localBuilder1 = ImmutableMap.builder();
      for (int i = 0; i < this.columnKeyToIndex.size(); i++)
      {
        ImmutableMap.Builder localBuilder2 = ImmutableMap.builder();
        for (int j = 0; j < this.rowKeyToIndex.size(); j++)
        {
          Object localObject = this.values[j][i];
          if (localObject != null)
            localBuilder2.put(this.rowKeyToIndex.inverse().get(Integer.valueOf(j)), localObject);
        }
        localBuilder1.put(this.columnKeyToIndex.inverse().get(Integer.valueOf(i)), localBuilder2.build());
      }
      return localBuilder1.build();
    }

    private static <E> ImmutableBiMap<E, Integer> makeIndex(ImmutableSet<E> paramImmutableSet)
    {
      ImmutableBiMap.Builder localBuilder = ImmutableBiMap.builder();
      int i = 0;
      Iterator localIterator = paramImmutableSet.iterator();
      while (localIterator.hasNext())
      {
        localBuilder.put(localIterator.next(), Integer.valueOf(i));
        i++;
      }
      return localBuilder.build();
    }

    private ImmutableMap<R, Map<C, V>> makeRowMap()
    {
      ImmutableMap.Builder localBuilder1 = ImmutableMap.builder();
      for (int i = 0; i < this.values.length; i++)
      {
        Object[] arrayOfObject = this.values[i];
        ImmutableMap.Builder localBuilder2 = ImmutableMap.builder();
        for (int j = 0; j < arrayOfObject.length; j++)
        {
          Object localObject = arrayOfObject[j];
          if (localObject != null)
            localBuilder2.put(this.columnKeyToIndex.inverse().get(Integer.valueOf(j)), localObject);
        }
        localBuilder1.put(this.rowKeyToIndex.inverse().get(Integer.valueOf(i)), localBuilder2.build());
      }
      return localBuilder1.build();
    }

    public ImmutableMap<R, V> column(C paramC)
    {
      Preconditions.checkNotNull(paramC);
      Integer localInteger = (Integer)this.columnKeyToIndex.get(paramC);
      if (localInteger == null)
        return ImmutableMap.of();
      int i = localInteger.intValue();
      ImmutableMap.Builder localBuilder = ImmutableMap.builder();
      for (int j = 0; j < this.values.length; j++)
      {
        Object localObject = this.values[j][i];
        if (localObject != null)
          localBuilder.put(this.rowKeyToIndex.inverse().get(Integer.valueOf(j)), localObject);
      }
      return localBuilder.build();
    }

    public ImmutableSet<C> columnKeySet()
    {
      return this.columnKeyToIndex.keySet();
    }

    public ImmutableMap<C, Map<R, V>> columnMap()
    {
      ImmutableMap localImmutableMap = this.columnMap;
      if (localImmutableMap == null)
      {
        localImmutableMap = makeColumnMap();
        this.columnMap = localImmutableMap;
      }
      return localImmutableMap;
    }

    public boolean contains(@Nullable Object paramObject1, @Nullable Object paramObject2)
    {
      return get(paramObject1, paramObject2) != null;
    }

    public boolean containsColumn(@Nullable Object paramObject)
    {
      return this.columnKeyToIndex.containsKey(paramObject);
    }

    public boolean containsRow(@Nullable Object paramObject)
    {
      return this.rowKeyToIndex.containsKey(paramObject);
    }

    public V get(@Nullable Object paramObject1, @Nullable Object paramObject2)
    {
      Integer localInteger1 = (Integer)this.rowKeyToIndex.get(paramObject1);
      Integer localInteger2 = (Integer)this.columnKeyToIndex.get(paramObject2);
      if ((localInteger1 == null) || (localInteger2 == null))
        return null;
      return this.values[localInteger1.intValue()][localInteger2.intValue()];
    }

    public ImmutableMap<C, V> row(R paramR)
    {
      Preconditions.checkNotNull(paramR);
      Integer localInteger = (Integer)this.rowKeyToIndex.get(paramR);
      if (localInteger == null)
        return ImmutableMap.of();
      ImmutableMap.Builder localBuilder = ImmutableMap.builder();
      Object[] arrayOfObject = this.values[localInteger.intValue()];
      for (int i = 0; i < arrayOfObject.length; i++)
      {
        Object localObject = arrayOfObject[i];
        if (localObject != null)
          localBuilder.put(this.columnKeyToIndex.inverse().get(Integer.valueOf(i)), localObject);
      }
      return localBuilder.build();
    }

    public ImmutableSet<R> rowKeySet()
    {
      return this.rowKeyToIndex.keySet();
    }

    public ImmutableMap<R, Map<C, V>> rowMap()
    {
      ImmutableMap localImmutableMap = this.rowMap;
      if (localImmutableMap == null)
      {
        localImmutableMap = makeRowMap();
        this.rowMap = localImmutableMap;
      }
      return localImmutableMap;
    }
  }

  @VisibleForTesting
  @Immutable
  static final class SparseImmutableTable<R, C, V> extends RegularImmutableTable<R, C, V>
  {
    private final ImmutableMap<C, Map<R, V>> columnMap;
    private final ImmutableMap<R, Map<C, V>> rowMap;

    SparseImmutableTable(ImmutableSet<Table.Cell<R, C, V>> paramImmutableSet, ImmutableSet<R> paramImmutableSet1, ImmutableSet<C> paramImmutableSet2)
    {
      super(null);
      Map localMap1 = makeIndexBuilder(paramImmutableSet1);
      Map localMap2 = makeIndexBuilder(paramImmutableSet2);
      Iterator localIterator = paramImmutableSet.iterator();
      while (localIterator.hasNext())
      {
        Table.Cell localCell = (Table.Cell)localIterator.next();
        Object localObject1 = localCell.getRowKey();
        Object localObject2 = localCell.getColumnKey();
        Object localObject3 = localCell.getValue();
        ((ImmutableMap.Builder)localMap1.get(localObject1)).put(localObject2, localObject3);
        ((ImmutableMap.Builder)localMap2.get(localObject2)).put(localObject1, localObject3);
      }
      this.rowMap = buildIndex(localMap1);
      this.columnMap = buildIndex(localMap2);
    }

    private static final <A, B, V> ImmutableMap<A, Map<B, V>> buildIndex(Map<A, ImmutableMap.Builder<B, V>> paramMap)
    {
      return ImmutableMap.copyOf(Maps.transformValues(paramMap, new Function()
      {
        public Map<B, V> apply(ImmutableMap.Builder<B, V> paramAnonymousBuilder)
        {
          return paramAnonymousBuilder.build();
        }
      }));
    }

    private static final <A, B, V> Map<A, ImmutableMap.Builder<B, V>> makeIndexBuilder(ImmutableSet<A> paramImmutableSet)
    {
      LinkedHashMap localLinkedHashMap = Maps.newLinkedHashMap();
      Iterator localIterator = paramImmutableSet.iterator();
      while (localIterator.hasNext())
        localLinkedHashMap.put(localIterator.next(), ImmutableMap.builder());
      return localLinkedHashMap;
    }

    public ImmutableMap<R, V> column(C paramC)
    {
      Preconditions.checkNotNull(paramC);
      return (ImmutableMap)Objects.firstNonNull((ImmutableMap)this.columnMap.get(paramC), ImmutableMap.of());
    }

    public ImmutableSet<C> columnKeySet()
    {
      return this.columnMap.keySet();
    }

    public ImmutableMap<C, Map<R, V>> columnMap()
    {
      return this.columnMap;
    }

    public boolean contains(@Nullable Object paramObject1, @Nullable Object paramObject2)
    {
      Map localMap = (Map)this.rowMap.get(paramObject1);
      return (localMap != null) && (localMap.containsKey(paramObject2));
    }

    public boolean containsColumn(@Nullable Object paramObject)
    {
      return this.columnMap.containsKey(paramObject);
    }

    public boolean containsRow(@Nullable Object paramObject)
    {
      return this.rowMap.containsKey(paramObject);
    }

    public V get(@Nullable Object paramObject1, @Nullable Object paramObject2)
    {
      Map localMap = (Map)this.rowMap.get(paramObject1);
      if (localMap == null)
        return null;
      return localMap.get(paramObject2);
    }

    public ImmutableMap<C, V> row(R paramR)
    {
      Preconditions.checkNotNull(paramR);
      return (ImmutableMap)Objects.firstNonNull((ImmutableMap)this.rowMap.get(paramR), ImmutableMap.of());
    }

    public ImmutableSet<R> rowKeySet()
    {
      return this.rowMap.keySet();
    }

    public ImmutableMap<R, Map<C, V>> rowMap()
    {
      return this.rowMap;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.RegularImmutableTable
 * JD-Core Version:    0.6.2
 */