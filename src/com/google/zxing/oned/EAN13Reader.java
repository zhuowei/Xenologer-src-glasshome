package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;

public final class EAN13Reader extends UPCEANReader
{
  static final int[] FIRST_DIGIT_ENCODINGS = { 0, 11, 13, 14, 19, 25, 28, 21, 22, 26 };
  private final int[] decodeMiddleCounters = new int[4];

  private static void determineFirstDigit(StringBuilder paramStringBuilder, int paramInt)
    throws NotFoundException
  {
    for (int i = 0; i < 10; i++)
      if (paramInt == FIRST_DIGIT_ENCODINGS[i])
      {
        paramStringBuilder.insert(0, (char)(i + 48));
        return;
      }
    throw NotFoundException.getNotFoundInstance();
  }

  protected int decodeMiddle(BitArray paramBitArray, int[] paramArrayOfInt, StringBuilder paramStringBuilder)
    throws NotFoundException
  {
    int[] arrayOfInt = this.decodeMiddleCounters;
    arrayOfInt[0] = 0;
    arrayOfInt[1] = 0;
    arrayOfInt[2] = 0;
    arrayOfInt[3] = 0;
    int i = paramBitArray.getSize();
    int j = paramArrayOfInt[1];
    int k = 0;
    for (int m = 0; (m < 6) && (j < i); m++)
    {
      int i4 = decodeDigit(paramBitArray, arrayOfInt, j, L_AND_G_PATTERNS);
      paramStringBuilder.append((char)(48 + i4 % 10));
      int i5 = arrayOfInt.length;
      for (int i6 = 0; i6 < i5; i6++)
        j += arrayOfInt[i6];
      if (i4 >= 10)
        k |= 1 << 5 - m;
    }
    determineFirstDigit(paramStringBuilder, k);
    int n = findGuardPattern(paramBitArray, j, true, MIDDLE_PATTERN)[1];
    for (int i1 = 0; (i1 < 6) && (n < i); i1++)
    {
      paramStringBuilder.append((char)(48 + decodeDigit(paramBitArray, arrayOfInt, n, L_PATTERNS)));
      int i2 = arrayOfInt.length;
      for (int i3 = 0; i3 < i2; i3++)
        n += arrayOfInt[i3];
    }
    return n;
  }

  BarcodeFormat getBarcodeFormat()
  {
    return BarcodeFormat.EAN_13;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.EAN13Reader
 * JD-Core Version:    0.6.2
 */