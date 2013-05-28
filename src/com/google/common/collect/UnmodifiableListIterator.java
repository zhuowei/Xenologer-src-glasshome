package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.ListIterator;

@GwtCompatible
public abstract class UnmodifiableListIterator<E> extends UnmodifiableIterator<E>
  implements ListIterator<E>
{
  public final void add(E paramE)
  {
    throw new UnsupportedOperationException();
  }

  public final void set(E paramE)
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.UnmodifiableListIterator
 * JD-Core Version:    0.6.2
 */