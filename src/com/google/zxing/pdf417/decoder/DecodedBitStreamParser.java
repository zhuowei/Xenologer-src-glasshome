package com.google.zxing.pdf417.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.common.DecoderResult;
import java.math.BigInteger;

final class DecodedBitStreamParser
{
  private static final int AL = 28;
  private static final int AS = 27;
  private static final int BEGIN_MACRO_PDF417_CONTROL_BLOCK = 928;
  private static final int BEGIN_MACRO_PDF417_OPTIONAL_FIELD = 923;
  private static final int BYTE_COMPACTION_MODE_LATCH = 901;
  private static final int BYTE_COMPACTION_MODE_LATCH_6 = 924;
  private static final BigInteger[] EXP900;
  private static final int LL = 27;
  private static final int MACRO_PDF417_TERMINATOR = 922;
  private static final int MAX_NUMERIC_CODEWORDS = 15;
  private static final char[] MIXED_CHARS;
  private static final int ML = 28;
  private static final int MODE_SHIFT_TO_BYTE_COMPACTION_MODE = 913;
  private static final int NUMERIC_COMPACTION_MODE_LATCH = 902;
  private static final int PAL = 29;
  private static final int PL = 25;
  private static final int PS = 29;
  private static final char[] PUNCT_CHARS = { 59, 60, 62, 64, 91, 92, 125, 95, 96, 126, 33, 13, 9, 44, 58, 10, 45, 46, 36, 47, 34, 124, 42, 40, 41, 63, 123, 125, 39 };
  private static final int TEXT_COMPACTION_MODE_LATCH = 900;

  static
  {
    MIXED_CHARS = new char[] { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 38, 13, 9, 44, 58, 35, 45, 46, 36, 47, 43, 37, 42, 61, 94 };
    EXP900 = new BigInteger[16];
    EXP900[0] = BigInteger.ONE;
    BigInteger localBigInteger = BigInteger.valueOf(900L);
    EXP900[1] = localBigInteger;
    for (int i = 2; i < EXP900.length; i++)
      EXP900[i] = EXP900[(i - 1)].multiply(localBigInteger);
  }

  private static int byteCompaction(int paramInt1, int[] paramArrayOfInt, int paramInt2, StringBuilder paramStringBuilder)
  {
    int i2;
    long l2;
    char[] arrayOfChar2;
    int[] arrayOfInt;
    int i3;
    int i5;
    if (paramInt1 == 901)
    {
      i2 = 0;
      l2 = 0L;
      arrayOfChar2 = new char[6];
      arrayOfInt = new int[6];
      i3 = 0;
      int i4 = paramInt2 + 1;
      i5 = paramArrayOfInt[paramInt2];
      paramInt2 = i4;
    }
    while (true)
    {
      int i6 = paramArrayOfInt[0];
      int i10;
      int i11;
      if ((paramInt2 < i6) && (i3 == 0))
      {
        i10 = i2 + 1;
        arrayOfInt[i2] = i5;
        l2 = 900L * l2 + i5;
        i11 = paramInt2 + 1;
        i5 = paramArrayOfInt[paramInt2];
        if ((i5 == 900) || (i5 == 901) || (i5 == 902) || (i5 == 924) || (i5 == 928) || (i5 == 923) || (i5 == 922))
        {
          paramInt2 = i11 - 1;
          i3 = 1;
          i2 = i10;
        }
        else if ((i10 % 5 == 0) && (i10 > 0))
        {
          for (int i12 = 0; i12 < 6; i12++)
          {
            arrayOfChar2[(5 - i12)] = ((char)(int)(l2 % 256L));
            l2 >>= 8;
          }
          paramStringBuilder.append(arrayOfChar2);
          paramInt2 = i11;
          i2 = 0;
        }
      }
      else
      {
        int i7 = paramArrayOfInt[0];
        if ((paramInt2 == i7) && (i5 < 900))
        {
          int i9 = i2 + 1;
          arrayOfInt[i2] = i5;
          i2 = i9;
        }
        int i8 = 0;
        int i;
        long l1;
        int j;
        while (i8 < i2)
        {
          paramStringBuilder.append((char)arrayOfInt[i8]);
          i8++;
          continue;
          if (paramInt1 == 924)
          {
            i = 0;
            l1 = 0L;
            j = 0;
          }
        }
        label498: label502: 
        while (true)
        {
          int k = paramArrayOfInt[0];
          int m;
          int n;
          if ((paramInt2 < k) && (j == 0))
          {
            m = paramInt2 + 1;
            n = paramArrayOfInt[paramInt2];
            if (n < 900)
            {
              i++;
              l1 = 900L * l1 + n;
              paramInt2 = m;
            }
          }
          while (true)
          {
            if ((i % 5 != 0) || (i <= 0))
              break label502;
            char[] arrayOfChar1 = new char[6];
            int i1 = 0;
            while (true)
              if (i1 < 6)
              {
                arrayOfChar1[(5 - i1)] = ((char)(int)(0xFF & l1));
                l1 >>= 8;
                i1++;
                continue;
                if ((n != 900) && (n != 901) && (n != 902) && (n != 924) && (n != 928) && (n != 923) && (n != 922))
                  break label498;
                paramInt2 = m - 1;
                j = 1;
                break;
              }
            paramStringBuilder.append(arrayOfChar1);
            i = 0;
            break;
            return paramInt2;
            paramInt2 = m;
          }
        }
        i2 = i10;
        paramInt2 = i11;
      }
    }
  }

