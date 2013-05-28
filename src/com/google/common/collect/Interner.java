package com.google.common.collect;

import com.google.common.annotations.Beta;

@Beta
public abstract interface Interner<E>
{
  public abstract E intern(E paramE);
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.Interner
 * JD-Core Version:    0.6.2
 */