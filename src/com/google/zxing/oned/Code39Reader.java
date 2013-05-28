package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.Arrays;
import java.util.Map;

public final class Code39Reader extends OneDReader
{
  private static final char[] ALPHABET = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%".toCharArray();
  static final String ALPHABET_STRING = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%";
  private static final int ASTERISK_ENCODING = CHARACTER_ENCODINGS[39];
  static final int[] CHARACTER_ENCODINGS = { 52, 289, 97, 352, 49, 304, 112, 37, 292, 100, 265, 73, 328, 25, 280, 88, 13, 268, 76, 28, 259, 67, 322, 19, 274, 82, 7, 262, 70, 22, 385, 193, 448, 145, 400, 208, 133, 388, 196, 148, 168, 162, 138, 42 };
  private final int[] counters;
  private final StringBuilder decodeRowResult;
  private final boolean extendedMode;
  private final boolean usingCheckDigit;

  public Code39Reader()
  {
    this(false);
  }

  public Code39Reader(boolean paramBoolean)
  {
    this(paramBoolean, false);
  }

  public Code39Reader(boolean paramBoolean1, boolean paramBoolean2)
  {
    this.usingCheckDigit = paramBoolean1;
    this.extendedMode = paramBoolean2;
    this.decodeRowResult = new StringBuilder(20);
    this.counters = new int[9];
  }

  private static String decodeExtended(CharSequence paramCharSequence)
    throws FormatException
  {
    int i = paramCharSequence.length();
    StringBuilder localStringBuilder = new StringBuilder(i);
    int j = 0;
    if (j < i)
    {
      char c1 = paramCharSequence.charAt(j);
      int k;
      char c2;
      if ((c1 == '+') || (c1 == '$') || (c1 == '%') || (c1 == '/'))
      {
        k = paramCharSequence.charAt(j + 1);
        c2 = '\000';
        switch (c1)
        {
        default:
          label120: localStringBuilder.append(c2);
          j++;
        case '+':
        case '$':
        case '%':
        case '/':
        }
      }
      while (true)
      {
        j++;
        break;
        if ((k >= 65) && (k <= 90))
        {
          c2 = (char)(k + 32);
          break label120;
        }
        throw FormatException.getFormatInstance();
        if ((k >= 65) && (k <= 90))
        {
          c2 = (char)(k - 64);
          break label120;
        }
        throw FormatException.getFormatInstance();
        if ((k >= 65) && (k <= 69))
        {
          c2 = (char)(k - 38);
          break label120;
        }
        if ((k >= 70) && (k <= 87))
        {
          c2 = (char)(k - 11);
          break label120;
        }
        throw FormatException.getFormatInstance();
        if ((k >= 65) && (k <= 79))
        {
          c2 = (char)(k - 32);
          break label120;
        }
        if (k == 90)
        {
          c2 = ':';
          break label120;
        }
        throw FormatException.getFormatInstance();
        localStringBuilder.append(c1);
      }
    }
    return localStringBuilder.toString();
  }

  private static int[] findAsteriskPattern(BitArray paramBitArray, int[] paramArrayOfInt)
    throws NotFoundException
  {
    int i = paramBitArray.getSize();
    int j = paramBitArray.getNextSet(0);
    int k = 0;
    int m = j;
    int n = 0;
    int i1 = paramArrayOfInt.length;
    int i2 = j;
    while (i2 < i)
      if ((n ^ paramBitArray.get(i2)) != 0)
      {
        paramArrayOfInt[k] = (1 + paramArrayOfInt[k]);
        i2++;
      }
      else
      {
        if (k == i1 - 1)
        {
          if ((toNarrowWidePattern(paramArrayOfInt) == ASTERISK_ENCODING) && (paramBitArray.isRange(Math.max(0, m - (i2 - m >> 1)), m, false)))
            return new int[] { m, i2 };
          m += paramArrayOfInt[0] + paramArrayOfInt[1];
          System.arraycopy(paramArrayOfInt, 2, paramArrayOfInt, 0, i1 - 2);
          paramArrayOfInt[(i1 - 2)] = 0;
          paramArrayOfInt[(i1 - 1)] = 0;
          k--;
          label158: paramArrayOfInt[k] = 1;
          if (n != 0)
            break label180;
        }
        label180: for (n = 1; ; n = 0)
        {
          break;
          k++;
          break label158;
        }
      }
    throw NotFoundException.getNotFoundInstance();
  }

