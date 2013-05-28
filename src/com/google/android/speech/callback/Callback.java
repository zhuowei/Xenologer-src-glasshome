package com.google.android.speech.callback;

public abstract interface Callback<T, K> extends SimpleCallback<T>
{
  public abstract void onError(K paramK);
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.android.speech.callback.Callback
 * JD-Core Version:    0.6.2
 */