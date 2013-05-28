package com.google.common.base;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;
import java.io.Serializable;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

@GwtCompatible
public final class Suppliers
{
  public static <F, T> Supplier<T> compose(Function<? super F, T> paramFunction, Supplier<F> paramSupplier)
  {
    Preconditions.checkNotNull(paramFunction);
    Preconditions.checkNotNull(paramSupplier);
    return new SupplierComposition(paramFunction, paramSupplier);
  }

  public static <T> Supplier<T> memoize(Supplier<T> paramSupplier)
  {
    if ((paramSupplier instanceof MemoizingSupplier))
      return paramSupplier;
    return new MemoizingSupplier((Supplier)Preconditions.checkNotNull(paramSupplier));
  }

  public static <T> Supplier<T> memoizeWithExpiration(Supplier<T> paramSupplier, long paramLong, TimeUnit paramTimeUnit)
  {
    return new ExpiringMemoizingSupplier(paramSupplier, paramLong, paramTimeUnit);
  }

  public static <T> Supplier<T> ofInstance(@Nullable T paramT)
  {
    return new SupplierOfInstance(paramT);
  }

  @Beta
  public static <T> Function<Supplier<T>, T> supplierFunction()
  {
    return SupplierFunction.INSTANCE;
  }

  public static <T> Supplier<T> synchronizedSupplier(Supplier<T> paramSupplier)
  {
    return new ThreadSafeSupplier((Supplier)Preconditions.checkNotNull(paramSupplier));
  }

  @VisibleForTesting
  static class ExpiringMemoizingSupplier<T>
    implements Supplier<T>, Serializable
  {
    private static final long serialVersionUID;
    final Supplier<T> delegate;
    final long durationNanos;
    volatile transient long expirationNanos;
    volatile transient T value;

    ExpiringMemoizingSupplier(Supplier<T> paramSupplier, long paramLong, TimeUnit paramTimeUnit)
    {
      this.delegate = ((Supplier)Preconditions.checkNotNull(paramSupplier));
      this.durationNanos = paramTimeUnit.toNanos(paramLong);
      if (paramLong > 0L);
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkArgument(bool);
        return;
      }
    }

    public T get()
    {
      long l1 = this.expirationNanos;
      long l2 = Platform.systemNanoTime();
      if ((l1 == 0L) || (l2 - l1 >= 0L));
      while (true)
      {
        long l3;
        try
        {
          if (l1 == this.expirationNanos)
          {
            Object localObject2 = this.delegate.get();
            this.value = localObject2;
            l3 = l2 + this.durationNanos;
            if (l3 == 0L)
            {
              l4 = 1L;
              this.expirationNanos = l4;
              return localObject2;
            }
          }
          else
          {
            return this.value;
          }
        }
        finally
        {
        }
        long l4 = l3;
      }
    }
  }

  @VisibleForTesting
  static class MemoizingSupplier<T>
    implements Supplier<T>, Serializable
  {
    private static final long serialVersionUID;
    final Supplier<T> delegate;
    volatile transient boolean initialized;
    transient T value;

    MemoizingSupplier(Supplier<T> paramSupplier)
    {
      this.delegate = paramSupplier;
    }

    public T get()
    {
      if (!this.initialized);
      try
      {
        if (!this.initialized)
        {
          Object localObject2 = this.delegate.get();
          this.value = localObject2;
          this.initialized = true;
          return localObject2;
        }
        return this.value;
      }
      finally
      {
      }
    }
  }

  private static class SupplierComposition<F, T>
    implements Supplier<T>, Serializable
  {
    private static final long serialVersionUID;
    final Function<? super F, T> function;
    final Supplier<F> supplier;

    SupplierComposition(Function<? super F, T> paramFunction, Supplier<F> paramSupplier)
    {
      this.function = paramFunction;
      this.supplier = paramSupplier;
    }

    public T get()
    {
      return this.function.apply(this.supplier.get());
    }
  }

  private static enum SupplierFunction
    implements Function<Supplier<?>, Object>
  {
    static
    {
      SupplierFunction[] arrayOfSupplierFunction = new SupplierFunction[1];
      arrayOfSupplierFunction[0] = INSTANCE;
    }

    public Object apply(Supplier<?> paramSupplier)
    {
      return paramSupplier.get();
    }
  }

  private static class SupplierOfInstance<T>
    implements Supplier<T>, Serializable
  {
    private static final long serialVersionUID;
    final T instance;

    SupplierOfInstance(@Nullable T paramT)
    {
      this.instance = paramT;
    }

    public T get()
    {
      return this.instance;
    }
  }

  private static class ThreadSafeSupplier<T>
    implements Supplier<T>, Serializable
  {
    private static final long serialVersionUID;
    final Supplier<T> delegate;

    ThreadSafeSupplier(Supplier<T> paramSupplier)
    {
      this.delegate = paramSupplier;
    }

    public T get()
    {
      synchronized (this.delegate)
      {
        Object localObject2 = this.delegate.get();
        return localObject2;
      }
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.base.Suppliers
 * JD-Core Version:    0.6.2
 */