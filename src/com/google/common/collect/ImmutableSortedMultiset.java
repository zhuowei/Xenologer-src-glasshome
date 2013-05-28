package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Set;

@GwtIncompatible("hasn't been tested yet")
abstract class ImmutableSortedMultiset<E> extends ImmutableSortedMultisetFauxverideShim<E>
  implements SortedMultiset<E>
{
  private static final ImmutableSortedMultiset<Comparable> NATURAL_EMPTY_MULTISET = new EmptyImmutableSortedMultiset(NATURAL_ORDER);
  private static final Comparator<Comparable> NATURAL_ORDER = Ordering.natural();
  private final transient Comparator<? super E> comparator;
  transient ImmutableSortedMultiset<E> descendingMultiset;
  private transient ImmutableSortedSet<E> elementSet;
  private transient Comparator<? super E> reverseComparator;

  ImmutableSortedMultiset(Comparator<? super E> paramComparator)
  {
    this.comparator = ((Comparator)Preconditions.checkNotNull(paramComparator));
  }

  public static <E> ImmutableSortedMultiset<E> copyOf(Iterable<? extends E> paramIterable)
  {
    return copyOf(Ordering.natural(), paramIterable);
  }

  public static <E> ImmutableSortedMultiset<E> copyOf(Comparator<? super E> paramComparator, Iterable<? extends E> paramIterable)
  {
    Preconditions.checkNotNull(paramComparator);
    return copyOfInternal(paramComparator, paramIterable);
  }

  public static <E> ImmutableSortedMultiset<E> copyOf(Comparator<? super E> paramComparator, Iterator<? extends E> paramIterator)
  {
    Preconditions.checkNotNull(paramComparator);
    return copyOfInternal(paramComparator, paramIterator);
  }

  public static <E> ImmutableSortedMultiset<E> copyOf(Iterator<? extends E> paramIterator)
  {
    return copyOfInternal(Ordering.natural(), paramIterator);
  }

  public static <E extends Comparable<? super E>> ImmutableSortedMultiset<E> copyOf(E[] paramArrayOfE)
  {
    return copyOf(Ordering.natural(), Arrays.asList(paramArrayOfE));
  }

  private static <E> ImmutableSortedMultiset<E> copyOfInternal(Comparator<? super E> paramComparator, Iterable<? extends E> paramIterable)
  {
    if ((SortedIterables.hasSameComparator(paramComparator, paramIterable)) && ((paramIterable instanceof ImmutableSortedMultiset)) && (!((ImmutableSortedMultiset)paramIterable).isPartialView()))
      return (ImmutableSortedMultiset)paramIterable;
    ImmutableList localImmutableList = ImmutableList.copyOf(SortedIterables.sortedCounts(paramComparator, paramIterable));
    if (localImmutableList.isEmpty())
      return emptyMultiset(paramComparator);
    verifyEntries(localImmutableList);
    return RegularImmutableSortedMultiset.createFromSorted(paramComparator, localImmutableList);
  }

  private static <E> ImmutableSortedMultiset<E> copyOfInternal(Comparator<? super E> paramComparator, Iterator<? extends E> paramIterator)
  {
    ImmutableList localImmutableList = ImmutableList.copyOf(SortedIterables.sortedCounts(paramComparator, paramIterator));
    if (localImmutableList.isEmpty())
      return emptyMultiset(paramComparator);
    verifyEntries(localImmutableList);
    return RegularImmutableSortedMultiset.createFromSorted(paramComparator, localImmutableList);
  }

  public static <E> ImmutableSortedMultiset<E> copyOfSorted(SortedMultiset<E> paramSortedMultiset)
  {
    Comparator localComparator = paramSortedMultiset.comparator();
    if (localComparator == null)
      localComparator = NATURAL_ORDER;
    return copyOfInternal(localComparator, paramSortedMultiset);
  }

  static <E> ImmutableSortedMultiset<E> emptyMultiset(Comparator<? super E> paramComparator)
  {
    if (NATURAL_ORDER.equals(paramComparator))
      return NATURAL_EMPTY_MULTISET;
    return new EmptyImmutableSortedMultiset(paramComparator);
  }

  public static <E extends Comparable<E>> Builder<E> naturalOrder()
  {
    return new Builder(Ordering.natural());
  }

  public static <E> ImmutableSortedMultiset<E> of()
  {
    return NATURAL_EMPTY_MULTISET;
  }

  public static <E extends Comparable<? super E>> ImmutableSortedMultiset<E> of(E paramE)
  {
    return RegularImmutableSortedMultiset.createFromSorted(NATURAL_ORDER, ImmutableList.of(Multisets.immutableEntry(Preconditions.checkNotNull(paramE), 1)));
  }

  public static <E extends Comparable<? super E>> ImmutableSortedMultiset<E> of(E paramE1, E paramE2)
  {
    return copyOf(Ordering.natural(), Arrays.asList(new Comparable[] { paramE1, paramE2 }));
  }

  public static <E extends Comparable<? super E>> ImmutableSortedMultiset<E> of(E paramE1, E paramE2, E paramE3)
  {
    return copyOf(Ordering.natural(), Arrays.asList(new Comparable[] { paramE1, paramE2, paramE3 }));
  }

  public static <E extends Comparable<? super E>> ImmutableSortedMultiset<E> of(E paramE1, E paramE2, E paramE3, E paramE4)
  {
    return copyOf(Ordering.natural(), Arrays.asList(new Comparable[] { paramE1, paramE2, paramE3, paramE4 }));
  }

  public static <E extends Comparable<? super E>> ImmutableSortedMultiset<E> of(E paramE1, E paramE2, E paramE3, E paramE4, E paramE5)
  {
    return copyOf(Ordering.natural(), Arrays.asList(new Comparable[] { paramE1, paramE2, paramE3, paramE4, paramE5 }));
  }

  public static <E extends Comparable<? super E>> ImmutableSortedMultiset<E> of(E paramE1, E paramE2, E paramE3, E paramE4, E paramE5, E paramE6, E[] paramArrayOfE)
  {
    ArrayList localArrayList = new ArrayList(6 + paramArrayOfE.length);
    Collections.addAll(localArrayList, new Comparable[] { paramE1, paramE2, paramE3, paramE4, paramE5, paramE6 });
    Collections.addAll(localArrayList, paramArrayOfE);
    return copyOf(Ordering.natural(), localArrayList);
  }

  public static <E> Builder<E> orderedBy(Comparator<E> paramComparator)
  {
    return new Builder(paramComparator);
  }

  public static <E extends Comparable<E>> Builder<E> reverseOrder()
  {
    return new Builder(Ordering.natural().reverse());
  }

  private static <E> void verifyEntries(Collection<Multiset.Entry<E>> paramCollection)
  {
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
      Preconditions.checkNotNull(((Multiset.Entry)localIterator.next()).getElement());
  }

  public Comparator<? super E> comparator()
  {
    return this.comparator;
  }

  abstract ImmutableSortedSet<E> createDescendingElementSet();

  abstract ImmutableSortedSet<E> createElementSet();

  abstract UnmodifiableIterator<Multiset.Entry<E>> descendingEntryIterator();

  public ImmutableSortedMultiset<E> descendingMultiset()
  {
    Object localObject = this.descendingMultiset;
    if (localObject == null)
    {
      localObject = new DescendingImmutableSortedMultiset(this);
      this.descendingMultiset = ((ImmutableSortedMultiset)localObject);
    }
    return localObject;
  }

  public ImmutableSortedSet<E> elementSet()
  {
    ImmutableSortedSet localImmutableSortedSet = this.elementSet;
    if (localImmutableSortedSet == null)
    {
      localImmutableSortedSet = createElementSet();
      this.elementSet = localImmutableSortedSet;
    }
    return localImmutableSortedSet;
  }

  public abstract ImmutableSortedMultiset<E> headMultiset(E paramE, BoundType paramBoundType);

  public final Multiset.Entry<E> pollFirstEntry()
  {
    throw new UnsupportedOperationException();
  }

  public Multiset.Entry<E> pollLastEntry()
  {
    throw new UnsupportedOperationException();
  }

  Comparator<? super E> reverseComparator()
  {
    Object localObject = this.reverseComparator;
    if (localObject == null)
    {
      localObject = Ordering.from(this.comparator).reverse();
      this.reverseComparator = ((Comparator)localObject);
    }
    return localObject;
  }

  public ImmutableSortedMultiset<E> subMultiset(E paramE1, BoundType paramBoundType1, E paramE2, BoundType paramBoundType2)
  {
    return tailMultiset(paramE1, paramBoundType1).headMultiset(paramE2, paramBoundType2);
  }

  public abstract ImmutableSortedMultiset<E> tailMultiset(E paramE, BoundType paramBoundType);

  Comparator<Object> unsafeComparator()
  {
    return this.comparator;
  }

  Object writeReplace()
  {
    return new SerializedForm(this);
  }

  public static class Builder<E> extends ImmutableMultiset.Builder<E>
  {
    private final Comparator<? super E> comparator;

    public Builder(Comparator<? super E> paramComparator)
    {
      super();
      this.comparator = ((Comparator)Preconditions.checkNotNull(paramComparator));
    }

    public Builder<E> add(E paramE)
    {
      super.add(paramE);
      return this;
    }

    public Builder<E> add(E[] paramArrayOfE)
    {
      super.add(paramArrayOfE);
      return this;
    }

    public Builder<E> addAll(Iterable<? extends E> paramIterable)
    {
      super.addAll(paramIterable);
      return this;
    }

    public Builder<E> addAll(Iterator<? extends E> paramIterator)
    {
      super.addAll(paramIterator);
      return this;
    }

    public Builder<E> addCopies(E paramE, int paramInt)
    {
      super.addCopies(paramE, paramInt);
      return this;
    }

    public ImmutableSortedMultiset<E> build()
    {
      return ImmutableSortedMultiset.copyOf(this.comparator, this.contents);
    }

    public Builder<E> setCount(E paramE, int paramInt)
    {
      super.setCount(paramE, paramInt);
      return this;
    }
  }

  private static final class SerializedForm
    implements Serializable
  {
    Comparator comparator;
    int[] counts;
    Object[] elements;

    SerializedForm(SortedMultiset<?> paramSortedMultiset)
    {
      this.comparator = paramSortedMultiset.comparator();
      int i = paramSortedMultiset.entrySet().size();
      this.elements = new Object[i];
      this.counts = new int[i];
      int j = 0;
      Iterator localIterator = paramSortedMultiset.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Multiset.Entry localEntry = (Multiset.Entry)localIterator.next();
        this.elements[j] = localEntry.getElement();
        this.counts[j] = localEntry.getCount();
        j++;
      }
    }

    Object readResolve()
    {
      int i = this.elements.length;
      ImmutableSortedMultiset.Builder localBuilder = ImmutableSortedMultiset.orderedBy(this.comparator);
      for (int j = 0; j < i; j++)
        localBuilder.addCopies(this.elements[j], this.counts[j]);
      return localBuilder.build();
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ImmutableSortedMultiset
 * JD-Core Version:    0.6.2
 */