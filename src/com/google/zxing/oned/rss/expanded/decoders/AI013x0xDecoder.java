package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;

abstract class AI013x0xDecoder extends AI01weightDecoder
{
  private static final int HEADER_SIZE = 5;
  private static final int WEIGHT_SIZE = 15;

  AI013x0xDecoder(BitArray paramBitArray)
  {
    super(paramBitArray);
  }

  public String parseInformation()
    throws NotFoundException
  {
    if (getInformation().getSize() != 60)
      throw NotFoundException.getNotFoundInstance();
    StringBuilder localStringBuilder = new StringBuilder();
    encodeCompressedGtin(localStringBuilder, 5);
    encodeCompressedWeight(localStringBuilder, 45, 15);
    return localStringBuilder.toString();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.rss.expanded.decoders.AI013x0xDecoder
 * JD-Core Version:    0.6.2
 */