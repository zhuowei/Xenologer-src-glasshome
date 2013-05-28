package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import javax.annotation.Nullable;

@GwtCompatible
public abstract interface Function<F, T>
{
  public abstract T apply(@Nullable F paramF);

  public abstract boolean equals(@Nullable Object paramObject);
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.base.Function
 * JD-Core Version:    0.6.2
 */