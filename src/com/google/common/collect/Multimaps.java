package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Function;
import com.google.common.base.Joiner;
import com.google.common.base.Joiner.MapJoiner;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.base.Supplier;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedSet;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true)
public final class Multimaps
{
  @Beta
  @GwtIncompatible("untested")
  public static <K, V> Multimap<K, V> filterEntries(Multimap<K, V> paramMultimap, Predicate<? super Map.Entry<K, V>> paramPredicate)
  {
    Preconditions.checkNotNull(paramPredicate);
    if ((paramMultimap instanceof FilteredMultimap))
      return filterFiltered((FilteredMultimap)paramMultimap, paramPredicate);
    return new FilteredMultimap((Multimap)Preconditions.checkNotNull(paramMultimap), paramPredicate);
  }

  private static <K, V> Multimap<K, V> filterFiltered(FilteredMultimap<K, V> paramFilteredMultimap, Predicate<? super Map.Entry<K, V>> paramPredicate)
  {
    Predicate localPredicate = Predicates.and(paramFilteredMultimap.predicate, paramPredicate);
    return new FilteredMultimap(paramFilteredMultimap.unfiltered, localPredicate);
  }

  @Beta
  @GwtIncompatible("untested")
  public static <K, V> Multimap<K, V> filterKeys(Multimap<K, V> paramMultimap, Predicate<? super K> paramPredicate)
  {
    Preconditions.checkNotNull(paramPredicate);
    return filterEntries(paramMultimap, new Predicate()
    {
      public boolean apply(Map.Entry<K, V> paramAnonymousEntry)
      {
        return this.val$keyPredicate.apply(paramAnonymousEntry.getKey());
      }
    });
  }

  @Beta
  @GwtIncompatible("untested")
  public static <K, V> Multimap<K, V> filterValues(Multimap<K, V> paramMultimap, Predicate<? super V> paramPredicate)
  {
    Preconditions.checkNotNull(paramPredicate);
    return filterEntries(paramMultimap, new Predicate()
    {
      public boolean apply(Map.Entry<K, V> paramAnonymousEntry)
      {
        return this.val$valuePredicate.apply(paramAnonymousEntry.getValue());
      }
    });
  }

  public static <K, V> SetMultimap<K, V> forMap(Map<K, V> paramMap)
  {
    return new MapMultimap(paramMap);
  }

  public static <K, V> ImmutableListMultimap<K, V> index(Iterable<V> paramIterable, Function<? super V, K> paramFunction)
  {
    return index(paramIterable.iterator(), paramFunction);
  }

  @Deprecated
  @Beta
  public static <K, V, I,  extends Iterable<V>,  extends Iterator<V>> ImmutableListMultimap<K, V> index(I paramI, Function<? super V, K> paramFunction)
  {
    return index((Iterable)Preconditions.checkNotNull(paramI), paramFunction);
  }

  public static <K, V> ImmutableListMultimap<K, V> index(Iterator<V> paramIterator, Function<? super V, K> paramFunction)
  {
    Preconditions.checkNotNull(paramFunction);
    ImmutableListMultimap.Builder localBuilder = ImmutableListMultimap.builder();
    while (paramIterator.hasNext())
    {
      Object localObject = paramIterator.next();
      Preconditions.checkNotNull(localObject, paramIterator);
      localBuilder.put(paramFunction.apply(localObject), localObject);
    }
    return localBuilder.build();
  }

