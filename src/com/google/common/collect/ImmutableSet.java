package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import javax.annotation.Nullable;

@GwtCompatible(emulated=true, serializable=true)
public abstract class ImmutableSet<E> extends ImmutableCollection<E>
  implements Set<E>
{
  static final int CUTOFF = 536870912;
  static final int MAX_TABLE_SIZE = 1073741824;

  public static <E> Builder<E> builder()
  {
    return new Builder();
  }

  static int chooseTableSize(int paramInt)
  {
    if (paramInt < 536870912)
      return Integer.highestOneBit(paramInt) << 2;
    if (paramInt < 1073741824);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool, "collection too large");
      return 1073741824;
    }
  }

  private static <E> ImmutableSet<E> construct(Object[] paramArrayOfObject)
  {
    int i = chooseTableSize(paramArrayOfObject.length);
    Object[] arrayOfObject1 = new Object[i];
    int j = i - 1;
    ArrayList localArrayList = null;
    int k = 0;
    int m = 0;
    if (m < paramArrayOfObject.length)
    {
      Object localObject2 = paramArrayOfObject[m];
      int n = localObject2.hashCode();
      label152: for (int i1 = Hashing.smear(n); ; i1++)
      {
        int i2 = i1 & j;
        Object localObject3 = arrayOfObject1[i2];
        if (localObject3 == null)
        {
          if (localArrayList != null)
            localArrayList.add(localObject2);
          arrayOfObject1[i2] = localObject2;
          k += n;
        }
        while (true)
        {
          m++;
          break;
          if (!localObject3.equals(localObject2))
            break label152;
          if (localArrayList == null)
          {
            localArrayList = new ArrayList(paramArrayOfObject.length);
            for (int i3 = 0; i3 < m; i3++)
              localArrayList.add(paramArrayOfObject[i3]);
          }
        }
      }
    }
    if (localArrayList == null);
    for (Object[] arrayOfObject2 = paramArrayOfObject; arrayOfObject2.length == 1; arrayOfObject2 = localArrayList.toArray())
    {
      Object localObject1 = arrayOfObject2[0];
      SingletonImmutableSet localSingletonImmutableSet = new SingletonImmutableSet(localObject1, k);
      return localSingletonImmutableSet;
    }
    if (i > 2 * chooseTableSize(arrayOfObject2.length))
      return construct(arrayOfObject2);
    RegularImmutableSet localRegularImmutableSet = new RegularImmutableSet(arrayOfObject2, k, arrayOfObject1, j);
    return localRegularImmutableSet;
  }

  private static <E> ImmutableSet<E> copyFromCollection(Collection<? extends E> paramCollection)
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
    return of(arrayOfObject[0]);
  }

  public static <E> ImmutableSet<E> copyOf(Iterable<? extends E> paramIterable)
  {
    if ((paramIterable instanceof Collection))
      return copyOf(Collections2.cast(paramIterable));
    return copyOf(paramIterable.iterator());
  }

  public static <E> ImmutableSet<E> copyOf(Collection<? extends E> paramCollection)
  {
    if (((paramCollection instanceof ImmutableSet)) && (!(paramCollection instanceof ImmutableSortedSet)))
    {
      ImmutableSet localImmutableSet = (ImmutableSet)paramCollection;
      if (!localImmutableSet.isPartialView())
        return localImmutableSet;
    }
    return copyFromCollection(paramCollection);
  }

  public static <E> ImmutableSet<E> copyOf(Iterator<? extends E> paramIterator)
  {
    return copyFromCollection(Lists.newArrayList(paramIterator));
  }

  public static <E> ImmutableSet<E> copyOf(E[] paramArrayOfE)
  {
    switch (paramArrayOfE.length)
    {
    default:
      return construct((Object[])paramArrayOfE.clone());
    case 0:
      return of();
    case 1:
    }
    return of(paramArrayOfE[0]);
  }

  public static <E> ImmutableSet<E> of()
  {
    return EmptyImmutableSet.INSTANCE;
  }

  public static <E> ImmutableSet<E> of(E paramE)
  {
    return new SingletonImmutableSet(paramE);
  }

  public static <E> ImmutableSet<E> of(E paramE1, E paramE2)
  {
    return construct(new Object[] { paramE1, paramE2 });
  }

  public static <E> ImmutableSet<E> of(E paramE1, E paramE2, E paramE3)
  {
    return construct(new Object[] { paramE1, paramE2, paramE3 });
  }

  public static <E> ImmutableSet<E> of(E paramE1, E paramE2, E paramE3, E paramE4)
  {
    return construct(new Object[] { paramE1, paramE2, paramE3, paramE4 });
  }

  public static <E> ImmutableSet<E> of(E paramE1, E paramE2, E paramE3, E paramE4, E paramE5)
  {
    return construct(new Object[] { paramE1, paramE2, paramE3, paramE4, paramE5 });
  }

  public static <E> ImmutableSet<E> of(E paramE1, E paramE2, E paramE3, E paramE4, E paramE5, E paramE6, E[] paramArrayOfE)
  {
    Object[] arrayOfObject = new Object[6 + paramArrayOfE.length];
    arrayOfObject[0] = paramE1;
    arrayOfObject[1] = paramE2;
    arrayOfObject[2] = paramE3;
    arrayOfObject[3] = paramE4;
    arrayOfObject[4] = paramE5;
    arrayOfObject[5] = paramE6;
    for (int i = 6; i < arrayOfObject.length; i++)
      arrayOfObject[i] = paramArrayOfE[(i - 6)];
    return construct(arrayOfObject);
  }

  public boolean equals(@Nullable Object paramObject)
  {
    if (paramObject == this)
      return true;
    if (((paramObject instanceof ImmutableSet)) && (isHashCodeFast()) && (((ImmutableSet)paramObject).isHashCodeFast()) && (hashCode() != paramObject.hashCode()))
      return false;
    return Sets.equalsImpl(this, paramObject);
  }

  public int hashCode()
  {
    return Sets.hashCodeImpl(this);
  }

  boolean isHashCodeFast()
  {
    return false;
  }

  public abstract UnmodifiableIterator<E> iterator();

  Object writeReplace()
  {
    return new SerializedForm(toArray());
  }

  static abstract class ArrayImmutableSet<E> extends ImmutableSet<E>
  {
    final transient Object[] elements;

    ArrayImmutableSet(Object[] paramArrayOfObject)
    {
      this.elements = paramArrayOfObject;
    }

    public boolean containsAll(Collection<?> paramCollection)
    {
      if (paramCollection == this);
      while (true)
      {
        return true;
        if (!(paramCollection instanceof ArrayImmutableSet))
          return super.containsAll(paramCollection);
        if (paramCollection.size() > size())
          return false;
        Object[] arrayOfObject = ((ArrayImmutableSet)paramCollection).elements;
        int i = arrayOfObject.length;
        for (int j = 0; j < i; j++)
          if (!contains(arrayOfObject[j]))
            return false;
      }
    }

    ImmutableList<E> createAsList()
    {
      return new ImmutableAsList(this.elements, this);
    }

    public boolean isEmpty()
    {
      return false;
    }

    boolean isPartialView()
    {
      return false;
    }

    public UnmodifiableIterator<E> iterator()
    {
      return Iterators.forArray(this.elements);
    }

    public int size()
    {
      return this.elements.length;
    }

    public Object[] toArray()
    {
      Object[] arrayOfObject = new Object[size()];
      System.arraycopy(this.elements, 0, arrayOfObject, 0, size());
      return arrayOfObject;
    }

    public <T> T[] toArray(T[] paramArrayOfT)
    {
      int i = size();
      if (paramArrayOfT.length < i)
        paramArrayOfT = ObjectArrays.newArray(paramArrayOfT, i);
      while (true)
      {
        System.arraycopy(this.elements, 0, paramArrayOfT, 0, i);
        return paramArrayOfT;
        if (paramArrayOfT.length > i)
          paramArrayOfT[i] = null;
      }
    }
  }

  public static class Builder<E> extends ImmutableCollection.Builder<E>
  {
    final ArrayList<E> contents = Lists.newArrayList();

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

    public ImmutableSet<E> build()
    {
      return ImmutableSet.copyOf(this.contents);
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
      return ImmutableSet.copyOf(this.elements);
    }
  }

  static abstract class TransformedImmutableSet<D, E> extends ImmutableSet<E>
  {
    final int hashCode;
    final D[] source;

    TransformedImmutableSet(D[] paramArrayOfD, int paramInt)
    {
      this.source = paramArrayOfD;
      this.hashCode = paramInt;
    }

    public final int hashCode()
    {
      return this.hashCode;
    }

    public boolean isEmpty()
    {
      return false;
    }

    boolean isHashCodeFast()
    {
      return true;
    }

    public UnmodifiableIterator<E> iterator()
    {
      return new AbstractIndexedListIterator(this.source.length)
      {
        protected E get(int paramAnonymousInt)
        {
          return ImmutableSet.TransformedImmutableSet.this.transform(ImmutableSet.TransformedImmutableSet.this.source[paramAnonymousInt]);
        }
      };
    }

    public int size()
    {
      return this.source.length;
    }

    public Object[] toArray()
    {
      return toArray(new Object[size()]);
    }

    public <T> T[] toArray(T[] paramArrayOfT)
    {
      int i = size();
      if (paramArrayOfT.length < i)
        paramArrayOfT = ObjectArrays.newArray(paramArrayOfT, i);
      while (true)
      {
        T[] arrayOfT = paramArrayOfT;
        for (int j = 0; j < this.source.length; j++)
          arrayOfT[j] = transform(this.source[j]);
        if (paramArrayOfT.length > i)
          paramArrayOfT[i] = null;
      }
      return paramArrayOfT;
    }

    abstract E transform(D paramD);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ImmutableSet
 * JD-Core Version:    0.6.2
 */