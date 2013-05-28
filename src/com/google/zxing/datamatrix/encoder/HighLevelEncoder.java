package com.google.zxing.datamatrix.encoder;

import com.google.zxing.Dimension;
import java.nio.charset.Charset;
import java.util.Arrays;

public final class HighLevelEncoder
{
  static final int ASCII_ENCODATION = 0;
  static final int BASE256_ENCODATION = 5;
  static final int C40_ENCODATION = 1;
  static final char C40_UNLATCH = 'þ';
  static final int EDIFACT_ENCODATION = 4;
  static final char LATCH_TO_ANSIX12 = 'î';
  static final char LATCH_TO_BASE256 = 'ç';
  static final char LATCH_TO_C40 = 'æ';
  static final char LATCH_TO_EDIFACT = 'ð';
  static final char LATCH_TO_TEXT = 'ï';
  private static final char MACRO_05 = 'ì';
  private static final String MACRO_05_HEADER = "[)>\03605\035";
  private static final char MACRO_06 = 'í';
  private static final String MACRO_06_HEADER = "[)>\03606\035";
  private static final String MACRO_TRAILER = "\036\004";
  private static final char PAD = '';
  static final int TEXT_ENCODATION = 2;
  static final char UPPER_SHIFT = 'ë';
  static final int X12_ENCODATION = 3;
  static final char X12_UNLATCH = 'þ';

  public static int determineConsecutiveDigitCount(CharSequence paramCharSequence, int paramInt)
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

  public static String encodeHighLevel(String paramString)
  {
    return encodeHighLevel(paramString, SymbolShapeHint.FORCE_NONE, null, null);
  }

  public static String encodeHighLevel(String paramString, SymbolShapeHint paramSymbolShapeHint, Dimension paramDimension1, Dimension paramDimension2)
  {
    Encoder[] arrayOfEncoder = new Encoder[6];
    arrayOfEncoder[0] = new ASCIIEncoder();
    arrayOfEncoder[1] = new C40Encoder();
    arrayOfEncoder[2] = new TextEncoder();
    arrayOfEncoder[3] = new X12Encoder();
    arrayOfEncoder[4] = new EdifactEncoder();
    arrayOfEncoder[5] = new Base256Encoder();
    EncoderContext localEncoderContext = new EncoderContext(paramString);
    localEncoderContext.setSymbolShape(paramSymbolShapeHint);
    localEncoderContext.setSizeConstraints(paramDimension1, paramDimension2);
    if ((paramString.startsWith("[)>\03605\035")) && (paramString.endsWith("\036\004")))
    {
      localEncoderContext.writeCodeword('ì');
      localEncoderContext.setSkipAtEnd(2);
    }
    int i;
    for (localEncoderContext.pos += "[)>\03605\035".length(); ; localEncoderContext.pos += "[)>\03606\035".length())
    {
      do
      {
        i = 0;
        while (localEncoderContext.hasMoreCharacters())
        {
          arrayOfEncoder[i].encode(localEncoderContext);
          if (localEncoderContext.newEncoding >= 0)
          {
            i = localEncoderContext.newEncoding;
            localEncoderContext.resetEncoderSignal();
          }
        }
      }
      while ((!paramString.startsWith("[)>\03606\035")) || (!paramString.endsWith("\036\004")));
      localEncoderContext.writeCodeword('í');
      localEncoderContext.setSkipAtEnd(2);
    }
    int j = localEncoderContext.codewords.length();
    localEncoderContext.updateSymbolInfo();
    int k = localEncoderContext.symbolInfo.dataCapacity;
    if ((j < k) && (i != 0) && (i != 5))
      localEncoderContext.writeCodeword('þ');
    StringBuilder localStringBuilder = localEncoderContext.codewords;
    if (localStringBuilder.length() < k)
      localStringBuilder.append('');
    while (localStringBuilder.length() < k)
      localStringBuilder.append(randomize253State('', 1 + localStringBuilder.length()));
    return localEncoderContext.codewords.toString();
  }

