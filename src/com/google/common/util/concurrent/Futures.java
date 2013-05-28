package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import com.google.common.collect.Ordering;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.UndeclaredThrowableException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.Nullable;

@Beta
public final class Futures
{
  private static final Ordering<Constructor<?>> WITH_STRING_PARAM_FIRST = Ordering.natural().onResultOf(new Function()
  {
    public Boolean apply(Constructor<?> paramAnonymousConstructor)
    {
      return Boolean.valueOf(Arrays.asList(paramAnonymousConstructor.getParameterTypes()).contains(String.class));
    }
  }).reverse();

  public static <V> void addCallback(ListenableFuture<V> paramListenableFuture, FutureCallback<? super V> paramFutureCallback)
  {
    addCallback(paramListenableFuture, paramFutureCallback, MoreExecutors.sameThreadExecutor());
  }

  public static <V> void addCallback(ListenableFuture<V> paramListenableFuture, final FutureCallback<? super V> paramFutureCallback, Executor paramExecutor)
  {
    Preconditions.checkNotNull(paramFutureCallback);
    paramListenableFuture.addListener(new Runnable()
    {
      public void run()
      {
        try
        {
          Object localObject = Uninterruptibles.getUninterruptibly(this.val$future);
          paramFutureCallback.onSuccess(localObject);
          return;
        }
        catch (ExecutionException localExecutionException)
        {
          paramFutureCallback.onFailure(localExecutionException.getCause());
          return;
        }
        catch (RuntimeException localRuntimeException)
        {
          paramFutureCallback.onFailure(localRuntimeException);
          return;
        }
        catch (Error localError)
        {
          paramFutureCallback.onFailure(localError);
        }
      }
    }
    , paramExecutor);
  }

  @Beta
  public static <V> ListenableFuture<List<V>> allAsList(Iterable<? extends ListenableFuture<? extends V>> paramIterable)
  {
    return new ListFuture(ImmutableList.copyOf(paramIterable), true, MoreExecutors.sameThreadExecutor());
  }

  @Beta
  public static <V> ListenableFuture<List<V>> allAsList(ListenableFuture<? extends V>[] paramArrayOfListenableFuture)
  {
    return new ListFuture(ImmutableList.copyOf(paramArrayOfListenableFuture), true, MoreExecutors.sameThreadExecutor());
  }

  @Deprecated
  public static <I, O> ListenableFuture<O> chain(ListenableFuture<I> paramListenableFuture, Function<? super I, ? extends ListenableFuture<? extends O>> paramFunction)
  {
    return chain(paramListenableFuture, paramFunction, MoreExecutors.sameThreadExecutor());
  }

  @Deprecated
  public static <I, O> ListenableFuture<O> chain(ListenableFuture<I> paramListenableFuture, Function<? super I, ? extends ListenableFuture<? extends O>> paramFunction, Executor paramExecutor)
  {
    Preconditions.checkNotNull(paramFunction);
    ChainingListenableFuture localChainingListenableFuture = new ChainingListenableFuture(new AsyncFunction()
    {
      public ListenableFuture<O> apply(I paramAnonymousI)
      {
        return (ListenableFuture)this.val$function.apply(paramAnonymousI);
      }
    }
    , paramListenableFuture, null);
    paramListenableFuture.addListener(localChainingListenableFuture, paramExecutor);
    return localChainingListenableFuture;
  }

  @Beta
  public static <V, X extends Exception> V get(Future<V> paramFuture, long paramLong, TimeUnit paramTimeUnit, Class<X> paramClass)
    throws Exception
  {
    Preconditions.checkNotNull(paramFuture);
    Preconditions.checkNotNull(paramTimeUnit);
    boolean bool;
    if (!RuntimeException.class.isAssignableFrom(paramClass))
      bool = true;
    while (true)
    {
      Preconditions.checkArgument(bool, "Futures.get exception type (%s) must not be a RuntimeException", new Object[] { paramClass });
      try
      {
        Object localObject = paramFuture.get(paramLong, paramTimeUnit);
        return localObject;
        bool = false;
      }
      catch (InterruptedException localInterruptedException)
      {
        Thread.currentThread().interrupt();
        throw newWithCause(paramClass, localInterruptedException);
      }
      catch (TimeoutException localTimeoutException)
      {
        throw newWithCause(paramClass, localTimeoutException);
      }
      catch (ExecutionException localExecutionException)
      {
        wrapAndThrowExceptionOrError(localExecutionException.getCause(), paramClass);
      }
    }
    throw new AssertionError();
  }

