package com.google.common.primitives;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.math.BigInteger;
import javax.annotation.Nullable;

@Beta
@GwtCompatible(serializable=true)
public class UnsignedLong extends Number
  implements Comparable<UnsignedLong>, Serializable
{
  public static final UnsignedLong MAX_VALUE = new UnsignedLong(-1L);
  public static final UnsignedLong ONE;
  private static final long UNSIGNED_MASK = 9223372036854775807L;
  public static final UnsignedLong ZERO = new UnsignedLong(0L);
  private final long value;

  static
  {
    ONE = new UnsignedLong(1L);
  }

  protected UnsignedLong(long paramLong)
  {
    this.value = paramLong;
  }

  public static UnsignedLong asUnsigned(long paramLong)
  {
    return new UnsignedLong(paramLong);
  }

  public static UnsignedLong valueOf(String paramString)
  {
    return valueOf(paramString, 10);
  }

  public static UnsignedLong valueOf(String paramString, int paramInt)
  {
    return asUnsigned(UnsignedLongs.parseUnsignedLong(paramString, paramInt));
  }

  public static UnsignedLong valueOf(BigInteger paramBigInteger)
  {
    Preconditions.checkNotNull(paramBigInteger);
    if ((paramBigInteger.signum() >= 0) && (paramBigInteger.bitLength() <= 64));
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool, "value (%s) is outside the range for an unsigned long value", new Object[] { paramBigInteger });
      return asUnsigned(paramBigInteger.longValue());
    }
  }

  public UnsignedLong add(UnsignedLong paramUnsignedLong)
  {
    Preconditions.checkNotNull(paramUnsignedLong);
    return asUnsigned(this.value + paramUnsignedLong.value);
  }

  public BigInteger bigIntegerValue()
  {
    BigInteger localBigInteger = BigInteger.valueOf(0xFFFFFFFF & this.value);
    if (this.value < 0L)
      localBigInteger = localBigInteger.setBit(63);
    return localBigInteger;
  }

  public int compareTo(UnsignedLong paramUnsignedLong)
  {
    Preconditions.checkNotNull(paramUnsignedLong);
    return UnsignedLongs.compare(this.value, paramUnsignedLong.value);
  }

  public UnsignedLong divide(UnsignedLong paramUnsignedLong)
  {
    Preconditions.checkNotNull(paramUnsignedLong);
    return asUnsigned(UnsignedLongs.divide(this.value, paramUnsignedLong.value));
  }

  public double doubleValue()
  {
    double d = 0xFFFFFFFF & this.value;
    if (this.value < 0L)
      d += 9.223372036854776E+18D;
    return d;
  }

  public boolean equals(@Nullable Object paramObject)
  {
    boolean bool1 = paramObject instanceof UnsignedLong;
    boolean bool2 = false;
    if (bool1)
    {
      UnsignedLong localUnsignedLong = (UnsignedLong)paramObject;
      boolean bool3 = this.value < localUnsignedLong.value;
      bool2 = false;
      if (!bool3)
        bool2 = true;
    }
    return bool2;
  }

  public float floatValue()
  {
    float f = (float)(0xFFFFFFFF & this.value);
    if (this.value < 0L)
      f += 9.223372E+18F;
    return f;
  }

  public int hashCode()
  {
    return Longs.hashCode(this.value);
  }

  public int intValue()
  {
    return (int)this.value;
  }

  public long longValue()
  {
    return this.value;
  }

  public UnsignedLong multiply(UnsignedLong paramUnsignedLong)
  {
    Preconditions.checkNotNull(paramUnsignedLong);
    return asUnsigned(this.value * paramUnsignedLong.value);
  }

  public UnsignedLong remainder(UnsignedLong paramUnsignedLong)
  {
    Preconditions.checkNotNull(paramUnsignedLong);
    return asUnsigned(UnsignedLongs.remainder(this.value, paramUnsignedLong.value));
  }

  public UnsignedLong subtract(UnsignedLong paramUnsignedLong)
  {
    Preconditions.checkNotNull(paramUnsignedLong);
    return asUnsigned(this.value - paramUnsignedLong.value);
  }

  public String toString()
  {
    return UnsignedLongs.toString(this.value);
  }

  public String toString(int paramInt)
  {
    return UnsignedLongs.toString(this.value, paramInt);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.primitives.UnsignedLong
 * JD-Core Version:    0.6.2
 */