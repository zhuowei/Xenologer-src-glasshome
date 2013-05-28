package com.google.zxing.common;

import com.google.zxing.Binarizer;
import com.google.zxing.LuminanceSource;
import com.google.zxing.NotFoundException;

public class GlobalHistogramBinarizer extends Binarizer
{
  private static final byte[] EMPTY = new byte[0];
  private static final int LUMINANCE_BITS = 5;
  private static final int LUMINANCE_BUCKETS = 32;
  private static final int LUMINANCE_SHIFT = 3;
  private final int[] buckets = new int[32];
  private byte[] luminances = EMPTY;

  public GlobalHistogramBinarizer(LuminanceSource paramLuminanceSource)
  {
    super(paramLuminanceSource);
  }

  private static int estimateBlackPoint(int[] paramArrayOfInt)
    throws NotFoundException
  {
    int i = paramArrayOfInt.length;
    int j = 0;
    int k = 0;
    int m = 0;
    for (int n = 0; n < i; n++)
    {
      if (paramArrayOfInt[n] > m)
      {
        k = n;
        m = paramArrayOfInt[n];
      }
      if (paramArrayOfInt[n] > j)
        j = paramArrayOfInt[n];
    }
    int i1 = 0;
    int i2 = 0;
    for (int i3 = 0; i3 < i; i3++)
    {
      int i10 = i3 - k;
      int i11 = i10 * (i10 * paramArrayOfInt[i3]);
      if (i11 > i2)
      {
        i1 = i3;
        i2 = i11;
      }
    }
    if (k > i1)
    {
      int i9 = k;
      k = i1;
      i1 = i9;
    }
    if (i1 - k <= i >> 4)
      throw NotFoundException.getNotFoundInstance();
    int i4 = i1 - 1;
    int i5 = -1;
    for (int i6 = i1 - 1; i6 > k; i6--)
    {
      int i7 = i6 - k;
      int i8 = i7 * i7 * (i1 - i6) * (j - paramArrayOfInt[i6]);
      if (i8 > i5)
      {
        i4 = i6;
        i5 = i8;
      }
    }
    return i4 << 3;
  }

  private void initArrays(int paramInt)
  {
    if (this.luminances.length < paramInt)
      this.luminances = new byte[paramInt];
    for (int i = 0; i < 32; i++)
      this.buckets[i] = 0;
  }

  public Binarizer createBinarizer(LuminanceSource paramLuminanceSource)
  {
    return new GlobalHistogramBinarizer(paramLuminanceSource);
  }

  public BitMatrix getBlackMatrix()
    throws NotFoundException
  {
    LuminanceSource localLuminanceSource = getLuminanceSource();
    int i = localLuminanceSource.getWidth();
    int j = localLuminanceSource.getHeight();
    BitMatrix localBitMatrix = new BitMatrix(i, j);
    initArrays(i);
    int[] arrayOfInt = this.buckets;
    for (int k = 1; k < 5; k++)
    {
      byte[] arrayOfByte2 = localLuminanceSource.getRow(j * k / 5, this.luminances);
      int i3 = (i << 2) / 5;
      for (int i4 = i / 5; i4 < i3; i4++)
      {
        int i5 = (0xFF & arrayOfByte2[i4]) >> 3;
        arrayOfInt[i5] = (1 + arrayOfInt[i5]);
      }
    }
    int m = estimateBlackPoint(arrayOfInt);
    byte[] arrayOfByte1 = localLuminanceSource.getMatrix();
    for (int n = 0; n < j; n++)
    {
      int i1 = n * i;
      for (int i2 = 0; i2 < i; i2++)
        if ((0xFF & arrayOfByte1[(i1 + i2)]) < m)
          localBitMatrix.set(i2, n);
    }
    return localBitMatrix;
  }

  public BitArray getBlackRow(int paramInt, BitArray paramBitArray)
    throws NotFoundException
  {
    LuminanceSource localLuminanceSource = getLuminanceSource();
    int i = localLuminanceSource.getWidth();
    if ((paramBitArray == null) || (paramBitArray.getSize() < i))
      paramBitArray = new BitArray(i);
    byte[] arrayOfByte;
    int[] arrayOfInt;
    while (true)
    {
      initArrays(i);
      arrayOfByte = localLuminanceSource.getRow(paramInt, this.luminances);
      arrayOfInt = this.buckets;
      for (int j = 0; j < i; j++)
      {
        int i3 = (0xFF & arrayOfByte[j]) >> 3;
        arrayOfInt[i3] = (1 + arrayOfInt[i3]);
      }
      paramBitArray.clear();
    }
    int k = estimateBlackPoint(arrayOfInt);
    int m = 0xFF & arrayOfByte[0];
    int n = 0xFF & arrayOfByte[1];
    for (int i1 = 1; i1 < i - 1; i1++)
    {
      int i2 = 0xFF & arrayOfByte[(i1 + 1)];
      if ((n << 2) - m - i2 >> 1 < k)
        paramBitArray.set(i1);
      m = n;
      n = i2;
    }
    return paramBitArray;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.common.GlobalHistogramBinarizer
 * JD-Core Version:    0.6.2
 */