  public static <K, V, M extends Multimap<K, V>> M invertFrom(Multimap<? extends V, ? extends K> paramMultimap, M paramM)
  {
    Preconditions.checkNotNull(paramM);
    Iterator localIterator = paramMultimap.entries().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      paramM.put(localEntry.getValue(), localEntry.getKey());
    }
    return paramM;
  }

  public static <K, V> ListMultimap<K, V> newListMultimap(Map<K, Collection<V>> paramMap, Supplier<? extends List<V>> paramSupplier)
  {
    return new CustomListMultimap(paramMap, paramSupplier);
  }

  public static <K, V> Multimap<K, V> newMultimap(Map<K, Collection<V>> paramMap, Supplier<? extends Collection<V>> paramSupplier)
  {
    return new CustomMultimap(paramMap, paramSupplier);
  }

  public static <K, V> SetMultimap<K, V> newSetMultimap(Map<K, Collection<V>> paramMap, Supplier<? extends Set<V>> paramSupplier)
  {
    return new CustomSetMultimap(paramMap, paramSupplier);
  }

  public static <K, V> SortedSetMultimap<K, V> newSortedSetMultimap(Map<K, Collection<V>> paramMap, Supplier<? extends SortedSet<V>> paramSupplier)
  {
    return new CustomSortedSetMultimap(paramMap, paramSupplier);
  }

  public static <K, V> ListMultimap<K, V> synchronizedListMultimap(ListMultimap<K, V> paramListMultimap)
  {
    return Synchronized.listMultimap(paramListMultimap, null);
  }

  public static <K, V> Multimap<K, V> synchronizedMultimap(Multimap<K, V> paramMultimap)
  {
    return Synchronized.multimap(paramMultimap, null);
  }

  public static <K, V> SetMultimap<K, V> synchronizedSetMultimap(SetMultimap<K, V> paramSetMultimap)
  {
    return Synchronized.setMultimap(paramSetMultimap, null);
  }

  public static <K, V> SortedSetMultimap<K, V> synchronizedSortedSetMultimap(SortedSetMultimap<K, V> paramSortedSetMultimap)
  {
    return Synchronized.sortedSetMultimap(paramSortedSetMultimap, null);
  }

  @Beta
  public static <K, V1, V2> ListMultimap<K, V2> transformEntries(ListMultimap<K, V1> paramListMultimap, Maps.EntryTransformer<? super K, ? super V1, V2> paramEntryTransformer)
  {
    return new TransformedEntriesListMultimap(paramListMultimap, paramEntryTransformer);
  }

  @Beta
  public static <K, V1, V2> Multimap<K, V2> transformEntries(Multimap<K, V1> paramMultimap, Maps.EntryTransformer<? super K, ? super V1, V2> paramEntryTransformer)
  {
    return new TransformedEntriesMultimap(paramMultimap, paramEntryTransformer);
  }

  @Beta
  public static <K, V1, V2> ListMultimap<K, V2> transformValues(ListMultimap<K, V1> paramListMultimap, Function<? super V1, V2> paramFunction)
  {
    Preconditions.checkNotNull(paramFunction);
    return transformEntries(paramListMultimap, new Maps.EntryTransformer()
    {
      public V2 transformEntry(K paramAnonymousK, V1 paramAnonymousV1)
      {
        return this.val$function.apply(paramAnonymousV1);
      }
    });
  }

  @Beta
  public static <K, V1, V2> Multimap<K, V2> transformValues(Multimap<K, V1> paramMultimap, Function<? super V1, V2> paramFunction)
  {
    Preconditions.checkNotNull(paramFunction);
    return transformEntries(paramMultimap, new Maps.EntryTransformer()
    {
      public V2 transformEntry(K paramAnonymousK, V1 paramAnonymousV1)
      {
        return this.val$function.apply(paramAnonymousV1);
      }
    });
  }

  private static <K, V> Set<Map.Entry<K, Collection<V>>> unmodifiableAsMapEntries(Set<Map.Entry<K, Collection<V>>> paramSet)
  {
    return new UnmodifiableAsMapEntries(Collections.unmodifiableSet(paramSet));
  }

  private static <K, V> Map.Entry<K, Collection<V>> unmodifiableAsMapEntry(Map.Entry<K, Collection<V>> paramEntry)
  {
    Preconditions.checkNotNull(paramEntry);
    return new AbstractMapEntry()
    {
      public K getKey()
      {
        return this.val$entry.getKey();
      }

      public Collection<V> getValue()
      {
        return Multimaps.unmodifiableValueCollection((Collection)this.val$entry.getValue());
      }
    };
  }

  private static <K, V> Collection<Map.Entry<K, V>> unmodifiableEntries(Collection<Map.Entry<K, V>> paramCollection)
  {
    if ((paramCollection instanceof Set))
      return Maps.unmodifiableEntrySet((Set)paramCollection);
    return new Maps.UnmodifiableEntries(Collections.unmodifiableCollection(paramCollection));
  }

  @Deprecated
  public static <K, V> ListMultimap<K, V> unmodifiableListMultimap(ImmutableListMultimap<K, V> paramImmutableListMultimap)
  {
    return (ListMultimap)Preconditions.checkNotNull(paramImmutableListMultimap);
  }

  public static <K, V> ListMultimap<K, V> unmodifiableListMultimap(ListMultimap<K, V> paramListMultimap)
  {
    if (((paramListMultimap instanceof UnmodifiableListMultimap)) || ((paramListMultimap instanceof ImmutableListMultimap)))
      return paramListMultimap;
    return new UnmodifiableListMultimap(paramListMultimap);
  }

  @Deprecated
  public static <K, V> Multimap<K, V> unmodifiableMultimap(ImmutableMultimap<K, V> paramImmutableMultimap)
  {
    return (Multimap)Preconditions.checkNotNull(paramImmutableMultimap);
  }

  public static <K, V> Multimap<K, V> unmodifiableMultimap(Multimap<K, V> paramMultimap)
  {
    if (((paramMultimap instanceof UnmodifiableMultimap)) || ((paramMultimap instanceof ImmutableMultimap)))
      return paramMultimap;
    return new UnmodifiableMultimap(paramMultimap);
  }

  @Deprecated
  public static <K, V> SetMultimap<K, V> unmodifiableSetMultimap(ImmutableSetMultimap<K, V> paramImmutableSetMultimap)
  {
    return (SetMultimap)Preconditions.checkNotNull(paramImmutableSetMultimap);
  }

  public static <K, V> SetMultimap<K, V> unmodifiableSetMultimap(SetMultimap<K, V> paramSetMultimap)
  {
    if (((paramSetMultimap instanceof UnmodifiableSetMultimap)) || ((paramSetMultimap instanceof ImmutableSetMultimap)))
      return paramSetMultimap;
    return new UnmodifiableSetMultimap(paramSetMultimap);
  }

  public static <K, V> SortedSetMultimap<K, V> unmodifiableSortedSetMultimap(SortedSetMultimap<K, V> paramSortedSetMultimap)
  {
    if ((paramSortedSetMultimap instanceof UnmodifiableSortedSetMultimap))
      return paramSortedSetMultimap;
    return new UnmodifiableSortedSetMultimap(paramSortedSetMultimap);
  }

  private static <V> Collection<V> unmodifiableValueCollection(Collection<V> paramCollection)
  {
    if ((paramCollection instanceof SortedSet))
      return Collections.unmodifiableSortedSet((SortedSet)paramCollection);
    if ((paramCollection instanceof Set))
      return Collections.unmodifiableSet((Set)paramCollection);
    if ((paramCollection instanceof List))
      return Collections.unmodifiableList((List)paramCollection);
    return Collections.unmodifiableCollection(paramCollection);
  }

  static abstract class AsMap<K, V> extends Maps.ImprovedAbstractMap<K, Collection<V>>
  {
    public void clear()
    {
      multimap().clear();
    }

    public boolean containsKey(Object paramObject)
    {
      return multimap().containsKey(paramObject);
    }

    protected Set<Map.Entry<K, Collection<V>>> createEntrySet()
    {
      return new EntrySet();
    }

    abstract Iterator<Map.Entry<K, Collection<V>>> entryIterator();

    public Collection<V> get(Object paramObject)
    {
      if (containsKey(paramObject))
        return multimap().get(paramObject);
      return null;
    }

    public boolean isEmpty()
    {
      return multimap().isEmpty();
    }

    public Set<K> keySet()
    {
      return multimap().keySet();
    }

    abstract Multimap<K, V> multimap();

    public Collection<V> remove(Object paramObject)
    {
      if (containsKey(paramObject))
        return multimap().removeAll(paramObject);
      return null;
    }

    void removeValuesForKey(Object paramObject)
    {
      multimap().removeAll(paramObject);
    }

    public abstract int size();

    class EntrySet extends Maps.EntrySet<K, Collection<V>>
    {
      EntrySet()
      {
      }

      public Iterator<Map.Entry<K, Collection<V>>> iterator()
      {
        return Multimaps.AsMap.this.entryIterator();
      }

      Map<K, Collection<V>> map()
      {
        return Multimaps.AsMap.this;
      }

      public boolean remove(Object paramObject)
      {
        if (!contains(paramObject))
          return false;
        Map.Entry localEntry = (Map.Entry)paramObject;
        Multimaps.AsMap.this.removeValuesForKey(localEntry.getKey());
        return true;
      }
    }
  }

  private static class CustomListMultimap<K, V> extends AbstractListMultimap<K, V>
  {

    @GwtIncompatible("java serialization not supported")
    private static final long serialVersionUID;
    transient Supplier<? extends List<V>> factory;

    CustomListMultimap(Map<K, Collection<V>> paramMap, Supplier<? extends List<V>> paramSupplier)
    {
      super();
      this.factory = ((Supplier)Preconditions.checkNotNull(paramSupplier));
    }

    @GwtIncompatible("java.io.ObjectInputStream")
    private void readObject(ObjectInputStream paramObjectInputStream)
      throws IOException, ClassNotFoundException
    {
      paramObjectInputStream.defaultReadObject();
      this.factory = ((Supplier)paramObjectInputStream.readObject());
      setMap((Map)paramObjectInputStream.readObject());
    }

    @GwtIncompatible("java.io.ObjectOutputStream")
    private void writeObject(ObjectOutputStream paramObjectOutputStream)
      throws IOException
    {
      paramObjectOutputStream.defaultWriteObject();
      paramObjectOutputStream.writeObject(this.factory);
      paramObjectOutputStream.writeObject(backingMap());
    }

    protected List<V> createCollection()
    {
      return (List)this.factory.get();
    }
  }

  private static class CustomMultimap<K, V> extends AbstractMultimap<K, V>
  {

    @GwtIncompatible("java serialization not supported")
    private static final long serialVersionUID;
    transient Supplier<? extends Collection<V>> factory;

    CustomMultimap(Map<K, Collection<V>> paramMap, Supplier<? extends Collection<V>> paramSupplier)
    {
      super();
      this.factory = ((Supplier)Preconditions.checkNotNull(paramSupplier));
    }

    @GwtIncompatible("java.io.ObjectInputStream")
    private void readObject(ObjectInputStream paramObjectInputStream)
      throws IOException, ClassNotFoundException
    {
      paramObjectInputStream.defaultReadObject();
      this.factory = ((Supplier)paramObjectInputStream.readObject());
      setMap((Map)paramObjectInputStream.readObject());
    }

    @GwtIncompatible("java.io.ObjectOutputStream")
    private void writeObject(ObjectOutputStream paramObjectOutputStream)
      throws IOException
    {
      paramObjectOutputStream.defaultWriteObject();
      paramObjectOutputStream.writeObject(this.factory);
      paramObjectOutputStream.writeObject(backingMap());
    }

    protected Collection<V> createCollection()
    {
      return (Collection)this.factory.get();
    }
  }

  private static class CustomSetMultimap<K, V> extends AbstractSetMultimap<K, V>
  {

    @GwtIncompatible("not needed in emulated source")
    private static final long serialVersionUID;
    transient Supplier<? extends Set<V>> factory;

    CustomSetMultimap(Map<K, Collection<V>> paramMap, Supplier<? extends Set<V>> paramSupplier)
    {
      super();
      this.factory = ((Supplier)Preconditions.checkNotNull(paramSupplier));
    }

    @GwtIncompatible("java.io.ObjectInputStream")
    private void readObject(ObjectInputStream paramObjectInputStream)
      throws IOException, ClassNotFoundException
    {
      paramObjectInputStream.defaultReadObject();
      this.factory = ((Supplier)paramObjectInputStream.readObject());
      setMap((Map)paramObjectInputStream.readObject());
    }

    @GwtIncompatible("java.io.ObjectOutputStream")
    private void writeObject(ObjectOutputStream paramObjectOutputStream)
      throws IOException
    {
      paramObjectOutputStream.defaultWriteObject();
      paramObjectOutputStream.writeObject(this.factory);
      paramObjectOutputStream.writeObject(backingMap());
    }

    protected Set<V> createCollection()
    {
      return (Set)this.factory.get();
    }
  }

  private static class CustomSortedSetMultimap<K, V> extends AbstractSortedSetMultimap<K, V>
  {

    @GwtIncompatible("not needed in emulated source")
    private static final long serialVersionUID;
    transient Supplier<? extends SortedSet<V>> factory;
    transient Comparator<? super V> valueComparator;

    CustomSortedSetMultimap(Map<K, Collection<V>> paramMap, Supplier<? extends SortedSet<V>> paramSupplier)
    {
      super();
      this.factory = ((Supplier)Preconditions.checkNotNull(paramSupplier));
      this.valueComparator = ((SortedSet)paramSupplier.get()).comparator();
    }

    @GwtIncompatible("java.io.ObjectInputStream")
    private void readObject(ObjectInputStream paramObjectInputStream)
      throws IOException, ClassNotFoundException
    {
      paramObjectInputStream.defaultReadObject();
      this.factory = ((Supplier)paramObjectInputStream.readObject());
      this.valueComparator = ((SortedSet)this.factory.get()).comparator();
      setMap((Map)paramObjectInputStream.readObject());
    }

    @GwtIncompatible("java.io.ObjectOutputStream")
    private void writeObject(ObjectOutputStream paramObjectOutputStream)
      throws IOException
    {
      paramObjectOutputStream.defaultWriteObject();
      paramObjectOutputStream.writeObject(this.factory);
      paramObjectOutputStream.writeObject(backingMap());
    }

    protected SortedSet<V> createCollection()
    {
      return (SortedSet)this.factory.get();
    }

    public Comparator<? super V> valueComparator()
    {
      return this.valueComparator;
    }
  }

  static abstract class Entries<K, V> extends AbstractCollection<Map.Entry<K, V>>
  {
    public void clear()
    {
      multimap().clear();
    }

    public boolean contains(@Nullable Object paramObject)
    {
      if ((paramObject instanceof Map.Entry))
      {
        Map.Entry localEntry = (Map.Entry)paramObject;
        return multimap().containsEntry(localEntry.getKey(), localEntry.getValue());
      }
      return false;
    }

    abstract Multimap<K, V> multimap();

    public boolean remove(@Nullable Object paramObject)
    {
      if ((paramObject instanceof Map.Entry))
      {
        Map.Entry localEntry = (Map.Entry)paramObject;
        return multimap().remove(localEntry.getKey(), localEntry.getValue());
      }
      return false;
    }

    public int size()
    {
      return multimap().size();
    }
  }

  static abstract class EntrySet<K, V> extends Multimaps.Entries<K, V>
    implements Set<Map.Entry<K, V>>
  {
    public boolean equals(@Nullable Object paramObject)
    {
      return Sets.equalsImpl(this, paramObject);
    }

    public int hashCode()
    {
      return Sets.hashCodeImpl(this);
    }
  }

  private static class FilteredMultimap<K, V>
    implements Multimap<K, V>
  {
    static final Predicate<Collection<?>> NOT_EMPTY = new Predicate()
    {
      public boolean apply(Collection<?> paramAnonymousCollection)
      {
        return !paramAnonymousCollection.isEmpty();
      }
    };
    Map<K, Collection<V>> asMap;
    Collection<Map.Entry<K, V>> entries;
    AbstractMultiset<K> keys;
    final Predicate<? super Map.Entry<K, V>> predicate;
    final Multimap<K, V> unfiltered;
    Collection<V> values;

    FilteredMultimap(Multimap<K, V> paramMultimap, Predicate<? super Map.Entry<K, V>> paramPredicate)
    {
      this.unfiltered = paramMultimap;
      this.predicate = paramPredicate;
    }

    public Map<K, Collection<V>> asMap()
    {
      if (this.asMap == null)
      {
        Map localMap = createAsMap();
        this.asMap = localMap;
        return localMap;
      }
      return this.asMap;
    }

    public void clear()
    {
      entries().clear();
    }

    public boolean containsEntry(Object paramObject1, Object paramObject2)
    {
      return (this.unfiltered.containsEntry(paramObject1, paramObject2)) && (satisfiesPredicate(paramObject1, paramObject2));
    }

    public boolean containsKey(Object paramObject)
    {
      return asMap().containsKey(paramObject);
    }

    public boolean containsValue(Object paramObject)
    {
      return values().contains(paramObject);
    }

    Map<K, Collection<V>> createAsMap()
    {
      Maps.EntryTransformer local2 = new Maps.EntryTransformer()
      {
        public Collection<V> transformEntry(K paramAnonymousK, Collection<V> paramAnonymousCollection)
        {
          return Multimaps.FilteredMultimap.this.filterCollection(paramAnonymousCollection, new Multimaps.FilteredMultimap.ValuePredicate(Multimaps.FilteredMultimap.this, paramAnonymousK));
        }
      };
      return new AsMap(Maps.filterValues(Maps.transformEntries(this.unfiltered.asMap(), local2), NOT_EMPTY));
    }

    public Collection<Map.Entry<K, V>> entries()
    {
      if (this.entries == null)
      {
        Collection localCollection = Collections2.filter(this.unfiltered.entries(), this.predicate);
        this.entries = localCollection;
        return localCollection;
      }
      return this.entries;
    }

    public boolean equals(@Nullable Object paramObject)
    {
      if (paramObject == this)
        return true;
      if ((paramObject instanceof Multimap))
      {
        Multimap localMultimap = (Multimap)paramObject;
        return asMap().equals(localMultimap.asMap());
      }
      return false;
    }

    Collection<V> filterCollection(Collection<V> paramCollection, Predicate<V> paramPredicate)
    {
      if ((paramCollection instanceof Set))
        return Sets.filter((Set)paramCollection, paramPredicate);
      return Collections2.filter(paramCollection, paramPredicate);
    }

    public Collection<V> get(K paramK)
    {
      return filterCollection(this.unfiltered.get(paramK), new ValuePredicate(paramK));
    }

    public int hashCode()
    {
      return asMap().hashCode();
    }

    public boolean isEmpty()
    {
      return entries().isEmpty();
    }

    public Set<K> keySet()
    {
      return asMap().keySet();
    }

    public Multiset<K> keys()
    {
      if (this.keys == null)
      {
        Keys localKeys = new Keys();
        this.keys = localKeys;
        return localKeys;
      }
      return this.keys;
    }

    public boolean put(K paramK, V paramV)
    {
      Preconditions.checkArgument(satisfiesPredicate(paramK, paramV));
      return this.unfiltered.put(paramK, paramV);
    }

    public boolean putAll(Multimap<? extends K, ? extends V> paramMultimap)
    {
      Iterator localIterator = paramMultimap.entries().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        Preconditions.checkArgument(satisfiesPredicate(localEntry.getKey(), localEntry.getValue()));
      }
      return this.unfiltered.putAll(paramMultimap);
    }

    public boolean putAll(K paramK, Iterable<? extends V> paramIterable)
    {
      Iterator localIterator = paramIterable.iterator();
      while (localIterator.hasNext())
        Preconditions.checkArgument(satisfiesPredicate(paramK, localIterator.next()));
      return this.unfiltered.putAll(paramK, paramIterable);
    }

    public boolean remove(Object paramObject1, Object paramObject2)
    {
      if (containsEntry(paramObject1, paramObject2))
        return this.unfiltered.remove(paramObject1, paramObject2);
      return false;
    }

    public Collection<V> removeAll(Object paramObject)
    {
      ArrayList localArrayList = Lists.newArrayList();
      Collection localCollection = (Collection)this.unfiltered.asMap().get(paramObject);
      if (localCollection != null)
      {
        Iterator localIterator = localCollection.iterator();
        while (localIterator.hasNext())
        {
          Object localObject = localIterator.next();
          if (satisfiesPredicate(paramObject, localObject))
          {
            localArrayList.add(localObject);
            localIterator.remove();
          }
        }
      }
      if ((this.unfiltered instanceof SetMultimap))
        return Collections.unmodifiableSet(Sets.newLinkedHashSet(localArrayList));
      return Collections.unmodifiableList(localArrayList);
    }

    boolean removeEntriesIf(Predicate<Map.Entry<K, Collection<V>>> paramPredicate)
    {
      Iterator localIterator = this.unfiltered.asMap().entrySet().iterator();
      boolean bool = false;
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        Object localObject = localEntry.getKey();
        Collection localCollection1 = (Collection)localEntry.getValue();
        ValuePredicate localValuePredicate = new ValuePredicate(localObject);
        Collection localCollection2 = filterCollection(localCollection1, localValuePredicate);
        if ((paramPredicate.apply(Maps.immutableEntry(localObject, localCollection2))) && (!localCollection2.isEmpty()))
        {
          bool = true;
          if (Iterables.all(localCollection1, localValuePredicate))
            localIterator.remove();
          else
            localCollection2.clear();
        }
      }
      return bool;
    }

    public Collection<V> replaceValues(K paramK, Iterable<? extends V> paramIterable)
    {
      Iterator localIterator = paramIterable.iterator();
      while (localIterator.hasNext())
        Preconditions.checkArgument(satisfiesPredicate(paramK, localIterator.next()));
      Collection localCollection = removeAll(paramK);
      this.unfiltered.putAll(paramK, paramIterable);
      return localCollection;
    }

    boolean satisfiesPredicate(Object paramObject1, Object paramObject2)
    {
      return this.predicate.apply(Maps.immutableEntry(paramObject1, paramObject2));
    }

    public int size()
    {
      return entries().size();
    }

    public String toString()
    {
      return asMap().toString();
    }

    public Collection<V> values()
    {
      if (this.values == null)
      {
        Values localValues = new Values();
        this.values = localValues;
        return localValues;
      }
      return this.values;
    }

    class AsMap extends ForwardingMap<K, Collection<V>>
    {
      Multimaps.FilteredMultimap<K, V>.AsMap.Values asMapValues;
      final Map<K, Collection<V>> delegate;
      Multimaps.FilteredMultimap<K, V>.AsMap.EntrySet entrySet;
      Set<K> keySet;

      AsMap()
      {
        Object localObject;
        this.delegate = localObject;
      }

      public void clear()
      {
        Multimaps.FilteredMultimap.this.clear();
      }

      protected Map<K, Collection<V>> delegate()
      {
        return this.delegate;
      }

      public Set<Map.Entry<K, Collection<V>>> entrySet()
      {
        if (this.entrySet == null)
        {
          EntrySet localEntrySet = new EntrySet(super.entrySet());
          this.entrySet = localEntrySet;
          return localEntrySet;
        }
        return this.entrySet;
      }

      public Set<K> keySet()
      {
        if (this.keySet == null)
        {
          KeySet localKeySet = new KeySet();
          this.keySet = localKeySet;
          return localKeySet;
        }
        return this.keySet;
      }

      public Collection<V> remove(Object paramObject)
      {
        Collection localCollection = Multimaps.FilteredMultimap.this.removeAll(paramObject);
        if (localCollection.isEmpty())
          localCollection = null;
        return localCollection;
      }

      public Collection<Collection<V>> values()
      {
        if (this.asMapValues == null)
        {
          Values localValues = new Values();
          this.asMapValues = localValues;
          return localValues;
        }
        return this.asMapValues;
      }

      class EntrySet extends Maps.EntrySet<K, Collection<V>>
      {
        Set<Map.Entry<K, Collection<V>>> delegateEntries;

        public EntrySet()
        {
          Object localObject;
          this.delegateEntries = localObject;
        }

        public Iterator<Map.Entry<K, Collection<V>>> iterator()
        {
          return this.delegateEntries.iterator();
        }

        Map<K, Collection<V>> map()
        {
          return Multimaps.FilteredMultimap.AsMap.this;
        }

        public boolean remove(Object paramObject)
        {
          if ((paramObject instanceof Map.Entry))
          {
            Map.Entry localEntry = (Map.Entry)paramObject;
            Collection localCollection = (Collection)Multimaps.FilteredMultimap.AsMap.this.delegate.get(localEntry.getKey());
            if ((localCollection != null) && (localCollection.equals(localEntry.getValue())))
            {
              localCollection.clear();
              return true;
            }
          }
          return false;
        }

        public boolean removeAll(Collection<?> paramCollection)
        {
          return Sets.removeAllImpl(this, paramCollection);
        }

        public boolean retainAll(final Collection<?> paramCollection)
        {
          Predicate local1 = new Predicate()
          {
            public boolean apply(Map.Entry<K, Collection<V>> paramAnonymousEntry)
            {
              return !paramCollection.contains(paramAnonymousEntry);
            }
          };
          return Multimaps.FilteredMultimap.this.removeEntriesIf(local1);
        }
      }

      class KeySet extends Maps.KeySet<K, Collection<V>>
      {
        KeySet()
        {
        }

        Map<K, Collection<V>> map()
        {
          return Multimaps.FilteredMultimap.AsMap.this;
        }

        public boolean remove(Object paramObject)
        {
          Collection localCollection = (Collection)Multimaps.FilteredMultimap.AsMap.this.delegate.get(paramObject);
          if (localCollection == null)
            return false;
          localCollection.clear();
          return true;
        }

        public boolean removeAll(Collection<?> paramCollection)
        {
          return Sets.removeAllImpl(this, paramCollection);
        }

        public boolean retainAll(final Collection<?> paramCollection)
        {
          Predicate local1 = new Predicate()
          {
            public boolean apply(Map.Entry<K, Collection<V>> paramAnonymousEntry)
            {
              return !paramCollection.contains(paramAnonymousEntry.getKey());
            }
          };
          return Multimaps.FilteredMultimap.this.removeEntriesIf(local1);
        }
      }

      class Values extends Maps.Values<K, Collection<V>>
      {
        Values()
        {
        }

        Map<K, Collection<V>> map()
        {
          return Multimaps.FilteredMultimap.AsMap.this;
        }

        public boolean remove(Object paramObject)
        {
          Iterator localIterator = iterator();
          while (localIterator.hasNext())
          {
            Collection localCollection = (Collection)localIterator.next();
            if (localCollection.equals(paramObject))
            {
              localCollection.clear();
              return true;
            }
          }
          return false;
        }

        public boolean removeAll(final Collection<?> paramCollection)
        {
          Predicate local1 = new Predicate()
          {
            public boolean apply(Map.Entry<K, Collection<V>> paramAnonymousEntry)
            {
              return paramCollection.contains(paramAnonymousEntry.getValue());
            }
          };
          return Multimaps.FilteredMultimap.this.removeEntriesIf(local1);
        }

        public boolean retainAll(final Collection<?> paramCollection)
        {
          Predicate local2 = new Predicate()
          {
            public boolean apply(Map.Entry<K, Collection<V>> paramAnonymousEntry)
            {
              return !paramCollection.contains(paramAnonymousEntry.getValue());
            }
          };
          return Multimaps.FilteredMultimap.this.removeEntriesIf(local2);
        }
      }
    }

    class Keys extends Multimaps.Keys<K, V>
    {
      Keys()
      {
      }

      Set<Multiset.Entry<K>> createEntrySet()
      {
        return new EntrySet();
      }

      Multimap<K, V> multimap()
      {
        return Multimaps.FilteredMultimap.this;
      }

      public int remove(Object paramObject, int paramInt)
      {
        if (paramInt >= 0);
        Collection localCollection;
        for (boolean bool = true; ; bool = false)
        {
          Preconditions.checkArgument(bool);
          localCollection = (Collection)Multimaps.FilteredMultimap.this.unfiltered.asMap().get(paramObject);
          if (localCollection != null)
            break;
          return 0;
        }
        int i = 0;
        int j = 0;
        Iterator localIterator = localCollection.iterator();
        while (localIterator.hasNext())
          if (Multimaps.FilteredMultimap.this.satisfiesPredicate(paramObject, localIterator.next()))
          {
            i++;
            if (j < paramInt)
            {
              localIterator.remove();
              j++;
            }
          }
        return i;
      }

      class EntrySet extends Multimaps.Keys.KeysEntrySet
      {
        EntrySet()
        {
          super();
        }

        public boolean removeAll(Collection<?> paramCollection)
        {
          return Sets.removeAllImpl(this, paramCollection);
        }

        public boolean retainAll(final Collection<?> paramCollection)
        {
          Predicate local1 = new Predicate()
          {
            public boolean apply(Map.Entry<K, Collection<V>> paramAnonymousEntry)
            {
              Multiset.Entry localEntry = Multisets.immutableEntry(paramAnonymousEntry.getKey(), ((Collection)paramAnonymousEntry.getValue()).size());
              return !paramCollection.contains(localEntry);
            }
          };
          return Multimaps.FilteredMultimap.this.removeEntriesIf(local1);
        }
      }
    }

    class ValuePredicate
      implements Predicate<V>
    {
      final K key;

      ValuePredicate()
      {
        Object localObject;
        this.key = localObject;
      }

      public boolean apply(V paramV)
      {
        return Multimaps.FilteredMultimap.this.satisfiesPredicate(this.key, paramV);
      }
    }

    class Values extends Multimaps.Values<K, V>
    {
      Values()
      {
      }

      public boolean contains(@Nullable Object paramObject)
      {
        return Iterators.contains(iterator(), paramObject);
      }

      Multimap<K, V> multimap()
      {
        return Multimaps.FilteredMultimap.this;
      }

      public boolean remove(Object paramObject)
      {
        Iterator localIterator = Multimaps.FilteredMultimap.this.unfiltered.entries().iterator();
        while (localIterator.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          if ((Objects.equal(paramObject, localEntry.getValue())) && (Multimaps.FilteredMultimap.this.predicate.apply(localEntry)))
          {
            localIterator.remove();
            return true;
          }
        }
        return false;
      }

      public boolean removeAll(Collection<?> paramCollection)
      {
        boolean bool = false;
        Iterator localIterator = Multimaps.FilteredMultimap.this.unfiltered.entries().iterator();
        while (localIterator.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          if ((paramCollection.contains(localEntry.getValue())) && (Multimaps.FilteredMultimap.this.predicate.apply(localEntry)))
          {
            localIterator.remove();
            bool = true;
          }
        }
        return bool;
      }

      public boolean retainAll(Collection<?> paramCollection)
      {
        boolean bool = false;
        Iterator localIterator = Multimaps.FilteredMultimap.this.unfiltered.entries().iterator();
        while (localIterator.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          if ((!paramCollection.contains(localEntry.getValue())) && (Multimaps.FilteredMultimap.this.predicate.apply(localEntry)))
          {
            localIterator.remove();
            bool = true;
          }
        }
        return bool;
      }
    }
  }

  static abstract class Keys<K, V> extends AbstractMultiset<K>
  {
    public void clear()
    {
      multimap().clear();
    }

    public boolean contains(@Nullable Object paramObject)
    {
      return multimap().containsKey(paramObject);
    }

    public int count(@Nullable Object paramObject)
    {
      try
      {
        if (multimap().containsKey(paramObject))
        {
          Collection localCollection = (Collection)multimap().asMap().get(paramObject);
          if (localCollection == null)
            return 0;
          int i = localCollection.size();
          return i;
        }
      }
      catch (ClassCastException localClassCastException)
      {
        return 0;
      }
      catch (NullPointerException localNullPointerException)
      {
      }
      return 0;
    }

    Set<Multiset.Entry<K>> createEntrySet()
    {
      return new KeysEntrySet();
    }

    int distinctElements()
    {
      return multimap().asMap().size();
    }

    public Set<K> elementSet()
    {
      return multimap().keySet();
    }

    Iterator<Multiset.Entry<K>> entryIterator()
    {
      return new Iterator()
      {
        public boolean hasNext()
        {
          return this.val$backingIterator.hasNext();
        }

        public Multiset.Entry<K> next()
        {
          return new Multisets.AbstractEntry()
          {
            public int getCount()
            {
              return ((Collection)this.val$backingEntry.getValue()).size();
            }

            public K getElement()
            {
              return this.val$backingEntry.getKey();
            }
          };
        }

        public void remove()
        {
          this.val$backingIterator.remove();
        }
      };
    }

    public Iterator<K> iterator()
    {
      return Iterators.transform(multimap().entries().iterator(), new Function()
      {
        public K apply(Map.Entry<K, V> paramAnonymousEntry)
        {
          return paramAnonymousEntry.getKey();
        }
      });
    }

    abstract Multimap<K, V> multimap();

    public int remove(@Nullable Object paramObject, int paramInt)
    {
      if (paramInt >= 0);
      int i;
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkArgument(bool);
        if (paramInt != 0)
          break;
        i = count(paramObject);
        return i;
      }
      while (true)
      {
        Collection localCollection;
        try
        {
          localCollection = (Collection)multimap().asMap().get(paramObject);
          i = 0;
          if (localCollection == null)
            break;
          int j = localCollection.size();
          if (paramInt >= j)
          {
            localCollection.clear();
            return j;
          }
        }
        catch (ClassCastException localClassCastException)
        {
          return 0;
        }
        catch (NullPointerException localNullPointerException)
        {
          return 0;
        }
        Iterator localIterator = localCollection.iterator();
        for (int k = 0; k < paramInt; k++)
        {
          localIterator.next();
          localIterator.remove();
        }
      }
    }

    class KeysEntrySet extends Multisets.EntrySet<K>
    {
      KeysEntrySet()
      {
      }

      public boolean contains(@Nullable Object paramObject)
      {
        boolean bool1 = paramObject instanceof Multiset.Entry;
        boolean bool2 = false;
        if (bool1)
        {
          Multiset.Entry localEntry = (Multiset.Entry)paramObject;
          Collection localCollection = (Collection)Multimaps.Keys.this.multimap().asMap().get(localEntry.getElement());
          bool2 = false;
          if (localCollection != null)
          {
            int i = localCollection.size();
            int j = localEntry.getCount();
            bool2 = false;
            if (i == j)
              bool2 = true;
          }
        }
        return bool2;
      }

      public boolean isEmpty()
      {
        return Multimaps.Keys.this.multimap().isEmpty();
      }

      public Iterator<Multiset.Entry<K>> iterator()
      {
        return Multimaps.Keys.this.entryIterator();
      }

      Multiset<K> multiset()
      {
        return Multimaps.Keys.this;
      }

      public boolean remove(@Nullable Object paramObject)
      {
        if ((paramObject instanceof Multiset.Entry))
        {
          Multiset.Entry localEntry = (Multiset.Entry)paramObject;
          Collection localCollection = (Collection)Multimaps.Keys.this.multimap().asMap().get(localEntry.getElement());
          if ((localCollection != null) && (localCollection.size() == localEntry.getCount()))
          {
            localCollection.clear();
            return true;
          }
        }
        return false;
      }

      public int size()
      {
        return Multimaps.Keys.this.distinctElements();
      }
    }
  }

  private static class MapMultimap<K, V>
    implements SetMultimap<K, V>, Serializable
  {
    private static final Joiner.MapJoiner JOINER = Joiner.on("], ").withKeyValueSeparator("=[").useForNull("null");
    private static final long serialVersionUID = 7845222491160860175L;
    transient Map<K, Collection<V>> asMap;
    final Map<K, V> map;

    MapMultimap(Map<K, V> paramMap)
    {
      this.map = ((Map)Preconditions.checkNotNull(paramMap));
    }

    public Map<K, Collection<V>> asMap()
    {
      Object localObject = this.asMap;
      if (localObject == null)
      {
        localObject = new AsMap();
        this.asMap = ((Map)localObject);
      }
      return localObject;
    }

    public void clear()
    {
      this.map.clear();
    }

    public boolean containsEntry(Object paramObject1, Object paramObject2)
    {
      return this.map.entrySet().contains(Maps.immutableEntry(paramObject1, paramObject2));
    }

    public boolean containsKey(Object paramObject)
    {
      return this.map.containsKey(paramObject);
    }

    public boolean containsValue(Object paramObject)
    {
      return this.map.containsValue(paramObject);
    }

    public Set<Map.Entry<K, V>> entries()
    {
      return this.map.entrySet();
    }

    public boolean equals(@Nullable Object paramObject)
    {
      if (paramObject == this);
      Multimap localMultimap;
      do
      {
        return true;
        if (!(paramObject instanceof Multimap))
          break;
        localMultimap = (Multimap)paramObject;
      }
      while ((size() == localMultimap.size()) && (asMap().equals(localMultimap.asMap())));
      return false;
      return false;
    }

    public Set<V> get(final K paramK)
    {
      return new AbstractSet()
      {
        public Iterator<V> iterator()
        {
          return new Iterator()
          {
            int i;

            public boolean hasNext()
            {
              return (this.i == 0) && (Multimaps.MapMultimap.this.map.containsKey(Multimaps.MapMultimap.1.this.val$key));
            }

            public V next()
            {
              if (!hasNext())
                throw new NoSuchElementException();
              this.i = (1 + this.i);
              return Multimaps.MapMultimap.this.map.get(Multimaps.MapMultimap.1.this.val$key);
            }

            public void remove()
            {
              int j = 1;
              if (this.i == j);
              while (true)
              {
                Preconditions.checkState(j);
                this.i = -1;
                Multimaps.MapMultimap.this.map.remove(Multimaps.MapMultimap.1.this.val$key);
                return;
                int k = 0;
              }
            }
          };
        }

        public int size()
        {
          if (Multimaps.MapMultimap.this.map.containsKey(paramK))
            return 1;
          return 0;
        }
      };
    }

    public int hashCode()
    {
      return this.map.hashCode();
    }

    public boolean isEmpty()
    {
      return this.map.isEmpty();
    }

    public Set<K> keySet()
    {
      return this.map.keySet();
    }

    public Multiset<K> keys()
    {
      return Multisets.forSet(this.map.keySet());
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
      return this.map.entrySet().remove(Maps.immutableEntry(paramObject1, paramObject2));
    }

    public Set<V> removeAll(Object paramObject)
    {
      HashSet localHashSet = new HashSet(2);
      if (!this.map.containsKey(paramObject))
        return localHashSet;
      localHashSet.add(this.map.remove(paramObject));
      return localHashSet;
    }

    public Set<V> replaceValues(K paramK, Iterable<? extends V> paramIterable)
    {
      throw new UnsupportedOperationException();
    }

    public int size()
    {
      return this.map.size();
    }

    public String toString()
    {
      if (this.map.isEmpty())
        return "{}";
      StringBuilder localStringBuilder = Collections2.newStringBuilderForCollection(this.map.size()).append('{');
      JOINER.appendTo(localStringBuilder, this.map);
      return "]}";
    }

    public Collection<V> values()
    {
      return this.map.values();
    }

    class AsMap extends Maps.ImprovedAbstractMap<K, Collection<V>>
    {
      AsMap()
      {
      }

      public boolean containsKey(Object paramObject)
      {
        return Multimaps.MapMultimap.this.map.containsKey(paramObject);
      }

      protected Set<Map.Entry<K, Collection<V>>> createEntrySet()
      {
        return new Multimaps.MapMultimap.AsMapEntries(Multimaps.MapMultimap.this);
      }

      public Collection<V> get(Object paramObject)
      {
        Set localSet = Multimaps.MapMultimap.this.get(paramObject);
        if (localSet.isEmpty())
          localSet = null;
        return localSet;
      }

      public Collection<V> remove(Object paramObject)
      {
        Set localSet = Multimaps.MapMultimap.this.removeAll(paramObject);
        if (localSet.isEmpty())
          localSet = null;
        return localSet;
      }
    }

    class AsMapEntries extends AbstractSet<Map.Entry<K, Collection<V>>>
    {
      AsMapEntries()
      {
      }

      public boolean contains(Object paramObject)
      {
        int i = 1;
        if (!(paramObject instanceof Map.Entry));
        Map.Entry localEntry;
        do
        {
          return false;
          localEntry = (Map.Entry)paramObject;
        }
        while (!(localEntry.getValue() instanceof Set));
        Set localSet = (Set)localEntry.getValue();
        if ((localSet.size() == i) && (Multimaps.MapMultimap.this.containsEntry(localEntry.getKey(), localSet.iterator().next())));
        while (true)
        {
          return i;
          int j = 0;
        }
      }

      public Iterator<Map.Entry<K, Collection<V>>> iterator()
      {
        return new Iterator()
        {
          final Iterator<K> keys = Multimaps.MapMultimap.this.map.keySet().iterator();

          public boolean hasNext()
          {
            return this.keys.hasNext();
          }

          public Map.Entry<K, Collection<V>> next()
          {
            return new AbstractMapEntry()
            {
              public K getKey()
              {
                return this.val$key;
              }

              public Collection<V> getValue()
              {
                return Multimaps.MapMultimap.this.get(this.val$key);
              }
            };
          }

          public void remove()
          {
            this.keys.remove();
          }
        };
      }

      public boolean remove(Object paramObject)
      {
        int i = 1;
        if (!(paramObject instanceof Map.Entry));
        Map.Entry localEntry;
        do
        {
          return false;
          localEntry = (Map.Entry)paramObject;
        }
        while (!(localEntry.getValue() instanceof Set));
        Set localSet = (Set)localEntry.getValue();
        if ((localSet.size() == i) && (Multimaps.MapMultimap.this.map.entrySet().remove(Maps.immutableEntry(localEntry.getKey(), localSet.iterator().next()))));
        while (true)
        {
          return i;
          int j = 0;
        }
      }

      public int size()
      {
        return Multimaps.MapMultimap.this.map.size();
      }
    }
  }

  private static final class TransformedEntriesListMultimap<K, V1, V2> extends Multimaps.TransformedEntriesMultimap<K, V1, V2>
    implements ListMultimap<K, V2>
  {
    TransformedEntriesListMultimap(ListMultimap<K, V1> paramListMultimap, Maps.EntryTransformer<? super K, ? super V1, V2> paramEntryTransformer)
    {
      super(paramEntryTransformer);
    }

    public List<V2> get(K paramK)
    {
      return transform(paramK, this.fromMultimap.get(paramK));
    }

    public List<V2> removeAll(Object paramObject)
    {
      return transform(paramObject, this.fromMultimap.removeAll(paramObject));
    }

    public List<V2> replaceValues(K paramK, Iterable<? extends V2> paramIterable)
    {
      throw new UnsupportedOperationException();
    }

    List<V2> transform(final K paramK, Collection<V1> paramCollection)
    {
      return Lists.transform((List)paramCollection, new Function()
      {
        public V2 apply(V1 paramAnonymousV1)
        {
          return Multimaps.TransformedEntriesListMultimap.this.transformer.transformEntry(paramK, paramAnonymousV1);
        }
      });
    }
  }

  private static class TransformedEntriesMultimap<K, V1, V2>
    implements Multimap<K, V2>
  {
    private transient Map<K, Collection<V2>> asMap;
    private transient Collection<Map.Entry<K, V2>> entries;
    final Multimap<K, V1> fromMultimap;
    final Maps.EntryTransformer<? super K, ? super V1, V2> transformer;
    private transient Collection<V2> values;

    TransformedEntriesMultimap(Multimap<K, V1> paramMultimap, Maps.EntryTransformer<? super K, ? super V1, V2> paramEntryTransformer)
    {
      this.fromMultimap = ((Multimap)Preconditions.checkNotNull(paramMultimap));
      this.transformer = ((Maps.EntryTransformer)Preconditions.checkNotNull(paramEntryTransformer));
    }

    public Map<K, Collection<V2>> asMap()
    {
      if (this.asMap == null)
      {
        Map localMap = Maps.transformEntries(this.fromMultimap.asMap(), new Maps.EntryTransformer()
        {
          public Collection<V2> transformEntry(K paramAnonymousK, Collection<V1> paramAnonymousCollection)
          {
            return Multimaps.TransformedEntriesMultimap.this.transform(paramAnonymousK, paramAnonymousCollection);
          }
        });
        this.asMap = localMap;
        return localMap;
      }
      return this.asMap;
    }

    public void clear()
    {
      this.fromMultimap.clear();
    }

    public boolean containsEntry(Object paramObject1, Object paramObject2)
    {
      return get(paramObject1).contains(paramObject2);
    }

    public boolean containsKey(Object paramObject)
    {
      return this.fromMultimap.containsKey(paramObject);
    }

    public boolean containsValue(Object paramObject)
    {
      return values().contains(paramObject);
    }

    public Collection<Map.Entry<K, V2>> entries()
    {
      if (this.entries == null)
      {
        TransformedEntries localTransformedEntries = new TransformedEntries(this.transformer);
        this.entries = localTransformedEntries;
        return localTransformedEntries;
      }
      return this.entries;
    }

    public boolean equals(Object paramObject)
    {
      if ((paramObject instanceof Multimap))
      {
        Multimap localMultimap = (Multimap)paramObject;
        return asMap().equals(localMultimap.asMap());
      }
      return false;
    }

    public Collection<V2> get(K paramK)
    {
      return transform(paramK, this.fromMultimap.get(paramK));
    }

    public int hashCode()
    {
      return asMap().hashCode();
    }

    public boolean isEmpty()
    {
      return this.fromMultimap.isEmpty();
    }

    public Set<K> keySet()
    {
      return this.fromMultimap.keySet();
    }

    public Multiset<K> keys()
    {
      return this.fromMultimap.keys();
    }

    public boolean put(K paramK, V2 paramV2)
    {
      throw new UnsupportedOperationException();
    }

    public boolean putAll(Multimap<? extends K, ? extends V2> paramMultimap)
    {
      throw new UnsupportedOperationException();
    }

    public boolean putAll(K paramK, Iterable<? extends V2> paramIterable)
    {
      throw new UnsupportedOperationException();
    }

    public boolean remove(Object paramObject1, Object paramObject2)
    {
      return get(paramObject1).remove(paramObject2);
    }

    public Collection<V2> removeAll(Object paramObject)
    {
      return transform(paramObject, this.fromMultimap.removeAll(paramObject));
    }

    public Collection<V2> replaceValues(K paramK, Iterable<? extends V2> paramIterable)
    {
      throw new UnsupportedOperationException();
    }

    public int size()
    {
      return this.fromMultimap.size();
    }

    public String toString()
    {
      return asMap().toString();
    }

    Collection<V2> transform(final K paramK, Collection<V1> paramCollection)
    {
      return Collections2.transform(paramCollection, new Function()
      {
        public V2 apply(V1 paramAnonymousV1)
        {
          return Multimaps.TransformedEntriesMultimap.this.transformer.transformEntry(paramK, paramAnonymousV1);
        }
      });
    }

    public Collection<V2> values()
    {
      if (this.values == null)
      {
        Collection localCollection = Collections2.transform(this.fromMultimap.entries(), new Function()
        {
          public V2 apply(Map.Entry<K, V1> paramAnonymousEntry)
          {
            return Multimaps.TransformedEntriesMultimap.this.transformer.transformEntry(paramAnonymousEntry.getKey(), paramAnonymousEntry.getValue());
          }
        });
        this.values = localCollection;
        return localCollection;
      }
      return this.values;
    }

    private class TransformedEntries extends Collections2.TransformedCollection<Map.Entry<K, V1>, Map.Entry<K, V2>>
    {
      TransformedEntries()
      {
        super(new Function()
        {
          public Map.Entry<K, V2> apply(final Map.Entry<K, V1> paramAnonymousEntry)
          {
            return new AbstractMapEntry()
            {
              public K getKey()
              {
                return paramAnonymousEntry.getKey();
              }

              public V2 getValue()
              {
                return Multimaps.TransformedEntriesMultimap.TransformedEntries.1.this.val$transformer.transformEntry(paramAnonymousEntry.getKey(), paramAnonymousEntry.getValue());
              }
            };
          }
        });
      }

      public boolean contains(Object paramObject)
      {
        if ((paramObject instanceof Map.Entry))
        {
          Map.Entry localEntry = (Map.Entry)paramObject;
          return Multimaps.TransformedEntriesMultimap.this.containsEntry(localEntry.getKey(), localEntry.getValue());
        }
        return false;
      }

      public boolean remove(Object paramObject)
      {
        if ((paramObject instanceof Map.Entry))
        {
          Map.Entry localEntry = (Map.Entry)paramObject;
          return Multimaps.TransformedEntriesMultimap.this.get(localEntry.getKey()).remove(localEntry.getValue());
        }
        return false;
      }
    }
  }

  static class UnmodifiableAsMapEntries<K, V> extends ForwardingSet<Map.Entry<K, Collection<V>>>
  {
    private final Set<Map.Entry<K, Collection<V>>> delegate;

    UnmodifiableAsMapEntries(Set<Map.Entry<K, Collection<V>>> paramSet)
    {
      this.delegate = paramSet;
    }

    public boolean contains(Object paramObject)
    {
      return Maps.containsEntryImpl(delegate(), paramObject);
    }

    public boolean containsAll(Collection<?> paramCollection)
    {
      return standardContainsAll(paramCollection);
    }

    protected Set<Map.Entry<K, Collection<V>>> delegate()
    {
      return this.delegate;
    }

    public boolean equals(@Nullable Object paramObject)
    {
      return standardEquals(paramObject);
    }

    public Iterator<Map.Entry<K, Collection<V>>> iterator()
    {
      return new ForwardingIterator()
      {
        protected Iterator<Map.Entry<K, Collection<V>>> delegate()
        {
          return this.val$iterator;
        }

        public Map.Entry<K, Collection<V>> next()
        {
          return Multimaps.unmodifiableAsMapEntry((Map.Entry)this.val$iterator.next());
        }
      };
    }

    public Object[] toArray()
    {
      return standardToArray();
    }

    public <T> T[] toArray(T[] paramArrayOfT)
    {
      return standardToArray(paramArrayOfT);
    }
  }

  private static class UnmodifiableAsMapValues<V> extends ForwardingCollection<Collection<V>>
  {
    final Collection<Collection<V>> delegate;

    UnmodifiableAsMapValues(Collection<Collection<V>> paramCollection)
    {
      this.delegate = Collections.unmodifiableCollection(paramCollection);
    }

    public boolean contains(Object paramObject)
    {
      return standardContains(paramObject);
    }

    public boolean containsAll(Collection<?> paramCollection)
    {
      return standardContainsAll(paramCollection);
    }

    protected Collection<Collection<V>> delegate()
    {
      return this.delegate;
    }

    public Iterator<Collection<V>> iterator()
    {
      return new Iterator()
      {
        public boolean hasNext()
        {
          return this.val$iterator.hasNext();
        }

        public Collection<V> next()
        {
          return Multimaps.unmodifiableValueCollection((Collection)this.val$iterator.next());
        }

        public void remove()
        {
          throw new UnsupportedOperationException();
        }
      };
    }

    public Object[] toArray()
    {
      return standardToArray();
    }

    public <T> T[] toArray(T[] paramArrayOfT)
    {
      return standardToArray(paramArrayOfT);
    }
  }

  private static class UnmodifiableListMultimap<K, V> extends Multimaps.UnmodifiableMultimap<K, V>
    implements ListMultimap<K, V>
  {
    private static final long serialVersionUID;

    UnmodifiableListMultimap(ListMultimap<K, V> paramListMultimap)
    {
      super();
    }

    public ListMultimap<K, V> delegate()
    {
      return (ListMultimap)super.delegate();
    }

    public List<V> get(K paramK)
    {
      return Collections.unmodifiableList(delegate().get(paramK));
    }

    public List<V> removeAll(Object paramObject)
    {
      throw new UnsupportedOperationException();
    }

    public List<V> replaceValues(K paramK, Iterable<? extends V> paramIterable)
    {
      throw new UnsupportedOperationException();
    }
  }

  private static class UnmodifiableMultimap<K, V> extends ForwardingMultimap<K, V>
    implements Serializable
  {
    private static final long serialVersionUID;
    final Multimap<K, V> delegate;
    transient Collection<Map.Entry<K, V>> entries;
    transient Set<K> keySet;
    transient Multiset<K> keys;
    transient Map<K, Collection<V>> map;
    transient Collection<V> values;

    UnmodifiableMultimap(Multimap<K, V> paramMultimap)
    {
      this.delegate = ((Multimap)Preconditions.checkNotNull(paramMultimap));
    }

    public Map<K, Collection<V>> asMap()
    {
      Object localObject = this.map;
      if (localObject == null)
      {
        localObject = new ForwardingMap()
        {
          Collection<Collection<V>> asMapValues;
          Set<Map.Entry<K, Collection<V>>> entrySet;

          public boolean containsValue(Object paramAnonymousObject)
          {
            return values().contains(paramAnonymousObject);
          }

          protected Map<K, Collection<V>> delegate()
          {
            return this.val$unmodifiableMap;
          }

          public Set<Map.Entry<K, Collection<V>>> entrySet()
          {
            Set localSet = this.entrySet;
            if (localSet == null)
            {
              localSet = Multimaps.unmodifiableAsMapEntries(this.val$unmodifiableMap.entrySet());
              this.entrySet = localSet;
            }
            return localSet;
          }

          public Collection<V> get(Object paramAnonymousObject)
          {
            Collection localCollection = (Collection)this.val$unmodifiableMap.get(paramAnonymousObject);
            if (localCollection == null)
              return null;
            return Multimaps.unmodifiableValueCollection(localCollection);
          }

          public Collection<Collection<V>> values()
          {
            Object localObject = this.asMapValues;
            if (localObject == null)
            {
              localObject = new Multimaps.UnmodifiableAsMapValues(this.val$unmodifiableMap.values());
              this.asMapValues = ((Collection)localObject);
            }
            return localObject;
          }
        };
        this.map = ((Map)localObject);
      }
      return localObject;
    }

    public void clear()
    {
      throw new UnsupportedOperationException();
    }

    protected Multimap<K, V> delegate()
    {
      return this.delegate;
    }

    public Collection<Map.Entry<K, V>> entries()
    {
      Collection localCollection = this.entries;
      if (localCollection == null)
      {
        localCollection = Multimaps.unmodifiableEntries(this.delegate.entries());
        this.entries = localCollection;
      }
      return localCollection;
    }

    public Collection<V> get(K paramK)
    {
      return Multimaps.unmodifiableValueCollection(this.delegate.get(paramK));
    }

    public Set<K> keySet()
    {
      Set localSet = this.keySet;
      if (localSet == null)
      {
        localSet = Collections.unmodifiableSet(this.delegate.keySet());
        this.keySet = localSet;
      }
      return localSet;
    }

    public Multiset<K> keys()
    {
      Multiset localMultiset = this.keys;
      if (localMultiset == null)
      {
        localMultiset = Multisets.unmodifiableMultiset(this.delegate.keys());
        this.keys = localMultiset;
      }
      return localMultiset;
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

    public Collection<V> removeAll(Object paramObject)
    {
      throw new UnsupportedOperationException();
    }

    public Collection<V> replaceValues(K paramK, Iterable<? extends V> paramIterable)
    {
      throw new UnsupportedOperationException();
    }

    public Collection<V> values()
    {
      Collection localCollection = this.values;
      if (localCollection == null)
      {
        localCollection = Collections.unmodifiableCollection(this.delegate.values());
        this.values = localCollection;
      }
      return localCollection;
    }
  }

  private static class UnmodifiableSetMultimap<K, V> extends Multimaps.UnmodifiableMultimap<K, V>
    implements SetMultimap<K, V>
  {
    private static final long serialVersionUID;

    UnmodifiableSetMultimap(SetMultimap<K, V> paramSetMultimap)
    {
      super();
    }

    public SetMultimap<K, V> delegate()
    {
      return (SetMultimap)super.delegate();
    }

    public Set<Map.Entry<K, V>> entries()
    {
      return Maps.unmodifiableEntrySet(delegate().entries());
    }

    public Set<V> get(K paramK)
    {
      return Collections.unmodifiableSet(delegate().get(paramK));
    }

    public Set<V> removeAll(Object paramObject)
    {
      throw new UnsupportedOperationException();
    }

    public Set<V> replaceValues(K paramK, Iterable<? extends V> paramIterable)
    {
      throw new UnsupportedOperationException();
    }
  }

  private static class UnmodifiableSortedSetMultimap<K, V> extends Multimaps.UnmodifiableSetMultimap<K, V>
    implements SortedSetMultimap<K, V>
  {
    private static final long serialVersionUID;

    UnmodifiableSortedSetMultimap(SortedSetMultimap<K, V> paramSortedSetMultimap)
    {
      super();
    }

    public SortedSetMultimap<K, V> delegate()
    {
      return (SortedSetMultimap)super.delegate();
    }

    public SortedSet<V> get(K paramK)
    {
      return Collections.unmodifiableSortedSet(delegate().get(paramK));
    }

    public SortedSet<V> removeAll(Object paramObject)
    {
      throw new UnsupportedOperationException();
    }

    public SortedSet<V> replaceValues(K paramK, Iterable<? extends V> paramIterable)
    {
      throw new UnsupportedOperationException();
    }

    public Comparator<? super V> valueComparator()
    {
      return delegate().valueComparator();
    }
  }

  static abstract class Values<K, V> extends AbstractCollection<V>
  {
    public void clear()
    {
      multimap().clear();
    }

    public boolean contains(@Nullable Object paramObject)
    {
      return multimap().containsValue(paramObject);
    }

    public Iterator<V> iterator()
    {
      return new Iterator()
      {
        public boolean hasNext()
        {
          return this.val$backingIterator.hasNext();
        }

        public V next()
        {
          return ((Map.Entry)this.val$backingIterator.next()).getValue();
        }

        public void remove()
        {
          this.val$backingIterator.remove();
        }
      };
    }

    abstract Multimap<K, V> multimap();

    public int size()
    {
      return multimap().size();
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.Multimaps
 * JD-Core Version:    0.6.2
 */