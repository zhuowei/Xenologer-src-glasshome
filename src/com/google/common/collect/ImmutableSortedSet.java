package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.SortedSet;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true, serializable=true)
public abstract class ImmutableSortedSet<E> extends ImmutableSortedSetFauxverideShim<E>
  implements SortedSet<E>, SortedIterable<E>
{
  private static final ImmutableSortedSet<Comparable> NATURAL_EMPTY_SET = new EmptyImmutableSortedSet(NATURAL_ORDER);
  private static final Comparator<Comparable> NATURAL_ORDER = Ordering.natural();
  final transient Comparator<? super E> comparator;

  ImmutableSortedSet(Comparator<? super E> paramComparator)
  {
    this.comparator = paramComparator;
  }

  public static <E> ImmutableSortedSet<E> copyOf(Iterable<? extends E> paramIterable)
  {
    return copyOf(Ordering.natural(), paramIterable);
  }

  public static <E> ImmutableSortedSet<E> copyOf(Collection<? extends E> paramCollection)
  {
    return copyOf(Ordering.natural(), paramCollection);
  }

  public static <E> ImmutableSortedSet<E> copyOf(Comparator<? super E> paramComparator, Iterable<? extends E> paramIterable)
  {
    Preconditions.checkNotNull(paramComparator);
    return copyOfInternal(paramComparator, paramIterable);
  }

  public static <E> ImmutableSortedSet<E> copyOf(Comparator<? super E> paramComparator, Collection<? extends E> paramCollection)
  {
    Preconditions.checkNotNull(paramComparator);
    return copyOfInternal(paramComparator, paramCollection);
  }

  public static <E> ImmutableSortedSet<E> copyOf(Comparator<? super E> paramComparator, Iterator<? extends E> paramIterator)
  {
    Preconditions.checkNotNull(paramComparator);
    return copyOfInternal(paramComparator, paramIterator);
  }

  public static <E> ImmutableSortedSet<E> copyOf(Iterator<? extends E> paramIterator)
  {
    return copyOfInternal(Ordering.natural(), paramIterator);
  }

  public static <E extends Comparable<? super E>> ImmutableSortedSet<E> copyOf(E[] paramArrayOfE)
  {
    return copyOf(Ordering.natural(), Arrays.asList(paramArrayOfE));
  }

  private static <E> ImmutableSortedSet<E> copyOfInternal(Comparator<? super E> paramComparator, Iterable<? extends E> paramIterable)
  {
    if ((SortedIterables.hasSameComparator(paramComparator, paramIterable)) && ((paramIterable instanceof ImmutableSortedSet)))
    {
      ImmutableSortedSet localImmutableSortedSet = (ImmutableSortedSet)paramIterable;
      if (!localImmutableSortedSet.isPartialView())
        return localImmutableSortedSet;
    }
    ImmutableList localImmutableList = ImmutableList.copyOf(SortedIterables.sortedUnique(paramComparator, paramIterable));
    if (localImmutableList.isEmpty());
    for (Object localObject = emptySet(paramComparator); ; localObject = new RegularImmutableSortedSet(localImmutableList, paramComparator))
      return localObject;
  }

  private static <E> ImmutableSortedSet<E> copyOfInternal(Comparator<? super E> paramComparator, Iterator<? extends E> paramIterator)
  {
    ImmutableList localImmutableList = ImmutableList.copyOf(SortedIterables.sortedUnique(paramComparator, paramIterator));
    if (localImmutableList.isEmpty())
      return emptySet(paramComparator);
    return new RegularImmutableSortedSet(localImmutableList, paramComparator);
  }

  public static <E> ImmutableSortedSet<E> copyOfSorted(SortedSet<E> paramSortedSet)
  {
    Comparator localComparator = paramSortedSet.comparator();
    if (localComparator == null)
      localComparator = NATURAL_ORDER;
    return copyOfInternal(localComparator, paramSortedSet);
  }

  private static <E> ImmutableSortedSet<E> emptySet()
  {
    return NATURAL_EMPTY_SET;
  }

  static <E> ImmutableSortedSet<E> emptySet(Comparator<? super E> paramComparator)
  {
    if (NATURAL_ORDER.equals(paramComparator))
      return emptySet();
    return new EmptyImmutableSortedSet(paramComparator);
  }

  public static <E extends Comparable<E>> Builder<E> naturalOrder()
  {
    return new Builder(Ordering.natural());
  }

  public static <E> ImmutableSortedSet<E> of()
  {
    return emptySet();
  }

  public static <E extends Comparable<? super E>> ImmutableSortedSet<E> of(E paramE)
  {
    return new RegularImmutableSortedSet(ImmutableList.of(paramE), Ordering.natural());
  }

  public static <E extends Comparable<? super E>> ImmutableSortedSet<E> of(E paramE1, E paramE2)
  {
    return copyOf(Ordering.natural(), Arrays.asList(new Comparable[] { paramE1, paramE2 }));
  }

  public static <E extends Comparable<? super E>> ImmutableSortedSet<E> of(E paramE1, E paramE2, E paramE3)
  {
    return copyOf(Ordering.natural(), Arrays.asList(new Comparable[] { paramE1, paramE2, paramE3 }));
  }

  public static <E extends Comparable<? super E>> ImmutableSortedSet<E> of(E paramE1, E paramE2, E paramE3, E paramE4)
  {
    return copyOf(Ordering.natural(), Arrays.asList(new Comparable[] { paramE1, paramE2, paramE3, paramE4 }));
  }

  public static <E extends Comparable<? super E>> ImmutableSortedSet<E> of(E paramE1, E paramE2, E paramE3, E paramE4, E paramE5)
  {
    return copyOf(Ordering.natural(), Arrays.asList(new Comparable[] { paramE1, paramE2, paramE3, paramE4, paramE5 }));
  }

  public static <E extends Comparable<? super E>> ImmutableSortedSet<E> of(E paramE1, E paramE2, E paramE3, E paramE4, E paramE5, E paramE6, E[] paramArrayOfE)
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

  private void readObject(ObjectInputStream paramObjectInputStream)
    throws InvalidObjectException
  {
    throw new InvalidObjectException("Use SerializedForm");
  }

  public static <E extends Comparable<E>> Builder<E> reverseOrder()
  {
    return new Builder(Ordering.natural().reverse());
  }

  static int unsafeCompare(Comparator<?> paramComparator, Object paramObject1, Object paramObject2)
  {
    return paramComparator.compare(paramObject1, paramObject2);
  }

  public Comparator<? super E> comparator()
  {
    return this.comparator;
  }

  public ImmutableSortedSet<E> headSet(E paramE)
  {
    return headSet(paramE, false);
  }

  ImmutableSortedSet<E> headSet(E paramE, boolean paramBoolean)
  {
    return headSetImpl(Preconditions.checkNotNull(paramE), paramBoolean);
  }

  abstract ImmutableSortedSet<E> headSetImpl(E paramE, boolean paramBoolean);

  abstract int indexOf(@Nullable Object paramObject);

  public abstract UnmodifiableIterator<E> iterator();

  public ImmutableSortedSet<E> subSet(E paramE1, E paramE2)
  {
    return subSet(paramE1, true, paramE2, false);
  }

  ImmutableSortedSet<E> subSet(E paramE1, boolean paramBoolean1, E paramE2, boolean paramBoolean2)
  {
    Preconditions.checkNotNull(paramE1);
    Preconditions.checkNotNull(paramE2);
    if (this.comparator.compare(paramE1, paramE2) <= 0);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool);
      return subSetImpl(paramE1, paramBoolean1, paramE2, paramBoolean2);
    }
  }

  abstract ImmutableSortedSet<E> subSetImpl(E paramE1, boolean paramBoolean1, E paramE2, boolean paramBoolean2);

  public ImmutableSortedSet<E> tailSet(E paramE)
  {
    return tailSet(paramE, true);
  }

  ImmutableSortedSet<E> tailSet(E paramE, boolean paramBoolean)
  {
    return tailSetImpl(Preconditions.checkNotNull(paramE), paramBoolean);
  }

  abstract ImmutableSortedSet<E> tailSetImpl(E paramE, boolean paramBoolean);

  int unsafeCompare(Object paramObject1, Object paramObject2)
  {
    return unsafeCompare(this.comparator, paramObject1, paramObject2);
  }

  Object writeReplace()
  {
    return new SerializedForm(this.comparator, toArray());
  }

  public static final class Builder<E> extends ImmutableSet.Builder<E>
  {
    private final Comparator<? super E> comparator;

    public Builder(Comparator<? super E> paramComparator)
    {
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

    public ImmutableSortedSet<E> build()
    {
      return ImmutableSortedSet.copyOfInternal(this.comparator, this.contents.iterator());
    }
  }

  private static class SerializedForm<E>
    implements Serializable
  {
    private static final long serialVersionUID;
    final Comparator<? super E> comparator;
    final Object[] elements;

    public SerializedForm(Comparator<? super E> paramComparator, Object[] paramArrayOfObject)
    {
      this.comparator = paramComparator;
      this.elements = paramArrayOfObject;
    }

    Object readResolve()
    {
      return new ImmutableSortedSet.Builder(this.comparator).add((Object[])this.elements).build();
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ImmutableSortedSet
 * JD-Core Version:    0.6.2
 */