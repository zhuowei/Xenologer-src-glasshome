package com.google.glass.input;

import android.content.Context;
import android.util.Log;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.google.glass.util.PowerHelper;

public final class TouchDetector
{
  private static final float HORIZONTAL_SWIPE_DISTANCE_PX = 200.0F;
  private static final float HORIZONTAL_SWIPE_VELOCITY_PX_MS = 0.6F;
  private static final float SCROLL_VELOCITY_DAMPENING = 0.9F;
  private static final String TAG = TouchDetector.class.getSimpleName();
  private static final float VERTICAL_SWIPE_DISTANCE_PX = 100.0F;
  private static final float VERTICAL_SWIPE_VELOCITY_PX_MS = 0.3F;
  private MotionEvent downEvent;
  private final GestureDetector gestureDetector;
  private final ExtendedOnGestureListener gestureListener = new ExtendedOnGestureListener()
  {
    private float totalDistanceX;
    private float totalDistanceY;

    private void recycleDownEvent()
    {
      if (TouchDetector.this.downEvent != null)
      {
        TouchDetector.this.downEvent.recycle();
        TouchDetector.access$1102(TouchDetector.this, null);
      }
    }

    public boolean onCancel(MotionEvent paramAnonymousMotionEvent)
    {
      TouchDetector.this.dispatchSwipeCanceled(paramAnonymousMotionEvent.getPointerCount());
      TouchDetector.this.dispatchFingerCountChanged(0, false);
      recycleDownEvent();
      return false;
    }

    public boolean onDoubleTapUp(MotionEvent paramAnonymousMotionEvent)
    {
      TouchDetector.this.dispatchDoubleTap();
      return false;
    }

    public boolean onDown(MotionEvent paramAnonymousMotionEvent)
    {
      TouchDetector.access$1102(TouchDetector.this, MotionEvent.obtain(paramAnonymousMotionEvent));
      TouchDetector.access$202(TouchDetector.this, 0L);
      TouchDetector.this.resetSwipes(-1 + TouchDetector.this.downEvent.getPointerCount(), true);
      TouchDetector.this.dispatchFingerCountChanged(TouchDetector.this.downEvent.getPointerCount(), true);
      return false;
    }

    public boolean onScroll(MotionEvent paramAnonymousMotionEvent1, MotionEvent paramAnonymousMotionEvent2, float paramAnonymousFloat1, float paramAnonymousFloat2)
    {
      if (TouchDetector.this.lastScrollEventMillis == 0L)
      {
        TouchDetector.access$302(TouchDetector.this, paramAnonymousMotionEvent2.getPointerCount());
        TouchDetector.access$202(TouchDetector.this, paramAnonymousMotionEvent2.getEventTime());
        this.totalDistanceX = 0.0F;
        this.totalDistanceY = 0.0F;
        TouchDetector.access$402(TouchDetector.this, false);
        TouchDetector.access$502(TouchDetector.this, false);
        TouchDetector.access$602(TouchDetector.this, 0.0F);
        TouchDetector.access$702(TouchDetector.this, 0.0F);
        TouchDetector.this.dispatchPrepareSwipe(paramAnonymousMotionEvent2.getPointerCount(), this.totalDistanceX, this.totalDistanceY, TouchDetector.this.scrollVelocityX, TouchDetector.this.scrollVelocityY, 0, 0);
        return false;
      }
      if (paramAnonymousMotionEvent2.getPointerCount() == TouchDetector.this.lastScrollPointerCount);
      for (int i = 1; ; i = 0)
      {
        TouchDetector.access$302(TouchDetector.this, paramAnonymousMotionEvent2.getPointerCount());
        if ((paramAnonymousMotionEvent2.getEventTime() != TouchDetector.this.lastScrollEventMillis) && (i != 0))
        {
          if ((!TouchDetector.this.scrollInXStarted) && (Math.abs(paramAnonymousMotionEvent2.getX() - paramAnonymousMotionEvent1.getX()) > TouchDetector.this.tapDistanceThreshold))
            TouchDetector.access$402(TouchDetector.this, true);
          if ((!TouchDetector.this.scrollInYStarted) && (Math.abs(paramAnonymousMotionEvent2.getY() - paramAnonymousMotionEvent1.getY()) > TouchDetector.this.tapDistanceThreshold))
            TouchDetector.access$502(TouchDetector.this, true);
          float f1 = (float)(paramAnonymousMotionEvent2.getEventTime() - TouchDetector.this.lastScrollEventMillis);
          boolean bool1 = TouchDetector.this.scrollInXStarted;
          float f2 = 0.0F;
          if (bool1)
          {
            this.totalDistanceX -= paramAnonymousFloat1;
            f2 = paramAnonymousFloat1 / f1;
          }
          boolean bool2 = TouchDetector.this.scrollInYStarted;
          float f3 = 0.0F;
          if (bool2)
          {
            this.totalDistanceY -= paramAnonymousFloat2;
            f3 = paramAnonymousFloat2 / f1;
          }
          if ((TouchDetector.this.scrollInXStarted) || (TouchDetector.this.scrollInYStarted))
          {
            TouchDetector.access$602(TouchDetector.this, TouchDetector.this.interpolate(TouchDetector.this.scrollVelocityX, f2, 0.9F));
            TouchDetector.access$702(TouchDetector.this, TouchDetector.this.interpolate(TouchDetector.this.scrollVelocityY, f3, 0.9F));
            int j = (int)(this.totalDistanceX / 200.0F);
            int k = (int)(this.totalDistanceY / 100.0F);
            TouchDetector.this.dispatchPrepareSwipe(paramAnonymousMotionEvent2.getPointerCount(), this.totalDistanceX, this.totalDistanceY, TouchDetector.this.scrollVelocityX, TouchDetector.this.scrollVelocityY, j, k);
          }
        }
        TouchDetector.access$202(TouchDetector.this, paramAnonymousMotionEvent2.getEventTime());
        return false;
      }
    }

    public boolean onSingleTapUp(MotionEvent paramAnonymousMotionEvent)
    {
      TouchDetector.this.dispatchConfirm();
      return false;
    }

    public boolean onUp(MotionEvent paramAnonymousMotionEvent)
    {
      if (TouchDetector.this.downEvent == null)
      {
        Log.w(TouchDetector.TAG, "Ignoring up event, because there was no down event.");
        return false;
      }
      float f1 = paramAnonymousMotionEvent.getX() - TouchDetector.this.downEvent.getX();
      float f2 = paramAnonymousMotionEvent.getY() - TouchDetector.this.downEvent.getY();
      long l = paramAnonymousMotionEvent.getEventTime() - TouchDetector.this.downEvent.getEventTime();
      float f3 = f1 / (float)l;
      float f4 = f2 / (float)l;
      SwipeDirection localSwipeDirection1;
      SwipeDirection localSwipeDirection2;
      label106: int i;
      label120: int j;
      label134: label161: label180: TouchDetector localTouchDetector;
      int k;
      if (f1 > 0.0F)
      {
        localSwipeDirection1 = SwipeDirection.RIGHT;
        if (f2 <= 0.0F)
          break label262;
        localSwipeDirection2 = SwipeDirection.DOWN;
        if (Math.abs(f4) <= 0.3F)
          break label270;
        i = 1;
        if (Math.abs(f3) <= 0.6F)
          break label276;
        j = 1;
        if ((j == 0) || (i == 0))
          break label288;
        if (Math.abs(f3) <= Math.abs(f4))
          break label282;
        i = 0;
        if (j == 0)
          break label370;
        TouchDetector.this.dispatchSwipe(paramAnonymousMotionEvent.getPointerCount(), localSwipeDirection1);
        localTouchDetector = TouchDetector.this;
        k = paramAnonymousMotionEvent.getPointerCount();
        if ((j != 0) || (i != 0))
          break label392;
      }
      label262: label392: for (boolean bool = true; ; bool = false)
      {
        localTouchDetector.resetSwipes(k, bool);
        TouchDetector.this.dispatchFingerCountChanged(-1 + paramAnonymousMotionEvent.getPointerCount(), false);
        recycleDownEvent();
        if (paramAnonymousMotionEvent.getPointerCount() > 1)
          TouchDetector.access$1102(TouchDetector.this, MotionEvent.obtain(paramAnonymousMotionEvent));
        return false;
        localSwipeDirection1 = SwipeDirection.LEFT;
        break;
        localSwipeDirection2 = SwipeDirection.UP;
        break label106;
        label270: i = 0;
        break label120;
        label276: j = 0;
        break label134;
        label282: j = 0;
        break label161;
        label288: if ((j != 0) || (i != 0))
          break label161;
        if (Math.abs(f1) > 200.0F)
        {
          j = 1;
          label311: if (Math.abs(f2) <= 100.0F)
            break label358;
        }
        label358: for (i = 1; ; i = 0)
        {
          if ((j == 0) || (i == 0))
            break label362;
          if (Math.abs(f1) <= Math.abs(f2))
            break label364;
          i = 0;
          break;
          j = 0;
          break label311;
        }
        label362: break label161;
        label364: j = 0;
        break label161;
        label370: if (i == 0)
          break label180;
        TouchDetector.this.dispatchSwipe(paramAnonymousMotionEvent.getPointerCount(), localSwipeDirection2);
        break label180;
      }
    }
  };
  private final InputListener inputListener;
  private long lastScrollEventMillis;
  private int lastScrollPointerCount;
  private final PowerHelper powerHelper;
  private boolean prepareSwipeCalled;
  private boolean scrollInXStarted;
  private boolean scrollInYStarted;
  private float scrollVelocityX;
  private float scrollVelocityY;
  private float tapDistanceThreshold;

