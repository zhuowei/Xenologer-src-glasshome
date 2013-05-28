package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import java.math.BigInteger;

@Beta
@GwtCompatible
public final class DiscreteDomains
{
  static DiscreteDomain<BigInteger> bigIntegers()
  {
    return BigIntegerDomain.INSTANCE;
  }

  public static DiscreteDomain<Integer> integers()
  {
    return IntegerDomain.INSTANCE;
  }

  public static DiscreteDomain<Long> longs()
  {
    return LongDomain.INSTANCE;
  }

  private static final class BigIntegerDomain extends DiscreteDomain<BigInteger>
    implements Serializable
  {
    private static final BigIntegerDomain INSTANCE = new BigIntegerDomain();
    private static final BigInteger MAX_LONG = BigInteger.valueOf(9223372036854775807L);
    private static final BigInteger MIN_LONG = BigInteger.valueOf(-9223372036854775808L);
    private static final long serialVersionUID;

    private Object readResolve()
    {
      return INSTANCE;
    }

    public long distance(BigInteger paramBigInteger1, BigInteger paramBigInteger2)
    {
      return paramBigInteger1.subtract(paramBigInteger2).max(MIN_LONG).min(MAX_LONG).longValue();
    }

    public BigInteger next(BigInteger paramBigInteger)
    {
      return paramBigInteger.add(BigInteger.ONE);
    }

    public BigInteger previous(BigInteger paramBigInteger)
    {
      return paramBigInteger.subtract(BigInteger.ONE);
    }
  }

  private static final class IntegerDomain extends DiscreteDomain<Integer>
    implements Serializable
  {
    private static final IntegerDomain INSTANCE = new IntegerDomain();
    private static final long serialVersionUID;

    private Object readResolve()
    {
      return INSTANCE;
    }

    public long distance(Integer paramInteger1, Integer paramInteger2)
    {
      return paramInteger2.intValue() - paramInteger1.intValue();
    }

    public Integer maxValue()
    {
      return Integer.valueOf(2147483647);
    }

    public Integer minValue()
    {
      return Integer.valueOf(-2147483648);
    }

    public Integer next(Integer paramInteger)
    {
      int i = paramInteger.intValue();
      if (i == 2147483647)
        return null;
      return Integer.valueOf(i + 1);
    }

    public Integer previous(Integer paramInteger)
    {
      int i = paramInteger.intValue();
      if (i == -2147483648)
        return null;
      return Integer.valueOf(i - 1);
    }
  }

  private static final class LongDomain extends DiscreteDomain<Long>
    implements Serializable
  {
    private static final LongDomain INSTANCE = new LongDomain();
    private static final long serialVersionUID;

    private Object readResolve()
    {
      return INSTANCE;
    }

    public long distance(Long paramLong1, Long paramLong2)
    {
      long l = paramLong2.longValue() - paramLong1.longValue();
      if ((paramLong2.longValue() > paramLong1.longValue()) && (l < 0L))
        l = 9223372036854775807L;
      while ((paramLong2.longValue() >= paramLong1.longValue()) || (l <= 0L))
        return l;
      return -9223372036854775808L;
    }

    public Long maxValue()
    {
      return Long.valueOf(9223372036854775807L);
    }

    public Long minValue()
    {
      return Long.valueOf(-9223372036854775808L);
    }

    public Long next(Long paramLong)
    {
      long l = paramLong.longValue();
      if (l == 9223372036854775807L)
        return null;
      return Long.valueOf(1L + l);
    }

    public Long previous(Long paramLong)
    {
      long l = paramLong.longValue();
      if (l == -9223372036854775808L)
        return null;
      return Long.valueOf(l - 1L);
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.collect.DiscreteDomains
 * JD-Core Version:    0.6.2
 */