package com.google.zxing.datamatrix.encoder;

class C40Encoder
  implements Encoder
{
  private int backtrackOneCharacter(EncoderContext paramEncoderContext, StringBuilder paramStringBuilder1, StringBuilder paramStringBuilder2, int paramInt)
  {
    int i = paramStringBuilder1.length();
    paramStringBuilder1.delete(i - paramInt, i);
    paramEncoderContext.pos = (-1 + paramEncoderContext.pos);
    int j = encodeChar(paramEncoderContext.getCurrentChar(), paramStringBuilder2);
    paramEncoderContext.resetSymbolInfo();
    return j;
  }

  private static String encodeToCodewords(CharSequence paramCharSequence, int paramInt)
  {
    int i = paramCharSequence.charAt(paramInt);
    int j = paramCharSequence.charAt(paramInt + 1);
    int k = 1 + (paramCharSequence.charAt(paramInt + 2) + (i * 1600 + j * 40));
    return new String(new char[] { (char)(k / 256), (char)(k % 256) });
  }

  static void writeNextTriplet(EncoderContext paramEncoderContext, StringBuilder paramStringBuilder)
  {
    paramEncoderContext.writeCodewords(encodeToCodewords(paramStringBuilder, 0));
    paramStringBuilder.delete(0, 3);
  }

  public void encode(EncoderContext paramEncoderContext)
  {
    StringBuilder localStringBuilder1 = new StringBuilder();
    while (paramEncoderContext.hasMoreCharacters())
    {
      char c = paramEncoderContext.getCurrentChar();
      paramEncoderContext.pos = (1 + paramEncoderContext.pos);
      int i = encodeChar(c, localStringBuilder1);
      int j = 2 * (localStringBuilder1.length() / 3) + paramEncoderContext.getCodewordCount();
      paramEncoderContext.updateSymbolInfo(j);
      int k = paramEncoderContext.symbolInfo.dataCapacity - j;
      if (!paramEncoderContext.hasMoreCharacters())
      {
        StringBuilder localStringBuilder2 = new StringBuilder();
        if ((localStringBuilder1.length() % 3 == 2) && ((k < 2) || (k > 2)));
        for (i = backtrackOneCharacter(paramEncoderContext, localStringBuilder1, localStringBuilder2, i); (localStringBuilder1.length() % 3 == 1) && (((i <= 3) && (k != 1)) || (i > 3)); i = backtrackOneCharacter(paramEncoderContext, localStringBuilder1, localStringBuilder2, i));
      }
      if (localStringBuilder1.length() % 3 == 0)
      {
        int m = HighLevelEncoder.lookAheadTest(paramEncoderContext.msg, paramEncoderContext.pos, getEncodingMode());
        if (m != getEncodingMode())
          paramEncoderContext.signalEncoderChange(m);
      }
    }
    handleEOD(paramEncoderContext, localStringBuilder1);
  }

  int encodeChar(char paramChar, StringBuilder paramStringBuilder)
  {
    if (paramChar == ' ')
    {
      paramStringBuilder.append('\003');
      return 1;
    }
    if ((paramChar >= '0') && (paramChar <= '9'))
    {
      paramStringBuilder.append((char)(4 + (paramChar - '0')));
      return 1;
    }
    if ((paramChar >= 'A') && (paramChar <= 'Z'))
    {
      paramStringBuilder.append((char)(14 + (paramChar - 'A')));
      return 1;
    }
    if ((paramChar >= 0) && (paramChar <= '\037'))
    {
      paramStringBuilder.append('\000');
      paramStringBuilder.append(paramChar);
      return 2;
    }
    if ((paramChar >= '!') && (paramChar <= '/'))
    {
      paramStringBuilder.append('\001');
      paramStringBuilder.append((char)(paramChar - '!'));
      return 2;
    }
    if ((paramChar >= ':') && (paramChar <= '@'))
    {
      paramStringBuilder.append('\001');
      paramStringBuilder.append((char)(15 + (paramChar - ':')));
      return 2;
    }
    if ((paramChar >= '[') && (paramChar <= '_'))
    {
      paramStringBuilder.append('\001');
      paramStringBuilder.append((char)(22 + (paramChar - '[')));
      return 2;
    }
    if ((paramChar >= '`') && (paramChar <= ''))
    {
      paramStringBuilder.append('\002');
      paramStringBuilder.append((char)(paramChar - '`'));
      return 2;
    }
    if (paramChar >= '')
    {
      paramStringBuilder.append("\001\036");
      return 2 + encodeChar((char)(paramChar - ''), paramStringBuilder);
    }
    throw new IllegalArgumentException("Illegal character: " + paramChar);
  }

  public int getEncodingMode()
  {
    return 1;
  }

  void handleEOD(EncoderContext paramEncoderContext, StringBuilder paramStringBuilder)
  {
    int i = 2 * (paramStringBuilder.length() / 3);
    int j = paramStringBuilder.length() % 3;
    int k = i + paramEncoderContext.getCodewordCount();
    paramEncoderContext.updateSymbolInfo(k);
    int m = paramEncoderContext.symbolInfo.dataCapacity - k;
    if (j == 2)
    {
      paramStringBuilder.append('\000');
      while (paramStringBuilder.length() >= 3)
        writeNextTriplet(paramEncoderContext, paramStringBuilder);
      if (paramEncoderContext.hasMoreCharacters())
        paramEncoderContext.writeCodeword('þ');
    }
    while (true)
    {
      paramEncoderContext.signalEncoderChange(0);
      return;
      if ((m == 1) && (j == 1))
      {
        while (paramStringBuilder.length() >= 3)
          writeNextTriplet(paramEncoderContext, paramStringBuilder);
        if (paramEncoderContext.hasMoreCharacters())
          paramEncoderContext.writeCodeword('þ');
        paramEncoderContext.pos = (-1 + paramEncoderContext.pos);
      }
      else
      {
        if (j != 0)
          break;
        while (paramStringBuilder.length() >= 3)
          writeNextTriplet(paramEncoderContext, paramStringBuilder);
        if ((m > 0) || (paramEncoderContext.hasMoreCharacters()))
          paramEncoderContext.writeCodeword('þ');
      }
    }
    throw new IllegalStateException("Unexpected case. Please report!");
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.datamatrix.encoder.C40Encoder
 * JD-Core Version:    0.6.2
 */