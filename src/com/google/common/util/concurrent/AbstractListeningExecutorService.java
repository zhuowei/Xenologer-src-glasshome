package com.google.common.util.concurrent;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

abstract class AbstractListeningExecutorService
  implements ListeningExecutorService
{
  // ERROR //
  private <T> T doInvokeAny(Collection<? extends Callable<T>> paramCollection, boolean paramBoolean, long paramLong)
    throws InterruptedException, ExecutionException, TimeoutException
  {
    // Byte code:
    //   0: aload_1
    //   1: invokeinterface 26 1 0
    //   6: istore 5
    //   8: iload 5
    //   10: ifle +186 -> 196
    //   13: iconst_1
    //   14: istore 6
    //   16: iload 6
    //   18: invokestatic 32	com/google/common/base/Preconditions:checkArgument	(Z)V
    //   21: new 34	java/util/ArrayList
    //   24: dup
    //   25: iload 5
    //   27: invokespecial 37	java/util/ArrayList:<init>	(I)V
    //   30: astore 7
    //   32: new 39	java/util/concurrent/ExecutorCompletionService
    //   35: dup
    //   36: aload_0
    //   37: invokespecial 42	java/util/concurrent/ExecutorCompletionService:<init>	(Ljava/util/concurrent/Executor;)V
    //   40: astore 8
    //   42: iload_2
    //   43: ifeq +159 -> 202
    //   46: invokestatic 48	java/lang/System:nanoTime	()J
    //   49: lstore 9
    //   51: aload_1
    //   52: invokeinterface 52 1 0
    //   57: astore 14
    //   59: aload 7
    //   61: aload 8
    //   63: aload 14
    //   65: invokeinterface 58 1 0
    //   70: checkcast 60	java/util/concurrent/Callable
    //   73: invokevirtual 64	java/util/concurrent/ExecutorCompletionService:submit	(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    //   76: invokeinterface 70 2 0
    //   81: pop
    //   82: iload 5
    //   84: iconst_1
    //   85: isub
    //   86: istore 16
    //   88: iconst_1
    //   89: istore 17
    //   91: aconst_null
    //   92: astore 18
    //   94: aload 8
    //   96: invokevirtual 74	java/util/concurrent/ExecutorCompletionService:poll	()Ljava/util/concurrent/Future;
    //   99: astore 20
    //   101: aload 20
    //   103: ifnonnull +37 -> 140
    //   106: iload 16
    //   108: ifle +100 -> 208
    //   111: iinc 16 255
    //   114: aload 7
    //   116: aload 8
    //   118: aload 14
    //   120: invokeinterface 58 1 0
    //   125: checkcast 60	java/util/concurrent/Callable
    //   128: invokevirtual 64	java/util/concurrent/ExecutorCompletionService:submit	(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    //   131: invokeinterface 70 2 0
    //   136: pop
    //   137: iinc 17 1
    //   140: aload 20
    //   142: ifnull +221 -> 363
    //   145: iinc 17 255
    //   148: aload 20
    //   150: invokeinterface 79 1 0
    //   155: astore 24
    //   157: aload 7
    //   159: invokeinterface 80 1 0
    //   164: astore 25
    //   166: aload 25
    //   168: invokeinterface 84 1 0
    //   173: ifeq +180 -> 353
    //   176: aload 25
    //   178: invokeinterface 58 1 0
    //   183: checkcast 76	java/util/concurrent/Future
    //   186: iconst_1
    //   187: invokeinterface 88 2 0
    //   192: pop
    //   193: goto -27 -> 166
    //   196: iconst_0
    //   197: istore 6
    //   199: goto -183 -> 16
    //   202: lconst_0
    //   203: lstore 9
    //   205: goto -154 -> 51
    //   208: iload 17
    //   210: ifne +62 -> 272
    //   213: aload 18
    //   215: ifnonnull +141 -> 356
    //   218: new 16	java/util/concurrent/ExecutionException
    //   221: dup
    //   222: aconst_null
    //   223: invokespecial 91	java/util/concurrent/ExecutionException:<init>	(Ljava/lang/Throwable;)V
    //   226: astore 30
    //   228: aload 30
    //   230: athrow
    //   231: astore 11
    //   233: aload 7
    //   235: invokeinterface 80 1 0
    //   240: astore 12
    //   242: aload 12
    //   244: invokeinterface 84 1 0
    //   249: ifeq +101 -> 350
    //   252: aload 12
    //   254: invokeinterface 58 1 0
    //   259: checkcast 76	java/util/concurrent/Future
    //   262: iconst_1
    //   263: invokeinterface 88 2 0
    //   268: pop
    //   269: goto -27 -> 242
    //   272: iload_2
    //   273: ifeq +51 -> 324
    //   276: getstatic 97	java/util/concurrent/TimeUnit:NANOSECONDS	Ljava/util/concurrent/TimeUnit;
    //   279: astore 27
    //   281: aload 8
    //   283: lload_3
    //   284: aload 27
    //   286: invokevirtual 100	java/util/concurrent/ExecutorCompletionService:poll	(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;
    //   289: astore 20
    //   291: aload 20
    //   293: ifnonnull +11 -> 304
    //   296: new 18	java/util/concurrent/TimeoutException
    //   299: dup
    //   300: invokespecial 101	java/util/concurrent/TimeoutException:<init>	()V
    //   303: athrow
    //   304: invokestatic 48	java/lang/System:nanoTime	()J
    //   307: lstore 28
    //   309: lload_3
    //   310: lload 28
    //   312: lload 9
    //   314: lsub
    //   315: lsub
    //   316: lstore_3
    //   317: lload 28
    //   319: lstore 9
    //   321: goto -181 -> 140
    //   324: aload 8
    //   326: invokevirtual 104	java/util/concurrent/ExecutorCompletionService:take	()Ljava/util/concurrent/Future;
    //   329: astore 20
    //   331: goto -191 -> 140
    //   334: astore 22
    //   336: new 16	java/util/concurrent/ExecutionException
    //   339: dup
    //   340: aload 22
    //   342: invokespecial 91	java/util/concurrent/ExecutionException:<init>	(Ljava/lang/Throwable;)V
    //   345: astore 21
    //   347: goto +37 -> 384
    //   350: aload 11
    //   352: athrow
    //   353: aload 24
    //   355: areturn
    //   356: aload 18
    //   358: astore 30
    //   360: goto -132 -> 228
    //   363: aload 18
    //   365: astore 21
    //   367: goto +17 -> 384
    //   370: astore 11
    //   372: aload 18
    //   374: pop
    //   375: goto -142 -> 233
    //   378: astore 23
    //   380: aload 23
    //   382: astore 21
    //   384: aload 21
    //   386: astore 18
    //   388: goto -294 -> 94
    //
    // Exception table:
    //   from	to	target	type
    //   46	51	231	finally
    //   51	82	231	finally
    //   228	231	231	finally
    //   148	157	334	java/lang/RuntimeException
    //   94	101	370	finally
    //   114	137	370	finally
    //   148	157	370	finally
    //   218	228	370	finally
    //   276	291	370	finally
    //   296	304	370	finally
    //   304	309	370	finally
    //   324	331	370	finally
    //   336	347	370	finally
    //   148	157	378	java/util/concurrent/ExecutionException
  }

  public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> paramCollection)
    throws InterruptedException
  {
    if (paramCollection == null)
      throw new NullPointerException();
    ArrayList localArrayList = new ArrayList(paramCollection.size());
    try
    {
      Iterator localIterator2 = paramCollection.iterator();
      while (localIterator2.hasNext())
      {
        ListenableFutureTask localListenableFutureTask = ListenableFutureTask.create((Callable)localIterator2.next());
        localArrayList.add(localListenableFutureTask);
        execute(localListenableFutureTask);
      }
    }
    finally
    {
      Iterator localIterator3;
      if (0 == 0)
      {
        Iterator localIterator1 = localArrayList.iterator();
        while (localIterator1.hasNext())
        {
          ((Future)localIterator1.next()).cancel(true);
          continue;
          localIterator3 = localArrayList.iterator();
        }
      }
      while (true)
      {
        Future localFuture;
        if (localIterator3.hasNext())
        {
          localFuture = (Future)localIterator3.next();
          boolean bool = localFuture.isDone();
          if (bool);
        }
        else
        {
          try
          {
            localFuture.get();
          }
          catch (CancellationException localCancellationException)
          {
            continue;
            if (1 != 0)
              break;
            Iterator localIterator4 = localArrayList.iterator();
            while (localIterator4.hasNext())
              ((Future)localIterator4.next()).cancel(true);
            throw localObject;
          }
          catch (ExecutionException localExecutionException)
          {
          }
        }
      }
    }
    return localArrayList;
  }

  public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> paramCollection, long paramLong, TimeUnit paramTimeUnit)
    throws InterruptedException
  {
    if ((paramCollection == null) || (paramTimeUnit == null))
      throw new NullPointerException();
    long l1 = paramTimeUnit.toNanos(paramLong);
    ArrayList localArrayList = new ArrayList(paramCollection.size());
    try
    {
      Iterator localIterator2 = paramCollection.iterator();
      while (localIterator2.hasNext())
        localArrayList.add(ListenableFutureTask.create((Callable)localIterator2.next()));
    }
    finally
    {
      if (0 != 0)
        break label455;
    }
    Iterator localIterator1 = localArrayList.iterator();
    long l2;
    Iterator localIterator4;
    while (localIterator1.hasNext())
    {
      ((Future)localIterator1.next()).cancel(true);
      continue;
      l2 = System.nanoTime();
      Iterator localIterator3 = localArrayList.iterator();
      while (localIterator3.hasNext())
      {
        execute((Runnable)localIterator3.next());
        long l4 = System.nanoTime();
        l1 -= l4 - l2;
        l2 = l4;
        if (l1 <= 0L)
        {
          if (0 != 0)
            break label458;
          Iterator localIterator8 = localArrayList.iterator();
          while (localIterator8.hasNext())
            ((Future)localIterator8.next()).cancel(true);
        }
      }
      localIterator4 = localArrayList.iterator();
    }
    while (true)
    {
      Future localFuture;
      if (localIterator4.hasNext())
      {
        localFuture = (Future)localIterator4.next();
        boolean bool = localFuture.isDone();
        if (bool)
          continue;
        if (l1 <= 0L)
        {
          if (0 != 0)
            break label458;
          Iterator localIterator7 = localArrayList.iterator();
          while (localIterator7.hasNext())
            ((Future)localIterator7.next()).cancel(true);
        }
      }
      try
      {
        localFuture.get(l1, TimeUnit.NANOSECONDS);
        label345: long l3 = System.nanoTime();
        l1 -= l3 - l2;
        l2 = l3;
      }
      catch (TimeoutException localTimeoutException)
      {
        if (0 == 0)
        {
          Iterator localIterator6 = localArrayList.iterator();
          while (localIterator6.hasNext())
          {
            ((Future)localIterator6.next()).cancel(true);
            continue;
            if (1 == 0)
            {
              Iterator localIterator5 = localArrayList.iterator();
              while (localIterator5.hasNext())
              {
                ((Future)localIterator5.next()).cancel(true);
                continue;
                throw localObject;
              }
            }
          }
        }
        return localArrayList;
      }
      catch (ExecutionException localExecutionException)
      {
        break label345;
      }
      catch (CancellationException localCancellationException)
      {
        label455: label458: break label345;
      }
    }
  }

  public <T> T invokeAny(Collection<? extends Callable<T>> paramCollection)
    throws InterruptedException, ExecutionException
  {
    try
    {
      Object localObject = doInvokeAny(paramCollection, false, 0L);
      return localObject;
    }
    catch (TimeoutException localTimeoutException)
    {
    }
    throw new AssertionError();
  }

  public <T> T invokeAny(Collection<? extends Callable<T>> paramCollection, long paramLong, TimeUnit paramTimeUnit)
    throws InterruptedException, ExecutionException, TimeoutException
  {
    return doInvokeAny(paramCollection, true, paramTimeUnit.toNanos(paramLong));
  }

  public ListenableFuture<?> submit(Runnable paramRunnable)
  {
    ListenableFutureTask localListenableFutureTask = ListenableFutureTask.create(paramRunnable, null);
    execute(localListenableFutureTask);
    return localListenableFutureTask;
  }

  public <T> ListenableFuture<T> submit(Runnable paramRunnable, T paramT)
  {
    ListenableFutureTask localListenableFutureTask = ListenableFutureTask.create(paramRunnable, paramT);
    execute(localListenableFutureTask);
    return localListenableFutureTask;
  }

  public <T> ListenableFuture<T> submit(Callable<T> paramCallable)
  {
    ListenableFutureTask localListenableFutureTask = ListenableFutureTask.create(paramCallable);
    execute(localListenableFutureTask);
    return localListenableFutureTask;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.util.concurrent.AbstractListeningExecutorService
 * JD-Core Version:    0.6.2
 */