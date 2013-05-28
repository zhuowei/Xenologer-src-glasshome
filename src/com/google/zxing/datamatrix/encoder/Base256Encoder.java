package com.google.zxing.datamatrix.encoder;

final class Base256Encoder
  implements Encoder
{
  private static char randomize255State(char paramChar, int paramInt)
  {
    int i = paramChar + (1 + paramInt * 149 % 255);
    if (i <= 255)
      return (char)i;
    return (char)(i - 256);
  }

  public void encode(EncoderContext paramEncoderContext)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append('\000');
    while (paramEncoderContext.hasMoreCharacters())
    {
      localStringBuilder.append(paramEncoderContext.getCurrentChar());
      paramEncoderContext.pos = (1 + paramEncoderContext.pos);
      int i1 = HighLevelEncoder.lookAheadTest(paramEncoderContext.msg, paramEncoderContext.pos, getEncodingMode());
      if (i1 != getEncodingMode())
        paramEncoderContext.signalEncoderChange(i1);
    }
    int i = -1 + localStringBuilder.length();
    int j = 1 + (i + paramEncoderContext.getCodewordCount());
    paramEncoderContext.updateSymbolInfo(j);
    int k;
    if (paramEncoderContext.symbolInfo.dataCapacity - j > 0)
    {
      k = 1;
      if ((paramEncoderContext.hasMoreCharacters()) || (k != 0))
      {
        if (i > 249)
          break label188;
        localStringBuilder.setCharAt(0, (char)i);
      }
    }
    while (true)
    {
      int m = 0;
      int n = localStringBuilder.length();
      while (m < n)
      {
        paramEncoderContext.writeCodeword(randomize255State(localStringBuilder.charAt(m), 1 + paramEncoderContext.getCodewordCount()));
        m++;
      }
      k = 0;
      break;
      label188: if ((i <= 249) || (i > 1555))
        break label236;
      localStringBuilder.setCharAt(0, (char)(249 + i / 250));
      localStringBuilder.insert(1, (char)(i % 250));
    }
    label236: throw new IllegalStateException("Message length not in valid ranges: " + i);
  }

  public int getEncodingMode()
  {
    return 5;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.datamatrix.encoder.Base256Encoder
 * JD-Core Version:    0.6.2
 */