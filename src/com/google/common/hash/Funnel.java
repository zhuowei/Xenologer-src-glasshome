package com.google.common.hash;

import com.google.common.annotations.Beta;

@Beta
public abstract interface Funnel<T>
{
  public abstract void funnel(T paramT, Sink paramSink);
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.hash.Funnel
 * JD-Core Version:    0.6.2
 */