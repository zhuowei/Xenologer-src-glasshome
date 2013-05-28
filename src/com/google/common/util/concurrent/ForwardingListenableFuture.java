package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import java.util.concurrent.Executor;

public abstract class ForwardingListenableFuture<V> extends ForwardingFuture<V>
  implements ListenableFuture<V>
{
  public void addListener(Runnable paramRunnable, Executor paramExecutor)
  {
    delegate().addListener(paramRunnable, paramExecutor);
  }

  protected abstract ListenableFuture<V> delegate();

  public static abstract class SimpleForwardingListenableFuture<V> extends ForwardingListenableFuture<V>
  {
    private final ListenableFuture<V> delegate;

    protected SimpleForwardingListenableFuture(ListenableFuture<V> paramListenableFuture)
    {
      this.delegate = ((ListenableFuture)Preconditions.checkNotNull(paramListenableFuture));
    }

    protected final ListenableFuture<V> delegate()
    {
      return this.delegate;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.util.concurrent.ForwardingListenableFuture
 * JD-Core Version:    0.6.2
 */