package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Objects;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import javax.annotation.Nullable;

@GwtCompatible
public abstract class ForwardingMultiset<E> extends ForwardingCollection<E>
  implements Multiset<E>
{
  public int add(E paramE, int paramInt)
  {
    return delegate().add(paramE, paramInt);
  }

  public int count(Object paramObject)
  {
    return delegate().count(paramObject);
  }

  protected abstract Multiset<E> delegate();

  public Set<E> elementSet()
  {
    return delegate().elementSet();
  }

  public Set<Multiset.Entry<E>> entrySet()
  {
    return delegate().entrySet();
  }

  public boolean equals(@Nullable Object paramObject)
  {
    return (paramObject == this) || (delegate().equals(paramObject));
  }

  public int hashCode()
  {
    return delegate().hashCode();
  }

  public int remove(Object paramObject, int paramInt)
  {
    return delegate().remove(paramObject, paramInt);
  }

  public int setCount(E paramE, int paramInt)
  {
    return delegate().setCount(paramE, paramInt);
  }

  public boolean setCount(E paramE, int paramInt1, int paramInt2)
  {
    return delegate().setCount(paramE, paramInt1, paramInt2);
  }

  @Beta
  protected boolean standardAdd(E paramE)
  {
    add(paramE, 1);
    return true;
  }

  @Beta
  protected boolean standardAddAll(Collection<? extends E> paramCollection)
  {
    return Multisets.addAllImpl(this, paramCollection);
  }

  @Beta
  protected void standardClear()
  {
    Iterator localIterator = entrySet().iterator();
    while (localIterator.hasNext())
    {
      localIterator.next();
      localIterator.remove();
    }
  }

  @Beta
  protected boolean standardContains(@Nullable Object paramObject)
  {
    return count(paramObject) > 0;
  }

  @Beta
  protected int standardCount(@Nullable Object paramObject)
  {
    Iterator localIterator = entrySet().iterator();
    while (localIterator.hasNext())
    {
      Multiset.Entry localEntry = (Multiset.Entry)localIterator.next();
      if (Objects.equal(localEntry.getElement(), paramObject))
        return localEntry.getCount();
    }
    return 0;
  }

  @Beta
  protected boolean standardEquals(@Nullable Object paramObject)
  {
    return Multisets.equalsImpl(this, paramObject);
  }

  @Beta
  protected int standardHashCode()
  {
    return entrySet().hashCode();
  }

  @Beta
  protected Iterator<E> standardIterator()
  {
    return Multisets.iteratorImpl(this);
  }

  @Beta
  protected boolean standardRemove(Object paramObject)
  {
    return remove(paramObject, 1) > 0;
  }

  @Beta
  protected boolean standardRemoveAll(Collection<?> paramCollection)
  {
    return Multisets.removeAllImpl(this, paramCollection);
  }

  @Beta
  protected boolean standardRetainAll(Collection<?> paramCollection)
  {
    return Multisets.retainAllImpl(this, paramCollection);
  }

  @Beta
  protected int standardSetCount(E paramE, int paramInt)
  {
    return Multisets.setCountImpl(this, paramE, paramInt);
  }

  @Beta
  protected boolean standardSetCount(E paramE, int paramInt1, int paramInt2)
  {
    return Multisets.setCountImpl(this, paramE, paramInt1, paramInt2);
  }

  @Beta
  protected int standardSize()
  {
    return Multisets.sizeImpl(this);
  }

  @Beta
  protected String standardToString()
  {
    return entrySet().toString();
  }

  @Beta
  protected class StandardElementSet extends Multisets.ElementSet<E>
  {
    public StandardElementSet()
    {
    }

    Multiset<E> multiset()
    {
      return ForwardingMultiset.this;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ForwardingMultiset
 * JD-Core Version:    0.6.2
 */