package com.google.zxing.datamatrix.encoder;

final class EdifactEncoder
  implements Encoder
{
  private static void encodeChar(char paramChar, StringBuilder paramStringBuilder)
  {
    if ((paramChar >= ' ') && (paramChar <= '?'))
    {
      paramStringBuilder.append(paramChar);
      return;
    }
    if ((paramChar >= '@') && (paramChar <= '^'))
    {
      paramStringBuilder.append((char)(paramChar - '@'));
      return;
    }
    HighLevelEncoder.illegalCharacter(paramChar);
  }

  private static String encodeToCodewords(CharSequence paramCharSequence, int paramInt)
  {
    int i = paramCharSequence.length() - paramInt;
    if (i == 0)
      throw new IllegalStateException("StringBuilder must not be empty");
    int j = paramCharSequence.charAt(paramInt);
    int k;
    if (i >= 2)
    {
      k = paramCharSequence.charAt(paramInt + 1);
      if (i < 3)
        break label192;
    }
    label192: for (int m = paramCharSequence.charAt(paramInt + 2); ; m = 0)
    {
      int n = 0;
      if (i >= 4)
        n = paramCharSequence.charAt(paramInt + 3);
      int i1 = n + ((j << 18) + (k << 12) + (m << 6));
      char c1 = (char)(0xFF & i1 >> 16);
      char c2 = (char)(0xFF & i1 >> 8);
      char c3 = (char)(i1 & 0xFF);
      StringBuilder localStringBuilder = new StringBuilder(3);
      localStringBuilder.append(c1);
      if (i >= 2)
        localStringBuilder.append(c2);
      if (i >= 3)
        localStringBuilder.append(c3);
      return localStringBuilder.toString();
      k = 0;
      break;
    }
  }

  private static void handleEOD(EncoderContext paramEncoderContext, CharSequence paramCharSequence)
  {
    int i = 1;
    int j;
    try
    {
      j = paramCharSequence.length();
      if (j == 0)
        return;
      if (j == i)
      {
        paramEncoderContext.updateSymbolInfo();
        int n = paramEncoderContext.symbolInfo.dataCapacity - paramEncoderContext.getCodewordCount();
        int i1 = paramEncoderContext.getRemainingCharacters();
        if ((i1 == 0) && (n <= 2))
          return;
      }
      if (j > 4)
        throw new IllegalStateException("Count must not exceed 4");
    }
    finally
    {
      paramEncoderContext.signalEncoderChange(0);
    }
    int k = j - 1;
    String str = encodeToCodewords(paramCharSequence, 0);
    int m;
    if (!paramEncoderContext.hasMoreCharacters())
      m = i;
    while (true)
    {
      if (k <= 2)
      {
        paramEncoderContext.updateSymbolInfo(k + paramEncoderContext.getCodewordCount());
        if (paramEncoderContext.symbolInfo.dataCapacity - paramEncoderContext.getCodewordCount() >= 3)
        {
          i = 0;
          paramEncoderContext.updateSymbolInfo(paramEncoderContext.getCodewordCount() + str.length());
        }
      }
      if (i != 0)
      {
        paramEncoderContext.resetSymbolInfo();
        paramEncoderContext.pos -= k;
        label186: paramEncoderContext.signalEncoderChange(0);
        return;
        m = 0;
      }
      while ((m == 0) || (k > 2))
      {
        i = 0;
        break;
        paramEncoderContext.writeCodewords(str);
        break label186;
      }
    }
  }

  public void encode(EncoderContext paramEncoderContext)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    while (paramEncoderContext.hasMoreCharacters())
    {
      encodeChar(paramEncoderContext.getCurrentChar(), localStringBuilder);
      paramEncoderContext.pos = (1 + paramEncoderContext.pos);
      if (localStringBuilder.length() >= 4)
      {
        paramEncoderContext.writeCodewords(encodeToCodewords(localStringBuilder, 0));
        localStringBuilder.delete(0, 4);
        if (HighLevelEncoder.lookAheadTest(paramEncoderContext.msg, paramEncoderContext.pos, getEncodingMode()) != getEncodingMode())
          paramEncoderContext.signalEncoderChange(0);
      }
    }
    localStringBuilder.append('\037');
    handleEOD(paramEncoderContext, localStringBuilder);
  }

  public int getEncodingMode()
  {
    return 4;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.datamatrix.encoder.EdifactEncoder
 * JD-Core Version:    0.6.2
 */