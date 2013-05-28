package com.google.zxing.datamatrix.encoder;

final class X12Encoder extends C40Encoder
{
  public void encode(EncoderContext paramEncoderContext)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    while (paramEncoderContext.hasMoreCharacters())
    {
      char c = paramEncoderContext.getCurrentChar();
      paramEncoderContext.pos = (1 + paramEncoderContext.pos);
      encodeChar(c, localStringBuilder);
      if (localStringBuilder.length() % 3 == 0)
      {
        writeNextTriplet(paramEncoderContext, localStringBuilder);
        int i = HighLevelEncoder.lookAheadTest(paramEncoderContext.msg, paramEncoderContext.pos, getEncodingMode());
        if (i != getEncodingMode())
          paramEncoderContext.signalEncoderChange(i);
      }
    }
    handleEOD(paramEncoderContext, localStringBuilder);
  }

  int encodeChar(char paramChar, StringBuilder paramStringBuilder)
  {
    if (paramChar == '\r')
    {
      paramStringBuilder.append('\000');
      return 1;
    }
    if (paramChar == '*')
    {
      paramStringBuilder.append('\001');
      return 1;
    }
    if (paramChar == '>')
    {
      paramStringBuilder.append('\002');
      return 1;
    }
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
    HighLevelEncoder.illegalCharacter(paramChar);
    return 1;
  }

  public int getEncodingMode()
  {
    return 3;
  }

  void handleEOD(EncoderContext paramEncoderContext, StringBuilder paramStringBuilder)
  {
    paramEncoderContext.updateSymbolInfo();
    int i = paramEncoderContext.symbolInfo.dataCapacity - paramEncoderContext.getCodewordCount();
    int j = paramStringBuilder.length();
    if (j == 2)
    {
      paramEncoderContext.writeCodeword('þ');
      paramEncoderContext.pos = (-2 + paramEncoderContext.pos);
      paramEncoderContext.signalEncoderChange(0);
    }
    while (j != 1)
      return;
    paramEncoderContext.pos = (-1 + paramEncoderContext.pos);
    if (i > 1)
      paramEncoderContext.writeCodeword('þ');
    paramEncoderContext.signalEncoderChange(0);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.datamatrix.encoder.X12Encoder
 * JD-Core Version:    0.6.2
 */