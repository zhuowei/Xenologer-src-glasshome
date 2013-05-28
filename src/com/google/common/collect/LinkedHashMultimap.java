package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map.Entry;
import java.util.Set;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true, serializable=true)
public final class LinkedHashMultimap<K, V> extends AbstractSetMultimap<K, V>
{
  private static final int DEFAULT_VALUES_PER_KEY = 8;

  @GwtIncompatible("java serialization not supported")
  private static final long serialVersionUID;

  @VisibleForTesting
  transient int expectedValuesPerKey = 8;
  transient Collection<Map.Entry<K, V>> linkedEntries;

  private LinkedHashMultimap()
  {
    super(new LinkedHashMap());
    this.linkedEntries = Sets.newLinkedHashSet();
  }

  private LinkedHashMultimap(int paramInt1, int paramInt2)
  {
    super(new LinkedHashMap(paramInt1));
    if (paramInt2 >= 0);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool);
      this.expectedValuesPerKey = paramInt2;
      this.linkedEntries = new LinkedHashSet((int)Math.min(1073741824L, paramInt1 * paramInt2));
      return;
    }
  }

  private LinkedHashMultimap(Multimap<? extends K, ? extends V> paramMultimap)
  {
    super(new LinkedHashMap(Maps.capacity(paramMultimap.keySet().size())));
    this.linkedEntries = new LinkedHashSet(Maps.capacity(paramMultimap.size()));
    putAll(paramMultimap);
  }

  public static <K, V> LinkedHashMultimap<K, V> create()
  {
    return new LinkedHashMultimap();
  }

  public static <K, V> LinkedHashMultimap<K, V> create(int paramInt1, int paramInt2)
  {
    return new LinkedHashMultimap(paramInt1, paramInt2);
  }

  public static <K, V> LinkedHashMultimap<K, V> create(Multimap<? extends K, ? extends V> paramMultimap)
  {
    return new LinkedHashMultimap(paramMultimap);
  }

  @GwtIncompatible("java.io.ObjectInputStream")
  private void readObject(ObjectInputStream paramObjectInputStream)
    throws IOException, ClassNotFoundException
  {
    paramObjectInputStream.defaultReadObject();
    this.expectedValuesPerKey = paramObjectInputStream.readInt();
    int i = Serialization.readCount(paramObjectInputStream);
    setMap(new LinkedHashMap(Maps.capacity(i)));
    this.linkedEntries = new LinkedHashSet(i * this.expectedValuesPerKey);
    Serialization.populateMultimap(this, paramObjectInputStream, i);
    this.linkedEntries.clear();
    for (int j = 0; j < size(); j++)
    {
      Object localObject1 = paramObjectInputStream.readObject();
      Object localObject2 = paramObjectInputStream.readObject();
      this.linkedEntries.add(Maps.immutableEntry(localObject1, localObject2));
    }
  }

  @GwtIncompatible("java.io.ObjectOutputStream")
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
    throws IOException
  {
    paramObjectOutputStream.defaultWriteObject();
    paramObjectOutputStream.writeInt(this.expectedValuesPerKey);
    Serialization.writeMultimap(this, paramObjectOutputStream);
    Iterator localIterator = this.linkedEntries.iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      paramObjectOutputStream.writeObject(localEntry.getKey());
      paramObjectOutputStream.writeObject(localEntry.getValue());
    }
  }

  Collection<V> createCollection(@Nullable K paramK)
  {
    return new SetDecorator(paramK, createCollection());
  }

  Set<V> createCollection()
  {
    return new LinkedHashSet(Maps.capacity(this.expectedValuesPerKey));
  }

  Iterator<Map.Entry<K, V>> createEntryIterator()
  {
    return new Iterator()
    {
      Map.Entry<K, V> entry;

      public boolean hasNext()
      {
        return this.val$delegateIterator.hasNext();
      }

      public Map.Entry<K, V> next()
      {
        this.entry = ((Map.Entry)this.val$delegateIterator.next());
        return this.entry;
      }

      public void remove()
      {
        this.val$delegateIterator.remove();
        LinkedHashMultimap.this.remove(this.entry.getKey(), this.entry.getValue());
      }
    };
  }

  public Set<Map.Entry<K, V>> entries()
  {
    return super.entries();
  }

  public Set<V> replaceValues(@Nullable K paramK, Iterable<? extends V> paramIterable)
  {
    return super.replaceValues(paramK, paramIterable);
  }

  public Collection<V> values()
  {
    return super.values();
  }

  private class SetDecorator extends ForwardingSet<V>
  {
    final Set<V> delegate;
    final K key;

    SetDecorator(Set<V> arg2)
    {
      Object localObject2;
      this.delegate = localObject2;
      Object localObject1;
      this.key = localObject1;
    }

    public boolean add(@Nullable V paramV)
    {
      boolean bool = this.delegate.add(paramV);
      if (bool)
        LinkedHashMultimap.this.linkedEntries.add(createEntry(paramV));
      return bool;
    }

    public boolean addAll(Collection<? extends V> paramCollection)
    {
      boolean bool = this.delegate.addAll(paramCollection);
      if (bool)
        LinkedHashMultimap.this.linkedEntries.addAll(createEntries(delegate()));
      return bool;
    }

    public void clear()
    {
      Iterator localIterator = this.delegate.iterator();
      while (localIterator.hasNext())
      {
        Object localObject = localIterator.next();
        LinkedHashMultimap.this.linkedEntries.remove(createEntry(localObject));
      }
      this.delegate.clear();
    }

    <E> Collection<Map.Entry<K, E>> createEntries(Collection<E> paramCollection)
    {
      ArrayList localArrayList = Lists.newArrayListWithExpectedSize(paramCollection.size());
      Iterator localIterator = paramCollection.iterator();
      while (localIterator.hasNext())
        localArrayList.add(createEntry(localIterator.next()));
      return localArrayList;
    }

    <E> Map.Entry<K, E> createEntry(@Nullable E paramE)
    {
      return Maps.immutableEntry(this.key, paramE);
    }

    protected Set<V> delegate()
    {
      return this.delegate;
    }

    public Iterator<V> iterator()
    {
      return new Iterator()
      {
        V value;

        public boolean hasNext()
        {
          return this.val$delegateIterator.hasNext();
        }

        public V next()
        {
          this.value = this.val$delegateIterator.next();
          return this.value;
        }

        public void remove()
        {
          this.val$delegateIterator.remove();
          LinkedHashMultimap.this.linkedEntries.remove(LinkedHashMultimap.SetDecorator.this.createEntry(this.value));
        }
      };
    }

    public boolean remove(@Nullable Object paramObject)
    {
      boolean bool = this.delegate.remove(paramObject);
      if (bool)
        LinkedHashMultimap.this.linkedEntries.remove(createEntry(paramObject));
      return bool;
    }

    public boolean removeAll(Collection<?> paramCollection)
    {
      boolean bool = this.delegate.removeAll(paramCollection);
      if (bool)
        LinkedHashMultimap.this.linkedEntries.removeAll(createEntries(paramCollection));
      return bool;
    }

    public boolean retainAll(Collection<?> paramCollection)
    {
      boolean bool = false;
      Iterator localIterator = this.delegate.iterator();
      while (localIterator.hasNext())
      {
        Object localObject = localIterator.next();
        if (!paramCollection.contains(localObject))
        {
          localIterator.remove();
          LinkedHashMultimap.this.linkedEntries.remove(Maps.immutableEntry(this.key, localObject));
          bool = true;
        }
      }
      return bool;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.LinkedHashMultimap
 * JD-Core Version:    0.6.2
 */