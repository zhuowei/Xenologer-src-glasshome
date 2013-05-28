package com.google.glass.home.timeline.html;

import android.os.SystemClock;
import android.util.Log;

class Timer
{
  private final long startTime = SystemClock.uptimeMillis();

  void log(String paramString1, String paramString2)
  {
    long l = SystemClock.uptimeMillis() - this.startTime;
    Log.v(paramString1, paramString2 + ", " + l + "ms");
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.html.Timer
 * JD-Core Version:    0.6.2
 */