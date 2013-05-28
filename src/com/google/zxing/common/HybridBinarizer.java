package com.google.zxing.common;

import com.google.zxing.Binarizer;
import com.google.zxing.LuminanceSource;
import com.google.zxing.NotFoundException;
import java.lang.reflect.Array;

public final class HybridBinarizer extends GlobalHistogramBinarizer
{
  private static final int BLOCK_SIZE = 8;
  private static final int BLOCK_SIZE_MASK = 7;
  private static final int BLOCK_SIZE_POWER = 3;
  private static final int MINIMUM_DIMENSION = 40;
  private static final int MIN_DYNAMIC_RANGE = 24;
  private BitMatrix matrix;

  public HybridBinarizer(LuminanceSource paramLuminanceSource)
  {
    super(paramLuminanceSource);
  }

  private static int[][] calculateBlackPoints(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int[] arrayOfInt = { paramInt2, paramInt1 };
    int[][] arrayOfInt1 = (int[][])Array.newInstance(Integer.TYPE, arrayOfInt);
    for (int i = 0; i < paramInt2; i++)
    {
      int j = i << 3;
      int k = paramInt4 - 8;
      if (j > k)
        j = k;
      for (int m = 0; m < paramInt1; m++)
      {
        int n = m << 3;
        int i1 = paramInt3 - 8;
        if (n > i1)
          n = i1;
        int i2 = 0;
        int i3 = 255;
        int i4 = 0;
        int i5 = 0;
        int i6 = n + j * paramInt3;
        while (i5 < 8)
        {
          for (int i9 = 0; i9 < 8; i9++)
          {
            int i11 = 0xFF & paramArrayOfByte[(i6 + i9)];
            i2 += i11;
            if (i11 < i3)
              i3 = i11;
            if (i11 > i4)
              i4 = i11;
          }
          if (i4 - i3 > 24)
          {
            i5++;
            i6 += paramInt3;
            while (i5 < 8)
            {
              for (int i10 = 0; i10 < 8; i10++)
                i2 += (0xFF & paramArrayOfByte[(i6 + i10)]);
              i5++;
              i6 += paramInt3;
            }
          }
          i5++;
          i6 += paramInt3;
        }
        int i7 = i2 >> 6;
        if (i4 - i3 <= 24)
        {
          i7 = i3 >> 1;
          if ((i > 0) && (m > 0))
          {
            int i8 = arrayOfInt1[(i - 1)][m] + 2 * arrayOfInt1[i][(m - 1)] + arrayOfInt1[(i - 1)][(m - 1)] >> 2;
            if (i3 < i8)
              i7 = i8;
          }
        }
        arrayOfInt1[i][m] = i7;
      }
    }
    return arrayOfInt1;
  }

  private static void calculateThresholdForBlock(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[][] paramArrayOfInt, BitMatrix paramBitMatrix)
  {
    for (int i = 0; i < paramInt2; i++)
    {
      int j = i << 3;
      int k = paramInt4 - 8;
      if (j > k)
        j = k;
      for (int m = 0; m < paramInt1; m++)
      {
        int n = m << 3;
        int i1 = paramInt3 - 8;
        if (n > i1)
          n = i1;
        int i2 = cap(m, 2, paramInt1 - 3);
        int i3 = cap(i, 2, paramInt2 - 3);
        int i4 = 0;
        for (int i5 = -2; i5 <= 2; i5++)
        {
          int[] arrayOfInt = paramArrayOfInt[(i3 + i5)];
          i4 += arrayOfInt[(i2 - 2)] + arrayOfInt[(i2 - 1)] + arrayOfInt[i2] + arrayOfInt[(i2 + 1)] + arrayOfInt[(i2 + 2)];
        }
        thresholdBlock(paramArrayOfByte, n, j, i4 / 25, paramInt3, paramBitMatrix);
      }
    }
  }

  private static int cap(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 < paramInt2)
      return paramInt2;
    if (paramInt1 > paramInt3)
      return paramInt3;
    return paramInt1;
  }

  private static void thresholdBlock(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3, int paramInt4, BitMatrix paramBitMatrix)
  {
    int i = 0;
    int j = paramInt1 + paramInt2 * paramInt4;
    while (i < 8)
    {
      for (int k = 0; k < 8; k++)
        if ((0xFF & paramArrayOfByte[(j + k)]) <= paramInt3)
          paramBitMatrix.set(paramInt1 + k, paramInt2 + i);
      i++;
      j += paramInt4;
    }
  }

  public Binarizer createBinarizer(LuminanceSource paramLuminanceSource)
  {
    return new HybridBinarizer(paramLuminanceSource);
  }

  public BitMatrix getBlackMatrix()
    throws NotFoundException
  {
    if (this.matrix != null)
      return this.matrix;
    LuminanceSource localLuminanceSource = getLuminanceSource();
    int i = localLuminanceSource.getWidth();
    int j = localLuminanceSource.getHeight();
    BitMatrix localBitMatrix;
    if ((i >= 40) && (j >= 40))
    {
      byte[] arrayOfByte = localLuminanceSource.getMatrix();
      int k = i >> 3;
      if ((i & 0x7) != 0)
        k++;
      int m = j >> 3;
      if ((j & 0x7) != 0)
        m++;
      int[][] arrayOfInt = calculateBlackPoints(arrayOfByte, k, m, i, j);
      localBitMatrix = new BitMatrix(i, j);
      calculateThresholdForBlock(arrayOfByte, k, m, i, j, arrayOfInt, localBitMatrix);
    }
    for (this.matrix = localBitMatrix; ; this.matrix = super.getBlackMatrix())
      return this.matrix;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.common.HybridBinarizer
 * JD-Core Version:    0.6.2
 */