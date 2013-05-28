package com.google.zxing.datamatrix.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.common.BitSource;
import com.google.zxing.common.DecoderResult;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

final class DecodedBitStreamParser
{
  private static final char[] C40_BASIC_SET_CHARS = { 42, 42, 42, 32, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90 };
  private static final char[] C40_SHIFT2_SET_CHARS = { 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 58, 59, 60, 61, 62, 63, 64, 91, 92, 93, 94, 95 };
  private static final char[] TEXT_BASIC_SET_CHARS = { 42, 42, 42, 32, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122 };
  private static final char[] TEXT_SHIFT3_SET_CHARS = { 39, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 123, 124, 125, 126, 127 };

  static DecoderResult decode(byte[] paramArrayOfByte)
    throws FormatException
  {
    BitSource localBitSource = new BitSource(paramArrayOfByte);
    StringBuilder localStringBuilder1 = new StringBuilder(100);
    StringBuilder localStringBuilder2 = new StringBuilder(0);
    ArrayList localArrayList = new ArrayList(1);
    Mode localMode = Mode.ASCII_ENCODE;
    while (localMode == Mode.ASCII_ENCODE)
    {
      localMode = decodeAsciiSegment(localBitSource, localStringBuilder1, localStringBuilder2);
      if ((localMode == Mode.PAD_ENCODE) || (localBitSource.available() <= 0))
      {
        if (localStringBuilder2.length() > 0)
          localStringBuilder1.append(localStringBuilder2.toString());
        String str = localStringBuilder1.toString();
        if (localArrayList.isEmpty())
          localArrayList = null;
        return new DecoderResult(paramArrayOfByte, str, localArrayList, null);
      }
    }
    switch (1.$SwitchMap$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode[localMode.ordinal()])
    {
    default:
      throw FormatException.getFormatInstance();
    case 1:
      decodeC40Segment(localBitSource, localStringBuilder1);
    case 2:
    case 3:
    case 4:
    case 5:
    }
    while (true)
    {
      localMode = Mode.ASCII_ENCODE;
      break;
      decodeTextSegment(localBitSource, localStringBuilder1);
      continue;
      decodeAnsiX12Segment(localBitSource, localStringBuilder1);
      continue;
      decodeEdifactSegment(localBitSource, localStringBuilder1);
      continue;
      decodeBase256Segment(localBitSource, localStringBuilder1, localArrayList);
    }
  }

  private static void decodeAnsiX12Segment(BitSource paramBitSource, StringBuilder paramStringBuilder)
    throws FormatException
  {
    int[] arrayOfInt = new int[3];
    label162: 
    do
    {
      if (paramBitSource.available() == 8);
      int i;
      do
      {
        return;
        i = paramBitSource.readBits(8);
      }
      while (i == 254);
      parseTwoBytes(i, paramBitSource.readBits(8), arrayOfInt);
      int j = 0;
      if (j < 3)
      {
        int k = arrayOfInt[j];
        if (k == 0)
          paramStringBuilder.append('\r');
        while (true)
        {
          j++;
          break;
          if (k == 1)
          {
            paramStringBuilder.append('*');
          }
          else if (k == 2)
          {
            paramStringBuilder.append('>');
          }
          else if (k == 3)
          {
            paramStringBuilder.append(' ');
          }
          else if (k < 14)
          {
            paramStringBuilder.append((char)(k + 44));
          }
          else
          {
            if (k >= 40)
              break label162;
            paramStringBuilder.append((char)(k + 51));
          }
        }
        throw FormatException.getFormatInstance();
      }
    }
    while (paramBitSource.available() > 0);
  }

  private static Mode decodeAsciiSegment(BitSource paramBitSource, StringBuilder paramStringBuilder1, StringBuilder paramStringBuilder2)
    throws FormatException
  {
    int j;
    label234: 
    do
    {
      int i = 0;
      while (true)
      {
        j = paramBitSource.readBits(8);
        if (j == 0)
          throw FormatException.getFormatInstance();
        if (j <= 128)
        {
          if (i != 0)
            j += 128;
          paramStringBuilder1.append((char)(j - 1));
          return Mode.ASCII_ENCODE;
        }
        if (j == 129)
          return Mode.PAD_ENCODE;
        if (j <= 229)
        {
          int k = j - 130;
          if (k < 10)
            paramStringBuilder1.append('0');
          paramStringBuilder1.append(k);
        }
        while (paramBitSource.available() <= 0)
        {
          return Mode.ASCII_ENCODE;
          if (j == 230)
            return Mode.C40_ENCODE;
          if (j == 231)
            return Mode.BASE256_ENCODE;
          if (j == 232)
            paramStringBuilder1.append('\035');
          else if ((j != 233) && (j != 234))
            if (j == 235)
            {
              i = 1;
            }
            else if (j == 236)
            {
              paramStringBuilder1.append("[)>\03605\035");
              paramStringBuilder2.insert(0, "\036\004");
            }
            else
            {
              if (j != 237)
                break label234;
              paramStringBuilder1.append("[)>\03606\035");
              paramStringBuilder2.insert(0, "\036\004");
            }
        }
      }
      if (j == 238)
        return Mode.ANSIX12_ENCODE;
      if (j == 239)
        return Mode.TEXT_ENCODE;
      if (j == 240)
        return Mode.EDIFACT_ENCODE;
    }
    while ((j == 241) || (j < 242) || ((j == 254) && (paramBitSource.available() == 0)));
    throw FormatException.getFormatInstance();
  }

