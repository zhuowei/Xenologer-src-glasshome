package com.google.zxing.maxicode.decoder;

import com.google.zxing.common.DecoderResult;
import java.text.DecimalFormat;
import java.text.NumberFormat;

final class DecodedBitStreamParser
{
  private static final char ECI = '￺';
  private static final char FS = '\034';
  private static final char GS = '\035';
  private static final char LATCHA = '￷';
  private static final char LATCHB = '￸';
  private static final char LOCK = '￹';
  private static final NumberFormat NINE_DIGITS = new DecimalFormat("000000000");
  private static final char NS = '￻';
  private static final char PAD = '￼';
  private static final char RS = '\036';
  private static final String[] SETS = { "\nABCDEFGHIJKLMNOPQRSTUVWXYZ￺\034\035\036￻ ￼\"#$%&'()*+,-./0123456789:￱￲￳￴￸", "`abcdefghijklmnopqrstuvwxyz￺\034\035\036￻{￼}~;<=>?[\\]^_ ,./:@!|￼￵￶￼￰￲￳￴￷", "ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚ￺\034\035\036ÛÜÝÞßª¬±²³µ¹º¼½¾￷ ￹￳￴￸", "àáâãäåæçèéêëìíîïðñòóôõö÷øùú￺\034\035\036￻ûüýþÿ¡¨«¯°´·¸»¿￷ ￲￹￴￸", "", "" };
  private static final char SHIFTA = '￰';
  private static final char SHIFTB = '￱';
  private static final char SHIFTC = '￲';
  private static final char SHIFTD = '￳';
  private static final char SHIFTE = '￴';
  private static final char THREESHIFTA = '￶';
  private static final NumberFormat THREE_DIGITS = new DecimalFormat("000");
  private static final char TWOSHIFTA = '￵';

  static DecoderResult decode(byte[] paramArrayOfByte, int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder(144);
    switch (paramInt)
    {
    default:
    case 2:
    case 3:
    case 4:
    case 5:
    }
    while (true)
    {
      return new DecoderResult(paramArrayOfByte, localStringBuilder.toString(), null, String.valueOf(paramInt));
      int i;
      if (paramInt == 2)
        i = getPostCode2(paramArrayOfByte);
      String str2;
      String str3;
      for (String str1 = new DecimalFormat("0000000000".substring(0, getPostCode2Length(paramArrayOfByte))).format(i); ; str1 = getPostCode3(paramArrayOfByte))
      {
        str2 = THREE_DIGITS.format(getCountry(paramArrayOfByte));
        str3 = THREE_DIGITS.format(getServiceClass(paramArrayOfByte));
        localStringBuilder.append(getMessage(paramArrayOfByte, 10, 84));
        if (!localStringBuilder.toString().startsWith("[)>\03601\035"))
          break label208;
        localStringBuilder.insert(9, str1 + '\035' + str2 + '\035' + str3 + '\035');
        break;
      }
      label208: localStringBuilder.insert(0, str1 + '\035' + str2 + '\035' + str3 + '\035');
      continue;
      localStringBuilder.append(getMessage(paramArrayOfByte, 1, 93));
      continue;
      localStringBuilder.append(getMessage(paramArrayOfByte, 1, 77));
    }
  }

  private static int getBit(int paramInt, byte[] paramArrayOfByte)
  {
    int i = 1;
    int j = paramInt - 1;
    if ((paramArrayOfByte[(j / 6)] & i << 5 - j % 6) == 0)
      i = 0;
    return i;
  }

  private static int getCountry(byte[] paramArrayOfByte)
  {
    return getInt(paramArrayOfByte, new byte[] { 53, 54, 43, 44, 45, 46, 47, 48, 37, 38 });
  }

  private static int getInt(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int i = 0;
    for (int j = 0; j < paramArrayOfByte2.length; j++)
      i += (getBit(paramArrayOfByte2[j], paramArrayOfByte1) << -1 + (paramArrayOfByte2.length - j));
    return i;
  }

