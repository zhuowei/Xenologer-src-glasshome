package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public final class MoreExecutors
{
  @Beta
  public static void addDelayedShutdownHook(ExecutorService paramExecutorService, final long paramLong, TimeUnit paramTimeUnit)
  {
    Runtime.getRuntime().addShutdownHook(new Thread(new Runnable()
    {
      public void run()
      {
        try
        {
          this.val$service.shutdown();
          this.val$service.awaitTermination(paramLong, this.val$timeUnit);
          return;
        }
        catch (InterruptedException localInterruptedException)
        {
        }
      }
    }));
  }

  @Beta
  public static ExecutorService getExitingExecutorService(ThreadPoolExecutor paramThreadPoolExecutor)
  {
    return getExitingExecutorService(paramThreadPoolExecutor, 120L, TimeUnit.SECONDS);
  }

  @Beta
  public static ExecutorService getExitingExecutorService(ThreadPoolExecutor paramThreadPoolExecutor, long paramLong, TimeUnit paramTimeUnit)
  {
    paramThreadPoolExecutor.setThreadFactory(new ThreadFactoryBuilder().setDaemon(true).setThreadFactory(paramThreadPoolExecutor.getThreadFactory()).build());
    ExecutorService localExecutorService = Executors.unconfigurableExecutorService(paramThreadPoolExecutor);
    addDelayedShutdownHook(localExecutorService, paramLong, paramTimeUnit);
    return localExecutorService;
  }

  @Beta
  public static ScheduledExecutorService getExitingScheduledExecutorService(ScheduledThreadPoolExecutor paramScheduledThreadPoolExecutor)
  {
    return getExitingScheduledExecutorService(paramScheduledThreadPoolExecutor, 120L, TimeUnit.SECONDS);
  }

  @Beta
  public static ScheduledExecutorService getExitingScheduledExecutorService(ScheduledThreadPoolExecutor paramScheduledThreadPoolExecutor, long paramLong, TimeUnit paramTimeUnit)
  {
    paramScheduledThreadPoolExecutor.setThreadFactory(new ThreadFactoryBuilder().setDaemon(true).setThreadFactory(paramScheduledThreadPoolExecutor.getThreadFactory()).build());
    ScheduledExecutorService localScheduledExecutorService = Executors.unconfigurableScheduledExecutorService(paramScheduledThreadPoolExecutor);
    addDelayedShutdownHook(localScheduledExecutorService, paramLong, paramTimeUnit);
    return localScheduledExecutorService;
  }

  public static ListeningExecutorService listeningDecorator(ExecutorService paramExecutorService)
  {
    if ((paramExecutorService instanceof ListeningExecutorService))
      return (ListeningExecutorService)paramExecutorService;
    if ((paramExecutorService instanceof ScheduledExecutorService))
      return new ScheduledListeningDecorator((ScheduledExecutorService)paramExecutorService);
    return new ListeningDecorator(paramExecutorService);
  }

  public static ListeningScheduledExecutorService listeningDecorator(ScheduledExecutorService paramScheduledExecutorService)
  {
    if ((paramScheduledExecutorService instanceof ListeningScheduledExecutorService))
      return (ListeningScheduledExecutorService)paramScheduledExecutorService;
    return new ScheduledListeningDecorator(paramScheduledExecutorService);
  }

  public static ListeningExecutorService sameThreadExecutor()
  {
    return new SameThreadExecutorService(null);
  }

  private static class ListeningDecorator extends AbstractListeningExecutorService
  {
    final ExecutorService delegate;

    ListeningDecorator(ExecutorService paramExecutorService)
    {
      this.delegate = ((ExecutorService)Preconditions.checkNotNull(paramExecutorService));
    }

    public boolean awaitTermination(long paramLong, TimeUnit paramTimeUnit)
      throws InterruptedException
    {
      return this.delegate.awaitTermination(paramLong, paramTimeUnit);
    }

    public void execute(Runnable paramRunnable)
    {
      this.delegate.execute(paramRunnable);
    }

    public boolean isShutdown()
    {
      return this.delegate.isShutdown();
    }

    public boolean isTerminated()
    {
      return this.delegate.isTerminated();
    }

    public void shutdown()
    {
      this.delegate.shutdown();
    }

    public List<Runnable> shutdownNow()
    {
      return this.delegate.shutdownNow();
    }
  }

  private static class SameThreadExecutorService extends AbstractListeningExecutorService
  {
    private final Lock lock = new ReentrantLock();
    private int runningTasks = 0;
    private boolean shutdown = false;
    private final Condition termination = this.lock.newCondition();

    private void endTask()
    {
      this.lock.lock();
      try
      {
        this.runningTasks = (-1 + this.runningTasks);
        if (isTerminated())
          this.termination.signalAll();
        return;
      }
      finally
      {
        this.lock.unlock();
      }
    }

    private void startTask()
    {
      this.lock.lock();
      try
      {
        if (isShutdown())
          throw new RejectedExecutionException("Executor already shutdown");
      }
      finally
      {
        this.lock.unlock();
      }
      this.runningTasks = (1 + this.runningTasks);
      this.lock.unlock();
    }

    public boolean awaitTermination(long paramLong, TimeUnit paramTimeUnit)
      throws InterruptedException
    {
      long l1 = paramTimeUnit.toNanos(paramLong);
      this.lock.lock();
      try
      {
        while (true)
        {
          boolean bool = isTerminated();
          if (bool)
            return true;
          if (l1 <= 0L)
            return false;
          long l2 = this.termination.awaitNanos(l1);
          l1 = l2;
        }
      }
      finally
      {
        this.lock.unlock();
      }
    }

    public void execute(Runnable paramRunnable)
    {
      startTask();
      try
      {
        paramRunnable.run();
        return;
      }
      finally
      {
        endTask();
      }
    }

    public boolean isShutdown()
    {
      this.lock.lock();
      try
      {
        boolean bool = this.shutdown;
        return bool;
      }
      finally
      {
        this.lock.unlock();
      }
    }

    public boolean isTerminated()
    {
      this.lock.lock();
      try
      {
        if (this.shutdown)
        {
          int i = this.runningTasks;
          if (i == 0)
          {
            bool = true;
            return bool;
          }
        }
        boolean bool = false;
      }
      finally
      {
        this.lock.unlock();
      }
    }

    public void shutdown()
    {
      this.lock.lock();
      try
      {
        this.shutdown = true;
        return;
      }
      finally
      {
        this.lock.unlock();
      }
    }

    public List<Runnable> shutdownNow()
    {
      shutdown();
      return Collections.emptyList();
    }
  }

  private static class ScheduledListeningDecorator extends MoreExecutors.ListeningDecorator
    implements ListeningScheduledExecutorService
  {
    final ScheduledExecutorService delegate;

    ScheduledListeningDecorator(ScheduledExecutorService paramScheduledExecutorService)
    {
      super();
      this.delegate = ((ScheduledExecutorService)Preconditions.checkNotNull(paramScheduledExecutorService));
    }

    public ScheduledFuture<?> schedule(Runnable paramRunnable, long paramLong, TimeUnit paramTimeUnit)
    {
      return this.delegate.schedule(paramRunnable, paramLong, paramTimeUnit);
    }

    public <V> ScheduledFuture<V> schedule(Callable<V> paramCallable, long paramLong, TimeUnit paramTimeUnit)
    {
      return this.delegate.schedule(paramCallable, paramLong, paramTimeUnit);
    }

    public ScheduledFuture<?> scheduleAtFixedRate(Runnable paramRunnable, long paramLong1, long paramLong2, TimeUnit paramTimeUnit)
    {
      return this.delegate.scheduleAtFixedRate(paramRunnable, paramLong1, paramLong2, paramTimeUnit);
    }

    public ScheduledFuture<?> scheduleWithFixedDelay(Runnable paramRunnable, long paramLong1, long paramLong2, TimeUnit paramTimeUnit)
    {
      return this.delegate.scheduleWithFixedDelay(paramRunnable, paramLong1, paramLong2, paramTimeUnit);
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.util.concurrent.MoreExecutors
 * JD-Core Version:    0.6.2
 */