  private static int findMinimums(float[] paramArrayOfFloat, int[] paramArrayOfInt, int paramInt, byte[] paramArrayOfByte)
  {
    Arrays.fill(paramArrayOfByte, (byte)0);
    for (int i = 0; i < 6; i++)
    {
      paramArrayOfInt[i] = ((int)Math.ceil(paramArrayOfFloat[i]));
      int j = paramArrayOfInt[i];
      if (paramInt > j)
      {
        paramInt = j;
        Arrays.fill(paramArrayOfByte, (byte)0);
      }
      if (paramInt == j)
        paramArrayOfByte[i] = ((byte)(1 + paramArrayOfByte[i]));
    }
    return paramInt;
  }

  public static byte[] getBytesForMessage(String paramString)
  {
    return paramString.getBytes(Charset.forName("cp437"));
  }

  private static int getMinimumCount(byte[] paramArrayOfByte)
  {
    int i = 0;
    for (int j = 0; j < 6; j++)
      i += paramArrayOfByte[j];
    return i;
  }

  static void illegalCharacter(char paramChar)
  {
    String str1 = Integer.toHexString(paramChar);
    String str2 = "0000".substring(0, 4 - str1.length()) + str1;
    throw new IllegalArgumentException("Illegal character: " + paramChar + " (0x" + str2 + ')');
  }

  static boolean isDigit(char paramChar)
  {
    return (paramChar >= '0') && (paramChar <= '9');
  }

  static boolean isExtendedASCII(char paramChar)
  {
    return (paramChar >= '') && (paramChar <= 'ÿ');
  }

  private static boolean isNativeC40(char paramChar)
  {
    return (paramChar == ' ') || ((paramChar >= '0') && (paramChar <= '9')) || ((paramChar >= 'A') && (paramChar <= 'Z'));
  }

  private static boolean isNativeEDIFACT(char paramChar)
  {
    return (paramChar >= ' ') && (paramChar <= '^');
  }

  private static boolean isNativeText(char paramChar)
  {
    return (paramChar == ' ') || ((paramChar >= '0') && (paramChar <= '9')) || ((paramChar >= 'a') && (paramChar <= 'z'));
  }

  private static boolean isNativeX12(char paramChar)
  {
    return (isX12TermSep(paramChar)) || (paramChar == ' ') || ((paramChar >= '0') && (paramChar <= '9')) || ((paramChar >= 'A') && (paramChar <= 'Z'));
  }

  private static boolean isSpecialB256(char paramChar)
  {
    return false;
  }

  private static boolean isX12TermSep(char paramChar)
  {
    return (paramChar == '\r') || (paramChar == '*') || (paramChar == '>');
  }

