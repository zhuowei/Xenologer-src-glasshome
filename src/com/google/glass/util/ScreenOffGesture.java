package com.google.glass.util;

import android.content.Intent;

public enum ScreenOffGesture
{
  public static final String ACTION_TOUCH_GESTURE = "com.google.glass.action.TOUCH_GESTURE";
  private static final String EXTRA_GESTURE = "gesture";

  static
  {
    LONG_TAP = new ScreenOffGesture("LONG_TAP", 2);
    SWIPE_DOWN = new ScreenOffGesture("SWIPE_DOWN", 3);
    SWIPE_UP = new ScreenOffGesture("SWIPE_UP", 4);
    SWIPE_LEFT = new ScreenOffGesture("SWIPE_LEFT", 5);
    SWIPE_RIGHT = new ScreenOffGesture("SWIPE_RIGHT", 6);
    TWO_TAP = new ScreenOffGesture("TWO_TAP", 7);
    TWO_LONG_TAP = new ScreenOffGesture("TWO_LONG_TAP", 8);
    TWO_SWIPE_DOWN = new ScreenOffGesture("TWO_SWIPE_DOWN", 9);
    TWO_SWIPE_UP = new ScreenOffGesture("TWO_SWIPE_UP", 10);
    TWO_SWIPE_LEFT = new ScreenOffGesture("TWO_SWIPE_LEFT", 11);
    TWO_SWIPE_RIGHT = new ScreenOffGesture("TWO_SWIPE_RIGHT", 12);
    ScreenOffGesture[] arrayOfScreenOffGesture = new ScreenOffGesture[13];
    arrayOfScreenOffGesture[0] = GLOBAL_LOOK_UP;
    arrayOfScreenOffGesture[1] = TAP;
    arrayOfScreenOffGesture[2] = LONG_TAP;
    arrayOfScreenOffGesture[3] = SWIPE_DOWN;
    arrayOfScreenOffGesture[4] = SWIPE_UP;
    arrayOfScreenOffGesture[5] = SWIPE_LEFT;
    arrayOfScreenOffGesture[6] = SWIPE_RIGHT;
    arrayOfScreenOffGesture[7] = TWO_TAP;
    arrayOfScreenOffGesture[8] = TWO_LONG_TAP;
    arrayOfScreenOffGesture[9] = TWO_SWIPE_DOWN;
    arrayOfScreenOffGesture[10] = TWO_SWIPE_UP;
    arrayOfScreenOffGesture[11] = TWO_SWIPE_LEFT;
    arrayOfScreenOffGesture[12] = TWO_SWIPE_RIGHT;
  }

  public static void clearScreenOffGesture(Intent paramIntent)
  {
    paramIntent.removeExtra("gesture");
  }

  public static void copyScreenOffGesture(Intent paramIntent1, Intent paramIntent2)
  {
    if (hasScreenOffGesture(paramIntent1))
      paramIntent2.putExtra("gesture", paramIntent1.getStringExtra("gesture"));
  }

  public static ScreenOffGesture fromIntent(Intent paramIntent)
  {
    return valueOf(paramIntent.getStringExtra("gesture"));
  }

  public static boolean hasScreenOffGesture(Intent paramIntent)
  {
    return paramIntent.hasExtra("gesture");
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.util.ScreenOffGesture
 * JD-Core Version:    0.6.2
 */