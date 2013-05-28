package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import java.util.NoSuchElementException;
import java.util.Queue;

@GwtCompatible
public abstract class ForwardingQueue<E> extends ForwardingCollection<E>
  implements Queue<E>
{
  protected abstract Queue<E> delegate();

  public E element()
  {
    return delegate().element();
  }

  public boolean offer(E paramE)
  {
    return delegate().offer(paramE);
  }

  public E peek()
  {
    return delegate().peek();
  }

  public E poll()
  {
    return delegate().poll();
  }

  public E remove()
  {
    return delegate().remove();
  }

  @Beta
  protected boolean standardOffer(E paramE)
  {
    try
    {
      boolean bool = add(paramE);
      return bool;
    }
    catch (IllegalStateException localIllegalStateException)
    {
    }
    return false;
  }

  @Beta
  protected E standardPeek()
  {
    try
    {
      Object localObject = element();
      return localObject;
    }
    catch (NoSuchElementException localNoSuchElementException)
    {
    }
    return null;
  }

  @Beta
  protected E standardPoll()
  {
    try
    {
      Object localObject = remove();
      return localObject;
    }
    catch (NoSuchElementException localNoSuchElementException)
    {
    }
    return null;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ForwardingQueue
 * JD-Core Version:    0.6.2
 */