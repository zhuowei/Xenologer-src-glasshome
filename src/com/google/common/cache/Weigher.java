package com.google.common.cache;

import com.google.common.annotations.Beta;

@Beta
public abstract interface Weigher<K, V>
{
  public abstract int weigh(K paramK, V paramV);
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.cache.Weigher
 * JD-Core Version:    0.6.2
 */