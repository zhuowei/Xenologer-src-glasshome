package com.google.glass.util;

import android.util.Log;
import java.util.concurrent.ThreadFactory;

public class PriorityThreadFactory
  implements ThreadFactory
{
  private static final String TAG = PriorityThreadFactory.class.getSimpleName();
  private int count;
  private final String name;
  private final int priority;
  private final Thread.UncaughtExceptionHandler uncaughtExceptionHandler;

  public PriorityThreadFactory(int paramInt, String paramString)
  {
    this.priority = paramInt;
    this.name = paramString;
    this.uncaughtExceptionHandler = Thread.currentThread().getUncaughtExceptionHandler();
  }

  public Thread newThread(Runnable paramRunnable)
  {
    Thread localThread = new Thread(paramRunnable);
    StringBuilder localStringBuilder = new StringBuilder().append(this.name).append("-");
    int i = this.count;
    this.count = (i + 1);
    localThread.setName(i);
    localThread.setPriority(this.priority);
    localThread.setUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler()
    {
      public void uncaughtException(Thread paramAnonymousThread, Throwable paramAnonymousThrowable)
      {
        Log.e(PriorityThreadFactory.TAG + "/" + PriorityThreadFactory.this.name, "Uncaught exception!", paramAnonymousThrowable);
        PriorityThreadFactory.this.uncaughtExceptionHandler.uncaughtException(paramAnonymousThread, paramAnonymousThrowable);
      }
    });
    return localThread;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.util.PriorityThreadFactory
 * JD-Core Version:    0.6.2
 */