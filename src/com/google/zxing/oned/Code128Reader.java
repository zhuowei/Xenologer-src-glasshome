package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class Code128Reader extends OneDReader
{
  private static final int CODE_CODE_A = 101;
  private static final int CODE_CODE_B = 100;
  private static final int CODE_CODE_C = 99;
  private static final int CODE_FNC_1 = 102;
  private static final int CODE_FNC_2 = 97;
  private static final int CODE_FNC_3 = 96;
  private static final int CODE_FNC_4_A = 101;
  private static final int CODE_FNC_4_B = 100;
  static final int[][] CODE_PATTERNS = { { 2, 1, 2, 2, 2, 2 }, { 2, 2, 2, 1, 2, 2 }, { 2, 2, 2, 2, 2, 1 }, { 1, 2, 1, 2, 2, 3 }, { 1, 2, 1, 3, 2, 2 }, { 1, 3, 1, 2, 2, 2 }, { 1, 2, 2, 2, 1, 3 }, { 1, 2, 2, 3, 1, 2 }, { 1, 3, 2, 2, 1, 2 }, { 2, 2, 1, 2, 1, 3 }, { 2, 2, 1, 3, 1, 2 }, { 2, 3, 1, 2, 1, 2 }, { 1, 1, 2, 2, 3, 2 }, { 1, 2, 2, 1, 3, 2 }, { 1, 2, 2, 2, 3, 1 }, { 1, 1, 3, 2, 2, 2 }, { 1, 2, 3, 1, 2, 2 }, { 1, 2, 3, 2, 2, 1 }, { 2, 2, 3, 2, 1, 1 }, { 2, 2, 1, 1, 3, 2 }, { 2, 2, 1, 2, 3, 1 }, { 2, 1, 3, 2, 1, 2 }, { 2, 2, 3, 1, 1, 2 }, { 3, 1, 2, 1, 3, 1 }, { 3, 1, 1, 2, 2, 2 }, { 3, 2, 1, 1, 2, 2 }, { 3, 2, 1, 2, 2, 1 }, { 3, 1, 2, 2, 1, 2 }, { 3, 2, 2, 1, 1, 2 }, { 3, 2, 2, 2, 1, 1 }, { 2, 1, 2, 1, 2, 3 }, { 2, 1, 2, 3, 2, 1 }, { 2, 3, 2, 1, 2, 1 }, { 1, 1, 1, 3, 2, 3 }, { 1, 3, 1, 1, 2, 3 }, { 1, 3, 1, 3, 2, 1 }, { 1, 1, 2, 3, 1, 3 }, { 1, 3, 2, 1, 1, 3 }, { 1, 3, 2, 3, 1, 1 }, { 2, 1, 1, 3, 1, 3 }, { 2, 3, 1, 1, 1, 3 }, { 2, 3, 1, 3, 1, 1 }, { 1, 1, 2, 1, 3, 3 }, { 1, 1, 2, 3, 3, 1 }, { 1, 3, 2, 1, 3, 1 }, { 1, 1, 3, 1, 2, 3 }, { 1, 1, 3, 3, 2, 1 }, { 1, 3, 3, 1, 2, 1 }, { 3, 1, 3, 1, 2, 1 }, { 2, 1, 1, 3, 3, 1 }, { 2, 3, 1, 1, 3, 1 }, { 2, 1, 3, 1, 1, 3 }, { 2, 1, 3, 3, 1, 1 }, { 2, 1, 3, 1, 3, 1 }, { 3, 1, 1, 1, 2, 3 }, { 3, 1, 1, 3, 2, 1 }, { 3, 3, 1, 1, 2, 1 }, { 3, 1, 2, 1, 1, 3 }, { 3, 1, 2, 3, 1, 1 }, { 3, 3, 2, 1, 1, 1 }, { 3, 1, 4, 1, 1, 1 }, { 2, 2, 1, 4, 1, 1 }, { 4, 3, 1, 1, 1, 1 }, { 1, 1, 1, 2, 2, 4 }, { 1, 1, 1, 4, 2, 2 }, { 1, 2, 1, 1, 2, 4 }, { 1, 2, 1, 4, 2, 1 }, { 1, 4, 1, 1, 2, 2 }, { 1, 4, 1, 2, 2, 1 }, { 1, 1, 2, 2, 1, 4 }, { 1, 1, 2, 4, 1, 2 }, { 1, 2, 2, 1, 1, 4 }, { 1, 2, 2, 4, 1, 1 }, { 1, 4, 2, 1, 1, 2 }, { 1, 4, 2, 2, 1, 1 }, { 2, 4, 1, 2, 1, 1 }, { 2, 2, 1, 1, 1, 4 }, { 4, 1, 3, 1, 1, 1 }, { 2, 4, 1, 1, 1, 2 }, { 1, 3, 4, 1, 1, 1 }, { 1, 1, 1, 2, 4, 2 }, { 1, 2, 1, 1, 4, 2 }, { 1, 2, 1, 2, 4, 1 }, { 1, 1, 4, 2, 1, 2 }, { 1, 2, 4, 1, 1, 2 }, { 1, 2, 4, 2, 1, 1 }, { 4, 1, 1, 2, 1, 2 }, { 4, 2, 1, 1, 1, 2 }, { 4, 2, 1, 2, 1, 1 }, { 2, 1, 2, 1, 4, 1 }, { 2, 1, 4, 1, 2, 1 }, { 4, 1, 2, 1, 2, 1 }, { 1, 1, 1, 1, 4, 3 }, { 1, 1, 1, 3, 4, 1 }, { 1, 3, 1, 1, 4, 1 }, { 1, 1, 4, 1, 1, 3 }, { 1, 1, 4, 3, 1, 1 }, { 4, 1, 1, 1, 1, 3 }, { 4, 1, 1, 3, 1, 1 }, { 1, 1, 3, 1, 4, 1 }, { 1, 1, 4, 1, 3, 1 }, { 3, 1, 1, 1, 4, 1 }, { 4, 1, 1, 1, 3, 1 }, { 2, 1, 1, 4, 1, 2 }, { 2, 1, 1, 2, 1, 4 }, { 2, 1, 1, 2, 3, 2 }, { 2, 3, 3, 1, 1, 1, 2 } };
  private static final int CODE_SHIFT = 98;
  private static final int CODE_START_A = 103;
  private static final int CODE_START_B = 104;
  private static final int CODE_START_C = 105;
  private static final int CODE_STOP = 106;
  private static final int MAX_AVG_VARIANCE = 64;
  private static final int MAX_INDIVIDUAL_VARIANCE = 179;

  private static int decodeCode(BitArray paramBitArray, int[] paramArrayOfInt, int paramInt)
    throws NotFoundException
  {
    recordPattern(paramBitArray, paramInt, paramArrayOfInt);
    int i = 64;
    int j = -1;
    for (int k = 0; k < CODE_PATTERNS.length; k++)
    {
      int m = patternMatchVariance(paramArrayOfInt, CODE_PATTERNS[k], 179);
      if (m < i)
      {
        i = m;
        j = k;
      }
    }
    if (j >= 0)
      return j;
    throw NotFoundException.getNotFoundInstance();
  }

  private static int[] findStartPattern(BitArray paramBitArray)
    throws NotFoundException
  {
    int i = paramBitArray.getSize();
    int j = paramBitArray.getNextSet(0);
    int k = 0;
    int[] arrayOfInt = new int[6];
    int m = j;
    int n = 0;
    int i1 = arrayOfInt.length;
    int i2 = j;
    while (i2 < i)
      if ((n ^ paramBitArray.get(i2)) != 0)
      {
        arrayOfInt[k] = (1 + arrayOfInt[k]);
        i2++;
      }
      else
      {
        if (k == i1 - 1)
        {
          int i3 = 64;
          int i4 = -1;
          for (int i5 = 103; i5 <= 105; i5++)
          {
            int i6 = patternMatchVariance(arrayOfInt, CODE_PATTERNS[i5], 179);
            if (i6 < i3)
            {
              i3 = i6;
              i4 = i5;
            }
          }
          if ((i4 >= 0) && (paramBitArray.isRange(Math.max(0, m - (i2 - m) / 2), m, false)))
            return new int[] { m, i2, i4 };
          m += arrayOfInt[0] + arrayOfInt[1];
          System.arraycopy(arrayOfInt, 2, arrayOfInt, 0, i1 - 2);
          arrayOfInt[(i1 - 2)] = 0;
          arrayOfInt[(i1 - 1)] = 0;
          k--;
          label224: arrayOfInt[k] = 1;
          if (n != 0)
            break label246;
        }
        label246: for (n = 1; ; n = 0)
        {
          break;
          k++;
          break label224;
        }
      }
    throw NotFoundException.getNotFoundInstance();
  }

  public Result decodeRow(int paramInt, BitArray paramBitArray, Map<DecodeHintType, ?> paramMap)
    throws NotFoundException, FormatException, ChecksumException
  {
    if ((paramMap != null) && (paramMap.containsKey(DecodeHintType.ASSUME_GS1)));
    int[] arrayOfInt1;
    int j;
    for (int i = 1; ; i = 0)
    {
      arrayOfInt1 = findStartPattern(paramBitArray);
      j = arrayOfInt1[2];
      switch (j)
      {
      default:
        throw FormatException.getFormatInstance();
      case 103:
      case 104:
      case 105:
      }
    }
    int k = 101;
    int m = 0;
    int n = 0;
    StringBuilder localStringBuilder = new StringBuilder(20);
    ArrayList localArrayList = new ArrayList(20);
    int i1 = arrayOfInt1[0];
    int i2 = arrayOfInt1[1];
    int[] arrayOfInt2 = new int[6];
    int i3 = 0;
    int i4 = 0;
    int i5 = j;
    int i6 = 0;
    int i7 = 1;
    while (true)
      if (m == 0)
      {
        int i12 = n;
        i3 = i4;
        i4 = decodeCode(paramBitArray, arrayOfInt2, i2);
        localArrayList.add(Byte.valueOf((byte)i4));
        if (i4 != 106)
          i7 = 1;
        if (i4 != 106)
        {
          i6++;
          i5 += i6 * i4;
        }
        i1 = i2;
        int i13 = arrayOfInt2.length;
        int i14 = 0;
        while (true)
          if (i14 < i13)
          {
            i2 += arrayOfInt2[i14];
            i14++;
            continue;
            k = 100;
            break;
            k = 99;
            break;
          }
        switch (i4)
        {
        default:
          n = 0;
          switch (k)
          {
          default:
            if (i12 != 0)
              if (k != 101);
            break;
          case 101:
          case 100:
          case 99:
          }
        case 103:
        case 104:
        case 105:
          label312: for (k = 100; ; k = 101)
          {
            break;
            throw FormatException.getFormatInstance();
            if (i4 < 64)
            {
              localStringBuilder.append((char)(i4 + 32));
              n = 0;
              break label312;
            }
            if (i4 < 96)
            {
              localStringBuilder.append((char)(i4 - 64));
              n = 0;
              break label312;
            }
            if (i4 != 106)
              i7 = 0;
            n = 0;
            switch (i4)
            {
            case 96:
            case 97:
            case 101:
            case 103:
            case 104:
            case 105:
            default:
              n = 0;
              break;
            case 98:
              n = 1;
              k = 100;
              break;
            case 102:
              n = 0;
              if (i == 0)
                break;
              if (localStringBuilder.length() == 0)
              {
                localStringBuilder.append("]C1");
                n = 0;
                break;
              }
              localStringBuilder.append('\035');
              n = 0;
              break;
            case 100:
              k = 100;
              n = 0;
              break;
            case 99:
              k = 99;
              n = 0;
              break;
            case 106:
              m = 1;
              n = 0;
              break;
              if (i4 < 96)
              {
                localStringBuilder.append((char)(i4 + 32));
                n = 0;
                break;
              }
              if (i4 != 106)
                i7 = 0;
              n = 0;
              switch (i4)
              {
              case 96:
              case 97:
              case 100:
              case 103:
              case 104:
              case 105:
              default:
                n = 0;
                break;
              case 98:
                n = 1;
                k = 101;
                break;
              case 102:
                n = 0;
                if (i == 0)
                  break;
                if (localStringBuilder.length() == 0)
                {
                  localStringBuilder.append("]C1");
                  n = 0;
                  break;
                }
                localStringBuilder.append('\035');
                n = 0;
                break;
              case 101:
                k = 101;
                n = 0;
                break;
              case 99:
                k = 99;
                n = 0;
                break;
              case 106:
                m = 1;
                n = 0;
                break;
                if (i4 < 100)
                {
                  if (i4 < 10)
                    localStringBuilder.append('0');
                  localStringBuilder.append(i4);
                  n = 0;
                  break;
                }
                if (i4 != 106)
                  i7 = 0;
                switch (i4)
                {
                case 103:
                case 104:
                case 105:
                default:
                  n = 0;
                  break;
                case 100:
                  k = 100;
                  n = 0;
                  break;
                case 102:
                  n = 0;
                  if (i == 0)
                    break;
                  if (localStringBuilder.length() == 0)
                  {
                    localStringBuilder.append("]C1");
                    n = 0;
                    break;
                  }
                  localStringBuilder.append('\035');
                  n = 0;
                  break;
                case 101:
                  k = 101;
                  n = 0;
                  break;
                case 106:
                  m = 1;
                  n = 0;
                  break;
                }
                break;
              }
              break;
            }
          }
        }
      }
    int i8 = paramBitArray.getNextUnset(i2);
    if (!paramBitArray.isRange(i8, Math.min(paramBitArray.getSize(), i8 + (i8 - i1) / 2), false))
      throw NotFoundException.getNotFoundInstance();
    if ((i5 - i6 * i3) % 103 != i3)
      throw ChecksumException.getChecksumInstance();
    int i9 = localStringBuilder.length();
    if (i9 == 0)
      throw NotFoundException.getNotFoundInstance();
    if ((i9 > 0) && (i7 != 0))
    {
      if (k != 99)
        break label1093;
      localStringBuilder.delete(i9 - 2, i9);
    }
    float f1;
    float f2;
    byte[] arrayOfByte;
    while (true)
    {
      f1 = (arrayOfInt1[1] + arrayOfInt1[0]) / 2.0F;
      f2 = (i8 + i1) / 2.0F;
      int i10 = localArrayList.size();
      arrayOfByte = new byte[i10];
      for (int i11 = 0; i11 < i10; i11++)
        arrayOfByte[i11] = ((Byte)localArrayList.get(i11)).byteValue();
      label1093: localStringBuilder.delete(i9 - 1, i9);
    }
    String str = localStringBuilder.toString();
    ResultPoint[] arrayOfResultPoint = new ResultPoint[2];
    ResultPoint localResultPoint1 = new ResultPoint(f1, paramInt);
    arrayOfResultPoint[0] = localResultPoint1;
    ResultPoint localResultPoint2 = new ResultPoint(f2, paramInt);
    arrayOfResultPoint[1] = localResultPoint2;
    Result localResult = new Result(str, arrayOfByte, arrayOfResultPoint, BarcodeFormat.CODE_128);
    return localResult;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.Code128Reader
 * JD-Core Version:    0.6.2
 */