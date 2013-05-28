package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;

@GwtCompatible
public class ComputationException extends RuntimeException
{
  private static final long serialVersionUID;

  public ComputationException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.ComputationException
 * JD-Core Version:    0.6.2
 */