  static int lookAheadTest(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    if (paramInt1 >= paramCharSequence.length())
      return paramInt2;
    float[] arrayOfFloat;
    int i;
    if (paramInt2 == 0)
    {
      arrayOfFloat = new float[] { 0.0F, 1.0F, 1.0F, 1.0F, 1.0F, 1.25F };
      i = 0;
    }
    label256: label274: label292: label310: int[] arrayOfInt1;
    label475: label509: 
    do
    {
      do
      {
        byte[] arrayOfByte1;
        int j;
        while (true)
        {
          if (paramInt1 + i == paramCharSequence.length())
          {
            byte[] arrayOfByte2 = new byte[6];
            int[] arrayOfInt2 = new int[6];
            int m = findMinimums(arrayOfFloat, arrayOfInt2, 2147483647, arrayOfByte2);
            int n = getMinimumCount(arrayOfByte2);
            if (arrayOfInt2[0] == m)
            {
              return 0;
              arrayOfFloat = new float[] { 1.0F, 2.0F, 2.0F, 2.0F, 2.0F, 2.25F };
              arrayOfFloat[paramInt2] = 0.0F;
              break;
            }
            if ((n == 1) && (arrayOfByte2[5] > 0))
              return 5;
            if ((n == 1) && (arrayOfByte2[4] > 0))
              return 4;
            if ((n == 1) && (arrayOfByte2[2] > 0))
              return 2;
            if ((n == 1) && (arrayOfByte2[3] > 0))
              return 3;
            return 1;
          }
          char c1 = paramCharSequence.charAt(paramInt1 + i);
          i++;
          if (isDigit(c1))
          {
            arrayOfFloat[0] = ((float)(0.5D + arrayOfFloat[0]));
            if (!isNativeC40(c1))
              break label475;
            arrayOfFloat[1] = (0.6666667F + arrayOfFloat[1]);
            if (!isNativeText(c1))
              break label509;
            arrayOfFloat[2] = (0.6666667F + arrayOfFloat[2]);
            if (!isNativeX12(c1))
              break label543;
            arrayOfFloat[3] = (0.6666667F + arrayOfFloat[3]);
            if (!isNativeEDIFACT(c1))
              break label577;
            arrayOfFloat[4] = (0.75F + arrayOfFloat[4]);
            if (!isSpecialB256(c1))
              break label611;
            arrayOfFloat[5] = (4.0F + arrayOfFloat[5]);
          }
          while (true)
          {
            if (i < 4)
              break label620;
            arrayOfInt1 = new int[6];
            arrayOfByte1 = new byte[6];
            findMinimums(arrayOfFloat, arrayOfInt1, 2147483647, arrayOfByte1);
            j = getMinimumCount(arrayOfByte1);
            if ((arrayOfInt1[0] >= arrayOfInt1[5]) || (arrayOfInt1[0] >= arrayOfInt1[1]) || (arrayOfInt1[0] >= arrayOfInt1[2]) || (arrayOfInt1[0] >= arrayOfInt1[3]) || (arrayOfInt1[0] >= arrayOfInt1[4]))
              break label622;
            return 0;
            if (isExtendedASCII(c1))
            {
              arrayOfFloat[0] = ((int)Math.ceil(arrayOfFloat[0]));
              arrayOfFloat[0] = (2.0F + arrayOfFloat[0]);
              break;
            }
            arrayOfFloat[0] = ((int)Math.ceil(arrayOfFloat[0]));
            arrayOfFloat[0] = (1.0F + arrayOfFloat[0]);
            break;
            if (isExtendedASCII(c1))
            {
              arrayOfFloat[1] = (2.666667F + arrayOfFloat[1]);
              break label256;
            }
            arrayOfFloat[1] = (1.333333F + arrayOfFloat[1]);
            break label256;
            if (isExtendedASCII(c1))
            {
              arrayOfFloat[2] = (2.666667F + arrayOfFloat[2]);
              break label274;
            }
            arrayOfFloat[2] = (1.333333F + arrayOfFloat[2]);
            break label274;
            if (isExtendedASCII(c1))
            {
              arrayOfFloat[3] = (4.333334F + arrayOfFloat[3]);
              break label292;
            }
            arrayOfFloat[3] = (3.333333F + arrayOfFloat[3]);
            break label292;
            if (isExtendedASCII(c1))
            {
              arrayOfFloat[4] = (4.25F + arrayOfFloat[4]);
              break label310;
            }
            arrayOfFloat[4] = (3.25F + arrayOfFloat[4]);
            break label310;
            arrayOfFloat[5] = (1.0F + arrayOfFloat[5]);
          }
        }
        if ((arrayOfInt1[5] < arrayOfInt1[0]) || (arrayOfByte1[1] + arrayOfByte1[2] + arrayOfByte1[3] + arrayOfByte1[4] == 0))
          return 5;
        if ((j == 1) && (arrayOfByte1[4] > 0))
          return 4;
        if ((j == 1) && (arrayOfByte1[2] > 0))
          return 2;
        if ((j == 1) && (arrayOfByte1[3] > 0))
          return 3;
      }
      while ((1 + arrayOfInt1[1] >= arrayOfInt1[0]) || (1 + arrayOfInt1[1] >= arrayOfInt1[5]) || (1 + arrayOfInt1[1] >= arrayOfInt1[4]) || (1 + arrayOfInt1[1] >= arrayOfInt1[2]));
      if (arrayOfInt1[1] < arrayOfInt1[3])
        return 1;
    }
    while (arrayOfInt1[1] != arrayOfInt1[3]);
    label543: label577: label611: label620: label622: for (int k = 1 + (paramInt1 + i); ; k++)
      if (k < paramCharSequence.length())
      {
        char c2 = paramCharSequence.charAt(k);
        if (isX12TermSep(c2))
          return 3;
        if (isNativeX12(c2));
      }
      else
      {
        return 1;
      }
  }

  private static char randomize253State(char paramChar, int paramInt)
  {
    int i = paramChar + (1 + paramInt * 149 % 253);
    if (i <= 254)
      return (char)i;
    return (char)(i - 254);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.datamatrix.encoder.HighLevelEncoder
 * JD-Core Version:    0.6.2
 */