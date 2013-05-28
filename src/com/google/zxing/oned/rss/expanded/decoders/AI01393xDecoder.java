package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;

final class AI01393xDecoder extends AI01decoder
{
  private static final int FIRST_THREE_DIGITS_SIZE = 10;
  private static final int HEADER_SIZE = 8;
  private static final int LAST_DIGIT_SIZE = 2;

  AI01393xDecoder(BitArray paramBitArray)
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
    localStringBuilder.append("(393");
    localStringBuilder.append(i);
    localStringBuilder.append(')');
    int j = getGeneralDecoder().extractNumericValueFromBitArray(50, 10);
    if (j / 100 == 0)
      localStringBuilder.append('0');
    if (j / 10 == 0)
      localStringBuilder.append('0');
    localStringBuilder.append(j);
    localStringBuilder.append(getGeneralDecoder().decodeGeneralPurposeField(60, null).getNewString());
    return localStringBuilder.toString();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.rss.expanded.decoders.AI01393xDecoder
 * JD-Core Version:    0.6.2
 */