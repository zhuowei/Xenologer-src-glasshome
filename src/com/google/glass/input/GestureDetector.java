package com.google.glass.input;

import android.app.ActivityManager;
import android.content.Context;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.google.glass.hidden.HiddenViewConfiguration;

public class GestureDetector
{
  public static final long DOUBLE_TAP_WINDOW_MILLIS = 150L;
  private MotionEvent currentDownEvent;
  private TouchDetector.ExtendedOnGestureListener gestureListener;
  private float lastMotionX;
  private float lastMotionY;
  private int lastPointerId;
  private long lastTapTime;
  private boolean stillInTapRegion;
  private final long tapTimeout;
  private final int touchSlopSquare;

  public GestureDetector(Context paramContext, TouchDetector.ExtendedOnGestureListener paramExtendedOnGestureListener)
  {
    this.gestureListener = paramExtendedOnGestureListener;
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(paramContext);
    if (ActivityManager.isRunningInTestHarness());
    for (this.tapTimeout = 700L; ; this.tapTimeout = HiddenViewConfiguration.getDeviceTapTimeout(localViewConfiguration))
    {
      int i = localViewConfiguration.getScaledTouchSlop();
      this.touchSlopSquare = (i * i);
      return;
    }
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (0xFF & paramMotionEvent.getAction())
    {
    default:
    case 0:
    case 2:
    case 1:
    }
    label280: long l;
    do
    {
      float f1;
      float f2;
      float f3;
      float f4;
      do
      {
        return false;
        this.lastMotionX = paramMotionEvent.getX(0);
        this.lastMotionY = paramMotionEvent.getY(0);
        this.lastPointerId = paramMotionEvent.getPointerId(0);
        if (this.currentDownEvent != null)
          this.currentDownEvent.recycle();
        this.currentDownEvent = MotionEvent.obtain(paramMotionEvent);
        this.stillInTapRegion = true;
        return this.gestureListener.onDown(paramMotionEvent);
        int i = paramMotionEvent.findPointerIndex(this.lastPointerId);
        if (i != -1)
        {
          f1 = paramMotionEvent.getX(i);
          f2 = paramMotionEvent.getY(i);
        }
        while (true)
        {
          f3 = this.lastMotionX - f1;
          f4 = this.lastMotionY - f2;
          if (!this.stillInTapRegion)
            break label280;
          int j = (int)(f1 - this.currentDownEvent.getX(0));
          int k = (int)(f2 - this.currentDownEvent.getY(0));
          if (j * j + k * k <= this.touchSlopSquare)
            break;
          boolean bool2 = this.gestureListener.onScroll(this.currentDownEvent, paramMotionEvent, f3, f4);
          this.lastMotionX = f1;
          this.lastMotionY = f2;
          this.stillInTapRegion = false;
          return bool2;
          f1 = paramMotionEvent.getX(0);
          f2 = paramMotionEvent.getY(0);
          this.lastMotionX = f1;
          this.lastMotionY = f2;
          this.lastPointerId = paramMotionEvent.getPointerId(0);
        }
      }
      while ((Math.abs(f3) < 1.0F) && (Math.abs(f4) < 1.0F));
      boolean bool1 = this.gestureListener.onScroll(this.currentDownEvent, paramMotionEvent, f3, f4);
      this.lastMotionX = f1;
      this.lastMotionY = f2;
      return bool1;
      l = paramMotionEvent.getEventTime();
    }
    while ((!this.stillInTapRegion) || (paramMotionEvent.getEventTime() - paramMotionEvent.getDownTime() >= this.tapTimeout));
    this.gestureListener.onSingleTapUp(paramMotionEvent);
    if (this.currentDownEvent.getEventTime() - this.lastTapTime < 150L)
      this.gestureListener.onDoubleTapUp(paramMotionEvent);
    this.lastTapTime = l;
    return false;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.input.GestureDetector
 * JD-Core Version:    0.6.2
 */