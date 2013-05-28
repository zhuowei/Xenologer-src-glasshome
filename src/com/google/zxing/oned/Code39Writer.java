package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.Map;

public final class Code39Writer extends OneDimensionalCodeWriter
{
  private static void toIntArray(int paramInt, int[] paramArrayOfInt)
  {
    int i = 0;
    if (i < 9)
    {
      if ((paramInt & 1 << i) == 0);
      for (int j = 1; ; j = 2)
      {
        paramArrayOfInt[i] = j;
        i++;
        break;
      }
    }
  }

  public BitMatrix encode(String paramString, BarcodeFormat paramBarcodeFormat, int paramInt1, int paramInt2, Map<EncodeHintType, ?> paramMap)
    throws WriterException
  {
    if (paramBarcodeFormat != BarcodeFormat.CODE_39)
      throw new IllegalArgumentException("Can only encode CODE_39, but got " + paramBarcodeFormat);
    return super.encode(paramString, paramBarcodeFormat, paramInt1, paramInt2, paramMap);
  }

  public boolean[] encode(String paramString)
  {
    int i = paramString.length();
    if (i > 80)
      throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got " + i);
    int[] arrayOfInt1 = new int[9];
    int j = i + 25;
    for (int k = 0; k < i; k++)
    {
      int i4 = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%".indexOf(paramString.charAt(k));
      toIntArray(Code39Reader.CHARACTER_ENCODINGS[i4], arrayOfInt1);
      int i5 = arrayOfInt1.length;
      for (int i6 = 0; i6 < i5; i6++)
        j += arrayOfInt1[i6];
    }
    boolean[] arrayOfBoolean = new boolean[j];
    toIntArray(Code39Reader.CHARACTER_ENCODINGS[39], arrayOfInt1);
    int m = appendPattern(arrayOfBoolean, 0, arrayOfInt1, true);
    int[] arrayOfInt2 = { 1 };
    int n = m + appendPattern(arrayOfBoolean, m, arrayOfInt2, false);
    for (int i1 = i - 1; i1 >= 0; i1--)
    {
      int i2 = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%".indexOf(paramString.charAt(i1));
      toIntArray(Code39Reader.CHARACTER_ENCODINGS[i2], arrayOfInt1);
      int i3 = n + appendPattern(arrayOfBoolean, n, arrayOfInt1, true);
      n = i3 + appendPattern(arrayOfBoolean, i3, arrayOfInt2, false);
    }
    toIntArray(Code39Reader.CHARACTER_ENCODINGS[39], arrayOfInt1);
    (n + appendPattern(arrayOfBoolean, n, arrayOfInt1, true));
    return arrayOfBoolean;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.Code39Writer
 * JD-Core Version:    0.6.2
 */