package com.google.common.hash;

import com.google.common.annotations.Beta;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import java.io.Serializable;

@Beta
public final class BloomFilter<T>
  implements Serializable
{
  private static final double LN2 = Math.log(2.0D);
  private static final double LN2_SQUARED = LN2 * LN2;
  private final BloomFilterStrategies.BitArray bits;
  private final Funnel<T> funnel;
  private final int numHashFunctions;
  private final Strategy strategy;

  private BloomFilter(BloomFilterStrategies.BitArray paramBitArray, int paramInt, Funnel<T> paramFunnel, Strategy paramStrategy)
  {
    if (paramInt > 0);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool, "numHashFunctions zero or negative");
      this.bits = ((BloomFilterStrategies.BitArray)Preconditions.checkNotNull(paramBitArray));
      this.numHashFunctions = paramInt;
      this.funnel = ((Funnel)Preconditions.checkNotNull(paramFunnel));
      this.strategy = paramStrategy;
      return;
    }
  }

  public static <T> BloomFilter<T> create(Funnel<T> paramFunnel, int paramInt)
  {
    return create(paramFunnel, paramInt, 0.03D);
  }

  public static <T> BloomFilter<T> create(Funnel<T> paramFunnel, int paramInt, double paramDouble)
  {
    boolean bool1 = true;
    Preconditions.checkNotNull(paramFunnel);
    boolean bool2;
    int i;
    if (paramInt > 0)
    {
      bool2 = bool1;
      Preconditions.checkArgument(bool2, "Expected insertions must be positive");
      if (paramDouble <= 0.0D)
        break label93;
      i = bool1;
      label33: if (paramDouble >= 1.0D)
        break label99;
    }
    while (true)
    {
      Preconditions.checkArgument(i & bool1, "False positive probability in (0.0, 1.0)");
      int j = optimalNumOfBits(paramInt, paramDouble);
      int k = optimalNumOfHashFunctions(paramInt, j);
      return new BloomFilter(new BloomFilterStrategies.BitArray(j), k, paramFunnel, BloomFilterStrategies.MURMUR128_MITZ_32);
      bool2 = false;
      break;
      label93: i = 0;
      break label33;
      label99: bool1 = false;
    }
  }

  @VisibleForTesting
  static int optimalNumOfBits(int paramInt, double paramDouble)
  {
    return (int)(-paramInt * Math.log(paramDouble) / LN2_SQUARED);
  }

  @VisibleForTesting
  static int optimalNumOfHashFunctions(int paramInt1, int paramInt2)
  {
    return Math.max(1, (int)Math.round(paramInt2 / paramInt1 * LN2));
  }

  private Object writeReplace()
  {
    return new SerialForm(this);
  }

  @VisibleForTesting
  double computeExpectedFalsePositiveRate(int paramInt)
  {
    return Math.pow(1.0D - Math.exp(-this.numHashFunctions * (paramInt / this.bits.size())), this.numHashFunctions);
  }

  @VisibleForTesting
  int getHashCount()
  {
    return this.numHashFunctions;
  }

  public boolean mightContain(T paramT)
  {
    return this.strategy.mightContain(paramT, this.funnel, this.numHashFunctions, this.bits);
  }

  public void put(T paramT)
  {
    this.strategy.put(paramT, this.funnel, this.numHashFunctions, this.bits);
  }

  private static class SerialForm<T>
    implements Serializable
  {
    private static final long serialVersionUID = 1L;
    final long[] data;
    final Funnel<T> funnel;
    final int numHashFunctions;
    final BloomFilter.Strategy strategy;

    SerialForm(BloomFilter<T> paramBloomFilter)
    {
      this.data = paramBloomFilter.bits.data;
      this.numHashFunctions = paramBloomFilter.numHashFunctions;
      this.funnel = paramBloomFilter.funnel;
      this.strategy = paramBloomFilter.strategy;
    }

    Object readResolve()
    {
      return new BloomFilter(new BloomFilterStrategies.BitArray(this.data), this.numHashFunctions, this.funnel, this.strategy, null);
    }
  }

  static abstract interface Strategy extends Serializable
  {
    public abstract <T> boolean mightContain(T paramT, Funnel<? super T> paramFunnel, int paramInt, BloomFilterStrategies.BitArray paramBitArray);

    public abstract <T> void put(T paramT, Funnel<? super T> paramFunnel, int paramInt, BloomFilterStrategies.BitArray paramBitArray);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.hash.BloomFilter
 * JD-Core Version:    0.6.2
 */