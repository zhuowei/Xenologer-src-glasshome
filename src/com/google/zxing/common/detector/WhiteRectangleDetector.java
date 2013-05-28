package com.google.zxing.common.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;

public final class WhiteRectangleDetector
{
  private static final int CORR = 1;
  private static final int INIT_SIZE = 30;
  private final int downInit;
  private final int height;
  private final BitMatrix image;
  private final int leftInit;
  private final int rightInit;
  private final int upInit;
  private final int width;

  public WhiteRectangleDetector(BitMatrix paramBitMatrix)
    throws NotFoundException
  {
    this.image = paramBitMatrix;
    this.height = paramBitMatrix.getHeight();
    this.width = paramBitMatrix.getWidth();
    this.leftInit = (-30 + this.width >> 1);
    this.rightInit = (30 + this.width >> 1);
    this.upInit = (-30 + this.height >> 1);
    this.downInit = (30 + this.height >> 1);
    if ((this.upInit < 0) || (this.leftInit < 0) || (this.downInit >= this.height) || (this.rightInit >= this.width))
      throw NotFoundException.getNotFoundInstance();
  }

  public WhiteRectangleDetector(BitMatrix paramBitMatrix, int paramInt1, int paramInt2, int paramInt3)
    throws NotFoundException
  {
    this.image = paramBitMatrix;
    this.height = paramBitMatrix.getHeight();
    this.width = paramBitMatrix.getWidth();
    int i = paramInt1 >> 1;
    this.leftInit = (paramInt2 - i);
    this.rightInit = (paramInt2 + i);
    this.upInit = (paramInt3 - i);
    this.downInit = (paramInt3 + i);
    if ((this.upInit < 0) || (this.leftInit < 0) || (this.downInit >= this.height) || (this.rightInit >= this.width))
      throw NotFoundException.getNotFoundInstance();
  }

  private ResultPoint[] centerEdges(ResultPoint paramResultPoint1, ResultPoint paramResultPoint2, ResultPoint paramResultPoint3, ResultPoint paramResultPoint4)
  {
    float f1 = paramResultPoint1.getX();
    float f2 = paramResultPoint1.getY();
    float f3 = paramResultPoint2.getX();
    float f4 = paramResultPoint2.getY();
    float f5 = paramResultPoint3.getX();
    float f6 = paramResultPoint3.getY();
    float f7 = paramResultPoint4.getX();
    float f8 = paramResultPoint4.getY();
    if (f1 < this.width / 2.0F)
    {
      ResultPoint[] arrayOfResultPoint2 = new ResultPoint[4];
      arrayOfResultPoint2[0] = new ResultPoint(f7 - 1.0F, 1.0F + f8);
      arrayOfResultPoint2[1] = new ResultPoint(1.0F + f3, 1.0F + f4);
      arrayOfResultPoint2[2] = new ResultPoint(f5 - 1.0F, f6 - 1.0F);
      arrayOfResultPoint2[3] = new ResultPoint(1.0F + f1, f2 - 1.0F);
      return arrayOfResultPoint2;
    }
    ResultPoint[] arrayOfResultPoint1 = new ResultPoint[4];
    arrayOfResultPoint1[0] = new ResultPoint(1.0F + f7, 1.0F + f8);
    arrayOfResultPoint1[1] = new ResultPoint(1.0F + f3, f4 - 1.0F);
    arrayOfResultPoint1[2] = new ResultPoint(f5 - 1.0F, 1.0F + f6);
    arrayOfResultPoint1[3] = new ResultPoint(f1 - 1.0F, f2 - 1.0F);
    return arrayOfResultPoint1;
  }

  private boolean containsBlackPoint(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    if (paramBoolean)
      for (int j = paramInt1; j <= paramInt2; j++)
        if (this.image.get(j, paramInt3))
          return true;
    for (int i = paramInt1; ; i++)
    {
      if (i > paramInt2)
        break label63;
      if (this.image.get(paramInt3, i))
        break;
    }
    label63: return false;
  }

