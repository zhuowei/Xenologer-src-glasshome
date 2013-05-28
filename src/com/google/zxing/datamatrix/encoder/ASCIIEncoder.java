package com.google.zxing.datamatrix.encoder;

final class ASCIIEncoder
  implements Encoder
{
  private static char encodeASCIIDigits(char paramChar1, char paramChar2)
  {
    if ((HighLevelEncoder.isDigit(paramChar1)) && (HighLevelEncoder.isDigit(paramChar2)))
      return (char)(130 + (10 * (paramChar1 - '0') + (paramChar2 - '0')));
    throw new IllegalArgumentException("not digits: " + paramChar1 + paramChar2);
  }

  public void encode(EncoderContext paramEncoderContext)
  {
    if (HighLevelEncoder.determineConsecutiveDigitCount(paramEncoderContext.msg, paramEncoderContext.pos) >= 2)
    {
      paramEncoderContext.writeCodeword(encodeASCIIDigits(paramEncoderContext.msg.charAt(paramEncoderContext.pos), paramEncoderContext.msg.charAt(1 + paramEncoderContext.pos)));
      paramEncoderContext.pos = (2 + paramEncoderContext.pos);
      return;
    }
    char c = paramEncoderContext.getCurrentChar();
    int i = HighLevelEncoder.lookAheadTest(paramEncoderContext.msg, paramEncoderContext.pos, getEncodingMode());
    if (i != getEncodingMode())
    {
      switch (i)
      {
      default:
        throw new IllegalStateException("Illegal mode: " + i);
      case 5:
        paramEncoderContext.writeCodeword('ç');
        paramEncoderContext.signalEncoderChange(5);
        return;
      case 1:
        paramEncoderContext.writeCodeword('æ');
        paramEncoderContext.signalEncoderChange(1);
        return;
      case 3:
        paramEncoderContext.writeCodeword('î');
        paramEncoderContext.signalEncoderChange(3);
        return;
      case 2:
        paramEncoderContext.writeCodeword('ï');
        paramEncoderContext.signalEncoderChange(2);
        return;
      case 4:
      }
      paramEncoderContext.writeCodeword('ð');
      paramEncoderContext.signalEncoderChange(4);
      return;
    }
    if (HighLevelEncoder.isExtendedASCII(c))
    {
      paramEncoderContext.writeCodeword('ë');
      paramEncoderContext.writeCodeword((char)(1 + (c - '')));
      paramEncoderContext.pos = (1 + paramEncoderContext.pos);
      return;
    }
    paramEncoderContext.writeCodeword((char)(c + '\001'));
    paramEncoderContext.pos = (1 + paramEncoderContext.pos);
  }

  public int getEncodingMode()
  {
    return 0;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.datamatrix.encoder.ASCIIEncoder
 * JD-Core Version:    0.6.2
 */