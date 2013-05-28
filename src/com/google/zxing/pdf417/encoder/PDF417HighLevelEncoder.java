package com.google.zxing.pdf417.encoder;

import com.google.zxing.WriterException;
import java.math.BigInteger;
import java.util.Arrays;

final class PDF417HighLevelEncoder
{
  private static final int BYTE_COMPACTION = 1;
  private static final int LATCH_TO_BYTE = 924;
  private static final int LATCH_TO_BYTE_PADDED = 901;
  private static final int LATCH_TO_NUMERIC = 902;
  private static final int LATCH_TO_TEXT = 900;
  private static final byte[] MIXED;
  private static final int NUMERIC_COMPACTION = 2;
  private static final byte[] PUNCTUATION;
  private static final int SHIFT_TO_BYTE = 913;
  private static final int SUBMODE_ALPHA = 0;
  private static final int SUBMODE_LOWER = 1;
  private static final int SUBMODE_MIXED = 2;
  private static final int SUBMODE_PUNCTUATION = 3;
  private static final int TEXT_COMPACTION;
  private static final byte[] TEXT_MIXED_RAW = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 38, 13, 9, 44, 58, 35, 45, 46, 36, 47, 43, 37, 42, 61, 94, 0, 32, 0, 0, 0 };
  private static final byte[] TEXT_PUNCTUATION_RAW = { 59, 60, 62, 64, 91, 92, 93, 95, 96, 126, 33, 13, 9, 44, 58, 10, 45, 46, 36, 47, 34, 124, 42, 40, 41, 63, 123, 125, 39, 0 };

  static
  {
    MIXED = new byte[''];
    PUNCTUATION = new byte[''];
    Arrays.fill(MIXED, (byte)-1);
    for (int i = 0; i < TEXT_MIXED_RAW.length; i = (byte)(i + 1))
    {
      int m = TEXT_MIXED_RAW[i];
      if (m > 0)
        MIXED[m] = i;
    }
    Arrays.fill(PUNCTUATION, (byte)-1);
    for (int j = 0; j < TEXT_PUNCTUATION_RAW.length; j = (byte)(j + 1))
    {
      int k = TEXT_PUNCTUATION_RAW[j];
      if (k > 0)
        PUNCTUATION[k] = j;
    }
  }

  private static int determineConsecutiveBinaryCount(CharSequence paramCharSequence, byte[] paramArrayOfByte, int paramInt)
    throws WriterException
  {
    int i = paramCharSequence.length();
    for (int j = paramInt; j < i; j++)
    {
      char c1 = paramCharSequence.charAt(j);
      int k = 0;
      while (true)
      {
        int i1;
        if ((k < 13) && (isDigit(c1)))
        {
          k++;
          i1 = j + k;
          if (i1 < i);
        }
        else
        {
          if (k < 13)
            break;
          return j - paramInt;
        }
        c1 = paramCharSequence.charAt(i1);
      }
      int m = 0;
      while (true)
      {
        int n;
        if ((m < 5) && (isText(c1)))
        {
          m++;
          n = j + m;
          if (n < i);
        }
        else
        {
          if (m < 5)
            break;
          return j - paramInt;
        }
        c1 = paramCharSequence.charAt(n);
      }
      char c2 = paramCharSequence.charAt(j);
      if ((paramArrayOfByte[j] == 63) && (c2 != '?'))
        throw new WriterException("Non-encodable character detected: " + c2 + " (Unicode: " + c2 + ')');
    }
    return j - paramInt;
  }

  private static int determineConsecutiveDigitCount(CharSequence paramCharSequence, int paramInt)
  {
    int i = paramCharSequence.length();
    int j = paramInt;
    int k = 0;
    if (j < i)
    {
      char c = paramCharSequence.charAt(j);
      while ((isDigit(c)) && (j < i))
      {
        k++;
        j++;
        if (j < i)
          c = paramCharSequence.charAt(j);
      }
    }
    return k;
  }

  private static int determineConsecutiveTextCount(CharSequence paramCharSequence, int paramInt)
  {
    int i = paramCharSequence.length();
    int j = paramInt;
    while (true)
      if (j < i)
      {
        char c = paramCharSequence.charAt(j);
        int k = 0;
        while ((k < 13) && (isDigit(c)) && (j < i))
        {
          k++;
          j++;
          if (j < i)
            c = paramCharSequence.charAt(j);
        }
        if (k >= 13)
          return j - paramInt - k;
        if (k <= 0)
          if (isText(paramCharSequence.charAt(j)));
      }
      else
      {
        return j - paramInt;
        j++;
      }
  }

  private static void encodeBinary(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3, StringBuilder paramStringBuilder)
  {
    if ((paramInt2 == 1) && (paramInt3 == 0))
      paramStringBuilder.append('Α');
    int i = paramInt1;
    if (paramInt2 >= 6)
    {
      paramStringBuilder.append('Μ');
      char[] arrayOfChar = new char[5];
      while (paramInt1 + paramInt2 - i >= 6)
      {
        long l = 0L;
        for (int k = 0; k < 6; k++)
          l = (l << 8) + (0xFF & paramArrayOfByte[(i + k)]);
        for (int m = 0; m < 5; m++)
        {
          arrayOfChar[m] = ((char)(int)(l % 900L));
          l /= 900L;
        }
        for (int n = -1 + arrayOfChar.length; n >= 0; n--)
          paramStringBuilder.append(arrayOfChar[n]);
        i += 6;
      }
    }
    if (i < paramInt1 + paramInt2)
      paramStringBuilder.append('΅');
    for (int j = i; j < paramInt1 + paramInt2; j++)
      paramStringBuilder.append((char)(0xFF & paramArrayOfByte[j]));
  }

  static String encodeHighLevel(String paramString, Compaction paramCompaction)
    throws WriterException
  {
    byte[] arrayOfByte1 = null;
    StringBuilder localStringBuilder = new StringBuilder(paramString.length());
    int i = paramString.length();
    int j = 0;
    int k = 0;
    if (paramCompaction == Compaction.TEXT)
      encodeText(paramString, 0, i, localStringBuilder, 0);
    while (true)
    {
      return localStringBuilder.toString();
      if (paramCompaction == Compaction.BYTE)
      {
        byte[] arrayOfByte2 = getBytesForMessage(paramString);
        encodeBinary(arrayOfByte2, 0, arrayOfByte2.length, 1, localStringBuilder);
      }
      else
      {
        if (paramCompaction != Compaction.NUMERIC)
          break;
        localStringBuilder.append('Ά');
        encodeNumeric(paramString, 0, i, localStringBuilder);
      }
    }
    int m = 0;
    label104: int i2;
    while (j < i)
    {
      int n = determineConsecutiveDigitCount(paramString, j);
      if (n >= 13)
      {
        localStringBuilder.append('Ά');
        m = 2;
        encodeNumeric(paramString, j, n, localStringBuilder);
        j += n;
        k = 0;
      }
      else
      {
        int i1 = determineConsecutiveTextCount(paramString, j);
        if ((i1 >= 5) || (n == i))
        {
          if (m != 0)
          {
            localStringBuilder.append('΄');
            m = 0;
            k = 0;
          }
          k = encodeText(paramString, j, i1, localStringBuilder, k);
          j += i1;
        }
        else
        {
          if (arrayOfByte1 == null)
            arrayOfByte1 = getBytesForMessage(paramString);
          i2 = determineConsecutiveBinaryCount(paramString, arrayOfByte1, j);
          if (i2 == 0)
            i2 = 1;
          if ((i2 != 1) || (m != 0))
            break label278;
          encodeBinary(arrayOfByte1, j, 1, 0, localStringBuilder);
        }
      }
    }
    while (true)
    {
      j += i2;
      break label104;
      break;
      label278: encodeBinary(arrayOfByte1, j, i2, m, localStringBuilder);
      m = 1;
      k = 0;
    }
  }

  private static void encodeNumeric(String paramString, int paramInt1, int paramInt2, StringBuilder paramStringBuilder)
  {
    int i = 0;
    StringBuilder localStringBuilder = new StringBuilder(1 + paramInt2 / 3);
    BigInteger localBigInteger1 = BigInteger.valueOf(900L);
    BigInteger localBigInteger2 = BigInteger.valueOf(0L);
    while (i < paramInt2 - 1)
    {
      localStringBuilder.setLength(0);
      int j = Math.min(44, paramInt2 - i);
      BigInteger localBigInteger3 = new BigInteger('1' + paramString.substring(paramInt1 + i, j + (paramInt1 + i)));
      do
      {
        localStringBuilder.append((char)localBigInteger3.mod(localBigInteger1).intValue());
        localBigInteger3 = localBigInteger3.divide(localBigInteger1);
      }
      while (!localBigInteger3.equals(localBigInteger2));
      for (int k = -1 + localStringBuilder.length(); k >= 0; k--)
        paramStringBuilder.append(localStringBuilder.charAt(k));
      i += j;
    }
  }

  private static int encodeText(CharSequence paramCharSequence, int paramInt1, int paramInt2, StringBuilder paramStringBuilder, int paramInt3)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramInt2);
    int i = paramInt3;
    int j = 0;
    char c1;
    label77: 
    do
    {
      c1 = paramCharSequence.charAt(paramInt1 + j);
      switch (i)
      {
      default:
        if (!isPunctuation(c1))
          break label511;
        localStringBuilder.append((char)PUNCTUATION[c1]);
        j++;
      case 0:
      case 1:
      case 2:
      }
    }
    while (j < paramInt2);
    char c2 = '\000';
    int k = localStringBuilder.length();
    int m = 0;
    label99: if (m < k)
    {
      int n;
      if (m % 2 != 0)
      {
        n = 1;
        label116: if (n == 0)
          break label531;
        c2 = (char)(c2 * '\036' + localStringBuilder.charAt(m));
        paramStringBuilder.append(c2);
      }
      while (true)
      {
        m++;
        break label99;
        if (isAlphaUpper(c1))
        {
          if (c1 == ' ')
          {
            localStringBuilder.append('\032');
            break label77;
          }
          localStringBuilder.append((char)(c1 - 'A'));
          break label77;
        }
        if (isAlphaLower(c1))
        {
          i = 1;
          localStringBuilder.append('\033');
          break;
        }
        if (isMixed(c1))
        {
          i = 2;
          localStringBuilder.append('\034');
          break;
        }
        localStringBuilder.append('\035');
        localStringBuilder.append((char)PUNCTUATION[c1]);
        break label77;
        if (isAlphaLower(c1))
        {
          if (c1 == ' ')
          {
            localStringBuilder.append('\032');
            break label77;
          }
          localStringBuilder.append((char)(c1 - 'a'));
          break label77;
        }
        if (isAlphaUpper(c1))
        {
          localStringBuilder.append('\033');
          localStringBuilder.append((char)(c1 - 'A'));
          break label77;
        }
        if (isMixed(c1))
        {
          i = 2;
          localStringBuilder.append('\034');
          break;
        }
        localStringBuilder.append('\035');
        localStringBuilder.append((char)PUNCTUATION[c1]);
        break label77;
        if (isMixed(c1))
        {
          localStringBuilder.append((char)MIXED[c1]);
          break label77;
        }
        if (isAlphaUpper(c1))
        {
          localStringBuilder.append('\034');
          i = 0;
          break;
        }
        if (isAlphaLower(c1))
        {
          i = 1;
          localStringBuilder.append('\033');
          break;
        }
        if ((1 + (paramInt1 + j) < paramInt2) && (isPunctuation(paramCharSequence.charAt(1 + (paramInt1 + j)))))
        {
          i = 3;
          localStringBuilder.append('\031');
          break;
        }
        localStringBuilder.append('\035');
        localStringBuilder.append((char)PUNCTUATION[c1]);
        break label77;
        label511: localStringBuilder.append('\035');
        i = 0;
        break;
        n = 0;
        break label116;
        c2 = localStringBuilder.charAt(m);
      }
    }
    label531: if (k % 2 != 0)
      paramStringBuilder.append((char)(29 + c2 * '\036'));
    return i;
  }

  private static byte[] getBytesForMessage(String paramString)
  {
    return paramString.getBytes();
  }

  private static boolean isAlphaLower(char paramChar)
  {
    return (paramChar == ' ') || ((paramChar >= 'a') && (paramChar <= 'z'));
  }

  private static boolean isAlphaUpper(char paramChar)
  {
    return (paramChar == ' ') || ((paramChar >= 'A') && (paramChar <= 'Z'));
  }

  private static boolean isDigit(char paramChar)
  {
    return (paramChar >= '0') && (paramChar <= '9');
  }

  private static boolean isMixed(char paramChar)
  {
    return MIXED[paramChar] != -1;
  }

  private static boolean isPunctuation(char paramChar)
  {
    return PUNCTUATION[paramChar] != -1;
  }

  private static boolean isText(char paramChar)
  {
    return (paramChar == '\t') || (paramChar == '\n') || (paramChar == '\r') || ((paramChar >= ' ') && (paramChar <= '~'));
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.pdf417.encoder.PDF417HighLevelEncoder
 * JD-Core Version:    0.6.2
 */