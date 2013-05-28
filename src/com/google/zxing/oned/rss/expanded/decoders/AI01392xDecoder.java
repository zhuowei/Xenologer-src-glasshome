package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;

final class AI01392xDecoder extends AI01decoder
{
  private static final int HEADER_SIZE = 8;
  private static final int LAST_DIGIT_SIZE = 2;

  AI01392xDecoder(BitArray paramBitArray)
  {
    super(paramBitArray);
  }

  public String parseInformation()
    throws NotFoundException
  {
    if (getInformation().getSize() < 48)
      throw NotFoundException.getNotFoundInstance();
    StringBuilder localStringBuilder = new StringBuilder();
    encodeCompressedGtin(localStringBuilder, 8);
    int i = getGeneralDecoder().extractNumericValueFromBitArray(48, 2);
    localStringBuilder.append("(392");
    localStringBuilder.append(i);
    localStringBuilder.append(')');
    localStringBuilder.append(getGeneralDecoder().decodeGeneralPurposeField(50, null).getNewString());
    return localStringBuilder.toString();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.rss.expanded.decoders.AI01392xDecoder
 * JD-Core Version:    0.6.2
 */