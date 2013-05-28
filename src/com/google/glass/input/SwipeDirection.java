package com.google.glass.input;

public enum SwipeDirection
{
  static
  {
    DOWN = new SwipeDirection("DOWN", 2);
    UP = new SwipeDirection("UP", 3);
    SwipeDirection[] arrayOfSwipeDirection = new SwipeDirection[4];
    arrayOfSwipeDirection[0] = LEFT;
    arrayOfSwipeDirection[1] = RIGHT;
    arrayOfSwipeDirection[2] = DOWN;
    arrayOfSwipeDirection[3] = UP;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.input.SwipeDirection
 * JD-Core Version:    0.6.2
 */