  public TouchDetector(Context paramContext, InputListener paramInputListener)
  {
    if (paramInputListener == null)
      throw new NullPointerException("InputDetector constructed with null InputListener");
    this.inputListener = paramInputListener;
    this.gestureDetector = new GestureDetector(paramContext, this.gestureListener);
    this.powerHelper = new PowerHelper(paramContext);
    this.tapDistanceThreshold = ViewConfiguration.get(paramContext).getScaledTouchSlop();
  }

  private boolean dispatchConfirm()
  {
    if (this.inputListener.onConfirm())
    {
      this.powerHelper.userActivity();
      return true;
    }
    return false;
  }

  private boolean dispatchDoubleTap()
  {
    if (this.inputListener.onDoubleTap())
    {
      this.powerHelper.userActivity();
      return true;
    }
    return false;
  }

  private void dispatchFingerCountChanged(int paramInt, boolean paramBoolean)
  {
    this.inputListener.onFingerCountChanged(paramInt, paramBoolean);
  }

  private boolean dispatchPrepareSwipe(int paramInt1, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt2, int paramInt3)
  {
    this.prepareSwipeCalled = true;
    if (this.inputListener.onPrepareSwipe(paramInt1, paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramInt2, paramInt3))
    {
      this.powerHelper.userActivity();
      return true;
    }
    return false;
  }

