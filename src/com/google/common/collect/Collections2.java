package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.base.Joiner;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

@GwtCompatible
public final class Collections2
{
  static final Joiner STANDARD_JOINER = Joiner.on(", ");

  static <T> Collection<T> cast(Iterable<T> paramIterable)
  {
    return (Collection)paramIterable;
  }

  static boolean containsAllImpl(Collection<?> paramCollection1, Collection<?> paramCollection2)
  {
    Preconditions.checkNotNull(paramCollection1);
    Iterator localIterator = paramCollection2.iterator();
    while (localIterator.hasNext())
      if (!paramCollection1.contains(localIterator.next()))
        return false;
    return true;
  }

  public static <E> Collection<E> filter(Collection<E> paramCollection, Predicate<? super E> paramPredicate)
  {
    if ((paramCollection instanceof FilteredCollection))
      return ((FilteredCollection)paramCollection).createCombined(paramPredicate);
    return new FilteredCollection((Collection)Preconditions.checkNotNull(paramCollection), (Predicate)Preconditions.checkNotNull(paramPredicate));
  }

  static StringBuilder newStringBuilderForCollection(int paramInt)
  {
    if (paramInt >= 0);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool, "size must be non-negative");
      return new StringBuilder((int)Math.min(8L * paramInt, 1073741824L));
    }
  }

  static boolean safeContains(Collection<?> paramCollection, Object paramObject)
  {
    try
    {
      boolean bool = paramCollection.contains(paramObject);
      return bool;
    }
    catch (ClassCastException localClassCastException)
    {
    }
    return false;
  }

  static String toStringImpl(Collection<?> paramCollection)
  {
    StringBuilder localStringBuilder = newStringBuilderForCollection(paramCollection.size()).append('[');
    STANDARD_JOINER.appendTo(localStringBuilder, Iterables.transform(paramCollection, new Function()
    {
      public Object apply(Object paramAnonymousObject)
      {
        if (paramAnonymousObject == this.val$collection)
          paramAnonymousObject = "(this Collection)";
        return paramAnonymousObject;
      }
    }));
    return ']';
  }

  public static <F, T> Collection<T> transform(Collection<F> paramCollection, Function<? super F, T> paramFunction)
  {
    return new TransformedCollection(paramCollection, paramFunction);
  }

  static class FilteredCollection<E>
    implements Collection<E>
  {
    final Predicate<? super E> predicate;
    final Collection<E> unfiltered;

    FilteredCollection(Collection<E> paramCollection, Predicate<? super E> paramPredicate)
    {
      this.unfiltered = paramCollection;
      this.predicate = paramPredicate;
    }

    public boolean add(E paramE)
    {
      Preconditions.checkArgument(this.predicate.apply(paramE));
      return this.unfiltered.add(paramE);
    }

    public boolean addAll(Collection<? extends E> paramCollection)
    {
      Iterator localIterator = paramCollection.iterator();
      while (localIterator.hasNext())
      {
        Object localObject = localIterator.next();
        Preconditions.checkArgument(this.predicate.apply(localObject));
      }
      return this.unfiltered.addAll(paramCollection);
    }

    public void clear()
    {
      Iterables.removeIf(this.unfiltered, this.predicate);
    }

    public boolean contains(Object paramObject)
    {
      try
      {
        boolean bool1 = this.predicate.apply(paramObject);
        boolean bool2 = false;
        if (bool1)
        {
          boolean bool3 = this.unfiltered.contains(paramObject);
          bool2 = false;
          if (bool3)
            bool2 = true;
        }
        return bool2;
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

    public boolean containsAll(Collection<?> paramCollection)
    {
      Iterator localIterator = paramCollection.iterator();
      while (localIterator.hasNext())
        if (!contains(localIterator.next()))
          return false;
      return true;
    }

    FilteredCollection<E> createCombined(Predicate<? super E> paramPredicate)
    {
      return new FilteredCollection(this.unfiltered, Predicates.and(this.predicate, paramPredicate));
    }

    public boolean isEmpty()
    {
      return !Iterators.any(this.unfiltered.iterator(), this.predicate);
    }

    public Iterator<E> iterator()
    {
      return Iterators.filter(this.unfiltered.iterator(), this.predicate);
    }

    public boolean remove(Object paramObject)
    {
      try
      {
        boolean bool1 = this.predicate.apply(paramObject);
        boolean bool2 = false;
        if (bool1)
        {
          boolean bool3 = this.unfiltered.remove(paramObject);
          bool2 = false;
          if (bool3)
            bool2 = true;
        }
        return bool2;
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

    public boolean removeAll(final Collection<?> paramCollection)
    {
      Preconditions.checkNotNull(paramCollection);
      Predicate local1 = new Predicate()
      {
        public boolean apply(E paramAnonymousE)
        {
          return (Collections2.FilteredCollection.this.predicate.apply(paramAnonymousE)) && (paramCollection.contains(paramAnonymousE));
        }
      };
      return Iterables.removeIf(this.unfiltered, local1);
    }

    public boolean retainAll(final Collection<?> paramCollection)
    {
      Preconditions.checkNotNull(paramCollection);
      Predicate local2 = new Predicate()
      {
        public boolean apply(E paramAnonymousE)
        {
          return (Collections2.FilteredCollection.this.predicate.apply(paramAnonymousE)) && (!paramCollection.contains(paramAnonymousE));
        }
      };
      return Iterables.removeIf(this.unfiltered, local2);
    }

    public int size()
    {
      return Iterators.size(iterator());
    }

    public Object[] toArray()
    {
      return Lists.newArrayList(iterator()).toArray();
    }

    public <T> T[] toArray(T[] paramArrayOfT)
    {
      return Lists.newArrayList(iterator()).toArray(paramArrayOfT);
    }

    public String toString()
    {
      return Iterators.toString(iterator());
    }
  }

  static class TransformedCollection<F, T> extends AbstractCollection<T>
  {
    final Collection<F> fromCollection;
    final Function<? super F, ? extends T> function;

    TransformedCollection(Collection<F> paramCollection, Function<? super F, ? extends T> paramFunction)
    {
      this.fromCollection = ((Collection)Preconditions.checkNotNull(paramCollection));
      this.function = ((Function)Preconditions.checkNotNull(paramFunction));
    }

    public void clear()
    {
      this.fromCollection.clear();
    }

    public boolean isEmpty()
    {
      return this.fromCollection.isEmpty();
    }

    public Iterator<T> iterator()
    {
      return Iterators.transform(this.fromCollection.iterator(), this.function);
    }

    public int size()
    {
      return this.fromCollection.size();
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.Collections2
 * JD-Core Version:    0.6.2
 */