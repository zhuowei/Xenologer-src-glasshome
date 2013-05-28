package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Joiner;
import com.google.common.base.Preconditions;
import java.util.Map.Entry;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;

@GwtCompatible(emulated=true, serializable=true)
final class RegularImmutableMap<K, V> extends ImmutableMap<K, V>
{
  private static final long serialVersionUID;
  private final transient LinkedEntry<K, V>[] entries;
  private transient ImmutableSet<Map.Entry<K, V>> entrySet;
  private transient ImmutableSet<K> keySet;
  private final transient int keySetHashCode;
  private final transient int mask;
  private final transient LinkedEntry<K, V>[] table;
  private transient ImmutableCollection<V> values;

  RegularImmutableMap(Map.Entry<?, ?>[] paramArrayOfEntry)
  {
    int i = paramArrayOfEntry.length;
    this.entries = createEntryArray(i);
    int j = chooseTableSize(i);
    this.table = createEntryArray(j);
    this.mask = (j - 1);
    int k = 0;
    for (int m = 0; m < i; m++)
    {
      Map.Entry<?, ?> localEntry = paramArrayOfEntry[m];
      Object localObject = localEntry.getKey();
      int n = localObject.hashCode();
      k += n;
      int i1 = Hashing.smear(n) & this.mask;
      LinkedEntry localLinkedEntry1 = this.table[i1];
      LinkedEntry localLinkedEntry2 = newLinkedEntry(localObject, localEntry.getValue(), localLinkedEntry1);
      this.table[i1] = localLinkedEntry2;
      this.entries[m] = localLinkedEntry2;
      if (localLinkedEntry1 != null)
      {
        if (!localObject.equals(localLinkedEntry1.getKey()));
        for (boolean bool = true; ; bool = false)
        {
          Preconditions.checkArgument(bool, "duplicate key: %s", new Object[] { localObject });
          localLinkedEntry1 = localLinkedEntry1.next();
          break;
        }
      }
    }
    this.keySetHashCode = k;
  }

