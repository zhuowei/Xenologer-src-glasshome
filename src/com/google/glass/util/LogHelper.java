package com.google.glass.util;

import android.util.Log;

public class LogHelper
{
  private static final boolean LOG_PII;

  static
  {
    if (!BuildHelper.isUser());
    for (boolean bool = true; ; bool = false)
    {
      LOG_PII = bool;
      return;
    }
  }

  public static void logPii(int paramInt, String paramString1, String paramString2)
  {
    logPii(paramInt, paramString1, paramString2, null);
  }

  public static void logPii(int paramInt, String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (LOG_PII);
    switch (paramInt)
    {
    default:
      return;
    case 3:
      if (paramThrowable != null)
      {
        Log.d(paramString1, paramString2, paramThrowable);
        return;
      }
      Log.d(paramString1, paramString2);
      return;
    case 6:
      if (paramThrowable != null)
      {
        Log.e(paramString1, paramString2, paramThrowable);
        return;
      }
      Log.e(paramString1, paramString2);
      return;
    case 4:
      if (paramThrowable != null)
      {
        Log.i(paramString1, paramString2, paramThrowable);
        return;
      }
      Log.i(paramString1, paramString2);
      return;
    case 2:
      if (paramThrowable != null)
      {
        Log.v(paramString1, paramString2, paramThrowable);
        return;
      }
      Log.v(paramString1, paramString2);
      return;
    case 5:
    }
    if (paramThrowable != null)
    {
      Log.w(paramString1, paramString2, paramThrowable);
      return;
    }
    Log.w(paramString1, paramString2);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.util.LogHelper
 * JD-Core Version:    0.6.2
 */