package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.common.BitArray;

abstract class AI01weightDecoder extends AI01decoder
{
  AI01weightDecoder(BitArray paramBitArray)
  {
    super(paramBitArray);
  }

  protected abstract void addWeightCode(StringBuilder paramStringBuilder, int paramInt);

  protected abstract int checkWeight(int paramInt);

  protected final void encodeCompressedWeight(StringBuilder paramStringBuilder, int paramInt1, int paramInt2)
  {
    int i = getGeneralDecoder().extractNumericValueFromBitArray(paramInt1, paramInt2);
    addWeightCode(paramStringBuilder, i);
    int j = checkWeight(i);
    int k = 100000;
    for (int m = 0; m < 5; m++)
    {
      if (j / k == 0)
        paramStringBuilder.append('0');
      k /= 10;
    }
    paramStringBuilder.append(j);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.rss.expanded.decoders.AI01weightDecoder
 * JD-Core Version:    0.6.2
 */