  private static char patternToChar(int paramInt)
    throws NotFoundException
  {
    for (int i = 0; i < CHARACTER_ENCODINGS.length; i++)
      if (CHARACTER_ENCODINGS[i] == paramInt)
        return ALPHABET[i];
    throw NotFoundException.getNotFoundInstance();
  }

  private static int toNarrowWidePattern(int[] paramArrayOfInt)
  {
    int i = paramArrayOfInt.length;
    int j = 0;
    int i1;
    do
    {
      int k = 2147483647;
      int m = paramArrayOfInt.length;
      for (int n = 0; n < m; n++)
      {
        int i8 = paramArrayOfInt[n];
        if ((i8 < k) && (i8 > j))
          k = i8;
      }
      j = k;
      i1 = 0;
      int i2 = 0;
      int i3 = 0;
      for (int i4 = 0; i4 < i; i4++)
      {
        int i7 = paramArrayOfInt[i4];
        if (i7 > j)
        {
          i3 |= 1 << i - 1 - i4;
          i1++;
          i2 += i7;
        }
      }
      if (i1 == 3)
        for (int i5 = 0; ; i5++)
          if ((i5 < i) && (i1 > 0))
          {
            int i6 = paramArrayOfInt[i5];
            if (i6 > j)
            {
              i1--;
              if (i6 << 1 >= i2)
                i3 = -1;
            }
          }
          else
          {
            return i3;
          }
    }
    while (i1 > 3);
    return -1;
  }

  public Result decodeRow(int paramInt, BitArray paramBitArray, Map<DecodeHintType, ?> paramMap)
    throws NotFoundException, ChecksumException, FormatException
  {
    int[] arrayOfInt1 = this.counters;
    Arrays.fill(arrayOfInt1, 0);
    StringBuilder localStringBuilder = this.decodeRowResult;
    localStringBuilder.setLength(0);
    int[] arrayOfInt2 = findAsteriskPattern(paramBitArray, arrayOfInt1);
    int i = paramBitArray.getNextSet(arrayOfInt2[1]);
    int j = paramBitArray.getSize();
    char c;
    int m;
    do
    {
      recordPattern(paramBitArray, i, arrayOfInt1);
      int k = toNarrowWidePattern(arrayOfInt1);
      if (k < 0)
        throw NotFoundException.getNotFoundInstance();
      c = patternToChar(k);
      localStringBuilder.append(c);
      m = i;
      int n = arrayOfInt1.length;
      for (int i1 = 0; i1 < n; i1++)
        i += arrayOfInt1[i1];
      i = paramBitArray.getNextSet(i);
    }
    while (c != '*');
    localStringBuilder.setLength(-1 + localStringBuilder.length());
    int i2 = 0;
    int i3 = arrayOfInt1.length;
    for (int i4 = 0; i4 < i3; i4++)
      i2 += arrayOfInt1[i4];
    int i5 = i - m - i2;
    if ((i != j) && (i5 >> 1 < i2))
      throw NotFoundException.getNotFoundInstance();
    if (this.usingCheckDigit)
    {
      int i6 = -1 + localStringBuilder.length();
      int i7 = 0;
      for (int i8 = 0; i8 < i6; i8++)
        i7 += "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%".indexOf(this.decodeRowResult.charAt(i8));
      if (localStringBuilder.charAt(i6) != ALPHABET[(i7 % 43)])
        throw ChecksumException.getChecksumInstance();
      localStringBuilder.setLength(i6);
    }
    if (localStringBuilder.length() == 0)
      throw NotFoundException.getNotFoundInstance();
    if (this.extendedMode);
    for (String str = decodeExtended(localStringBuilder); ; str = localStringBuilder.toString())
    {
      float f1 = (arrayOfInt2[1] + arrayOfInt2[0]) / 2.0F;
      float f2 = (i + m) / 2.0F;
      ResultPoint[] arrayOfResultPoint = new ResultPoint[2];
      ResultPoint localResultPoint1 = new ResultPoint(f1, paramInt);
      arrayOfResultPoint[0] = localResultPoint1;
      ResultPoint localResultPoint2 = new ResultPoint(f2, paramInt);
      arrayOfResultPoint[1] = localResultPoint2;
      BarcodeFormat localBarcodeFormat = BarcodeFormat.CODE_39;
      Result localResult = new Result(str, null, arrayOfResultPoint, localBarcodeFormat);
      return localResult;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.Code39Reader
 * JD-Core Version:    0.6.2
 */