package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

public final class Code128Writer extends OneDimensionalCodeWriter
{
  private static final int CODE_CODE_B = 100;
  private static final int CODE_CODE_C = 99;
  private static final int CODE_FNC_1 = 102;
  private static final int CODE_FNC_2 = 97;
  private static final int CODE_FNC_3 = 96;
  private static final int CODE_FNC_4_B = 100;
  private static final int CODE_START_B = 104;
  private static final int CODE_START_C = 105;
  private static final int CODE_STOP = 106;
  private static final char ESCAPE_FNC_1 = 'ñ';
  private static final char ESCAPE_FNC_2 = 'ò';
  private static final char ESCAPE_FNC_3 = 'ó';
  private static final char ESCAPE_FNC_4 = 'ô';

  private static boolean isDigits(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    int i = paramInt1 + paramInt2;
    int j = paramCharSequence.length();
    int k = paramInt1;
    if ((k < i) && (k < j))
    {
      m = paramCharSequence.charAt(k);
      if ((m < 48) || (m > 57))
        if (m == 241);
    }
    while (i > j)
    {
      int m;
      return false;
      i++;
      k++;
      break;
    }
    return true;
  }

  public BitMatrix encode(String paramString, BarcodeFormat paramBarcodeFormat, int paramInt1, int paramInt2, Map<EncodeHintType, ?> paramMap)
    throws WriterException
  {
    if (paramBarcodeFormat != BarcodeFormat.CODE_128)
      throw new IllegalArgumentException("Can only encode CODE_128, but got " + paramBarcodeFormat);
    return super.encode(paramString, paramBarcodeFormat, paramInt1, paramInt2, paramMap);
  }

  public boolean[] encode(String paramString)
  {
    int i = paramString.length();
    if ((i < 1) || (i > 80))
      throw new IllegalArgumentException("Contents length should be between 1 and 80 characters, but got " + i);
    for (int j = 0; j < i; j++)
    {
      char c = paramString.charAt(j);
      if ((c < ' ') || (c > '~'))
        switch (c)
        {
        default:
          throw new IllegalArgumentException("Bad character in input: " + c);
        case 'ñ':
        case 'ò':
        case 'ó':
        case 'ô':
        }
    }
    ArrayList localArrayList = new ArrayList();
    int k = 0;
    int m = 1;
    int n = 0;
    int i1 = 0;
    if (i1 < i)
    {
      int i7;
      label175: int i8;
      label190: int i9;
      if (n == 99)
      {
        i7 = 2;
        if (!isDigits(paramString, i1, i7))
          break label259;
        i8 = 99;
        if (i8 != n)
          break label369;
        if (n != 100)
          break label266;
        i9 = '\0,0' + paramString.charAt(i1);
        i1++;
      }
      while (true)
      {
        localArrayList.add(Code128Reader.CODE_PATTERNS[i9]);
        k += i9 * m;
        if (i1 == 0)
          break;
        m++;
        break;
        i7 = 4;
        break label175;
        label259: i8 = 100;
        break label190;
        label266: switch (paramString.charAt(i1))
        {
        default:
          int i10 = i1 + 2;
          i9 = Integer.parseInt(paramString.substring(i1, i10));
          i1 += 2;
          break;
        case 'ñ':
          i9 = 102;
          i1++;
          break;
        case 'ò':
          i9 = 97;
          i1++;
          break;
        case 'ó':
          i9 = 96;
          i1++;
          break;
        case 'ô':
          i9 = 100;
          i1++;
        }
      }
      label369: if (n == 0)
        if (i8 == 100)
          i9 = 104;
      while (true)
      {
        n = i8;
        break;
        i9 = 105;
        continue;
        i9 = i8;
      }
    }
    int i2 = k % 103;
    localArrayList.add(Code128Reader.CODE_PATTERNS[i2]);
    localArrayList.add(Code128Reader.CODE_PATTERNS[106]);
    int i3 = 0;
    Iterator localIterator1 = localArrayList.iterator();
    while (localIterator1.hasNext())
    {
      int[] arrayOfInt2 = (int[])localIterator1.next();
      int i5 = arrayOfInt2.length;
      for (int i6 = 0; i6 < i5; i6++)
        i3 += arrayOfInt2[i6];
    }
    boolean[] arrayOfBoolean = new boolean[i3];
    int i4 = 0;
    Iterator localIterator2 = localArrayList.iterator();
    while (localIterator2.hasNext())
    {
      int[] arrayOfInt1 = (int[])localIterator2.next();
      i4 += appendPattern(arrayOfBoolean, i4, arrayOfInt1, true);
    }
    return arrayOfBoolean;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.Code128Writer
 * JD-Core Version:    0.6.2
 */