  @Beta
  public static <V, X extends Exception> V get(Future<V> paramFuture, Class<X> paramClass)
    throws Exception
  {
    Preconditions.checkNotNull(paramFuture);
    boolean bool;
    if (!RuntimeException.class.isAssignableFrom(paramClass))
      bool = true;
    while (true)
    {
      Preconditions.checkArgument(bool, "Futures.get exception type (%s) must not be a RuntimeException", new Object[] { paramClass });
      try
      {
        Object localObject = paramFuture.get();
        return localObject;
        bool = false;
      }
      catch (InterruptedException localInterruptedException)
      {
        Thread.currentThread().interrupt();
        throw newWithCause(paramClass, localInterruptedException);
      }
      catch (ExecutionException localExecutionException)
      {
        wrapAndThrowExceptionOrError(localExecutionException.getCause(), paramClass);
      }
    }
    throw new AssertionError();
  }

  @Beta
  public static <V> V getUnchecked(Future<V> paramFuture)
  {
    Preconditions.checkNotNull(paramFuture);
    try
    {
      Object localObject = Uninterruptibles.getUninterruptibly(paramFuture);
      return localObject;
    }
    catch (ExecutionException localExecutionException)
    {
      wrapAndThrowUnchecked(localExecutionException.getCause());
    }
    throw new AssertionError();
  }

  public static <V, X extends Exception> CheckedFuture<V, X> immediateCheckedFuture(@Nullable V paramV)
  {
    SettableFuture localSettableFuture = SettableFuture.create();
    localSettableFuture.set(paramV);
    return makeChecked(localSettableFuture, new Function()
    {
      public X apply(Exception paramAnonymousException)
      {
        throw new AssertionError("impossible");
      }
    });
  }

  public static <V, X extends Exception> CheckedFuture<V, X> immediateFailedCheckedFuture(X paramX)
  {
    Preconditions.checkNotNull(paramX);
    return makeChecked(immediateFailedFuture(paramX), new Function()
    {
      public X apply(Exception paramAnonymousException)
      {
        return this.val$exception;
      }
    });
  }

  public static <V> ListenableFuture<V> immediateFailedFuture(Throwable paramThrowable)
  {
    Preconditions.checkNotNull(paramThrowable);
    SettableFuture localSettableFuture = SettableFuture.create();
    localSettableFuture.setException(paramThrowable);
    return localSettableFuture;
  }

  public static <V> ListenableFuture<V> immediateFuture(@Nullable V paramV)
  {
    SettableFuture localSettableFuture = SettableFuture.create();
    localSettableFuture.set(paramV);
    return localSettableFuture;
  }

  @Beta
  public static <I, O> Future<O> lazyTransform(Future<I> paramFuture, final Function<? super I, ? extends O> paramFunction)
  {
    Preconditions.checkNotNull(paramFuture);
    Preconditions.checkNotNull(paramFunction);
    return new Future()
    {
      private O applyTransformation(I paramAnonymousI)
        throws ExecutionException
      {
        try
        {
          Object localObject = paramFunction.apply(paramAnonymousI);
          return localObject;
        }
        catch (Throwable localThrowable)
        {
          throw new ExecutionException(localThrowable);
        }
      }

      public boolean cancel(boolean paramAnonymousBoolean)
      {
        return this.val$future.cancel(paramAnonymousBoolean);
      }

      public O get()
        throws InterruptedException, ExecutionException
      {
        return applyTransformation(this.val$future.get());
      }

      public O get(long paramAnonymousLong, TimeUnit paramAnonymousTimeUnit)
        throws InterruptedException, ExecutionException, TimeoutException
      {
        return applyTransformation(this.val$future.get(paramAnonymousLong, paramAnonymousTimeUnit));
      }

      public boolean isCancelled()
      {
        return this.val$future.isCancelled();
      }

      public boolean isDone()
      {
        return this.val$future.isDone();
      }
    };
  }

