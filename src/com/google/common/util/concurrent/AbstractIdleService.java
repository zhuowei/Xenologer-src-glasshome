package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.base.Throwables;
import java.util.concurrent.Executor;

@Beta
public abstract class AbstractIdleService
  implements Service
{
  private final Service delegate = new AbstractService()
  {
    protected final void doStart()
    {
      AbstractIdleService.this.executor(Service.State.STARTING).execute(new Runnable()
      {
        public void run()
        {
          try
          {
            AbstractIdleService.this.startUp();
            AbstractIdleService.1.this.notifyStarted();
            return;
          }
          catch (Throwable localThrowable)
          {
            AbstractIdleService.1.this.notifyFailed(localThrowable);
            throw Throwables.propagate(localThrowable);
          }
        }
      });
    }

    protected final void doStop()
    {
      AbstractIdleService.this.executor(Service.State.STOPPING).execute(new Runnable()
      {
        public void run()
        {
          try
          {
            AbstractIdleService.this.shutDown();
            AbstractIdleService.1.this.notifyStopped();
            return;
          }
          catch (Throwable localThrowable)
          {
            AbstractIdleService.1.this.notifyFailed(localThrowable);
            throw Throwables.propagate(localThrowable);
          }
        }
      });
    }
  };

  private String getServiceName()
  {
    return getClass().getSimpleName();
  }

  protected Executor executor(final Service.State paramState)
  {
    return new Executor()
    {
      public void execute(Runnable paramAnonymousRunnable)
      {
        new Thread(paramAnonymousRunnable, AbstractIdleService.this.getServiceName() + " " + paramState).start();
      }
    };
  }

  public final boolean isRunning()
  {
    return this.delegate.isRunning();
  }

  protected abstract void shutDown()
    throws Exception;

  public final ListenableFuture<Service.State> start()
  {
    return this.delegate.start();
  }

  public final Service.State startAndWait()
  {
    return this.delegate.startAndWait();
  }

  protected abstract void startUp()
    throws Exception;

  public final Service.State state()
  {
    return this.delegate.state();
  }

  public final ListenableFuture<Service.State> stop()
  {
    return this.delegate.stop();
  }

  public final Service.State stopAndWait()
  {
    return this.delegate.stopAndWait();
  }

  public String toString()
  {
    return getServiceName() + " [" + state() + "]";
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.util.concurrent.AbstractIdleService
 * JD-Core Version:    0.6.2
 */