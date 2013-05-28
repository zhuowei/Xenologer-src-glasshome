package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Function;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.math.IntMath;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true)
public final class Sets
{
  public static <B> Set<List<B>> cartesianProduct(List<? extends Set<? extends B>> paramList)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
      if (((Set)localIterator.next()).isEmpty())
        return ImmutableSet.of();
    return new CartesianSet(paramList);
  }

  public static <B> Set<List<B>> cartesianProduct(Set<? extends B>[] paramArrayOfSet)
  {
    return cartesianProduct(Arrays.asList(paramArrayOfSet));
  }

  public static <E extends Enum<E>> EnumSet<E> complementOf(Collection<E> paramCollection)
  {
    if ((paramCollection instanceof EnumSet))
      return EnumSet.complementOf((EnumSet)paramCollection);
    if (!paramCollection.isEmpty());
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool, "collection is empty; use the other version of this method");
      return makeComplementByHand(paramCollection, ((Enum)paramCollection.iterator().next()).getDeclaringClass());
    }
  }

  public static <E extends Enum<E>> EnumSet<E> complementOf(Collection<E> paramCollection, Class<E> paramClass)
  {
    Preconditions.checkNotNull(paramCollection);
    if ((paramCollection instanceof EnumSet))
      return EnumSet.complementOf((EnumSet)paramCollection);
    return makeComplementByHand(paramCollection, paramClass);
  }

  public static <E> SetView<E> difference(Set<E> paramSet, final Set<?> paramSet1)
  {
    Preconditions.checkNotNull(paramSet, "set1");
    Preconditions.checkNotNull(paramSet1, "set2");
    return new SetView(paramSet)
    {
      public boolean contains(Object paramAnonymousObject)
      {
        return (this.val$set1.contains(paramAnonymousObject)) && (!paramSet1.contains(paramAnonymousObject));
      }

      public boolean isEmpty()
      {
        return paramSet1.containsAll(this.val$set1);
      }

      public Iterator<E> iterator()
      {
        return Iterators.filter(this.val$set1.iterator(), this.val$notInSet2);
      }

      public int size()
      {
        return Iterators.size(iterator());
      }
    };
  }

  static boolean equalsImpl(Set<?> paramSet, @Nullable Object paramObject)
  {
    boolean bool1 = true;
    boolean bool3;
    if (paramSet == paramObject)
      bool3 = bool1;
    boolean bool2;
    do
    {
      return bool3;
      bool2 = paramObject instanceof Set;
      bool3 = false;
    }
    while (!bool2);
    Set localSet = (Set)paramObject;
    try
    {
      if (paramSet.size() == localSet.size())
      {
        boolean bool4 = paramSet.containsAll(localSet);
        if (!bool4);
      }
      while (true)
      {
        return bool1;
        bool1 = false;
      }
    }
    catch (NullPointerException localNullPointerException)
    {
      return false;
    }
    catch (ClassCastException localClassCastException)
    {
    }
    return false;
  }

  public static <E> Set<E> filter(Set<E> paramSet, Predicate<? super E> paramPredicate)
  {
    if ((paramSet instanceof SortedSet))
      return filter((SortedSet)paramSet, paramPredicate);
    if ((paramSet instanceof FilteredSet))
    {
      FilteredSet localFilteredSet = (FilteredSet)paramSet;
      Predicate localPredicate = Predicates.and(localFilteredSet.predicate, paramPredicate);
      return new FilteredSet((Set)localFilteredSet.unfiltered, localPredicate);
    }
    return new FilteredSet((Set)Preconditions.checkNotNull(paramSet), (Predicate)Preconditions.checkNotNull(paramPredicate));
  }

  @Beta
  public static <E> SortedSet<E> filter(SortedSet<E> paramSortedSet, Predicate<? super E> paramPredicate)
  {
    if ((paramSortedSet instanceof FilteredSet))
    {
      FilteredSet localFilteredSet = (FilteredSet)paramSortedSet;
      Predicate localPredicate = Predicates.and(localFilteredSet.predicate, paramPredicate);
      return new FilteredSortedSet((SortedSet)localFilteredSet.unfiltered, localPredicate);
    }
    return new FilteredSortedSet((SortedSet)Preconditions.checkNotNull(paramSortedSet), (Predicate)Preconditions.checkNotNull(paramPredicate));
  }

  static int hashCodeImpl(Set<?> paramSet)
  {
    int i = 0;
    Iterator localIterator = paramSet.iterator();
    if (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      if (localObject != null);
      for (int j = localObject.hashCode(); ; j = 0)
      {
        i += j;
        break;
      }
    }
    return i;
  }

  @GwtCompatible(serializable=true)
  public static <E extends Enum<E>> ImmutableSet<E> immutableEnumSet(E paramE, E[] paramArrayOfE)
  {
    return new ImmutableEnumSet(EnumSet.of(paramE, paramArrayOfE));
  }

  @GwtCompatible(serializable=true)
  public static <E extends Enum<E>> ImmutableSet<E> immutableEnumSet(Iterable<E> paramIterable)
  {
    Iterator localIterator = paramIterable.iterator();
    if (!localIterator.hasNext())
      return ImmutableSet.of();
    if ((paramIterable instanceof EnumSet))
      return new ImmutableEnumSet(EnumSet.copyOf((EnumSet)paramIterable));
    EnumSet localEnumSet = EnumSet.of((Enum)localIterator.next());
    while (localIterator.hasNext())
      localEnumSet.add(localIterator.next());
    return new ImmutableEnumSet(localEnumSet);
  }

  public static <E> SetView<E> intersection(Set<E> paramSet, final Set<?> paramSet1)
  {
    Preconditions.checkNotNull(paramSet, "set1");
    Preconditions.checkNotNull(paramSet1, "set2");
    return new SetView(paramSet)
    {
      public boolean contains(Object paramAnonymousObject)
      {
        return (this.val$set1.contains(paramAnonymousObject)) && (paramSet1.contains(paramAnonymousObject));
      }

      public boolean containsAll(Collection<?> paramAnonymousCollection)
      {
        return (this.val$set1.containsAll(paramAnonymousCollection)) && (paramSet1.containsAll(paramAnonymousCollection));
      }

      public boolean isEmpty()
      {
        return !iterator().hasNext();
      }

      public Iterator<E> iterator()
      {
        return Iterators.filter(this.val$set1.iterator(), this.val$inSet2);
      }

      public int size()
      {
        return Iterators.size(iterator());
      }
    };
  }

  private static <E extends Enum<E>> EnumSet<E> makeComplementByHand(Collection<E> paramCollection, Class<E> paramClass)
  {
    EnumSet localEnumSet = EnumSet.allOf(paramClass);
    localEnumSet.removeAll(paramCollection);
    return localEnumSet;
  }

  public static <E extends Enum<E>> EnumSet<E> newEnumSet(Iterable<E> paramIterable, Class<E> paramClass)
  {
    Preconditions.checkNotNull(paramIterable);
    EnumSet localEnumSet = EnumSet.noneOf(paramClass);
    Iterables.addAll(localEnumSet, paramIterable);
    return localEnumSet;
  }

  public static <E> HashSet<E> newHashSet()
  {
    return new HashSet();
  }

  public static <E> HashSet<E> newHashSet(Iterable<? extends E> paramIterable)
  {
    if ((paramIterable instanceof Collection))
      return new HashSet(Collections2.cast(paramIterable));
    return newHashSet(paramIterable.iterator());
  }

  public static <E> HashSet<E> newHashSet(Iterator<? extends E> paramIterator)
  {
    HashSet localHashSet = newHashSet();
    while (paramIterator.hasNext())
      localHashSet.add(paramIterator.next());
    return localHashSet;
  }

  public static <E> HashSet<E> newHashSet(E[] paramArrayOfE)
  {
    HashSet localHashSet = newHashSetWithExpectedSize(paramArrayOfE.length);
    Collections.addAll(localHashSet, paramArrayOfE);
    return localHashSet;
  }

  public static <E> HashSet<E> newHashSetWithExpectedSize(int paramInt)
  {
    return new HashSet(Maps.capacity(paramInt));
  }

  public static <E> Set<E> newIdentityHashSet()
  {
    return newSetFromMap(Maps.newIdentityHashMap());
  }

  public static <E> LinkedHashSet<E> newLinkedHashSet()
  {
    return new LinkedHashSet();
  }

  public static <E> LinkedHashSet<E> newLinkedHashSet(Iterable<? extends E> paramIterable)
  {
    LinkedHashSet localLinkedHashSet;
    if ((paramIterable instanceof Collection))
      localLinkedHashSet = new LinkedHashSet(Collections2.cast(paramIterable));
    while (true)
    {
      return localLinkedHashSet;
      localLinkedHashSet = newLinkedHashSet();
      Iterator localIterator = paramIterable.iterator();
      while (localIterator.hasNext())
        localLinkedHashSet.add(localIterator.next());
    }
  }

  public static <E> LinkedHashSet<E> newLinkedHashSetWithExpectedSize(int paramInt)
  {
    return new LinkedHashSet(Maps.capacity(paramInt));
  }

  public static <E> Set<E> newSetFromMap(Map<E, Boolean> paramMap)
  {
    return new SetFromMap(paramMap);
  }

  public static <E extends Comparable> TreeSet<E> newTreeSet()
  {
    return new TreeSet();
  }

  public static <E extends Comparable> TreeSet<E> newTreeSet(Iterable<? extends E> paramIterable)
  {
    TreeSet localTreeSet = newTreeSet();
    Iterator localIterator = paramIterable.iterator();
    while (localIterator.hasNext())
      localTreeSet.add((Comparable)localIterator.next());
    return localTreeSet;
  }

  public static <E> TreeSet<E> newTreeSet(Comparator<? super E> paramComparator)
  {
    return new TreeSet((Comparator)Preconditions.checkNotNull(paramComparator));
  }

  @GwtCompatible(serializable=false)
  public static <E> Set<Set<E>> powerSet(Set<E> paramSet)
  {
    ImmutableSet localImmutableSet = ImmutableSet.copyOf(paramSet);
    if (localImmutableSet.size() <= 30);
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(localImmutableSet.size());
      Preconditions.checkArgument(bool, "Too many elements to create power set: %s > 30", arrayOfObject);
      return new PowerSet(localImmutableSet);
    }
  }

  static boolean removeAllImpl(Set<?> paramSet, Iterable<?> paramIterable)
  {
    boolean bool = false;
    Iterator localIterator = paramIterable.iterator();
    while (localIterator.hasNext())
      bool |= paramSet.remove(localIterator.next());
    return bool;
  }

  public static <E> SetView<E> symmetricDifference(Set<? extends E> paramSet1, Set<? extends E> paramSet2)
  {
    Preconditions.checkNotNull(paramSet1, "set1");
    Preconditions.checkNotNull(paramSet2, "set2");
    return difference(union(paramSet1, paramSet2), intersection(paramSet1, paramSet2));
  }

  static <A, B> Set<B> transform(Set<A> paramSet, InvertibleFunction<A, B> paramInvertibleFunction)
  {
    return new TransformedSet((Set)Preconditions.checkNotNull(paramSet, "set"), (InvertibleFunction)Preconditions.checkNotNull(paramInvertibleFunction, "bijection"));
  }

  public static <E> SetView<E> union(Set<? extends E> paramSet1, final Set<? extends E> paramSet2)
  {
    Preconditions.checkNotNull(paramSet1, "set1");
    Preconditions.checkNotNull(paramSet2, "set2");
    return new SetView(paramSet1)
    {
      public boolean contains(Object paramAnonymousObject)
      {
        return (this.val$set1.contains(paramAnonymousObject)) || (paramSet2.contains(paramAnonymousObject));
      }

      public <S extends Set<E>> S copyInto(S paramAnonymousS)
      {
        paramAnonymousS.addAll(this.val$set1);
        paramAnonymousS.addAll(paramSet2);
        return paramAnonymousS;
      }

      public ImmutableSet<E> immutableCopy()
      {
        return new ImmutableSet.Builder().addAll(this.val$set1).addAll(paramSet2).build();
      }

      public boolean isEmpty()
      {
        return (this.val$set1.isEmpty()) && (paramSet2.isEmpty());
      }

      public Iterator<E> iterator()
      {
        return Iterators.unmodifiableIterator(Iterators.concat(this.val$set1.iterator(), this.val$set2minus1.iterator()));
      }

      public int size()
      {
        return this.val$set1.size() + this.val$set2minus1.size();
      }
    };
  }

  private static class CartesianSet<B> extends AbstractSet<List<B>>
  {
    final ImmutableList<CartesianSet<B>.Axis> axes;
    final int size;

    CartesianSet(List<? extends Set<? extends B>> paramList)
    {
      int i = 1;
      ImmutableList.Builder localBuilder = ImmutableList.builder();
      try
      {
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext())
        {
          Axis localAxis = new Axis((Set)localIterator.next(), i);
          localBuilder.add(localAxis);
          int j = IntMath.checkedMultiply(i, localAxis.size());
          i = j;
        }
      }
      catch (ArithmeticException localArithmeticException)
      {
        throw new IllegalArgumentException("cartesian product too big");
      }
      this.axes = localBuilder.build();
      this.size = i;
    }

    public boolean contains(Object paramObject)
    {
      if (!(paramObject instanceof List))
        return false;
      List localList = (List)paramObject;
      int i = this.axes.size();
      if (localList.size() != i)
        return false;
      for (int j = 0; j < i; j++)
        if (!((Axis)this.axes.get(j)).contains(localList.get(j)))
          return false;
      return true;
    }

    public boolean equals(@Nullable Object paramObject)
    {
      if ((paramObject instanceof CartesianSet))
      {
        CartesianSet localCartesianSet = (CartesianSet)paramObject;
        return this.axes.equals(localCartesianSet.axes);
      }
      return super.equals(paramObject);
    }

    public int hashCode()
    {
      int i = -1 + this.size;
      for (int j = 0; j < this.axes.size(); j++)
        i *= 31;
      return i + this.axes.hashCode();
    }

    public UnmodifiableIterator<List<B>> iterator()
    {
      return new UnmodifiableIterator()
      {
        int index;

        public boolean hasNext()
        {
          return this.index < Sets.CartesianSet.this.size;
        }

        public List<B> next()
        {
          if (!hasNext())
            throw new NoSuchElementException();
          Object[] arrayOfObject = new Object[Sets.CartesianSet.this.axes.size()];
          for (int i = 0; i < arrayOfObject.length; i++)
            arrayOfObject[i] = ((Sets.CartesianSet.Axis)Sets.CartesianSet.this.axes.get(i)).getForIndex(this.index);
          this.index = (1 + this.index);
          return ImmutableList.copyOf(arrayOfObject);
        }
      };
    }

    public int size()
    {
      return this.size;
    }

    private class Axis
    {
      final ImmutableSet<? extends B> choices;
      final ImmutableList<? extends B> choicesList;
      final int dividend;

      Axis(int arg2)
      {
        Collection localCollection;
        this.choices = ImmutableSet.copyOf(localCollection);
        this.choicesList = this.choices.asList();
        int i;
        this.dividend = i;
      }

      boolean contains(Object paramObject)
      {
        return this.choices.contains(paramObject);
      }

      public boolean equals(Object paramObject)
      {
        if ((paramObject instanceof Axis))
        {
          Axis localAxis = (Axis)paramObject;
          return this.choices.equals(localAxis.choices);
        }
        return false;
      }

      B getForIndex(int paramInt)
      {
        return this.choicesList.get(paramInt / this.dividend % size());
      }

      public int hashCode()
      {
        return Sets.CartesianSet.this.size / this.choices.size() * this.choices.hashCode();
      }

      int size()
      {
        return this.choices.size();
      }
    }
  }

  private static class FilteredSet<E> extends Collections2.FilteredCollection<E>
    implements Set<E>
  {
    FilteredSet(Set<E> paramSet, Predicate<? super E> paramPredicate)
    {
      super(paramPredicate);
    }

    public boolean equals(@Nullable Object paramObject)
    {
      return Sets.equalsImpl(this, paramObject);
    }

    public int hashCode()
    {
      return Sets.hashCodeImpl(this);
    }
  }

  private static class FilteredSortedSet<E> extends Collections2.FilteredCollection<E>
    implements SortedSet<E>
  {
    FilteredSortedSet(SortedSet<E> paramSortedSet, Predicate<? super E> paramPredicate)
    {
      super(paramPredicate);
    }

    public Comparator<? super E> comparator()
    {
      return ((SortedSet)this.unfiltered).comparator();
    }

    public boolean equals(@Nullable Object paramObject)
    {
      return Sets.equalsImpl(this, paramObject);
    }

    public E first()
    {
      return iterator().next();
    }

    public int hashCode()
    {
      return Sets.hashCodeImpl(this);
    }

    public SortedSet<E> headSet(E paramE)
    {
      return new FilteredSortedSet(((SortedSet)this.unfiltered).headSet(paramE), this.predicate);
    }

    public E last()
    {
      Object localObject;
      for (SortedSet localSortedSet = (SortedSet)this.unfiltered; ; localSortedSet = localSortedSet.headSet(localObject))
      {
        localObject = localSortedSet.last();
        if (this.predicate.apply(localObject))
          return localObject;
      }
    }

    public SortedSet<E> subSet(E paramE1, E paramE2)
    {
      return new FilteredSortedSet(((SortedSet)this.unfiltered).subSet(paramE1, paramE2), this.predicate);
    }

    public SortedSet<E> tailSet(E paramE)
    {
      return new FilteredSortedSet(((SortedSet)this.unfiltered).tailSet(paramE), this.predicate);
    }
  }

  static abstract class InvertibleFunction<A, B>
    implements Function<A, B>
  {
    public InvertibleFunction<B, A> inverse()
    {
      return new InvertibleFunction()
      {
        public A apply(B paramAnonymousB)
        {
          return Sets.InvertibleFunction.this.invert(paramAnonymousB);
        }

        public Sets.InvertibleFunction<A, B> inverse()
        {
          return Sets.InvertibleFunction.this;
        }

        B invert(A paramAnonymousA)
        {
          return Sets.InvertibleFunction.this.apply(paramAnonymousA);
        }
      };
    }

    abstract A invert(B paramB);
  }

  private static final class PowerSet<E> extends AbstractSet<Set<E>>
  {
    final ImmutableList<E> inputList;
    final ImmutableSet<E> inputSet;
    final int powerSetSize;

    PowerSet(ImmutableSet<E> paramImmutableSet)
    {
      this.inputSet = paramImmutableSet;
      this.inputList = paramImmutableSet.asList();
      this.powerSetSize = (1 << paramImmutableSet.size());
    }

    public boolean contains(@Nullable Object paramObject)
    {
      if ((paramObject instanceof Set))
      {
        Set localSet = (Set)paramObject;
        return this.inputSet.containsAll(localSet);
      }
      return false;
    }

    public boolean equals(@Nullable Object paramObject)
    {
      if ((paramObject instanceof PowerSet))
      {
        PowerSet localPowerSet = (PowerSet)paramObject;
        return this.inputSet.equals(localPowerSet.inputSet);
      }
      return super.equals(paramObject);
    }

    public int hashCode()
    {
      return this.inputSet.hashCode() << -1 + this.inputSet.size();
    }

    public boolean isEmpty()
    {
      return false;
    }

    public Iterator<Set<E>> iterator()
    {
      return new AbstractIndexedListIterator(this.powerSetSize)
      {
        protected Set<E> get(final int paramAnonymousInt)
        {
          return new AbstractSet()
          {
            public Iterator<E> iterator()
            {
              return new Sets.PowerSet.BitFilteredSetIterator(Sets.PowerSet.this.inputList, paramAnonymousInt);
            }

            public int size()
            {
              return Integer.bitCount(paramAnonymousInt);
            }
          };
        }
      };
    }

    public int size()
    {
      return this.powerSetSize;
    }

    public String toString()
    {
      return "powerSet(" + this.inputSet + ")";
    }

    private static final class BitFilteredSetIterator<E> extends UnmodifiableIterator<E>
    {
      final ImmutableList<E> input;
      int remainingSetBits;

      BitFilteredSetIterator(ImmutableList<E> paramImmutableList, int paramInt)
      {
        this.input = paramImmutableList;
        this.remainingSetBits = paramInt;
      }

      public boolean hasNext()
      {
        return this.remainingSetBits != 0;
      }

      public E next()
      {
        int i = Integer.numberOfTrailingZeros(this.remainingSetBits);
        if (i == 32)
          throw new NoSuchElementException();
        int j = 1 << i;
        this.remainingSetBits &= (j ^ 0xFFFFFFFF);
        return this.input.get(i);
      }
    }
  }

  private static class SetFromMap<E> extends AbstractSet<E>
    implements Set<E>, Serializable
  {

    @GwtIncompatible("not needed in emulated source")
    private static final long serialVersionUID;
    private final Map<E, Boolean> m;
    private transient Set<E> s;

    SetFromMap(Map<E, Boolean> paramMap)
    {
      Preconditions.checkArgument(paramMap.isEmpty(), "Map is non-empty");
      this.m = paramMap;
      this.s = paramMap.keySet();
    }

    @GwtIncompatible("java.io.ObjectInputStream")
    private void readObject(ObjectInputStream paramObjectInputStream)
      throws IOException, ClassNotFoundException
    {
      paramObjectInputStream.defaultReadObject();
      this.s = this.m.keySet();
    }

    public boolean add(E paramE)
    {
      return this.m.put(paramE, Boolean.TRUE) == null;
    }

    public void clear()
    {
      this.m.clear();
    }

    public boolean contains(Object paramObject)
    {
      return this.m.containsKey(paramObject);
    }

    public boolean containsAll(Collection<?> paramCollection)
    {
      return this.s.containsAll(paramCollection);
    }

    public boolean equals(@Nullable Object paramObject)
    {
      return (this == paramObject) || (this.s.equals(paramObject));
    }

    public int hashCode()
    {
      return this.s.hashCode();
    }

    public boolean isEmpty()
    {
      return this.m.isEmpty();
    }

    public Iterator<E> iterator()
    {
      return this.s.iterator();
    }

    public boolean remove(Object paramObject)
    {
      return this.m.remove(paramObject) != null;
    }

    public boolean removeAll(Collection<?> paramCollection)
    {
      return this.s.removeAll(paramCollection);
    }

    public boolean retainAll(Collection<?> paramCollection)
    {
      return this.s.retainAll(paramCollection);
    }

    public int size()
    {
      return this.m.size();
    }

    public Object[] toArray()
    {
      return this.s.toArray();
    }

    public <T> T[] toArray(T[] paramArrayOfT)
    {
      return this.s.toArray(paramArrayOfT);
    }

    public String toString()
    {
      return this.s.toString();
    }
  }

  public static abstract class SetView<E> extends AbstractSet<E>
  {
    public <S extends Set<E>> S copyInto(S paramS)
    {
      paramS.addAll(this);
      return paramS;
    }

    public ImmutableSet<E> immutableCopy()
    {
      return ImmutableSet.copyOf(this);
    }
  }

  private static class TransformedSet<A, B> extends AbstractSet<B>
  {
    final Sets.InvertibleFunction<A, B> bijection;
    final Set<A> delegate;

    TransformedSet(Set<A> paramSet, Sets.InvertibleFunction<A, B> paramInvertibleFunction)
    {
      this.delegate = paramSet;
      this.bijection = paramInvertibleFunction;
    }

    public boolean add(B paramB)
    {
      return this.delegate.add(this.bijection.invert(paramB));
    }

    public void clear()
    {
      this.delegate.clear();
    }

    public boolean contains(Object paramObject)
    {
      Object localObject = this.bijection.invert(paramObject);
      return (this.delegate.contains(localObject)) && (Objects.equal(this.bijection.apply(localObject), paramObject));
    }

    public Iterator<B> iterator()
    {
      return Iterators.transform(this.delegate.iterator(), this.bijection);
    }

    public boolean remove(Object paramObject)
    {
      return (contains(paramObject)) && (this.delegate.remove(this.bijection.invert(paramObject)));
    }

    public int size()
    {
      return this.delegate.size();
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.Sets
 * JD-Core Version:    0.6.2
 */