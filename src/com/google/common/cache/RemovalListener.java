package com.google.common.cache;

import com.google.common.annotations.Beta;

@Beta
public abstract interface RemovalListener<K, V>
{
  public abstract void onRemoval(RemovalNotification<K, V> paramRemovalNotification);
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.cache.RemovalListener
 * JD-Core Version:    0.6.2
 */