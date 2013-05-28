package com.google.common.hash;

import com.google.common.base.Preconditions;
import com.google.common.math.IntMath;
import java.math.RoundingMode;

 enum BloomFilterStrategies
  implements BloomFilter.Strategy
{
  static
  {
    BloomFilterStrategies[] arrayOfBloomFilterStrategies = new BloomFilterStrategies[1];
    arrayOfBloomFilterStrategies[0] = MURMUR128_MITZ_32;
  }

  static class BitArray
  {
    final long[] data;

    BitArray(int paramInt)
    {
      this(new long[IntMath.divide(paramInt, 64, RoundingMode.CEILING)]);
    }

    BitArray(long[] paramArrayOfLong)
    {
      if (paramArrayOfLong.length > 0);
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkArgument(bool, "data length is zero!");
        this.data = paramArrayOfLong;
        return;
      }
    }

    boolean get(int paramInt)
    {
      return (this.data[(paramInt >> 6)] & 1L << paramInt) != 0L;
    }

    void set(int paramInt)
    {
      long[] arrayOfLong = this.data;
      int i = paramInt >> 6;
      arrayOfLong[i] |= 1L << paramInt;
    }

    int size()
    {
      return 64 * this.data.length;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.hash.BloomFilterStrategies
 * JD-Core Version:    0.6.2
 */