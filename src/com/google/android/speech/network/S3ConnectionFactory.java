package com.google.android.speech.network;

import javax.annotation.Nullable;

public abstract interface S3ConnectionFactory
{
  @Nullable
  public abstract S3Connection create();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.android.speech.network.S3ConnectionFactory
 * JD-Core Version:    0.6.2
 */