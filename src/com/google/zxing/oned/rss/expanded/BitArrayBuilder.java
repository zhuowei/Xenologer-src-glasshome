package com.google.zxing.oned.rss.expanded;

import com.google.zxing.common.BitArray;
import com.google.zxing.oned.rss.DataCharacter;
import java.util.List;

final class BitArrayBuilder
{
  static BitArray buildBitArray(List<ExpandedPair> paramList)
  {
    int i = -1 + (paramList.size() << 1);
    if (((ExpandedPair)paramList.get(-1 + paramList.size())).getRightChar() == null)
      i--;
    BitArray localBitArray = new BitArray(i * 12);
    int j = 0;
    int k = ((ExpandedPair)paramList.get(0)).getRightChar().getValue();
    for (int m = 11; m >= 0; m--)
    {
      if ((k & 1 << m) != 0)
        localBitArray.set(j);
      j++;
    }
    for (int n = 1; n < paramList.size(); n++)
    {
      ExpandedPair localExpandedPair = (ExpandedPair)paramList.get(n);
      int i1 = localExpandedPair.getLeftChar().getValue();
      for (int i2 = 11; i2 >= 0; i2--)
      {
        if ((i1 & 1 << i2) != 0)
          localBitArray.set(j);
        j++;
      }
      if (localExpandedPair.getRightChar() != null)
      {
        int i3 = localExpandedPair.getRightChar().getValue();
        for (int i4 = 11; i4 >= 0; i4--)
        {
          if ((i3 & 1 << i4) != 0)
            localBitArray.set(j);
          j++;
        }
      }
    }
    return localBitArray;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.rss.expanded.BitArrayBuilder
 * JD-Core Version:    0.6.2
 */