  public static <V, X extends Exception> CheckedFuture<V, X> makeChecked(ListenableFuture<V> paramListenableFuture, Function<Exception, X> paramFunction)
  {
    return new MappingCheckedFuture((ListenableFuture)Preconditions.checkNotNull(paramListenableFuture), paramFunction);
  }

  @Nullable
  private static <X> X newFromConstructor(Constructor<X> paramConstructor, Throwable paramThrowable)
  {
    Class[] arrayOfClass = paramConstructor.getParameterTypes();
    Object[] arrayOfObject = new Object[arrayOfClass.length];
    int i = 0;
    Object localObject2;
    if (i < arrayOfClass.length)
    {
      Class localClass = arrayOfClass[i];
      if (localClass.equals(String.class))
        arrayOfObject[i] = paramThrowable.toString();
      while (true)
      {
        i++;
        break;
        boolean bool = localClass.equals(Throwable.class);
        localObject2 = null;
        if (!bool)
          break label87;
        arrayOfObject[i] = paramThrowable;
      }
    }
    try
    {
      Object localObject1 = paramConstructor.newInstance(arrayOfObject);
      localObject2 = localObject1;
      label87: return localObject2;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      return null;
    }
    catch (InstantiationException localInstantiationException)
    {
      return null;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      return null;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
    }
    return null;
  }

  private static <X extends Exception> X newWithCause(Class<X> paramClass, Throwable paramThrowable)
  {
    Iterator localIterator = preferringStrings(Arrays.asList(paramClass.getConstructors())).iterator();
    while (localIterator.hasNext())
    {
      Exception localException = (Exception)newFromConstructor((Constructor)localIterator.next(), paramThrowable);
      if (localException != null)
      {
        if (localException.getCause() == null)
          localException.initCause(paramThrowable);
        return localException;
      }
    }
    throw new IllegalArgumentException("No appropriate constructor for exception of type " + paramClass + " in response to chained exception", paramThrowable);
  }

  private static <X extends Exception> List<Constructor<X>> preferringStrings(List<Constructor<X>> paramList)
  {
    return WITH_STRING_PARAM_FIRST.sortedCopy(paramList);
  }

  @Beta
  public static <V> ListenableFuture<List<V>> successfulAsList(Iterable<? extends ListenableFuture<? extends V>> paramIterable)
  {
    return new ListFuture(ImmutableList.copyOf(paramIterable), false, MoreExecutors.sameThreadExecutor());
  }

  @Beta
  public static <V> ListenableFuture<List<V>> successfulAsList(ListenableFuture<? extends V>[] paramArrayOfListenableFuture)
  {
    return new ListFuture(ImmutableList.copyOf(paramArrayOfListenableFuture), false, MoreExecutors.sameThreadExecutor());
  }

  public static <I, O> ListenableFuture<O> transform(ListenableFuture<I> paramListenableFuture, Function<? super I, ? extends O> paramFunction)
  {
    return transform(paramListenableFuture, paramFunction, MoreExecutors.sameThreadExecutor());
  }

  public static <I, O> ListenableFuture<O> transform(ListenableFuture<I> paramListenableFuture, Function<? super I, ? extends O> paramFunction, Executor paramExecutor)
  {
    Preconditions.checkNotNull(paramFunction);
    return chain(paramListenableFuture, new Function()
    {
      public ListenableFuture<O> apply(I paramAnonymousI)
      {
        return Futures.immediateFuture(this.val$function.apply(paramAnonymousI));
      }
    }
    , paramExecutor);
  }

  public static <I, O> ListenableFuture<O> transform(ListenableFuture<I> paramListenableFuture, AsyncFunction<? super I, ? extends O> paramAsyncFunction)
  {
    return transform(paramListenableFuture, paramAsyncFunction, MoreExecutors.sameThreadExecutor());
  }

