package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.common.BitArray;

abstract class AI01decoder extends AbstractExpandedDecoder
{
  protected static final int GTIN_SIZE = 40;

  AI01decoder(BitArray paramBitArray)
  {
    super(paramBitArray);
  }

  private static void appendCheckDigit(StringBuilder paramStringBuilder, int paramInt)
  {
    int i = 0;
    for (int j = 0; j < 13; j++)
    {
      int m = '\0*0' + paramStringBuilder.charAt(j + paramInt);
      if ((j & 0x1) == 0)
        m *= 3;
      i += m;
    }
    int k = 10 - i % 10;
    if (k == 10)
      k = 0;
    paramStringBuilder.append(k);
  }

  protected final void encodeCompressedGtin(StringBuilder paramStringBuilder, int paramInt)
  {
    paramStringBuilder.append("(01)");
    int i = paramStringBuilder.length();
    paramStringBuilder.append('9');
    encodeCompressedGtinWithoutAI(paramStringBuilder, paramInt, i);
  }

  protected final void encodeCompressedGtinWithoutAI(StringBuilder paramStringBuilder, int paramInt1, int paramInt2)
  {
    for (int i = 0; i < 4; i++)
    {
      int j = getGeneralDecoder().extractNumericValueFromBitArray(paramInt1 + i * 10, 10);
      if (j / 100 == 0)
        paramStringBuilder.append('0');
      if (j / 10 == 0)
        paramStringBuilder.append('0');
      paramStringBuilder.append(j);
    }
    appendCheckDigit(paramStringBuilder, paramInt2);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.rss.expanded.decoders.AI01decoder
 * JD-Core Version:    0.6.2
 */