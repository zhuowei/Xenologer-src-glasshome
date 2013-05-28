package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true)
public abstract class ImmutableMultimap<K, V>
  implements Multimap<K, V>, Serializable
{
  private static final long serialVersionUID;
  private transient ImmutableCollection<Map.Entry<K, V>> entries;
  private transient ImmutableMultiset<K> keys;
  final transient ImmutableMap<K, ? extends ImmutableCollection<V>> map;
  final transient int size;
  private transient ImmutableCollection<V> values;

  ImmutableMultimap(ImmutableMap<K, ? extends ImmutableCollection<V>> paramImmutableMap, int paramInt)
  {
    this.map = paramImmutableMap;
    this.size = paramInt;
  }

  public static <K, V> Builder<K, V> builder()
  {
    return new Builder();
  }

  public static <K, V> ImmutableMultimap<K, V> copyOf(Multimap<? extends K, ? extends V> paramMultimap)
  {
    if ((paramMultimap instanceof ImmutableMultimap))
    {
      ImmutableMultimap localImmutableMultimap = (ImmutableMultimap)paramMultimap;
      if (!localImmutableMultimap.isPartialView())
        return localImmutableMultimap;
    }
    return ImmutableListMultimap.copyOf(paramMultimap);
  }

  private ImmutableMultiset<K> createKeys()
  {
    ImmutableMultiset.Builder localBuilder = ImmutableMultiset.builder();
    Iterator localIterator = this.map.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localBuilder.addCopies(localEntry.getKey(), ((ImmutableCollection)localEntry.getValue()).size());
    }
    return localBuilder.build();
  }

  public static <K, V> ImmutableMultimap<K, V> of()
  {
    return ImmutableListMultimap.of();
  }

  public static <K, V> ImmutableMultimap<K, V> of(K paramK, V paramV)
  {
    return ImmutableListMultimap.of(paramK, paramV);
  }

  public static <K, V> ImmutableMultimap<K, V> of(K paramK1, V paramV1, K paramK2, V paramV2)
  {
    return ImmutableListMultimap.of(paramK1, paramV1, paramK2, paramV2);
  }

  public static <K, V> ImmutableMultimap<K, V> of(K paramK1, V paramV1, K paramK2, V paramV2, K paramK3, V paramV3)
  {
    return ImmutableListMultimap.of(paramK1, paramV1, paramK2, paramV2, paramK3, paramV3);
  }

  public static <K, V> ImmutableMultimap<K, V> of(K paramK1, V paramV1, K paramK2, V paramV2, K paramK3, V paramV3, K paramK4, V paramV4)
  {
    return ImmutableListMultimap.of(paramK1, paramV1, paramK2, paramV2, paramK3, paramV3, paramK4, paramV4);
  }

  public static <K, V> ImmutableMultimap<K, V> of(K paramK1, V paramV1, K paramK2, V paramV2, K paramK3, V paramV3, K paramK4, V paramV4, K paramK5, V paramV5)
  {
    return ImmutableListMultimap.of(paramK1, paramV1, paramK2, paramV2, paramK3, paramV3, paramK4, paramV4, paramK5, paramV5);
  }

  public ImmutableMap<K, Collection<V>> asMap()
  {
    return this.map;
  }

  public void clear()
  {
    throw new UnsupportedOperationException();
  }

  public boolean containsEntry(@Nullable Object paramObject1, @Nullable Object paramObject2)
  {
    Collection localCollection = (Collection)this.map.get(paramObject1);
    return (localCollection != null) && (localCollection.contains(paramObject2));
  }

  public boolean containsKey(@Nullable Object paramObject)
  {
    return this.map.containsKey(paramObject);
  }

  public boolean containsValue(@Nullable Object paramObject)
  {
    Iterator localIterator = this.map.values().iterator();
    while (localIterator.hasNext())
      if (((ImmutableCollection)localIterator.next()).contains(paramObject))
        return true;
    return false;
  }

  public ImmutableCollection<Map.Entry<K, V>> entries()
  {
    Object localObject = this.entries;
    if (localObject == null)
    {
      localObject = new EntryCollection(this);
      this.entries = ((ImmutableCollection)localObject);
    }
    return localObject;
  }

  public boolean equals(@Nullable Object paramObject)
  {
    if ((paramObject instanceof Multimap))
    {
      Multimap localMultimap = (Multimap)paramObject;
      return this.map.equals(localMultimap.asMap());
    }
    return false;
  }

  public abstract ImmutableCollection<V> get(K paramK);

  public int hashCode()
  {
    return this.map.hashCode();
  }

  @Beta
  public abstract ImmutableMultimap<V, K> inverse();

  public boolean isEmpty()
  {
    return this.size == 0;
  }

  boolean isPartialView()
  {
    return this.map.isPartialView();
  }

  public ImmutableSet<K> keySet()
  {
    return this.map.keySet();
  }

  public ImmutableMultiset<K> keys()
  {
    ImmutableMultiset localImmutableMultiset = this.keys;
    if (localImmutableMultiset == null)
    {
      localImmutableMultiset = createKeys();
      this.keys = localImmutableMultiset;
    }
    return localImmutableMultiset;
  }

  public boolean put(K paramK, V paramV)
  {
    throw new UnsupportedOperationException();
  }

  public boolean putAll(Multimap<? extends K, ? extends V> paramMultimap)
  {
    throw new UnsupportedOperationException();
  }

  public boolean putAll(K paramK, Iterable<? extends V> paramIterable)
  {
    throw new UnsupportedOperationException();
  }

  public boolean remove(Object paramObject1, Object paramObject2)
  {
    throw new UnsupportedOperationException();
  }

  public ImmutableCollection<V> removeAll(Object paramObject)
  {
    throw new UnsupportedOperationException();
  }

  public ImmutableCollection<V> replaceValues(K paramK, Iterable<? extends V> paramIterable)
  {
    throw new UnsupportedOperationException();
  }

  public int size()
  {
    return this.size;
  }

  public String toString()
  {
    return this.map.toString();
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

  public static class Builder<K, V>
  {
    Multimap<K, V> builderMultimap = new ImmutableMultimap.BuilderMultimap();
    Comparator<? super V> valueComparator;

    public ImmutableMultimap<K, V> build()
    {
      if (this.valueComparator != null)
      {
        Iterator localIterator = this.builderMultimap.asMap().values().iterator();
        while (localIterator.hasNext())
          Collections.sort((List)localIterator.next(), this.valueComparator);
      }
      return ImmutableMultimap.copyOf(this.builderMultimap);
    }

    @Beta
    public Builder<K, V> orderKeysBy(Comparator<? super K> paramComparator)
    {
      this.builderMultimap = new ImmutableMultimap.SortedKeyBuilderMultimap((Comparator)Preconditions.checkNotNull(paramComparator), this.builderMultimap);
      return this;
    }

    @Beta
    public Builder<K, V> orderValuesBy(Comparator<? super V> paramComparator)
    {
      this.valueComparator = ((Comparator)Preconditions.checkNotNull(paramComparator));
      return this;
    }

    public Builder<K, V> put(K paramK, V paramV)
    {
      this.builderMultimap.put(Preconditions.checkNotNull(paramK), Preconditions.checkNotNull(paramV));
      return this;
    }

    public Builder<K, V> put(Map.Entry<? extends K, ? extends V> paramEntry)
    {
      this.builderMultimap.put(Preconditions.checkNotNull(paramEntry.getKey()), Preconditions.checkNotNull(paramEntry.getValue()));
      return this;
    }

    public Builder<K, V> putAll(Multimap<? extends K, ? extends V> paramMultimap)
    {
      Iterator localIterator = paramMultimap.asMap().entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        putAll(localEntry.getKey(), (Iterable)localEntry.getValue());
      }
      return this;
    }

    public Builder<K, V> putAll(K paramK, Iterable<? extends V> paramIterable)
    {
      Collection localCollection = this.builderMultimap.get(Preconditions.checkNotNull(paramK));
      Iterator localIterator = paramIterable.iterator();
      while (localIterator.hasNext())
        localCollection.add(Preconditions.checkNotNull(localIterator.next()));
      return this;
    }

    public Builder<K, V> putAll(K paramK, V[] paramArrayOfV)
    {
      return putAll(paramK, Arrays.asList(paramArrayOfV));
    }
  }

  private static class BuilderMultimap<K, V> extends AbstractMultimap<K, V>
  {
    private static final long serialVersionUID;

    BuilderMultimap()
    {
      super();
    }

    Collection<V> createCollection()
    {
      return Lists.newArrayList();
    }
  }

  private static class EntryCollection<K, V> extends ImmutableCollection<Map.Entry<K, V>>
  {
    private static final long serialVersionUID;
    final ImmutableMultimap<K, V> multimap;

    EntryCollection(ImmutableMultimap<K, V> paramImmutableMultimap)
    {
      this.multimap = paramImmutableMultimap;
    }

    public boolean contains(Object paramObject)
    {
      if ((paramObject instanceof Map.Entry))
      {
        Map.Entry localEntry = (Map.Entry)paramObject;
        return this.multimap.containsEntry(localEntry.getKey(), localEntry.getValue());
      }
      return false;
    }

    boolean isPartialView()
    {
      return this.multimap.isPartialView();
    }

    public UnmodifiableIterator<Map.Entry<K, V>> iterator()
    {
      return new UnmodifiableIterator()
      {
        K key;
        Iterator<V> valueIterator;

        public boolean hasNext()
        {
          return ((this.key != null) && (this.valueIterator.hasNext())) || (this.val$mapIterator.hasNext());
        }

        public Map.Entry<K, V> next()
        {
          if ((this.key == null) || (!this.valueIterator.hasNext()))
          {
            Map.Entry localEntry = (Map.Entry)this.val$mapIterator.next();
            this.key = localEntry.getKey();
            this.valueIterator = ((ImmutableCollection)localEntry.getValue()).iterator();
          }
          return Maps.immutableEntry(this.key, this.valueIterator.next());
        }
      };
    }

    public int size()
    {
      return this.multimap.size();
    }
  }

  @GwtIncompatible("java serialization is not supported")
  static class FieldSettersHolder
  {
    static final Serialization.FieldSetter<ImmutableMultimap> MAP_FIELD_SETTER = Serialization.getFieldSetter(ImmutableMultimap.class, "map");
    static final Serialization.FieldSetter<ImmutableMultimap> SIZE_FIELD_SETTER = Serialization.getFieldSetter(ImmutableMultimap.class, "size");
  }

  private static class SortedKeyBuilderMultimap<K, V> extends AbstractMultimap<K, V>
  {
    private static final long serialVersionUID;

    SortedKeyBuilderMultimap(Comparator<? super K> paramComparator, Multimap<K, V> paramMultimap)
    {
      super();
      putAll(paramMultimap);
    }

    Collection<V> createCollection()
    {
      return Lists.newArrayList();
    }
  }

  private static class Values<V> extends ImmutableCollection<V>
  {
    private static final long serialVersionUID;
    final ImmutableMultimap<?, V> multimap;

    Values(ImmutableMultimap<?, V> paramImmutableMultimap)
    {
      this.multimap = paramImmutableMultimap;
    }

    boolean isPartialView()
    {
      return true;
    }

    public UnmodifiableIterator<V> iterator()
    {
      return new UnmodifiableIterator()
      {
        public boolean hasNext()
        {
          return this.val$entryIterator.hasNext();
        }

        public V next()
        {
          return ((Map.Entry)this.val$entryIterator.next()).getValue();
        }
      };
    }

    public int size()
    {
      return this.multimap.size();
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ImmutableMultimap
 * JD-Core Version:    0.6.2
 */