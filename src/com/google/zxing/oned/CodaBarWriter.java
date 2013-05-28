package com.google.zxing.oned;

import java.util.Arrays;

public final class CodaBarWriter extends OneDimensionalCodeWriter
{
  private static final char[] END_CHARS = { 84, 78, 42, 69 };
  private static final char[] START_CHARS = { 65, 66, 67, 68 };

  public boolean[] encode(String paramString)
  {
    if (!CodaBarReader.arrayContains(START_CHARS, Character.toUpperCase(paramString.charAt(0))))
      throw new IllegalArgumentException("Codabar should start with one of the following: " + Arrays.toString(START_CHARS));
    if (!CodaBarReader.arrayContains(END_CHARS, Character.toUpperCase(paramString.charAt(-1 + paramString.length()))))
      throw new IllegalArgumentException("Codabar should end with one of the following: " + Arrays.toString(END_CHARS));
    int i = 20;
    char[] arrayOfChar = { 47, 58, 43, 46 };
    int j = 1;
    if (j < -1 + paramString.length())
    {
      if ((Character.isDigit(paramString.charAt(j))) || (paramString.charAt(j) == '-') || (paramString.charAt(j) == '$'))
        i += 9;
      while (true)
      {
        j++;
        break;
        if (!CodaBarReader.arrayContains(arrayOfChar, paramString.charAt(j)))
          break label206;
        i += 10;
      }
      label206: throw new IllegalArgumentException("Cannot encode : '" + paramString.charAt(j) + '\'');
    }
    boolean[] arrayOfBoolean = new boolean[i + (-1 + paramString.length())];
    int k = 0;
    for (int m = 0; m < paramString.length(); m++)
    {
      int n = Character.toUpperCase(paramString.charAt(m));
      if (m == -1 + paramString.length());
      int i1;
      label339: int i3;
      int i4;
      int i5;
      int i6;
      switch (n)
      {
      default:
        i1 = 0;
        int i2 = CodaBarReader.ALPHABET.length;
        i3 = 0;
        if (i1 < i2)
        {
          if (n == CodaBarReader.ALPHABET[i1])
            i3 = CodaBarReader.CHARACTER_ENCODINGS[i1];
        }
        else
        {
          i4 = 1;
          i5 = 0;
          i6 = 0;
        }
        break;
      case 84:
      case 78:
      case 42:
      case 69:
      }
      while (true)
      {
        label383: if (i6 >= 7)
          break label482;
        arrayOfBoolean[k] = i4;
        k++;
        if (((0x1 & i3 >> 6 - i6) == 0) || (i5 == 1))
        {
          if (i4 == 0);
          for (i4 = 1; ; i4 = 0)
          {
            i6++;
            i5 = 0;
            break label383;
            n = 65;
            break;
            n = 66;
            break;
            n = 67;
            break;
            n = 68;
            break;
            i1++;
            break label339;
          }
        }
        i5++;
      }
      label482: if (m < -1 + paramString.length())
      {
        arrayOfBoolean[k] = false;
        k++;
      }
    }
    return arrayOfBoolean;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.CodaBarWriter
 * JD-Core Version:    0.6.2
 */