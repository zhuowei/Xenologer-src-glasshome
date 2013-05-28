package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

@Beta
@GwtCompatible
public abstract interface Table<R, C, V>
{
  public abstract Set<Cell<R, C, V>> cellSet();

  public abstract void clear();

  public abstract Map<R, V> column(C paramC);

  public abstract Set<C> columnKeySet();

  public abstract Map<C, Map<R, V>> columnMap();

  public abstract boolean contains(@Nullable Object paramObject1, @Nullable Object paramObject2);

  public abstract boolean containsColumn(@Nullable Object paramObject);

  public abstract boolean containsRow(@Nullable Object paramObject);

  public abstract boolean containsValue(@Nullable Object paramObject);

  public abstract boolean equals(@Nullable Object paramObject);

  public abstract V get(@Nullable Object paramObject1, @Nullable Object paramObject2);

  public abstract int hashCode();

  public abstract boolean isEmpty();

  public abstract V put(R paramR, C paramC, V paramV);

  public abstract void putAll(Table<? extends R, ? extends C, ? extends V> paramTable);

  public abstract V remove(@Nullable Object paramObject1, @Nullable Object paramObject2);

  public abstract Map<C, V> row(R paramR);

  public abstract Set<R> rowKeySet();

  public abstract Map<R, Map<C, V>> rowMap();

  public abstract int size();

  public abstract Collection<V> values();

  @Beta
  public static abstract interface Cell<R, C, V>
  {
    public abstract boolean equals(@Nullable Object paramObject);

    public abstract C getColumnKey();

    public abstract R getRowKey();

    public abstract V getValue();

    public abstract int hashCode();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.Table
 * JD-Core Version:    0.6.2
 */