  private static int chooseTableSize(int paramInt)
  {
    int i = Integer.highestOneBit(paramInt) << 1;
    if (i > 0);
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(paramInt);
      Preconditions.checkArgument(bool, "table too large: %s", arrayOfObject);
      return i;
    }
  }

  private LinkedEntry<K, V>[] createEntryArray(int paramInt)
  {
    return new LinkedEntry[paramInt];
  }

  private static <K, V> LinkedEntry<K, V> newLinkedEntry(K paramK, V paramV, @Nullable LinkedEntry<K, V> paramLinkedEntry)
  {
    if (paramLinkedEntry == null)
      return new TerminalEntry(paramK, paramV);
    return new NonTerminalEntry(paramK, paramV, paramLinkedEntry);
  }

  public boolean containsValue(@Nullable Object paramObject)
  {
    if (paramObject == null);
    while (true)
    {
      return false;
      LinkedEntry[] arrayOfLinkedEntry = this.entries;
      int i = arrayOfLinkedEntry.length;
      for (int j = 0; j < i; j++)
        if (arrayOfLinkedEntry[j].getValue().equals(paramObject))
          return true;
    }
  }

  public ImmutableSet<Map.Entry<K, V>> entrySet()
  {
    Object localObject = this.entrySet;
    if (localObject == null)
    {
      localObject = new EntrySet(this);
      this.entrySet = ((ImmutableSet)localObject);
    }
    return localObject;
  }

  public V get(@Nullable Object paramObject)
  {
    if (paramObject == null);
    while (true)
    {
      return null;
      int i = Hashing.smear(paramObject.hashCode()) & this.mask;
      for (LinkedEntry localLinkedEntry = this.table[i]; localLinkedEntry != null; localLinkedEntry = localLinkedEntry.next())
        if (paramObject.equals(localLinkedEntry.getKey()))
          return localLinkedEntry.getValue();
    }
  }

  public boolean isEmpty()
  {
    return false;
  }

  boolean isPartialView()
  {
    return false;
  }

  public ImmutableSet<K> keySet()
  {
    Object localObject = this.keySet;
    if (localObject == null)
    {
      localObject = new KeySet(this);
      this.keySet = ((ImmutableSet)localObject);
    }
    return localObject;
  }

  public int size()
  {
    return this.entries.length;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = Collections2.newStringBuilderForCollection(size()).append('{');
    Collections2.STANDARD_JOINER.appendTo(localStringBuilder, this.entries);
    return '}';
  }

  public ImmutableCollection<V> values()
  {
    Object localObject = this.values;
    if (localObject == null)
    {
      localObject = new Values(this);
      this.values = ((ImmutableCollection)localObject);
    }
    return localObject;
  }

  private static class EntrySet<K, V> extends ImmutableSet.ArrayImmutableSet<Map.Entry<K, V>>
  {
    final transient RegularImmutableMap<K, V> map;

    EntrySet(RegularImmutableMap<K, V> paramRegularImmutableMap)
    {
      super();
      this.map = paramRegularImmutableMap;
    }

    public boolean contains(Object paramObject)
    {
      boolean bool1 = paramObject instanceof Map.Entry;
      boolean bool2 = false;
      if (bool1)
      {
        Map.Entry localEntry = (Map.Entry)paramObject;
        Object localObject = this.map.get(localEntry.getKey());
        bool2 = false;
        if (localObject != null)
        {
          boolean bool3 = localObject.equals(localEntry.getValue());
          bool2 = false;
          if (bool3)
            bool2 = true;
        }
      }
      return bool2;
    }
  }

  private static class KeySet<K, V> extends ImmutableSet.TransformedImmutableSet<Map.Entry<K, V>, K>
  {
    final RegularImmutableMap<K, V> map;

    KeySet(RegularImmutableMap<K, V> paramRegularImmutableMap)
    {
      super(paramRegularImmutableMap.keySetHashCode);
      this.map = paramRegularImmutableMap;
    }

    public boolean contains(Object paramObject)
    {
      return this.map.containsKey(paramObject);
    }

    boolean isPartialView()
    {
      return true;
    }

    K transform(Map.Entry<K, V> paramEntry)
    {
      return paramEntry.getKey();
    }
  }

  private static abstract interface LinkedEntry<K, V> extends Map.Entry<K, V>
  {
    @Nullable
    public abstract LinkedEntry<K, V> next();
  }

  @Immutable
  private static final class NonTerminalEntry<K, V> extends ImmutableEntry<K, V>
    implements RegularImmutableMap.LinkedEntry<K, V>
  {
    final RegularImmutableMap.LinkedEntry<K, V> next;

    NonTerminalEntry(K paramK, V paramV, RegularImmutableMap.LinkedEntry<K, V> paramLinkedEntry)
    {
      super(paramV);
      this.next = paramLinkedEntry;
    }

    public RegularImmutableMap.LinkedEntry<K, V> next()
    {
      return this.next;
    }
  }

  @Immutable
  private static final class TerminalEntry<K, V> extends ImmutableEntry<K, V>
    implements RegularImmutableMap.LinkedEntry<K, V>
  {
    TerminalEntry(K paramK, V paramV)
    {
      super(paramV);
    }

    @Nullable
    public RegularImmutableMap.LinkedEntry<K, V> next()
    {
      return null;
    }
  }

  private static class Values<V> extends ImmutableCollection<V>
  {
    final RegularImmutableMap<?, V> map;

    Values(RegularImmutableMap<?, V> paramRegularImmutableMap)
    {
      this.map = paramRegularImmutableMap;
    }

    public boolean contains(Object paramObject)
    {
      return this.map.containsValue(paramObject);
    }

    boolean isPartialView()
    {
      return true;
    }

    public UnmodifiableIterator<V> iterator()
    {
      return new AbstractIndexedListIterator(this.map.entries.length)
      {
        protected V get(int paramAnonymousInt)
        {
          return RegularImmutableMap.Values.this.map.entries[paramAnonymousInt].getValue();
        }
      };
    }

    public int size()
    {
      return this.map.entries.length;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.RegularImmutableMap
 * JD-Core Version:    0.6.2
 */