  private ResultPoint getBlackPointOnSegment(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    int i = MathUtils.round(MathUtils.distance(paramFloat1, paramFloat2, paramFloat3, paramFloat4));
    float f1 = (paramFloat3 - paramFloat1) / i;
    float f2 = (paramFloat4 - paramFloat2) / i;
    for (int j = 0; j < i; j++)
    {
      int k = MathUtils.round(paramFloat1 + f1 * j);
      int m = MathUtils.round(paramFloat2 + f2 * j);
      if (this.image.get(k, m))
        return new ResultPoint(k, m);
    }
    return null;
  }

  public ResultPoint[] detect()
    throws NotFoundException
  {
    int i = this.leftInit;
    int j = this.rightInit;
    int k = this.upInit;
    int m = this.downInit;
    int n = 1;
    int i1 = 0;
    int i2 = 0;
    label90: int i3;
    ResultPoint localResultPoint1;
    if (n != 0)
    {
      n = 0;
      boolean bool1 = true;
      while ((bool1) && (j < this.width))
      {
        bool1 = containsBlackPoint(k, m, j, false);
        if (bool1)
        {
          j++;
          n = 1;
        }
      }
      if (j >= this.width)
        i2 = 1;
    }
    else
    {
      if ((i2 != 0) || (i1 == 0))
        break label495;
      i3 = j - i;
      localResultPoint1 = null;
    }
    for (int i4 = 1; ; i4++)
      if (i4 < i3)
      {
        localResultPoint1 = getBlackPointOnSegment(i, m - i4, i + i4, m);
        if (localResultPoint1 == null);
      }
      else
      {
        if (localResultPoint1 != null)
          break label321;
        throw NotFoundException.getNotFoundInstance();
        boolean bool2 = true;
        while ((bool2) && (m < this.height))
        {
          bool2 = containsBlackPoint(i, j, m, true);
          if (bool2)
          {
            m++;
            n = 1;
          }
        }
        if (m >= this.height)
        {
          i2 = 1;
          break label90;
        }
        boolean bool3 = true;
        while ((bool3) && (i >= 0))
        {
          bool3 = containsBlackPoint(k, m, i, false);
          if (bool3)
          {
            i--;
            n = 1;
          }
        }
        if (i < 0)
        {
          i2 = 1;
          break label90;
        }
        boolean bool4 = true;
        while ((bool4) && (k >= 0))
        {
          bool4 = containsBlackPoint(i, j, k, true);
          if (bool4)
          {
            k--;
            n = 1;
          }
        }
        if (k < 0)
        {
          i2 = 1;
          break label90;
        }
        if (n == 0)
          break;
        i1 = 1;
        break;
      }
    label321: ResultPoint localResultPoint2 = null;
    for (int i5 = 1; ; i5++)
      if (i5 < i3)
      {
        localResultPoint2 = getBlackPointOnSegment(i, k + i5, i + i5, k);
        if (localResultPoint2 == null);
      }
      else
      {
        if (localResultPoint2 != null)
          break;
        throw NotFoundException.getNotFoundInstance();
      }
    ResultPoint localResultPoint3 = null;
    for (int i6 = 1; ; i6++)
      if (i6 < i3)
      {
        localResultPoint3 = getBlackPointOnSegment(j, k + i6, j - i6, k);
        if (localResultPoint3 == null);
      }
      else
      {
        if (localResultPoint3 != null)
          break;
        throw NotFoundException.getNotFoundInstance();
      }
    ResultPoint localResultPoint4 = null;
    for (int i7 = 1; ; i7++)
      if (i7 < i3)
      {
        localResultPoint4 = getBlackPointOnSegment(j, m - i7, j - i7, m);
        if (localResultPoint4 == null);
      }
      else
      {
        if (localResultPoint4 != null)
          break;
        throw NotFoundException.getNotFoundInstance();
      }
    return centerEdges(localResultPoint4, localResultPoint1, localResultPoint3, localResultPoint2);
    label495: throw NotFoundException.getNotFoundInstance();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.common.detector.WhiteRectangleDetector
 * JD-Core Version:    0.6.2
 */