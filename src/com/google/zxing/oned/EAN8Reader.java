package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;

public final class EAN8Reader extends UPCEANReader
{
  private final int[] decodeMiddleCounters = new int[4];

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
    for (int k = 0; (k < 4) && (j < i); k++)
    {
      paramStringBuilder.append((char)(48 + decodeDigit(paramBitArray, arrayOfInt, j, L_PATTERNS)));
      int i3 = arrayOfInt.length;
      for (int i4 = 0; i4 < i3; i4++)
        j += arrayOfInt[i4];
    }
    int m = findGuardPattern(paramBitArray, j, true, MIDDLE_PATTERN)[1];
    for (int n = 0; (n < 4) && (m < i); n++)
    {
      paramStringBuilder.append((char)(48 + decodeDigit(paramBitArray, arrayOfInt, m, L_PATTERNS)));
      int i1 = arrayOfInt.length;
      for (int i2 = 0; i2 < i1; i2++)
        m += arrayOfInt[i2];
    }
    return m;
  }

  BarcodeFormat getBarcodeFormat()
  {
    return BarcodeFormat.EAN_8;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.EAN8Reader
 * JD-Core Version:    0.6.2
 */