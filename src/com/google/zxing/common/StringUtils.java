package com.google.zxing.common;

import com.google.zxing.DecodeHintType;
import java.util.Map;

public final class StringUtils
{
  private static final boolean ASSUME_SHIFT_JIS = false;
  private static final String EUC_JP = "EUC_JP";
  public static final String GB2312 = "GB2312";
  private static final String ISO88591 = "ISO8859_1";
  private static final String PLATFORM_DEFAULT_ENCODING = System.getProperty("file.encoding");
  public static final String SHIFT_JIS = "SJIS";
  private static final String UTF8 = "UTF8";

  static
  {
    if (("SJIS".equalsIgnoreCase(PLATFORM_DEFAULT_ENCODING)) || ("EUC_JP".equalsIgnoreCase(PLATFORM_DEFAULT_ENCODING)));
    for (boolean bool = true; ; bool = false)
    {
      ASSUME_SHIFT_JIS = bool;
      return;
    }
  }

  public static String guessEncoding(byte[] paramArrayOfByte, Map<DecodeHintType, ?> paramMap)
  {
    if (paramMap != null)
    {
      String str2 = (String)paramMap.get(DecodeHintType.CHARACTER_SET);
      if (str2 != null)
        return str2;
    }
    int i = paramArrayOfByte.length;
    int j = 1;
    int k = 1;
    int m = 1;
    int n = 0;
    int i1 = 0;
    int i2 = 0;
    int i3 = 0;
    int i4 = 0;
    int i5 = 0;
    int i6 = 0;
    int i7 = 0;
    int i8 = 0;
    int i9 = 0;
    int i10 = 0;
    int i11;
    int i12;
    label106: int i13;
    if ((paramArrayOfByte.length > 3) && (paramArrayOfByte[0] == -17) && (paramArrayOfByte[1] == -69) && (paramArrayOfByte[2] == -65))
    {
      i11 = 1;
      i12 = 0;
      if ((i12 >= i) || ((j == 0) && (k == 0) && (m == 0)))
        break label470;
      i13 = 0xFF & paramArrayOfByte[i12];
      if (m != 0)
      {
        if (n <= 0)
          break label232;
        if ((i13 & 0x80) != 0)
          break label226;
        m = 0;
      }
      label158: if (j != 0)
      {
        if ((i13 <= 127) || (i13 >= 160))
          break label312;
        j = 0;
      }
      label179: if (k != 0)
      {
        if (i4 <= 0)
          break label356;
        if ((i13 >= 64) && (i13 != 127) && (i13 <= 252))
          break label350;
        k = 0;
      }
    }
    while (true)
    {
      i12++;
      break label106;
      i11 = 0;
      break;
      label226: n--;
      break label158;
      label232: if ((i13 & 0x80) == 0)
        break label158;
      if ((i13 & 0x40) == 0)
      {
        m = 0;
        break label158;
      }
      n++;
      if ((i13 & 0x20) == 0)
      {
        i1++;
        break label158;
      }
      n++;
      if ((i13 & 0x10) == 0)
      {
        i2++;
        break label158;
      }
      n++;
      if ((i13 & 0x8) == 0)
      {
        i3++;
        break label158;
      }
      m = 0;
      break label158;
      label312: if ((i13 <= 159) || ((i13 >= 192) && (i13 != 215) && (i13 != 247)))
        break label179;
      i10++;
      break label179;
      label350: i4--;
      continue;
      label356: if ((i13 == 128) || (i13 == 160) || (i13 > 239))
      {
        k = 0;
      }
      else if ((i13 > 160) && (i13 < 224))
      {
        i5++;
        i6++;
        i7 = 0;
        if (i6 > i8)
        {
          i8 = i6;
          i7 = 0;
        }
      }
      else if (i13 > 127)
      {
        i4++;
        i7++;
        i6 = 0;
        if (i7 > i9)
        {
          i9 = i7;
          i6 = 0;
        }
      }
      else
      {
        i7 = 0;
        i6 = 0;
      }
    }
    label470: if ((m != 0) && (n > 0))
      m = 0;
    if ((k != 0) && (i4 > 0))
      k = 0;
    if ((m != 0) && ((i11 != 0) || (i3 + (i1 + i2) > 0)))
      return "UTF8";
    if ((k != 0) && ((ASSUME_SHIFT_JIS) || (i8 >= 3) || (i9 >= 3)))
      return "SJIS";
    if ((j != 0) && (k != 0))
    {
      if (((i8 == 2) && (i5 == 2)) || (i10 * 10 >= i));
      for (String str1 = "SJIS"; ; str1 = "ISO8859_1")
        return str1;
    }
    if (j != 0)
      return "ISO8859_1";
    if (k != 0)
      return "SJIS";
    if (m != 0)
      return "UTF8";
    return PLATFORM_DEFAULT_ENCODING;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.common.StringUtils
 * JD-Core Version:    0.6.2
 */