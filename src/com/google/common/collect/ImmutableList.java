package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true, serializable=true)
public abstract class ImmutableList<E> extends ImmutableCollection<E>
  implements List<E>, RandomAccess
{
  public static <E> Builder<E> builder()
  {
    return new Builder();
  }

  private static Object checkElementNotNull(Object paramObject, int paramInt)
  {
    if (paramObject == null)
      throw new NullPointerException("at index " + paramInt);
    return paramObject;
  }

  private static <E> ImmutableList<E> construct(Object[] paramArrayOfObject)
  {
    for (int i = 0; i < paramArrayOfObject.length; i++)
      checkElementNotNull(paramArrayOfObject[i], i);
    return new RegularImmutableList(paramArrayOfObject);
  }

  private static <E> ImmutableList<E> copyFromCollection(Collection<? extends E> paramCollection)
  {
    Object[] arrayOfObject = paramCollection.toArray();
    switch (arrayOfObject.length)
    {
    default:
      return construct(arrayOfObject);
    case 0:
      return of();
    case 1:
    }
    return new SingletonImmutableList(arrayOfObject[0]);
  }

  public static <E> ImmutableList<E> copyOf(Iterable<? extends E> paramIterable)
  {
    Preconditions.checkNotNull(paramIterable);
    if ((paramIterable instanceof Collection))
      return copyOf(Collections2.cast(paramIterable));
    return copyOf(paramIterable.iterator());
  }

  public static <E> ImmutableList<E> copyOf(Collection<? extends E> paramCollection)
  {
    if ((paramCollection instanceof ImmutableCollection))
    {
      ImmutableList localImmutableList = ((ImmutableCollection)paramCollection).asList();
      if (localImmutableList.isPartialView())
        localImmutableList = copyFromCollection(localImmutableList);
      return localImmutableList;
    }
    return copyFromCollection(paramCollection);
  }

  public static <E> ImmutableList<E> copyOf(Iterator<? extends E> paramIterator)
  {
    return copyFromCollection(Lists.newArrayList(paramIterator));
  }

  public static <E> ImmutableList<E> copyOf(E[] paramArrayOfE)
  {
    switch (paramArrayOfE.length)
    {
    default:
      return construct((Object[])paramArrayOfE.clone());
    case 0:
      return of();
    case 1:
    }
    return new SingletonImmutableList(paramArrayOfE[0]);
  }

  public static <E> ImmutableList<E> of()
  {
    return EmptyImmutableList.INSTANCE;
  }

  public static <E> ImmutableList<E> of(E paramE)
  {
    return new SingletonImmutableList(paramE);
  }

  public static <E> ImmutableList<E> of(E paramE1, E paramE2)
  {
    return construct(new Object[] { paramE1, paramE2 });
  }

  public static <E> ImmutableList<E> of(E paramE1, E paramE2, E paramE3)
  {
    return construct(new Object[] { paramE1, paramE2, paramE3 });
  }

  public static <E> ImmutableList<E> of(E paramE1, E paramE2, E paramE3, E paramE4)
  {
    return construct(new Object[] { paramE1, paramE2, paramE3, paramE4 });
  }

  public static <E> ImmutableList<E> of(E paramE1, E paramE2, E paramE3, E paramE4, E paramE5)
  {
    return construct(new Object[] { paramE1, paramE2, paramE3, paramE4, paramE5 });
  }

  public static <E> ImmutableList<E> of(E paramE1, E paramE2, E paramE3, E paramE4, E paramE5, E paramE6)
  {
    return construct(new Object[] { paramE1, paramE2, paramE3, paramE4, paramE5, paramE6 });
  }

  public static <E> ImmutableList<E> of(E paramE1, E paramE2, E paramE3, E paramE4, E paramE5, E paramE6, E paramE7)
  {
    return construct(new Object[] { paramE1, paramE2, paramE3, paramE4, paramE5, paramE6, paramE7 });
  }

  public static <E> ImmutableList<E> of(E paramE1, E paramE2, E paramE3, E paramE4, E paramE5, E paramE6, E paramE7, E paramE8)
  {
    return construct(new Object[] { paramE1, paramE2, paramE3, paramE4, paramE5, paramE6, paramE7, paramE8 });
  }

  public static <E> ImmutableList<E> of(E paramE1, E paramE2, E paramE3, E paramE4, E paramE5, E paramE6, E paramE7, E paramE8, E paramE9)
  {
    return construct(new Object[] { paramE1, paramE2, paramE3, paramE4, paramE5, paramE6, paramE7, paramE8, paramE9 });
  }

  public static <E> ImmutableList<E> of(E paramE1, E paramE2, E paramE3, E paramE4, E paramE5, E paramE6, E paramE7, E paramE8, E paramE9, E paramE10)
  {
    return construct(new Object[] { paramE1, paramE2, paramE3, paramE4, paramE5, paramE6, paramE7, paramE8, paramE9, paramE10 });
  }

  public static <E> ImmutableList<E> of(E paramE1, E paramE2, E paramE3, E paramE4, E paramE5, E paramE6, E paramE7, E paramE8, E paramE9, E paramE10, E paramE11)
  {
    return construct(new Object[] { paramE1, paramE2, paramE3, paramE4, paramE5, paramE6, paramE7, paramE8, paramE9, paramE10, paramE11 });
  }

  public static <E> ImmutableList<E> of(E paramE1, E paramE2, E paramE3, E paramE4, E paramE5, E paramE6, E paramE7, E paramE8, E paramE9, E paramE10, E paramE11, E paramE12, E[] paramArrayOfE)
  {
    Object[] arrayOfObject = new Object[12 + paramArrayOfE.length];
    arrayOfObject[0] = paramE1;
    arrayOfObject[1] = paramE2;
    arrayOfObject[2] = paramE3;
    arrayOfObject[3] = paramE4;
    arrayOfObject[4] = paramE5;
    arrayOfObject[5] = paramE6;
    arrayOfObject[6] = paramE7;
    arrayOfObject[7] = paramE8;
    arrayOfObject[8] = paramE9;
    arrayOfObject[9] = paramE10;
    arrayOfObject[10] = paramE11;
    arrayOfObject[11] = paramE12;
    System.arraycopy(paramArrayOfE, 0, arrayOfObject, 12, paramArrayOfE.length);
    return construct(arrayOfObject);
  }

  private void readObject(ObjectInputStream paramObjectInputStream)
    throws InvalidObjectException
  {
    throw new InvalidObjectException("Use SerializedForm");
  }

  public final void add(int paramInt, E paramE)
  {
    throw new UnsupportedOperationException();
  }

  public final boolean addAll(int paramInt, Collection<? extends E> paramCollection)
  {
    throw new UnsupportedOperationException();
  }

  public ImmutableList<E> asList()
  {
    return this;
  }

  public boolean equals(Object paramObject)
  {
    return Lists.equalsImpl(this, paramObject);
  }

  public int hashCode()
  {
    return Lists.hashCodeImpl(this);
  }

  public abstract int indexOf(@Nullable Object paramObject);

  public UnmodifiableIterator<E> iterator()
  {
    return listIterator();
  }

  public abstract int lastIndexOf(@Nullable Object paramObject);

  public UnmodifiableListIterator<E> listIterator()
  {
    return listIterator(0);
  }

  public abstract UnmodifiableListIterator<E> listIterator(int paramInt);

  public final E remove(int paramInt)
  {
    throw new UnsupportedOperationException();
  }

  public ImmutableList<E> reverse()
  {
    return new ReverseImmutableList(this);
  }

  public final E set(int paramInt, E paramE)
  {
    throw new UnsupportedOperationException();
  }

  public abstract ImmutableList<E> subList(int paramInt1, int paramInt2);

  Object writeReplace()
  {
    return new SerializedForm(toArray());
  }

  public static final class Builder<E> extends ImmutableCollection.Builder<E>
  {
    private final ArrayList<E> contents = Lists.newArrayList();

    public Builder<E> add(E paramE)
    {
      this.contents.add(Preconditions.checkNotNull(paramE));
      return this;
    }

    public Builder<E> add(E[] paramArrayOfE)
    {
      this.contents.ensureCapacity(this.contents.size() + paramArrayOfE.length);
      super.add(paramArrayOfE);
      return this;
    }

    public Builder<E> addAll(Iterable<? extends E> paramIterable)
    {
      if ((paramIterable instanceof Collection))
      {
        Collection localCollection = (Collection)paramIterable;
        this.contents.ensureCapacity(this.contents.size() + localCollection.size());
      }
      super.addAll(paramIterable);
      return this;
    }

    public Builder<E> addAll(Iterator<? extends E> paramIterator)
    {
      super.addAll(paramIterator);
      return this;
    }

    public ImmutableList<E> build()
    {
      return ImmutableList.copyOf(this.contents);
    }
  }

  private static class ReverseImmutableList<E> extends ImmutableList<E>
  {
    private final transient ImmutableList<E> forwardList;
    private final transient int size;

    ReverseImmutableList(ImmutableList<E> paramImmutableList)
    {
      this.forwardList = paramImmutableList;
      this.size = paramImmutableList.size();
    }

    private int reverseIndex(int paramInt)
    {
      return -1 + this.size - paramInt;
    }

    private int reversePosition(int paramInt)
    {
      return this.size - paramInt;
    }

    public boolean contains(@Nullable Object paramObject)
    {
      return this.forwardList.contains(paramObject);
    }

    public boolean containsAll(Collection<?> paramCollection)
    {
      return this.forwardList.containsAll(paramCollection);
    }

    public E get(int paramInt)
    {
      Preconditions.checkElementIndex(paramInt, this.size);
      return this.forwardList.get(reverseIndex(paramInt));
    }

    public int indexOf(@Nullable Object paramObject)
    {
      int i = this.forwardList.lastIndexOf(paramObject);
      if (i >= 0)
        return reverseIndex(i);
      return -1;
    }

    public boolean isEmpty()
    {
      return this.forwardList.isEmpty();
    }

    boolean isPartialView()
    {
      return this.forwardList.isPartialView();
    }

    public int lastIndexOf(@Nullable Object paramObject)
    {
      int i = this.forwardList.indexOf(paramObject);
      if (i >= 0)
        return reverseIndex(i);
      return -1;
    }

    public UnmodifiableListIterator<E> listIterator(int paramInt)
    {
      Preconditions.checkPositionIndex(paramInt, this.size);
      return new UnmodifiableListIterator()
      {
        public boolean hasNext()
        {
          return this.val$forward.hasPrevious();
        }

        public boolean hasPrevious()
        {
          return this.val$forward.hasNext();
        }

        public E next()
        {
          return this.val$forward.previous();
        }

        public int nextIndex()
        {
          return ImmutableList.ReverseImmutableList.this.reverseIndex(this.val$forward.previousIndex());
        }

        public E previous()
        {
          return this.val$forward.next();
        }

        public int previousIndex()
        {
          return ImmutableList.ReverseImmutableList.this.reverseIndex(this.val$forward.nextIndex());
        }
      };
    }

    public ImmutableList<E> reverse()
    {
      return this.forwardList;
    }

    public int size()
    {
      return this.size;
    }

    public ImmutableList<E> subList(int paramInt1, int paramInt2)
    {
      Preconditions.checkPositionIndexes(paramInt1, paramInt2, this.size);
      return this.forwardList.subList(reversePosition(paramInt2), reversePosition(paramInt1)).reverse();
    }
  }

  private static class SerializedForm
    implements Serializable
  {
    private static final long serialVersionUID;
    final Object[] elements;

    SerializedForm(Object[] paramArrayOfObject)
    {
      this.elements = paramArrayOfObject;
    }

    Object readResolve()
    {
      return ImmutableList.copyOf(this.elements);
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ImmutableList
 * JD-Core Version:    0.6.2
 */