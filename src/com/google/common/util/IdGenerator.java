package com.google.common.util;

@GwtCompatible
public abstract interface IdGenerator<T>
{
  public abstract T next()
    throws IdException;
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.util.IdGenerator
 * JD-Core Version:    0.6.2
 */