  public static <I, O> ListenableFuture<O> transform(ListenableFuture<I> paramListenableFuture, AsyncFunction<? super I, ? extends O> paramAsyncFunction, Executor paramExecutor)
  {
    ChainingListenableFuture localChainingListenableFuture = new ChainingListenableFuture(paramAsyncFunction, paramListenableFuture, null);
    paramListenableFuture.addListener(localChainingListenableFuture, paramExecutor);
    return localChainingListenableFuture;
  }

  private static <X extends Exception> void wrapAndThrowExceptionOrError(Throwable paramThrowable, Class<X> paramClass)
    throws Exception
  {
    if ((paramThrowable instanceof Error))
      throw new ExecutionError((Error)paramThrowable);
    if ((paramThrowable instanceof RuntimeException))
      throw new UncheckedExecutionException(paramThrowable);
    throw newWithCause(paramClass, paramThrowable);
  }

  private static void wrapAndThrowUnchecked(Throwable paramThrowable)
  {
    if ((paramThrowable instanceof Error))
      throw new ExecutionError((Error)paramThrowable);
    throw new UncheckedExecutionException(paramThrowable);
  }

  private static class ChainingListenableFuture<I, O> extends AbstractFuture<O>
    implements Runnable
  {
    private AsyncFunction<? super I, ? extends O> function;
    private ListenableFuture<? extends I> inputFuture;
    private final BlockingQueue<Boolean> mayInterruptIfRunningChannel = new LinkedBlockingQueue(1);
    private final CountDownLatch outputCreated = new CountDownLatch(1);
    private volatile ListenableFuture<? extends O> outputFuture;

    private ChainingListenableFuture(AsyncFunction<? super I, ? extends O> paramAsyncFunction, ListenableFuture<? extends I> paramListenableFuture)
    {
      this.function = ((AsyncFunction)Preconditions.checkNotNull(paramAsyncFunction));
      this.inputFuture = ((ListenableFuture)Preconditions.checkNotNull(paramListenableFuture));
    }

    private void cancel(@Nullable Future<?> paramFuture, boolean paramBoolean)
    {
      if (paramFuture != null)
        paramFuture.cancel(paramBoolean);
    }

    public boolean cancel(boolean paramBoolean)
    {
      if (super.cancel(paramBoolean))
      {
        Uninterruptibles.putUninterruptibly(this.mayInterruptIfRunningChannel, Boolean.valueOf(paramBoolean));
        cancel(this.inputFuture, paramBoolean);
        cancel(this.outputFuture, paramBoolean);
        return true;
      }
      return false;
    }

    public O get()
      throws InterruptedException, ExecutionException
    {
      if (!isDone())
      {
        ListenableFuture localListenableFuture1 = this.inputFuture;
        if (localListenableFuture1 != null)
          localListenableFuture1.get();
        this.outputCreated.await();
        ListenableFuture localListenableFuture2 = this.outputFuture;
        if (localListenableFuture2 != null)
          localListenableFuture2.get();
      }
      return super.get();
    }

    public O get(long paramLong, TimeUnit paramTimeUnit)
      throws TimeoutException, ExecutionException, InterruptedException
    {
      if (!isDone())
      {
        if (paramTimeUnit != TimeUnit.NANOSECONDS)
        {
          paramLong = TimeUnit.NANOSECONDS.convert(paramLong, paramTimeUnit);
          paramTimeUnit = TimeUnit.NANOSECONDS;
        }
        ListenableFuture localListenableFuture1 = this.inputFuture;
        if (localListenableFuture1 != null)
        {
          long l2 = System.nanoTime();
          localListenableFuture1.get(paramLong, paramTimeUnit);
          paramLong -= Math.max(0L, System.nanoTime() - l2);
        }
        long l1 = System.nanoTime();
        if (!this.outputCreated.await(paramLong, paramTimeUnit))
          throw new TimeoutException();
        paramLong -= Math.max(0L, System.nanoTime() - l1);
        ListenableFuture localListenableFuture2 = this.outputFuture;
        if (localListenableFuture2 != null)
          localListenableFuture2.get(paramLong, paramTimeUnit);
      }
      return super.get(paramLong, paramTimeUnit);
    }

    public void run()
    {
      try
      {
        Object localObject2 = Uninterruptibles.getUninterruptibly(this.inputFuture);
        localListenableFuture = this.function.apply(localObject2);
        this.outputFuture = localListenableFuture;
        if (isCancelled())
        {
          localListenableFuture.cancel(((Boolean)Uninterruptibles.takeUninterruptibly(this.mayInterruptIfRunningChannel)).booleanValue());
          this.outputFuture = null;
          return;
        }
      }
      catch (CancellationException localCancellationException)
      {
        cancel(false);
        return;
      }
      catch (ExecutionException localExecutionException)
      {
        final ListenableFuture localListenableFuture;
        setException(localExecutionException.getCause());
        return;
        localListenableFuture.addListener(new Runnable()
        {
          public void run()
          {
            try
            {
              Futures.ChainingListenableFuture.this.set(Uninterruptibles.getUninterruptibly(localListenableFuture));
              return;
            }
            catch (CancellationException localCancellationException)
            {
              Futures.ChainingListenableFuture.this.cancel(false);
              return;
            }
            catch (ExecutionException localExecutionException)
            {
              Futures.ChainingListenableFuture.this.setException(localExecutionException.getCause());
              return;
            }
            finally
            {
              Futures.ChainingListenableFuture.access$102(Futures.ChainingListenableFuture.this, null);
            }
          }
        }
        , MoreExecutors.sameThreadExecutor());
        return;
      }
      catch (UndeclaredThrowableException localUndeclaredThrowableException)
      {
        setException(localUndeclaredThrowableException.getCause());
        return;
      }
      catch (Exception localException)
      {
        setException(localException);
        return;
      }
      catch (Error localError)
      {
        setException(localError);
        return;
      }
      finally
      {
        this.function = null;
        this.inputFuture = null;
        this.outputCreated.countDown();
      }
    }
  }

