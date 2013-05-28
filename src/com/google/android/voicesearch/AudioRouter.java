package com.google.android.voicesearch;

public abstract interface AudioRouter
{
  public abstract void setHeadsetEnabled(boolean paramBoolean);

  public abstract boolean start();

  public abstract void stop();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.android.voicesearch.AudioRouter
 * JD-Core Version:    0.6.2
 */