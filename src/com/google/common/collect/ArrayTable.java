package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import javax.annotation.Nullable;

@Beta
public final class ArrayTable<R, C, V>
  implements Table<R, C, V>, Serializable
{
  private static final long serialVersionUID;
  private final V[][] array;
  private transient ArrayTable<R, C, V>.CellSet cellSet;
  private final ImmutableMap<C, Integer> columnKeyToIndex;
  private final ImmutableList<C> columnList;
  private transient ArrayTable<R, C, V>.ColumnMap columnMap;
  private final ImmutableMap<R, Integer> rowKeyToIndex;
  private final ImmutableList<R> rowList;
  private transient ArrayTable<R, C, V>.RowMap rowMap;
  private transient Collection<V> values;

  private ArrayTable(ArrayTable<R, C, V> paramArrayTable)
  {
    this.rowList = paramArrayTable.rowList;
    this.columnList = paramArrayTable.columnList;
    this.rowKeyToIndex = paramArrayTable.rowKeyToIndex;
    this.columnKeyToIndex = paramArrayTable.columnKeyToIndex;
    Object[][] arrayOfObject = (Object[][])Array.newInstance(Object.class, new int[] { this.rowList.size(), this.columnList.size() });
    this.array = arrayOfObject;
    for (int i = 0; i < this.rowList.size(); i++)
      System.arraycopy(paramArrayTable.array[i], 0, arrayOfObject[i], 0, paramArrayTable.array[i].length);
  }

  private ArrayTable(Table<R, C, V> paramTable)
  {
    this(paramTable.rowKeySet(), paramTable.columnKeySet());
    putAll(paramTable);
  }

  private ArrayTable(Iterable<? extends R> paramIterable, Iterable<? extends C> paramIterable1)
  {
    this.rowList = ImmutableList.copyOf(paramIterable);
    this.columnList = ImmutableList.copyOf(paramIterable1);
    boolean bool2;
    if (!this.rowList.isEmpty())
    {
      bool2 = bool1;
      Preconditions.checkArgument(bool2);
      if (this.columnList.isEmpty())
        break label106;
    }
    ImmutableMap.Builder localBuilder1;
    while (true)
    {
      Preconditions.checkArgument(bool1);
      localBuilder1 = ImmutableMap.builder();
      for (int i = 0; i < this.rowList.size(); i++)
        localBuilder1.put(this.rowList.get(i), Integer.valueOf(i));
      bool2 = false;
      break;
      label106: bool1 = false;
    }
    this.rowKeyToIndex = localBuilder1.build();
    ImmutableMap.Builder localBuilder2 = ImmutableMap.builder();
    for (int j = 0; j < this.columnList.size(); j++)
      localBuilder2.put(this.columnList.get(j), Integer.valueOf(j));
    this.columnKeyToIndex = localBuilder2.build();
    this.array = ((Object[][])Array.newInstance(Object.class, new int[] { this.rowList.size(), this.columnList.size() }));
  }

  public static <R, C, V> ArrayTable<R, C, V> create(ArrayTable<R, C, V> paramArrayTable)
  {
    return new ArrayTable(paramArrayTable);
  }

  public static <R, C, V> ArrayTable<R, C, V> create(Table<R, C, V> paramTable)
  {
    return new ArrayTable(paramTable);
  }

  public static <R, C, V> ArrayTable<R, C, V> create(Iterable<? extends R> paramIterable, Iterable<? extends C> paramIterable1)
  {
    return new ArrayTable(paramIterable, paramIterable1);
  }

  private V getIndexed(Integer paramInteger1, Integer paramInteger2)
  {
    if ((paramInteger1 == null) || (paramInteger2 == null))
      return null;
    return this.array[paramInteger1.intValue()][paramInteger2.intValue()];
  }

  public V at(int paramInt1, int paramInt2)
  {
    return this.array[paramInt1][paramInt2];
  }

  public Set<Table.Cell<R, C, V>> cellSet()
  {
    CellSet localCellSet = this.cellSet;
    if (localCellSet == null)
    {
      localCellSet = new CellSet(null);
      this.cellSet = localCellSet;
    }
    return localCellSet;
  }

  @Deprecated
  public void clear()
  {
    throw new UnsupportedOperationException();
  }

  public Map<R, V> column(C paramC)
  {
    Preconditions.checkNotNull(paramC);
    Integer localInteger = (Integer)this.columnKeyToIndex.get(paramC);
    if (localInteger == null)
      return ImmutableMap.of();
    return new Column(localInteger.intValue());
  }

  public ImmutableList<C> columnKeyList()
  {
    return this.columnList;
  }

  public ImmutableSet<C> columnKeySet()
  {
    return this.columnKeyToIndex.keySet();
  }

  public Map<C, Map<R, V>> columnMap()
  {
    ColumnMap localColumnMap = this.columnMap;
    if (localColumnMap == null)
    {
      localColumnMap = new ColumnMap(null);
      this.columnMap = localColumnMap;
    }
    return localColumnMap;
  }

  public boolean contains(@Nullable Object paramObject1, @Nullable Object paramObject2)
  {
    return (containsRow(paramObject1)) && (containsColumn(paramObject2));
  }

  public boolean containsColumn(@Nullable Object paramObject)
  {
    return this.columnKeyToIndex.containsKey(paramObject);
  }

  public boolean containsRow(@Nullable Object paramObject)
  {
    return this.rowKeyToIndex.containsKey(paramObject);
  }

  public boolean containsValue(@Nullable Object paramObject)
  {
    for (Object[] arrayOfObject1 : this.array)
    {
      int k = arrayOfObject1.length;
      for (int m = 0; m < k; m++)
        if (Objects.equal(paramObject, arrayOfObject1[m]))
          return true;
    }
    return false;
  }

  public boolean equals(@Nullable Object paramObject)
  {
    if ((paramObject instanceof Table))
    {
      Table localTable = (Table)paramObject;
      return cellSet().equals(localTable.cellSet());
    }
    return false;
  }

  public V erase(@Nullable Object paramObject1, @Nullable Object paramObject2)
  {
    Integer localInteger1 = (Integer)this.rowKeyToIndex.get(paramObject1);
    Integer localInteger2 = (Integer)this.columnKeyToIndex.get(paramObject2);
    if ((localInteger1 == null) || (localInteger2 == null))
      return null;
    return set(localInteger1.intValue(), localInteger2.intValue(), null);
  }

  public void eraseAll()
  {
    Object[][] arrayOfObject = this.array;
    int i = arrayOfObject.length;
    for (int j = 0; j < i; j++)
      Arrays.fill(arrayOfObject[j], null);
  }

  public V get(@Nullable Object paramObject1, @Nullable Object paramObject2)
  {
    return getIndexed((Integer)this.rowKeyToIndex.get(paramObject1), (Integer)this.columnKeyToIndex.get(paramObject2));
  }

  public int hashCode()
  {
    return cellSet().hashCode();
  }

  public boolean isEmpty()
  {
    return false;
  }

  public V put(R paramR, C paramC, @Nullable V paramV)
  {
    Preconditions.checkNotNull(paramR);
    Preconditions.checkNotNull(paramC);
    Integer localInteger1 = (Integer)this.rowKeyToIndex.get(paramR);
    boolean bool1;
    Integer localInteger2;
    if (localInteger1 != null)
    {
      bool1 = true;
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = paramR;
      arrayOfObject1[1] = this.rowList;
      Preconditions.checkArgument(bool1, "Row %s not in %s", arrayOfObject1);
      localInteger2 = (Integer)this.columnKeyToIndex.get(paramC);
      if (localInteger2 == null)
        break label130;
    }
    label130: for (boolean bool2 = true; ; bool2 = false)
    {
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = paramC;
      arrayOfObject2[1] = this.columnList;
      Preconditions.checkArgument(bool2, "Column %s not in %s", arrayOfObject2);
      return set(localInteger1.intValue(), localInteger2.intValue(), paramV);
      bool1 = false;
      break;
    }
  }

  public void putAll(Table<? extends R, ? extends C, ? extends V> paramTable)
  {
    Iterator localIterator = paramTable.cellSet().iterator();
    while (localIterator.hasNext())
    {
      Table.Cell localCell = (Table.Cell)localIterator.next();
      put(localCell.getRowKey(), localCell.getColumnKey(), localCell.getValue());
    }
  }

  @Deprecated
  public V remove(Object paramObject1, Object paramObject2)
  {
    throw new UnsupportedOperationException();
  }

  public Map<C, V> row(R paramR)
  {
    Preconditions.checkNotNull(paramR);
    Integer localInteger = (Integer)this.rowKeyToIndex.get(paramR);
    if (localInteger == null)
      return ImmutableMap.of();
    return new Row(localInteger.intValue());
  }

  public ImmutableList<R> rowKeyList()
  {
    return this.rowList;
  }

  public ImmutableSet<R> rowKeySet()
  {
    return this.rowKeyToIndex.keySet();
  }

  public Map<R, Map<C, V>> rowMap()
  {
    RowMap localRowMap = this.rowMap;
    if (localRowMap == null)
    {
      localRowMap = new RowMap(null);
      this.rowMap = localRowMap;
    }
    return localRowMap;
  }

  public V set(int paramInt1, int paramInt2, @Nullable V paramV)
  {
    Object localObject = this.array[paramInt1][paramInt2];
    this.array[paramInt1][paramInt2] = paramV;
    return localObject;
  }

  public int size()
  {
    return this.rowList.size() * this.columnList.size();
  }

  public V[][] toArray(Class<V> paramClass)
  {
    int[] arrayOfInt = new int[2];
    arrayOfInt[0] = this.rowList.size();
    arrayOfInt[1] = this.columnList.size();
    Object[][] arrayOfObject = (Object[][])Array.newInstance(paramClass, arrayOfInt);
    for (int i = 0; i < this.rowList.size(); i++)
      System.arraycopy(this.array[i], 0, arrayOfObject[i], 0, this.array[i].length);
    return arrayOfObject;
  }

  public String toString()
  {
    return rowMap().toString();
  }

  public Collection<V> values()
  {
    Object localObject = this.values;
    if (localObject == null)
    {
      localObject = new Values(null);
      this.values = ((Collection)localObject);
    }
    return localObject;
  }

  private class CellSet extends AbstractSet<Table.Cell<R, C, V>>
  {
    private CellSet()
    {
    }

    public boolean contains(Object paramObject)
    {
      boolean bool1 = paramObject instanceof Table.Cell;
      boolean bool2 = false;
      if (bool1)
      {
        Table.Cell localCell = (Table.Cell)paramObject;
        Integer localInteger1 = (Integer)ArrayTable.this.rowKeyToIndex.get(localCell.getRowKey());
        Integer localInteger2 = (Integer)ArrayTable.this.columnKeyToIndex.get(localCell.getColumnKey());
        bool2 = false;
        if (localInteger1 != null)
        {
          bool2 = false;
          if (localInteger2 != null)
          {
            boolean bool3 = Objects.equal(ArrayTable.this.array[localInteger1.intValue()][localInteger2.intValue()], localCell.getValue());
            bool2 = false;
            if (bool3)
              bool2 = true;
          }
        }
      }
      return bool2;
    }

    public Iterator<Table.Cell<R, C, V>> iterator()
    {
      return new AbstractIndexedListIterator(size())
      {
        protected Table.Cell<R, C, V> get(final int paramAnonymousInt)
        {
          return new Tables.AbstractCell()
          {
            final int columnIndex = paramAnonymousInt % ArrayTable.this.columnList.size();
            final int rowIndex = paramAnonymousInt / ArrayTable.this.columnList.size();

            public C getColumnKey()
            {
              return ArrayTable.this.columnList.get(this.columnIndex);
            }

            public R getRowKey()
            {
              return ArrayTable.this.rowList.get(this.rowIndex);
            }

            public V getValue()
            {
              return ArrayTable.this.array[this.rowIndex][this.columnIndex];
            }
          };
        }
      };
    }

    public int size()
    {
      return ArrayTable.this.size();
    }
  }

  private class Column extends AbstractMap<R, V>
  {
    final int columnIndex;
    ArrayTable<R, C, V>.ColumnEntrySet entrySet;

    Column(int arg2)
    {
      int i;
      this.columnIndex = i;
    }

    public boolean containsKey(Object paramObject)
    {
      return ArrayTable.this.rowKeyToIndex.containsKey(paramObject);
    }

    public Set<Map.Entry<R, V>> entrySet()
    {
      ArrayTable.ColumnEntrySet localColumnEntrySet = this.entrySet;
      if (localColumnEntrySet == null)
      {
        localColumnEntrySet = new ArrayTable.ColumnEntrySet(ArrayTable.this, this.columnIndex);
        this.entrySet = localColumnEntrySet;
      }
      return localColumnEntrySet;
    }

    public V get(Object paramObject)
    {
      Integer localInteger = (Integer)ArrayTable.this.rowKeyToIndex.get(paramObject);
      return ArrayTable.this.getIndexed(localInteger, Integer.valueOf(this.columnIndex));
    }

    public Set<R> keySet()
    {
      return ArrayTable.this.rowKeySet();
    }

    public V put(R paramR, V paramV)
    {
      Preconditions.checkNotNull(paramR);
      Integer localInteger = (Integer)ArrayTable.this.rowKeyToIndex.get(paramR);
      if (localInteger != null);
      for (boolean bool = true; ; bool = false)
      {
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = paramR;
        arrayOfObject[1] = ArrayTable.this.rowList;
        Preconditions.checkArgument(bool, "Row %s not in %s", arrayOfObject);
        return ArrayTable.this.set(localInteger.intValue(), this.columnIndex, paramV);
      }
    }
  }

  private class ColumnEntrySet extends AbstractSet<Map.Entry<R, V>>
  {
    final int columnIndex;

    ColumnEntrySet(int arg2)
    {
      int i;
      this.columnIndex = i;
    }

    public Iterator<Map.Entry<R, V>> iterator()
    {
      return new AbstractIndexedListIterator(size())
      {
        protected Map.Entry<R, V> get(final int paramAnonymousInt)
        {
          return new AbstractMapEntry()
          {
            public R getKey()
            {
              return ArrayTable.this.rowList.get(paramAnonymousInt);
            }

            public V getValue()
            {
              return ArrayTable.this.array[paramAnonymousInt][ArrayTable.ColumnEntrySet.this.columnIndex];
            }

            public V setValue(V paramAnonymous2V)
            {
              return ArrayTable.this.set(paramAnonymousInt, ArrayTable.ColumnEntrySet.this.columnIndex, paramAnonymous2V);
            }
          };
        }
      };
    }

    public int size()
    {
      return ArrayTable.this.rowList.size();
    }
  }

  private class ColumnMap extends AbstractMap<C, Map<R, V>>
  {
    transient ArrayTable<R, C, V>.ColumnMapEntrySet entrySet;

    private ColumnMap()
    {
    }

    public boolean containsKey(Object paramObject)
    {
      return ArrayTable.this.containsColumn(paramObject);
    }

    public Set<Map.Entry<C, Map<R, V>>> entrySet()
    {
      ArrayTable.ColumnMapEntrySet localColumnMapEntrySet = this.entrySet;
      if (localColumnMapEntrySet == null)
      {
        localColumnMapEntrySet = new ArrayTable.ColumnMapEntrySet(ArrayTable.this, null);
        this.entrySet = localColumnMapEntrySet;
      }
      return localColumnMapEntrySet;
    }

    public Map<R, V> get(Object paramObject)
    {
      Integer localInteger = (Integer)ArrayTable.this.columnKeyToIndex.get(paramObject);
      if (localInteger == null)
        return null;
      return new ArrayTable.Column(ArrayTable.this, localInteger.intValue());
    }

    public Set<C> keySet()
    {
      return ArrayTable.this.columnKeySet();
    }

    public Map<R, V> remove(Object paramObject)
    {
      throw new UnsupportedOperationException();
    }
  }

  private class ColumnMapEntrySet extends AbstractSet<Map.Entry<C, Map<R, V>>>
  {
    private ColumnMapEntrySet()
    {
    }

    public Iterator<Map.Entry<C, Map<R, V>>> iterator()
    {
      return new AbstractIndexedListIterator(size())
      {
        protected Map.Entry<C, Map<R, V>> get(int paramAnonymousInt)
        {
          return Maps.immutableEntry(ArrayTable.this.columnList.get(paramAnonymousInt), new ArrayTable.Column(ArrayTable.this, paramAnonymousInt));
        }
      };
    }

    public int size()
    {
      return ArrayTable.this.columnList.size();
    }
  }

  private class Row extends AbstractMap<C, V>
  {
    ArrayTable<R, C, V>.RowEntrySet entrySet;
    final int rowIndex;

    Row(int arg2)
    {
      int i;
      this.rowIndex = i;
    }

    public boolean containsKey(Object paramObject)
    {
      return ArrayTable.this.containsColumn(paramObject);
    }

    public Set<Map.Entry<C, V>> entrySet()
    {
      ArrayTable.RowEntrySet localRowEntrySet = this.entrySet;
      if (localRowEntrySet == null)
      {
        localRowEntrySet = new ArrayTable.RowEntrySet(ArrayTable.this, this.rowIndex);
        this.entrySet = localRowEntrySet;
      }
      return localRowEntrySet;
    }

    public V get(Object paramObject)
    {
      Integer localInteger = (Integer)ArrayTable.this.columnKeyToIndex.get(paramObject);
      return ArrayTable.this.getIndexed(Integer.valueOf(this.rowIndex), localInteger);
    }

    public Set<C> keySet()
    {
      return ArrayTable.this.columnKeySet();
    }

    public V put(C paramC, V paramV)
    {
      Preconditions.checkNotNull(paramC);
      Integer localInteger = (Integer)ArrayTable.this.columnKeyToIndex.get(paramC);
      if (localInteger != null);
      for (boolean bool = true; ; bool = false)
      {
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = paramC;
        arrayOfObject[1] = ArrayTable.this.columnList;
        Preconditions.checkArgument(bool, "Column %s not in %s", arrayOfObject);
        return ArrayTable.this.set(this.rowIndex, localInteger.intValue(), paramV);
      }
    }
  }

  private class RowEntrySet extends AbstractSet<Map.Entry<C, V>>
  {
    final int rowIndex;

    RowEntrySet(int arg2)
    {
      int i;
      this.rowIndex = i;
    }

    public Iterator<Map.Entry<C, V>> iterator()
    {
      return new AbstractIndexedListIterator(size())
      {
        protected Map.Entry<C, V> get(final int paramAnonymousInt)
        {
          return new AbstractMapEntry()
          {
            public C getKey()
            {
              return ArrayTable.this.columnList.get(paramAnonymousInt);
            }

            public V getValue()
            {
              return ArrayTable.this.array[ArrayTable.RowEntrySet.this.rowIndex][paramAnonymousInt];
            }

            public V setValue(V paramAnonymous2V)
            {
              return ArrayTable.this.set(ArrayTable.RowEntrySet.this.rowIndex, paramAnonymousInt, paramAnonymous2V);
            }
          };
        }
      };
    }

    public int size()
    {
      return ArrayTable.this.columnList.size();
    }
  }

  private class RowMap extends AbstractMap<R, Map<C, V>>
  {
    transient ArrayTable<R, C, V>.RowMapEntrySet entrySet;

    private RowMap()
    {
    }

    public boolean containsKey(Object paramObject)
    {
      return ArrayTable.this.containsRow(paramObject);
    }

    public Set<Map.Entry<R, Map<C, V>>> entrySet()
    {
      ArrayTable.RowMapEntrySet localRowMapEntrySet = this.entrySet;
      if (localRowMapEntrySet == null)
      {
        localRowMapEntrySet = new ArrayTable.RowMapEntrySet(ArrayTable.this, null);
        this.entrySet = localRowMapEntrySet;
      }
      return localRowMapEntrySet;
    }

    public Map<C, V> get(Object paramObject)
    {
      Integer localInteger = (Integer)ArrayTable.this.rowKeyToIndex.get(paramObject);
      if (localInteger == null)
        return null;
      return new ArrayTable.Row(ArrayTable.this, localInteger.intValue());
    }

    public Set<R> keySet()
    {
      return ArrayTable.this.rowKeySet();
    }

    public Map<C, V> remove(Object paramObject)
    {
      throw new UnsupportedOperationException();
    }
  }

  private class RowMapEntrySet extends AbstractSet<Map.Entry<R, Map<C, V>>>
  {
    private RowMapEntrySet()
    {
    }

    public Iterator<Map.Entry<R, Map<C, V>>> iterator()
    {
      return new AbstractIndexedListIterator(size())
      {
        protected Map.Entry<R, Map<C, V>> get(int paramAnonymousInt)
        {
          return Maps.immutableEntry(ArrayTable.this.rowList.get(paramAnonymousInt), new ArrayTable.Row(ArrayTable.this, paramAnonymousInt));
        }
      };
    }

    public int size()
    {
      return ArrayTable.this.rowList.size();
    }
  }

  private class Values extends AbstractCollection<V>
  {
    private Values()
    {
    }

    public boolean contains(Object paramObject)
    {
      return ArrayTable.this.containsValue(paramObject);
    }

    public Iterator<V> iterator()
    {
      return new AbstractIndexedListIterator(size())
      {
        protected V get(int paramAnonymousInt)
        {
          int i = paramAnonymousInt / ArrayTable.this.columnList.size();
          int j = paramAnonymousInt % ArrayTable.this.columnList.size();
          return ArrayTable.this.array[i][j];
        }
      };
    }

    public int size()
    {
      return ArrayTable.this.size();
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ArrayTable
 * JD-Core Version:    0.6.2
 */