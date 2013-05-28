package com.google.zxing.common;

import com.google.zxing.NotFoundException;

public abstract class GridSampler
{
  private static GridSampler gridSampler = new DefaultGridSampler();

  protected static void checkAndNudgePoints(BitMatrix paramBitMatrix, float[] paramArrayOfFloat)
    throws NotFoundException
  {
    int i = paramBitMatrix.getWidth();
    int j = paramBitMatrix.getHeight();
    int k = 1;
    int m = 0;
    if ((m < paramArrayOfFloat.length) && (k != 0))
    {
      int i4 = (int)paramArrayOfFloat[m];
      int i5 = (int)paramArrayOfFloat[(m + 1)];
      if ((i4 < -1) || (i4 > i) || (i5 < -1) || (i5 > j))
        throw NotFoundException.getNotFoundInstance();
      if (i4 == -1)
      {
        paramArrayOfFloat[m] = 0.0F;
        k = 1;
        label86: if (i5 != -1)
          break label131;
        paramArrayOfFloat[(m + 1)] = 0.0F;
        k = 1;
      }
      while (true)
      {
        m += 2;
        break;
        k = 0;
        if (i4 != i)
          break label86;
        paramArrayOfFloat[m] = (i - 1);
        k = 1;
        break label86;
        label131: if (i5 == j)
        {
          paramArrayOfFloat[(m + 1)] = (j - 1);
          k = 1;
        }
      }
    }
    int n = 1;
    int i1 = -2 + paramArrayOfFloat.length;
    if ((i1 >= 0) && (n != 0))
    {
      int i2 = (int)paramArrayOfFloat[i1];
      int i3 = (int)paramArrayOfFloat[(i1 + 1)];
      if ((i2 < -1) || (i2 > i) || (i3 < -1) || (i3 > j))
        throw NotFoundException.getNotFoundInstance();
      if (i2 == -1)
      {
        paramArrayOfFloat[i1] = 0.0F;
        n = 1;
        label231: if (i3 != -1)
          break label276;
        paramArrayOfFloat[(i1 + 1)] = 0.0F;
        n = 1;
      }
      while (true)
      {
        i1 -= 2;
        break;
        n = 0;
        if (i2 != i)
          break label231;
        paramArrayOfFloat[i1] = (i - 1);
        n = 1;
        break label231;
        label276: if (i3 == j)
        {
          paramArrayOfFloat[(i1 + 1)] = (j - 1);
          n = 1;
        }
      }
    }
  }

  public static GridSampler getInstance()
  {
    return gridSampler;
  }

  public static void setGridSampler(GridSampler paramGridSampler)
  {
    gridSampler = paramGridSampler;
  }

  public abstract BitMatrix sampleGrid(BitMatrix paramBitMatrix, int paramInt1, int paramInt2, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, float paramFloat8, float paramFloat9, float paramFloat10, float paramFloat11, float paramFloat12, float paramFloat13, float paramFloat14, float paramFloat15, float paramFloat16)
    throws NotFoundException;

  public abstract BitMatrix sampleGrid(BitMatrix paramBitMatrix, int paramInt1, int paramInt2, PerspectiveTransform paramPerspectiveTransform)
    throws NotFoundException;
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.common.GridSampler
 * JD-Core Version:    0.6.2
 */