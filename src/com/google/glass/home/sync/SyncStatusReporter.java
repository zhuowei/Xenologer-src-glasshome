package com.google.glass.home.sync;

abstract interface SyncStatusReporter
{
  public abstract void handleFail();

  public abstract void handleSuccess();

  public abstract boolean shouldRetry();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.sync.SyncStatusReporter
 * JD-Core Version:    0.6.2
 */