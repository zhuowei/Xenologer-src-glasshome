package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;

@Beta
public abstract interface AsyncFunction<I, O>
{
  public abstract ListenableFuture<O> apply(I paramI)
    throws Exception;
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.util.concurrent.AsyncFunction
 * JD-Core Version:    0.6.2
 */