  private static class ListFuture<V> extends AbstractFuture<List<V>>
  {
    final boolean allMustSucceed;
    ImmutableList<? extends ListenableFuture<? extends V>> futures;
    final AtomicInteger remaining;
    List<V> values;

    ListFuture(ImmutableList<? extends ListenableFuture<? extends V>> paramImmutableList, boolean paramBoolean, Executor paramExecutor)
    {
      this.futures = paramImmutableList;
      this.values = Lists.newArrayListWithCapacity(paramImmutableList.size());
      this.allMustSucceed = paramBoolean;
      this.remaining = new AtomicInteger(paramImmutableList.size());
      init(paramExecutor);
    }

    private void callAllGets()
      throws InterruptedException
    {
      ImmutableList localImmutableList = this.futures;
      if ((localImmutableList != null) && (!isDone()))
        label42: 
        do
        {
          Iterator localIterator = localImmutableList.iterator();
          break label42;
          if (!localIterator.hasNext())
            break;
          ListenableFuture localListenableFuture = (ListenableFuture)localIterator.next();
          while (!localListenableFuture.isDone())
            try
            {
              localListenableFuture.get();
            }
            catch (Error localError)
            {
              throw localError;
            }
            catch (InterruptedException localInterruptedException)
            {
              throw localInterruptedException;
            }
            catch (Throwable localThrowable)
            {
            }
        }
        while (!this.allMustSucceed);
    }

    private void init(Executor paramExecutor)
    {
      addListener(new Runnable()
      {
        public void run()
        {
          Futures.ListFuture.this.values = null;
          Futures.ListFuture.this.futures = null;
        }
      }
      , MoreExecutors.sameThreadExecutor());
      if (this.futures.isEmpty())
        set(Lists.newArrayList(this.values));
      while (true)
      {
        return;
        for (int i = 0; i < this.futures.size(); i++)
          this.values.add(null);
        ImmutableList localImmutableList = this.futures;
        for (final int j = 0; j < localImmutableList.size(); j++)
        {
          final ListenableFuture localListenableFuture = (ListenableFuture)localImmutableList.get(j);
          localListenableFuture.addListener(new Runnable()
          {
            public void run()
            {
              Futures.ListFuture.this.setOneValue(j, localListenableFuture);
            }
          }
          , paramExecutor);
        }
      }
    }