  static DecoderResult decode(int[] paramArrayOfInt)
    throws FormatException
  {
    StringBuilder localStringBuilder = new StringBuilder(100);
    int i = 1 + 1;
    int j = paramArrayOfInt[1];
    int k = i;
    if (k < paramArrayOfInt[0])
    {
      int m;
      switch (j)
      {
      default:
        m = textCompaction(paramArrayOfInt, k - 1, localStringBuilder);
      case 900:
      case 901:
      case 902:
      case 913:
      case 924:
      }
      while (true)
      {
        if (m >= paramArrayOfInt.length)
          break label179;
        int n = m + 1;
        j = paramArrayOfInt[m];
        k = n;
        break;
        m = textCompaction(paramArrayOfInt, k, localStringBuilder);
        continue;
        m = byteCompaction(j, paramArrayOfInt, k, localStringBuilder);
        continue;
        m = numericCompaction(paramArrayOfInt, k, localStringBuilder);
        continue;
        m = byteCompaction(j, paramArrayOfInt, k, localStringBuilder);
        continue;
        m = byteCompaction(j, paramArrayOfInt, k, localStringBuilder);
      }
      label179: throw FormatException.getFormatInstance();
    }
    if (localStringBuilder.length() == 0)
      throw FormatException.getFormatInstance();
    return new DecoderResult(null, localStringBuilder.toString(), null, null);
  }

  private static String decodeBase900toBase10(int[] paramArrayOfInt, int paramInt)
    throws FormatException
  {
    BigInteger localBigInteger = BigInteger.ZERO;
    for (int i = 0; i < paramInt; i++)
      localBigInteger = localBigInteger.add(EXP900[(-1 + (paramInt - i))].multiply(BigInteger.valueOf(paramArrayOfInt[i])));
    String str = localBigInteger.toString();
    if (str.charAt(0) != '1')
      throw FormatException.getFormatInstance();
    return str.substring(1);
  }