  private static void decodeBase256Segment(BitSource paramBitSource, StringBuilder paramStringBuilder, Collection<byte[]> paramCollection)
    throws FormatException
  {
    int i = 1 + paramBitSource.getByteOffset();
    int j = paramBitSource.readBits(8);
    int k = i + 1;
    int m = unrandomize255State(j, i);
    int i3;
    int i2;
    if (m == 0)
    {
      i3 = paramBitSource.available() / 8;
      i2 = k;
    }
    while (i3 < 0)
    {
      throw FormatException.getFormatInstance();
      if (m < 250)
      {
        i3 = m;
        i2 = k;
      }
      else
      {
        int n = 250 * (m - 249);
        int i1 = paramBitSource.readBits(8);
        i2 = k + 1;
        i3 = n + unrandomize255State(i1, k);
      }
    }
    byte[] arrayOfByte = new byte[i3];
    int i4 = 0;
    int i7;
    for (int i5 = i2; i4 < i3; i5 = i7)
    {
      if (paramBitSource.available() < 8)
        throw FormatException.getFormatInstance();
      int i6 = paramBitSource.readBits(8);
      i7 = i5 + 1;
      arrayOfByte[i4] = ((byte)unrandomize255State(i6, i5));
      i4++;
    }
    paramCollection.add(arrayOfByte);
    try
    {
      paramStringBuilder.append(new String(arrayOfByte, "ISO8859_1"));
      return;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new IllegalStateException("Platform does not support required encoding: " + localUnsupportedEncodingException);
    }
  }

  private static void decodeC40Segment(BitSource paramBitSource, StringBuilder paramStringBuilder)
    throws FormatException
  {
    int i = 0;
    int[] arrayOfInt = new int[3];
    int j = 0;
    label166: 
    do
    {
      if (paramBitSource.available() == 8);
      int k;
      do
      {
        return;
        k = paramBitSource.readBits(8);
      }
      while (k == 254);
      parseTwoBytes(k, paramBitSource.readBits(8), arrayOfInt);
      int m = 0;
      if (m < 3)
      {
        int n = arrayOfInt[m];
        switch (j)
        {
        default:
          throw FormatException.getFormatInstance();
        case 0:
          if (n < 3)
            j = n + 1;
          while (true)
          {
            m++;
            break;
            if (n >= C40_BASIC_SET_CHARS.length)
              break label166;
            char c2 = C40_BASIC_SET_CHARS[n];
            if (i != 0)
            {
              paramStringBuilder.append((char)(c2 + ''));
              i = 0;
            }
            else
            {
              paramStringBuilder.append(c2);
            }
          }
          throw FormatException.getFormatInstance();
        case 1:
          if (i != 0)
          {
            paramStringBuilder.append((char)(n + 128));
            i = 0;
          }
          while (true)
          {
            j = 0;
            break;
            paramStringBuilder.append((char)n);
          }
        case 2:
          char c1;
          if (n < C40_SHIFT2_SET_CHARS.length)
          {
            c1 = C40_SHIFT2_SET_CHARS[n];
            if (i != 0)
            {
              paramStringBuilder.append((char)(c1 + ''));
              i = 0;
            }
          }
          while (true)
          {
            j = 0;
            break;
            paramStringBuilder.append(c1);
            continue;
            if (n == 27)
            {
              paramStringBuilder.append('\035');
            }
            else
            {
              if (n != 30)
                break label285;
              i = 1;
            }
          }
          throw FormatException.getFormatInstance();
        case 3:
        }
        if (i != 0)
        {
          paramStringBuilder.append((char)(n + 224));
          i = 0;
        }
        while (true)
        {
          j = 0;
          break;
          paramStringBuilder.append((char)(n + 96));
        }
      }
    }
    while (paramBitSource.available() > 0);
    label285:
  }

