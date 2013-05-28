package com.google.glass.gesture;

import android.content.Intent;
import android.util.Log;

public final class HeadGestureUtils
{
  public static final String EXTRA_HEAD_GESTURE = "gesture";
  public static final String LOG_HEAD_GESTURE = "com.google.glass.LOG_HEAD_GESTURE";
  private static final String TAG = HeadGestureUtils.class.getSimpleName();

  public static HeadGesture getHeadGesture(Intent paramIntent)
  {
    String str = paramIntent.getStringExtra("gesture");
    Object localObject = HeadGesture.NO_GESTURE;
    if (str != null);
    try
    {
      HeadGesture localHeadGesture = HeadGesture.valueOf(str);
      localObject = localHeadGesture;
      return localObject;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      Log.e(TAG, "Extra for the recognized HeadGesture: " + str + " was unknown!");
    }
    return HeadGesture.NO_GESTURE;
  }

  public static enum HeadGesture
  {
    static
    {
      GLOBAL_LOOK_UP = new HeadGesture("GLOBAL_LOOK_UP", 1);
      RELATIVE_LOOK_UP = new HeadGesture("RELATIVE_LOOK_UP", 2);
      NUDGE = new HeadGesture("NUDGE", 3);
      HeadGesture[] arrayOfHeadGesture = new HeadGesture[4];
      arrayOfHeadGesture[0] = NO_GESTURE;
      arrayOfHeadGesture[1] = GLOBAL_LOOK_UP;
      arrayOfHeadGesture[2] = RELATIVE_LOOK_UP;
      arrayOfHeadGesture[3] = NUDGE;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.gesture.HeadGestureUtils
 * JD-Core Version:    0.6.2
 */