  private boolean dispatchSwipe(int paramInt, SwipeDirection paramSwipeDirection)
  {
    if (this.inputListener.onSwipe(paramInt, paramSwipeDirection))
    {
      this.powerHelper.userActivity();
      return true;
    }
    return false;
  }

  private boolean dispatchSwipeCanceled(int paramInt)
  {
    if (this.inputListener.onSwipeCanceled(paramInt))
    {
      this.powerHelper.userActivity();
      return true;
    }
    return false;
  }

  private float interpolate(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return paramFloat1 * (1.0F - paramFloat3) + paramFloat3 * paramFloat2;
  }

  private void resetSwipes(int paramInt, boolean paramBoolean)
  {
    if ((this.prepareSwipeCalled) && (paramBoolean))
      dispatchSwipeCanceled(paramInt);
    this.prepareSwipeCalled = false;
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((0x100008 & paramMotionEvent.getSource()) == 0)
      return false;
    int i = paramMotionEvent.getActionMasked();
    boolean bool = false;
    switch (i)
    {
    case 2:
    case 4:
    default:
    case 1:
    case 6:
    case 3:
    case 5:
    }
    while (true)
    {
      return bool | this.gestureDetector.onTouchEvent(paramMotionEvent);
      bool = false | this.gestureListener.onUp(paramMotionEvent);
      continue;
      bool = false | this.gestureListener.onCancel(paramMotionEvent);
      continue;
      bool = false | this.gestureListener.onDown(paramMotionEvent);
    }
  }

  public static class ExtendedOnGestureListener extends GestureDetector.SimpleOnGestureListener
  {
    public boolean onCancel(MotionEvent paramMotionEvent)
    {
      return false;
    }

    public boolean onDoubleTapUp(MotionEvent paramMotionEvent)
    {
      return false;
    }

    public boolean onUp(MotionEvent paramMotionEvent)
    {
      return false;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.input.TouchDetector
 * JD-Core Version:    0.6.2
 */