package com.google.common.util.concurrent;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import javax.annotation.Nullable;

public final class ListenableFutureTask<V> extends FutureTask<V>
  implements ListenableFuture<V>
{
  private final ExecutionList executionList = new ExecutionList();

  private ListenableFutureTask(Runnable paramRunnable, @Nullable V paramV)
  {
    super(paramRunnable, paramV);
  }

  private ListenableFutureTask(Callable<V> paramCallable)
  {
    super(paramCallable);
  }

  public static <V> ListenableFutureTask<V> create(Runnable paramRunnable, @Nullable V paramV)
  {
    return new ListenableFutureTask(paramRunnable, paramV);
  }

  public static <V> ListenableFutureTask<V> create(Callable<V> paramCallable)
  {
    return new ListenableFutureTask(paramCallable);
  }

  public void addListener(Runnable paramRunnable, Executor paramExecutor)
  {
    this.executionList.add(paramRunnable, paramExecutor);
  }

  protected void done()
  {
    this.executionList.execute();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.util.concurrent.ListenableFutureTask
 * JD-Core Version:    0.6.2
 */