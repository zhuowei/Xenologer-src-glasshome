package com.google.zxing.qrcode.detector;

import com.google.zxing.ResultPoint;

public final class AlignmentPattern extends ResultPoint
{
  private final float estimatedModuleSize;

  AlignmentPattern(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    super(paramFloat1, paramFloat2);
    this.estimatedModuleSize = paramFloat3;
  }

  boolean aboutEquals(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    boolean bool1 = Math.abs(paramFloat2 - getY()) < paramFloat1;
    boolean bool2 = false;
    if (!bool1)
    {
      boolean bool3 = Math.abs(paramFloat3 - getX()) < paramFloat1;
      bool2 = false;
      if (!bool3)
      {
        float f = Math.abs(paramFloat1 - this.estimatedModuleSize);
        if (f > 1.0F)
        {
          boolean bool4 = f < this.estimatedModuleSize;
          bool2 = false;
          if (bool4);
        }
        else
        {
          bool2 = true;
        }
      }
    }
    return bool2;
  }

  AlignmentPattern combineEstimate(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return new AlignmentPattern((paramFloat2 + getX()) / 2.0F, (paramFloat1 + getY()) / 2.0F, (paramFloat3 + this.estimatedModuleSize) / 2.0F);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.detector.AlignmentPattern
 * JD-Core Version:    0.6.2
 */