  private static void decodeTextCompaction(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int paramInt, StringBuilder paramStringBuilder)
  {
    Object localObject1 = Mode.ALPHA;
    Object localObject2 = Mode.ALPHA;
    int i = 0;
    if (i < paramInt)
    {
      int j = paramArrayOfInt1[i];
      int k = 1.$SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode[localObject1.ordinal()];
      char c = '\000';
      switch (k)
      {
      default:
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      }
      while (true)
      {
        if (c != 0)
          paramStringBuilder.append(c);
        i++;
        break;
        if (j < 26)
        {
          c = (char)(j + 65);
        }
        else if (j == 26)
        {
          c = ' ';
        }
        else if (j == 27)
        {
          localObject1 = Mode.LOWER;
          c = '\000';
        }
        else if (j == 28)
        {
          localObject1 = Mode.MIXED;
          c = '\000';
        }
        else if (j == 29)
        {
          localObject2 = localObject1;
          localObject1 = Mode.PUNCT_SHIFT;
          c = '\000';
        }
        else if (j == 913)
        {
          paramStringBuilder.append((char)paramArrayOfInt2[i]);
          c = '\000';
        }
        else
        {
          c = '\000';
          if (j == 900)
          {
            localObject1 = Mode.ALPHA;
            c = '\000';
            continue;
            if (j < 26)
            {
              c = (char)(j + 97);
            }
            else if (j == 26)
            {
              c = ' ';
            }
            else if (j == 27)
            {
              localObject2 = localObject1;
              localObject1 = Mode.ALPHA_SHIFT;
              c = '\000';
            }
            else if (j == 28)
            {
              localObject1 = Mode.MIXED;
              c = '\000';
            }
            else if (j == 29)
            {
              localObject2 = localObject1;
              localObject1 = Mode.PUNCT_SHIFT;
              c = '\000';
            }
            else if (j == 913)
            {
              paramStringBuilder.append((char)paramArrayOfInt2[i]);
              c = '\000';
            }
            else
            {
              c = '\000';
              if (j == 900)
              {
                localObject1 = Mode.ALPHA;
                c = '\000';
                continue;
                if (j < 25)
                {
                  c = MIXED_CHARS[j];
                }
                else if (j == 25)
                {
                  localObject1 = Mode.PUNCT;
                  c = '\000';
                }
                else if (j == 26)
                {
                  c = ' ';
                }
                else if (j == 27)
                {
                  localObject1 = Mode.LOWER;
                  c = '\000';
                }
                else if (j == 28)
                {
                  localObject1 = Mode.ALPHA;
                  c = '\000';
                }
                else if (j == 29)
                {
                  localObject2 = localObject1;
                  localObject1 = Mode.PUNCT_SHIFT;
                  c = '\000';
                }
                else if (j == 913)
                {
                  paramStringBuilder.append((char)paramArrayOfInt2[i]);
                  c = '\000';
                }
                else
                {
                  c = '\000';
                  if (j == 900)
                  {
                    localObject1 = Mode.ALPHA;
                    c = '\000';
                    continue;
                    if (j < 29)
                    {
                      c = PUNCT_CHARS[j];
                    }
                    else if (j == 29)
                    {
                      localObject1 = Mode.ALPHA;
                      c = '\000';
                    }
                    else if (j == 913)
                    {
                      paramStringBuilder.append((char)paramArrayOfInt2[i]);
                      c = '\000';
                    }
                    else
                    {
                      c = '\000';
                      if (j == 900)
                      {
                        localObject1 = Mode.ALPHA;
                        c = '\000';
                        continue;
                        localObject1 = localObject2;
                        if (j < 26)
                        {
                          c = (char)(j + 65);
                        }
                        else if (j == 26)
                        {
                          c = ' ';
                        }
                        else
                        {
                          c = '\000';
                          if (j == 900)
                          {
                            localObject1 = Mode.ALPHA;
                            c = '\000';
                            continue;
                            localObject1 = localObject2;
                            if (j < 29)
                            {
                              c = PUNCT_CHARS[j];
                            }
                            else if (j == 29)
                            {
                              localObject1 = Mode.ALPHA;
                              c = '\000';
                            }
                            else if (j == 913)
                            {
                              paramStringBuilder.append((char)paramArrayOfInt2[i]);
                              c = '\000';
                            }
                            else
                            {
                              c = '\000';
                              if (j == 900)
                              {
                                localObject1 = Mode.ALPHA;
                                c = '\000';
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  private static int numericCompaction(int[] paramArrayOfInt, int paramInt, StringBuilder paramStringBuilder)
    throws FormatException
  {
    int i = 0;
    int j = 0;
    int[] arrayOfInt = new int[15];
    label165: 
    while (true)
    {
      int k;
      int m;
      if ((paramInt < paramArrayOfInt[0]) && (j == 0))
      {
        k = paramInt + 1;
        m = paramArrayOfInt[paramInt];
        if (k == paramArrayOfInt[0])
          j = 1;
        if (m < 900)
        {
          arrayOfInt[i] = m;
          i++;
          paramInt = k;
        }
      }
      while (true)
      {
        if ((i % 15 != 0) && (m != 902) && (j == 0))
          break label165;
        paramStringBuilder.append(decodeBase900toBase10(arrayOfInt, i));
        i = 0;
        break;
        if ((m == 900) || (m == 901) || (m == 924) || (m == 928) || (m == 923) || (m == 922))
        {
          paramInt = k - 1;
          j = 1;
          continue;
          return paramInt;
        }
        else
        {
          paramInt = k;
        }
      }
    }
  }

  private static int textCompaction(int[] paramArrayOfInt, int paramInt, StringBuilder paramStringBuilder)
  {
    int[] arrayOfInt1 = new int[paramArrayOfInt[0] << 1];
    int[] arrayOfInt2 = new int[paramArrayOfInt[0] << 1];
    int i = 0;
    int j = 0;
    while ((paramInt < paramArrayOfInt[0]) && (j == 0))
    {
      int k = paramInt + 1;
      int m = paramArrayOfInt[paramInt];
      if (m < 900)
      {
        arrayOfInt1[i] = (m / 30);
        arrayOfInt1[(i + 1)] = (m % 30);
        i += 2;
        paramInt = k;
      }
      else
      {
        switch (m)
        {
        default:
          paramInt = k;
          break;
        case 900:
          int n = i + 1;
          arrayOfInt1[i] = 900;
          i = n;
          paramInt = k;
          break;
        case 901:
          paramInt = k - 1;
          j = 1;
          break;
        case 902:
          paramInt = k - 1;
          j = 1;
          break;
        case 913:
          arrayOfInt1[i] = 913;
          paramInt = k + 1;
          arrayOfInt2[i] = paramArrayOfInt[k];
          i++;
          break;
        case 924:
          paramInt = k - 1;
          j = 1;
        }
      }
    }
    decodeTextCompaction(arrayOfInt1, arrayOfInt2, i, paramStringBuilder);
    return paramInt;
  }

  private static enum Mode
  {
    static
    {
      ALPHA_SHIFT = new Mode("ALPHA_SHIFT", 4);
      PUNCT_SHIFT = new Mode("PUNCT_SHIFT", 5);
      Mode[] arrayOfMode = new Mode[6];
      arrayOfMode[0] = ALPHA;
      arrayOfMode[1] = LOWER;
      arrayOfMode[2] = MIXED;
      arrayOfMode[3] = PUNCT;
      arrayOfMode[4] = ALPHA_SHIFT;
      arrayOfMode[5] = PUNCT_SHIFT;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.pdf417.decoder.DecodedBitStreamParser
 * JD-Core Version:    0.6.2
 */