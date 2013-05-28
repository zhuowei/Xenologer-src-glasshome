package com.google.common.util.concurrent;

import javax.annotation.Nullable;

public final class SettableFuture<V> extends AbstractFuture<V>
{
  public static <V> SettableFuture<V> create()
  {
    return new SettableFuture();
  }

  public boolean set(@Nullable V paramV)
  {
    return super.set(paramV);
  }

  public boolean setException(Throwable paramThrowable)
  {
    return super.setException(paramThrowable);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.util.concurrent.SettableFuture
 * JD-Core Version:    0.6.2
 */