  private static String getMessage(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = -1;
    int j = 0;
    int k = 0;
    int m = paramInt1;
    if (m < paramInt1 + paramInt2)
    {
      int n = SETS[j].charAt(paramArrayOfByte[m]);
      int i1;
      switch (n)
      {
      case 65530:
      default:
        localStringBuilder.append(n);
        i1 = i;
      case 65527:
      case 65528:
      case 65520:
      case 65521:
      case 65522:
      case 65523:
      case 65524:
      case 65525:
      case 65526:
      case 65531:
      case 65529:
      }
      while (true)
      {
        i = i1 - 1;
        if (i1 == 0)
          j = k;
        m++;
        break;
        i1 = -1;
        j = 0;
        continue;
        j = 1;
        i1 = -1;
        continue;
        k = j;
        j = n - 65520;
        i1 = 1;
        continue;
        k = j;
        i1 = 2;
        j = 0;
        continue;
        k = j;
        i1 = 3;
        j = 0;
        continue;
        int i2 = m + 1;
        int i3 = paramArrayOfByte[i2] << 24;
        int i4 = i2 + 1;
        int i5 = i3 + (paramArrayOfByte[i4] << 18);
        int i6 = i4 + 1;
        int i7 = i5 + (paramArrayOfByte[i6] << 12);
        int i8 = i6 + 1;
        int i9 = i7 + (paramArrayOfByte[i8] << 6);
        m = i8 + 1;
        int i10 = i9 + paramArrayOfByte[m];
        localStringBuilder.append(NINE_DIGITS.format(i10));
        i1 = i;
        continue;
        i1 = -1;
      }
    }
    while ((localStringBuilder.length() > 0) && (localStringBuilder.charAt(-1 + localStringBuilder.length()) == 65532))
      localStringBuilder.setLength(-1 + localStringBuilder.length());
    return localStringBuilder.toString();
  }

  private static int getPostCode2(byte[] paramArrayOfByte)
  {
    return getInt(paramArrayOfByte, new byte[] { 33, 34, 35, 36, 25, 26, 27, 28, 29, 30, 19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 17, 18, 7, 8, 9, 10, 11, 12, 1, 2 });
  }

  private static int getPostCode2Length(byte[] paramArrayOfByte)
  {
    return getInt(paramArrayOfByte, new byte[] { 39, 40, 41, 42, 31, 32 });
  }

  private static String getPostCode3(byte[] paramArrayOfByte)
  {
    char[] arrayOfChar = new char[6];
    arrayOfChar[0] = SETS[0].charAt(getInt(paramArrayOfByte, new byte[] { 39, 40, 41, 42, 31, 32 }));
    arrayOfChar[1] = SETS[0].charAt(getInt(paramArrayOfByte, new byte[] { 33, 34, 35, 36, 25, 26 }));
    arrayOfChar[2] = SETS[0].charAt(getInt(paramArrayOfByte, new byte[] { 27, 28, 29, 30, 19, 20 }));
    arrayOfChar[3] = SETS[0].charAt(getInt(paramArrayOfByte, new byte[] { 21, 22, 23, 24, 13, 14 }));
    arrayOfChar[4] = SETS[0].charAt(getInt(paramArrayOfByte, new byte[] { 15, 16, 17, 18, 7, 8 }));
    arrayOfChar[5] = SETS[0].charAt(getInt(paramArrayOfByte, new byte[] { 9, 10, 11, 12, 1, 2 }));
    return String.valueOf(arrayOfChar);
  }

  private static int getServiceClass(byte[] paramArrayOfByte)
  {
    return getInt(paramArrayOfByte, new byte[] { 55, 56, 57, 58, 59, 60, 49, 50, 51, 52 });
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.maxicode.decoder.DecodedBitStreamParser
 * JD-Core Version:    0.6.2
 */