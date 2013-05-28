package com.google.common.primitives;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import java.math.BigInteger;
import javax.annotation.Nullable;

@Beta
@GwtCompatible(emulated=true)
public final class UnsignedInteger extends Number
  implements Comparable<UnsignedInteger>
{
  public static final UnsignedInteger MAX_VALUE = asUnsigned(-1);
  public static final UnsignedInteger ONE;
  public static final UnsignedInteger ZERO = asUnsigned(0);
  private final int value;

  static
  {
    ONE = asUnsigned(1);
  }

  private UnsignedInteger(int paramInt)
  {
    this.value = (paramInt & 0xFFFFFFFF);
  }

  public static UnsignedInteger asUnsigned(int paramInt)
  {
    return new UnsignedInteger(paramInt);
  }

  public static UnsignedInteger valueOf(long paramLong)
  {
    if ((0xFFFFFFFF & paramLong) == paramLong);
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Long.valueOf(paramLong);
      Preconditions.checkArgument(bool, "value (%s) is outside the range for an unsigned integer value", arrayOfObject);
      return asUnsigned((int)paramLong);
    }
  }

  public static UnsignedInteger valueOf(String paramString)
  {
    return valueOf(paramString, 10);
  }

  public static UnsignedInteger valueOf(String paramString, int paramInt)
  {
    return asUnsigned(UnsignedInts.parseUnsignedInt(paramString, paramInt));
  }

  public static UnsignedInteger valueOf(BigInteger paramBigInteger)
  {
    Preconditions.checkNotNull(paramBigInteger);
    if ((paramBigInteger.signum() >= 0) && (paramBigInteger.bitLength() <= 32));
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool, "value (%s) is outside the range for an unsigned integer value", new Object[] { paramBigInteger });
      return asUnsigned(paramBigInteger.intValue());
    }
  }

  public UnsignedInteger add(UnsignedInteger paramUnsignedInteger)
  {
    Preconditions.checkNotNull(paramUnsignedInteger);
    return asUnsigned(this.value + paramUnsignedInteger.value);
  }

  public BigInteger bigIntegerValue()
  {
    return BigInteger.valueOf(longValue());
  }

  public int compareTo(UnsignedInteger paramUnsignedInteger)
  {
    Preconditions.checkNotNull(paramUnsignedInteger);
    return UnsignedInts.compare(this.value, paramUnsignedInteger.value);
  }

  public UnsignedInteger divide(UnsignedInteger paramUnsignedInteger)
  {
    Preconditions.checkNotNull(paramUnsignedInteger);
    return asUnsigned(UnsignedInts.divide(this.value, paramUnsignedInteger.value));
  }

  public double doubleValue()
  {
    return longValue();
  }

  public boolean equals(@Nullable Object paramObject)
  {
    boolean bool1 = paramObject instanceof UnsignedInteger;
    boolean bool2 = false;
    if (bool1)
    {
      UnsignedInteger localUnsignedInteger = (UnsignedInteger)paramObject;
      int i = this.value;
      int j = localUnsignedInteger.value;
      bool2 = false;
      if (i == j)
        bool2 = true;
    }
    return bool2;
  }

  public float floatValue()
  {
    return (float)longValue();
  }

  public int hashCode()
  {
    return this.value;
  }

  public int intValue()
  {
    return this.value;
  }

  public long longValue()
  {
    return UnsignedInts.toLong(this.value);
  }

  @GwtIncompatible("Does not truncate correctly")
  public UnsignedInteger multiply(UnsignedInteger paramUnsignedInteger)
  {
    Preconditions.checkNotNull(paramUnsignedInteger);
    return asUnsigned(this.value * paramUnsignedInteger.value);
  }

  public UnsignedInteger remainder(UnsignedInteger paramUnsignedInteger)
  {
    Preconditions.checkNotNull(paramUnsignedInteger);
    return asUnsigned(UnsignedInts.remainder(this.value, paramUnsignedInteger.value));
  }

  public UnsignedInteger subtract(UnsignedInteger paramUnsignedInteger)
  {
    Preconditions.checkNotNull(paramUnsignedInteger);
    return asUnsigned(this.value - paramUnsignedInteger.value);
  }

  public String toString()
  {
    return toString(10);
  }

  public String toString(int paramInt)
  {
    return UnsignedInts.toString(this.value, paramInt);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.primitives.UnsignedInteger
 * JD-Core Version:    0.6.2
 */