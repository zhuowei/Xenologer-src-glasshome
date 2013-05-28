package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;

@Beta
@GwtCompatible
public class UncheckedExecutionException extends RuntimeException
{
  private static final long serialVersionUID;

  protected UncheckedExecutionException()
  {
  }

  protected UncheckedExecutionException(String paramString)
  {
    super(paramString);
  }

  public UncheckedExecutionException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }

  public UncheckedExecutionException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.util.concurrent.UncheckedExecutionException
 * JD-Core Version:    0.6.2
 */