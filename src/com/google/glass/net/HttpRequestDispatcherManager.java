package com.google.glass.net;

import com.google.common.annotations.VisibleForTesting;

public class HttpRequestDispatcherManager
{
  public static HttpRequestDispatcher getSharedDispatcher()
  {
    return HttpRequestDispatcherHolder.instance;
  }

  @VisibleForTesting
  public static void setSharedDispatcher(HttpRequestDispatcher paramHttpRequestDispatcher)
  {
    HttpRequestDispatcherHolder.access$002(paramHttpRequestDispatcher);
  }

  private static class HttpRequestDispatcherHolder
  {
    private static HttpRequestDispatcher instance = new AndroidHttpRequestDispatcher();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.net.HttpRequestDispatcherManager
 * JD-Core Version:    0.6.2
 */