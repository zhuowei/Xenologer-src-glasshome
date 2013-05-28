package com.google.zxing.common.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;

public final class MonochromeRectangleDetector
{
  private static final int MAX_MODULES = 32;
  private final BitMatrix image;

  public MonochromeRectangleDetector(BitMatrix paramBitMatrix)
  {
    this.image = paramBitMatrix;
  }

  private int[] blackWhiteRange(int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean)
  {
    int i = paramInt3 + paramInt4 >> 1;
    int j = i;
    while (j >= paramInt3)
    {
      if (paramBoolean)
      {
        if (!this.image.get(j, paramInt1));
      }
      else
        while (this.image.get(paramInt1, j))
        {
          j--;
          break;
        }
      int i3 = j;
      do
      {
        j--;
        if (j < paramInt3)
          break;
        if (!paramBoolean)
          break label150;
      }
      while (!this.image.get(j, paramInt1));
      label86: int i4 = i3 - j;
      if ((j < paramInt3) || (i4 > paramInt2))
        j = i3;
    }
    int k = j + 1;
    int m = i;
    label119: int i1;
    if (m < paramInt4)
    {
      if (paramBoolean)
      {
        if (!this.image.get(m, paramInt1));
      }
      else
        label150: 
        while (this.image.get(paramInt1, m))
        {
          m++;
          break label119;
          if (!this.image.get(paramInt1, j))
            break;
          break label86;
        }
      i1 = m;
      label183: 
      do
      {
        m++;
        if (m >= paramInt4)
          break;
        if (!paramBoolean)
          break label262;
      }
      while (!this.image.get(m, paramInt1));
    }
    while (true)
    {
      int i2 = m - i1;
      if ((m < paramInt4) && (i2 <= paramInt2))
        break;
      m = i1;
      int n = m - 1;
      if (n <= k)
        break label278;
      return new int[] { k, n };
      label262: if (!this.image.get(paramInt1, m))
        break label183;
    }
    label278: return null;
  }

  private ResultPoint findCornerFromCenter(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, int paramInt9)
    throws NotFoundException
  {
    Object localObject = null;
    int i = paramInt5;
    int j = paramInt1;
    while ((i < paramInt8) && (i >= paramInt7) && (j < paramInt4) && (j >= paramInt3))
    {
      int[] arrayOfInt;
      if (paramInt2 == 0)
        arrayOfInt = blackWhiteRange(i, paramInt9, paramInt3, paramInt4, true);
      while (arrayOfInt == null)
        if (localObject == null)
        {
          throw NotFoundException.getNotFoundInstance();
          arrayOfInt = blackWhiteRange(j, paramInt9, paramInt7, paramInt8, false);
        }
        else
        {
          if (paramInt2 == 0)
          {
            int m = i - paramInt6;
            if (localObject[0] < paramInt1)
            {
              if (localObject[1] > paramInt1)
              {
                if (paramInt6 > 0);
                for (float f3 = localObject[0]; ; f3 = localObject[1])
                  return new ResultPoint(f3, m);
              }
              return new ResultPoint(localObject[0], m);
            }
            return new ResultPoint(localObject[1], m);
          }
          int k = j - paramInt2;
          if (localObject[0] < paramInt5)
          {
            if (localObject[1] > paramInt5)
            {
              float f1 = k;
              if (paramInt2 < 0);
              for (float f2 = localObject[0]; ; f2 = localObject[1])
                return new ResultPoint(f1, f2);
            }
            return new ResultPoint(k, localObject[0]);
          }
          return new ResultPoint(k, localObject[1]);
        }
      localObject = arrayOfInt;
      i += paramInt6;
      j += paramInt2;
    }
    throw NotFoundException.getNotFoundInstance();
  }

  public ResultPoint[] detect()
    throws NotFoundException
  {
    int i = this.image.getHeight();
    int j = this.image.getWidth();
    int k = i >> 1;
    int m = j >> 1;
    int n = Math.max(1, i / 256);
    int i1 = Math.max(1, j / 256);
    int i2 = -1 + (int)findCornerFromCenter(m, 0, 0, j, k, -n, 0, i, m >> 1).getY();
    ResultPoint localResultPoint1 = findCornerFromCenter(m, -i1, 0, j, k, 0, i2, i, k >> 1);
    int i3 = -1 + (int)localResultPoint1.getX();
    ResultPoint localResultPoint2 = findCornerFromCenter(m, i1, i3, j, k, 0, i2, i, k >> 1);
    int i4 = 1 + (int)localResultPoint2.getX();
    ResultPoint localResultPoint3 = findCornerFromCenter(m, 0, i3, i4, k, n, i2, i, m >> 1);
    int i5 = 1 + (int)localResultPoint3.getY();
    return new ResultPoint[] { findCornerFromCenter(m, 0, i3, i4, k, -n, i2, i5, m >> 2), localResultPoint1, localResultPoint2, localResultPoint3 };
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.common.detector.MonochromeRectangleDetector
 * JD-Core Version:    0.6.2
 */