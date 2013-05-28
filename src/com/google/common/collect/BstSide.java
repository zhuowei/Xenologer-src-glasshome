package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;

@GwtCompatible
 enum BstSide
{
  static
  {
    BstSide[] arrayOfBstSide = new BstSide[2];
    arrayOfBstSide[0] = LEFT;
    arrayOfBstSide[1] = RIGHT;
  }

  abstract BstSide other();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.BstSide
 * JD-Core Version:    0.6.2
 */