package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nullable;

@GwtCompatible
abstract class TransformedImmutableList<D, E> extends ImmutableList<E>
{
  private final transient ImmutableList<D> backingList;

  TransformedImmutableList(ImmutableList<D> paramImmutableList)
  {
    this.backingList = ((ImmutableList)Preconditions.checkNotNull(paramImmutableList));
  }

  public boolean equals(@Nullable Object paramObject)
  {
    if (paramObject == this);
    List localList;
    do
    {
      return true;
      if (!(paramObject instanceof List))
        break;
      localList = (List)paramObject;
    }
    while ((size() == localList.size()) && (Iterators.elementsEqual(iterator(), localList.iterator())));
    return false;
    return false;
  }

  public E get(int paramInt)
  {
    return transform(this.backingList.get(paramInt));
  }

  public int hashCode()
  {
    int i = 1;
    Iterator localIterator = iterator();
    if (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      int j = i * 31;
      if (localObject == null);
      for (int k = 0; ; k = localObject.hashCode())
      {
        i = j + k;
        break;
      }
    }
    return i;
  }

  public int indexOf(@Nullable Object paramObject)
  {
    if (paramObject == null)
    {
      i = -1;
      return i;
    }
    for (int i = 0; ; i++)
    {
      if (i >= size())
        break label36;
      if (get(i).equals(paramObject))
        break;
    }
    label36: return -1;
  }

  boolean isPartialView()
  {
    return true;
  }

  public int lastIndexOf(@Nullable Object paramObject)
  {
    if (paramObject == null)
    {
      i = -1;
      return i;
    }
    for (int i = -1 + size(); ; i--)
    {
      if (i < 0)
        break label37;
      if (get(i).equals(paramObject))
        break;
    }
    label37: return -1;
  }

  public UnmodifiableListIterator<E> listIterator(int paramInt)
  {
    return new AbstractIndexedListIterator(size(), paramInt)
    {
      protected E get(int paramAnonymousInt)
      {
        return TransformedImmutableList.this.get(paramAnonymousInt);
      }
    };
  }

  public int size()
  {
    return this.backingList.size();
  }

  public ImmutableList<E> subList(int paramInt1, int paramInt2)
  {
    return new TransformedView(this.backingList.subList(paramInt1, paramInt2));
  }

  public Object[] toArray()
  {
    return ObjectArrays.toArrayImpl(this);
  }

  public <T> T[] toArray(T[] paramArrayOfT)
  {
    return ObjectArrays.toArrayImpl(this, paramArrayOfT);
  }

  abstract E transform(D paramD);

  private class TransformedView extends TransformedImmutableList<D, E>
  {
    TransformedView()
    {
      super();
    }

    E transform(D paramD)
    {
      return TransformedImmutableList.this.transform(paramD);
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.TransformedImmutableList
 * JD-Core Version:    0.6.2
 */