package com.google.android.glass;

import android.view.KeyEvent;

public final class Dummy
{
  public static final String MESSAGE = "It works";
  private int mValueOne;
  public float mValueThree;
  public long mValueTwo;

  public Dummy()
  {
    this(1, 2L, 3.0F);
  }

  public Dummy(int paramInt, long paramLong, float paramFloat)
  {
    this.mValueOne = paramInt;
    this.mValueTwo = paramLong;
    this.mValueThree = paramFloat;
  }

  public static int getValue()
  {
    return new Integer(4).intValue();
  }

  public KeyEvent getKey()
  {
    return KeyEvent.obtain(null);
  }

  public int getOne()
  {
    return this.mValueOne;
  }

  public long getTwo()
  {
    return this.mValueTwo;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.android.glass.Dummy
 * JD-Core Version:    0.6.2
 */