    private void setOneValue(int paramInt, Future<? extends V> paramFuture)
    {
      boolean bool = true;
      List localList1 = this.values;
      if ((isDone()) || (localList1 == null))
        Preconditions.checkState(this.allMustSucceed, "Future was done before all dependencies completed");
      label106: int i;
      while (true)
      {
        return;
        try
        {
          Preconditions.checkState(paramFuture.isDone(), "Tried to set value from future which is not done");
          localList1.set(paramInt, Uninterruptibles.getUninterruptibly(paramFuture));
          int i1 = this.remaining.decrementAndGet();
          if (i1 >= 0);
          while (true)
          {
            Preconditions.checkState(bool, "Less than 0 remaining futures");
            if (i1 != 0)
              break;
            List localList7 = this.values;
            if (localList7 == null)
              break label106;
            set(Lists.newArrayList(localList7));
            return;
            bool = false;
          }
          Preconditions.checkState(isDone());
          return;
        }
        catch (CancellationException localCancellationException)
        {
          if (this.allMustSucceed)
            cancel(false);
          int n = this.remaining.decrementAndGet();
          if (n >= 0);
          while (true)
          {
            Preconditions.checkState(bool, "Less than 0 remaining futures");
            if (n != 0)
              break;
            List localList6 = this.values;
            if (localList6 == null)
              break label181;
            set(Lists.newArrayList(localList6));
            return;
            bool = false;
          }
          Preconditions.checkState(isDone());
          return;
        }
        catch (ExecutionException localExecutionException)
        {
          if (this.allMustSucceed)
            setException(localExecutionException.getCause());
          int m = this.remaining.decrementAndGet();
          if (m >= 0);
          while (true)
          {
            Preconditions.checkState(bool, "Less than 0 remaining futures");
            if (m != 0)
              break;
            List localList5 = this.values;
            if (localList5 == null)
              break label260;
            set(Lists.newArrayList(localList5));
            return;
            bool = false;
          }
          Preconditions.checkState(isDone());
          return;
        }
        catch (RuntimeException localRuntimeException)
        {
          if (this.allMustSucceed)
            setException(localRuntimeException);
          int k = this.remaining.decrementAndGet();
          if (k >= 0);
          while (true)
          {
            Preconditions.checkState(bool, "Less than 0 remaining futures");
            if (k != 0)
              break;
            List localList4 = this.values;
            if (localList4 == null)
              break label336;
            set(Lists.newArrayList(localList4));
            return;
            bool = false;
          }
          Preconditions.checkState(isDone());
          return;
        }
        catch (Error localError)
        {
          label181: label336: setException(localError);
          label260: int j = this.remaining.decrementAndGet();
          if (j >= 0);
          while (true)
          {
            Preconditions.checkState(bool, "Less than 0 remaining futures");
            if (j != 0)
              break;
            List localList3 = this.values;
            if (localList3 == null)
              break label405;
            set(Lists.newArrayList(localList3));
            return;
            bool = false;
          }
          label405: Preconditions.checkState(isDone());
          return;
        }
        finally
        {
          i = this.remaining.decrementAndGet();
          if (i < 0)
            break label464;
        }
      }
      Preconditions.checkState(bool, "Less than 0 remaining futures");
      if (i == 0)
      {
        List localList2 = this.values;
        if (localList2 == null)
          break label469;
        set(Lists.newArrayList(localList2));
      }
      while (true)
      {
        throw localObject;
        label464: bool = false;
        break;
        label469: Preconditions.checkState(isDone());
      }
    }

    public List<V> get()
      throws InterruptedException, ExecutionException
    {
      callAllGets();
      return (List)super.get();
    }
  }

  private static class MappingCheckedFuture<V, X extends Exception> extends AbstractCheckedFuture<V, X>
  {
    final Function<Exception, X> mapper;

    MappingCheckedFuture(ListenableFuture<V> paramListenableFuture, Function<Exception, X> paramFunction)
    {
      super();
      this.mapper = ((Function)Preconditions.checkNotNull(paramFunction));
    }

    protected X mapException(Exception paramException)
    {
      return (Exception)this.mapper.apply(paramException);
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.util.concurrent.Futures
 * JD-Core Version:    0.6.2
 */