package com.google.android.glass.gesture;

import android.util.Log;

public enum HeadGesture
{
  private final int id;

  static
  {
    NUDGE = new HeadGesture("NUDGE", 2, 2);
    HeadGesture[] arrayOfHeadGesture = new HeadGesture[3];
    arrayOfHeadGesture[0] = GLOBAL_LOOK_UP;
    arrayOfHeadGesture[1] = RELATIVE_LOOK_UP;
    arrayOfHeadGesture[2] = NUDGE;
  }

  private HeadGesture(int paramInt)
  {
    this.id = paramInt;
  }

  public static HeadGesture fromIndex(int paramInt)
  {
    HeadGesture[] arrayOfHeadGesture = values();
    if ((paramInt < 0) || (paramInt > -1 + arrayOfHeadGesture.length))
    {
      Log.w("HeadGesture", "Index for the head gesture was out of range. ");
      return null;
    }
    return arrayOfHeadGesture[paramInt];
  }

  public static boolean hasGesture(HeadGesture paramHeadGesture)
  {
    HeadGesture[] arrayOfHeadGesture = values();
    for (int i = 0; i < arrayOfHeadGesture.length; i++)
      if (arrayOfHeadGesture[i] == paramHeadGesture)
        return true;
    return false;
  }

  public int getId()
  {
    return this.id;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.android.glass.gesture.HeadGesture
 * JD-Core Version:    0.6.2
 */