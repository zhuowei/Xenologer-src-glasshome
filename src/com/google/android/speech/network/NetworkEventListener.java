package com.google.android.speech.network;

public abstract interface NetworkEventListener
{
  public abstract void onConnectionFinished();

  public abstract void onConnectionStarted();

  public abstract void onDataComplete();

  public abstract void onDataReceived();

  public abstract void onDataSent();

  public abstract void onError();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.android.speech.network.NetworkEventListener
 * JD-Core Version:    0.6.2
 */