  private static void decodeEdifactSegment(BitSource paramBitSource, StringBuilder paramStringBuilder)
  {
    label79: 
    do
    {
      if (paramBitSource.available() <= 16)
        return;
      for (int i = 0; ; i++)
      {
        if (i >= 4)
          break label79;
        int j = paramBitSource.readBits(6);
        if (j == 31)
        {
          int k = 8 - paramBitSource.getBitOffset();
          if (k == 8)
            break;
          paramBitSource.readBits(k);
          return;
        }
        if ((j & 0x20) == 0)
          j |= 64;
        paramStringBuilder.append((char)j);
      }
    }
    while (paramBitSource.available() > 0);
  }

  private static void decodeTextSegment(BitSource paramBitSource, StringBuilder paramStringBuilder)
    throws FormatException
  {
    int i = 0;
    int[] arrayOfInt = new int[3];
    int j = 0;
    label166: 
    do
    {
      if (paramBitSource.available() == 8);
      int k;
      do
      {
        return;
        k = paramBitSource.readBits(8);
      }
      while (k == 254);
      parseTwoBytes(k, paramBitSource.readBits(8), arrayOfInt);
      int m = 0;
      if (m < 3)
      {
        int n = arrayOfInt[m];
        switch (j)
        {
        default:
          throw FormatException.getFormatInstance();
        case 0:
          if (n < 3)
            j = n + 1;
          while (true)
          {
            m++;
            break;
            if (n >= TEXT_BASIC_SET_CHARS.length)
              break label166;
            char c3 = TEXT_BASIC_SET_CHARS[n];
            if (i != 0)
            {
              paramStringBuilder.append((char)(c3 + ''));
              i = 0;
            }
            else
            {
              paramStringBuilder.append(c3);
            }
          }
          throw FormatException.getFormatInstance();
        case 1:
          if (i != 0)
          {
            paramStringBuilder.append((char)(n + 128));
            i = 0;
          }
          while (true)
          {
            j = 0;
            break;
            paramStringBuilder.append((char)n);
          }
        case 2:
          char c2;
          if (n < C40_SHIFT2_SET_CHARS.length)
          {
            c2 = C40_SHIFT2_SET_CHARS[n];
            if (i != 0)
            {
              paramStringBuilder.append((char)(c2 + ''));
              i = 0;
            }
          }
          while (true)
          {
            j = 0;
            break;
            paramStringBuilder.append(c2);
            continue;
            if (n == 27)
            {
              paramStringBuilder.append('\035');
            }
            else
            {
              if (n != 30)
                break label285;
              i = 1;
            }
          }
          throw FormatException.getFormatInstance();
        case 3:
        }
        if (n < TEXT_SHIFT3_SET_CHARS.length)
        {
          char c1 = TEXT_SHIFT3_SET_CHARS[n];
          if (i != 0)
          {
            paramStringBuilder.append((char)(c1 + ''));
            i = 0;
          }
          while (true)
          {
            j = 0;
            break;
            paramStringBuilder.append(c1);
          }
        }
        throw FormatException.getFormatInstance();
      }
    }
    while (paramBitSource.available() > 0);
    label285:
  }

  private static void parseTwoBytes(int paramInt1, int paramInt2, int[] paramArrayOfInt)
  {
    int i = -1 + (paramInt2 + (paramInt1 << 8));
    int j = i / 1600;
    paramArrayOfInt[0] = j;
    int k = i - j * 1600;
    int m = k / 40;
    paramArrayOfInt[1] = m;
    paramArrayOfInt[2] = (k - m * 40);
  }

  private static int unrandomize255State(int paramInt1, int paramInt2)
  {
    int i = paramInt1 - (1 + paramInt2 * 149 % 255);
    if (i >= 0)
      return i;
    return i + 256;
  }

  private static enum Mode
  {
    static
    {
      ASCII_ENCODE = new Mode("ASCII_ENCODE", 1);
      C40_ENCODE = new Mode("C40_ENCODE", 2);
      TEXT_ENCODE = new Mode("TEXT_ENCODE", 3);
      ANSIX12_ENCODE = new Mode("ANSIX12_ENCODE", 4);
      EDIFACT_ENCODE = new Mode("EDIFACT_ENCODE", 5);
      BASE256_ENCODE = new Mode("BASE256_ENCODE", 6);
      Mode[] arrayOfMode = new Mode[7];
      arrayOfMode[0] = PAD_ENCODE;
      arrayOfMode[1] = ASCII_ENCODE;
      arrayOfMode[2] = C40_ENCODE;
      arrayOfMode[3] = TEXT_ENCODE;
      arrayOfMode[4] = ANSIX12_ENCODE;
      arrayOfMode[5] = EDIFACT_ENCODE;
      arrayOfMode[6] = BASE256_ENCODE;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.datamatrix.decoder.DecodedBitStreamParser
 * JD-Core Version:    0.6.2
 */