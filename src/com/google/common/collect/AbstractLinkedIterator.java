package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import java.util.NoSuchElementException;
import javax.annotation.Nullable;

@Beta
@GwtCompatible
public abstract class AbstractLinkedIterator<T> extends UnmodifiableIterator<T>
{
  private T nextOrNull;

  protected AbstractLinkedIterator(@Nullable T paramT)
  {
    this.nextOrNull = paramT;
  }

  protected abstract T computeNext(T paramT);

  public final boolean hasNext()
  {
    return this.nextOrNull != null;
  }

  public final T next()
  {
    if (!hasNext())
      throw new NoSuchElementException();
    try
    {
      Object localObject2 = this.nextOrNull;
      return localObject2;
    }
    finally
    {
      this.nextOrNull = computeNext(this.nextOrNull);
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.AbstractLinkedIterator
 * JD-Core Version:    0.6.2
 */