package com.google.common.math;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.math.BigInteger;

@GwtCompatible
final class MathPreconditions
{
  static void checkInRange(boolean paramBoolean)
  {
    if (!paramBoolean)
      throw new ArithmeticException("not in range");
  }

  static void checkNoOverflow(boolean paramBoolean)
  {
    if (!paramBoolean)
      throw new ArithmeticException("overflow");
  }

  static int checkNonNegative(String paramString, int paramInt)
  {
    if (paramInt < 0)
      throw new IllegalArgumentException(paramString + " (" + paramInt + ") must be >= 0");
    return paramInt;
  }

  static long checkNonNegative(String paramString, long paramLong)
  {
    if (paramLong < 0L)
      throw new IllegalArgumentException(paramString + " (" + paramLong + ") must be >= 0");
    return paramLong;
  }

  static BigInteger checkNonNegative(String paramString, BigInteger paramBigInteger)
  {
    if (((BigInteger)Preconditions.checkNotNull(paramBigInteger)).signum() < 0)
      throw new IllegalArgumentException(paramString + " (" + paramBigInteger + ") must be >= 0");
    return paramBigInteger;
  }

  static int checkPositive(String paramString, int paramInt)
  {
    if (paramInt <= 0)
      throw new IllegalArgumentException(paramString + " (" + paramInt + ") must be > 0");
    return paramInt;
  }

  static long checkPositive(String paramString, long paramLong)
  {
    if (paramLong <= 0L)
      throw new IllegalArgumentException(paramString + " (" + paramLong + ") must be > 0");
    return paramLong;
  }

  static BigInteger checkPositive(String paramString, BigInteger paramBigInteger)
  {
    if (paramBigInteger.signum() <= 0)
      throw new IllegalArgumentException(paramString + " (" + paramBigInteger + ") must be > 0");
    return paramBigInteger;
  }

  static void checkRoundingUnnecessary(boolean paramBoolean)
  {
    if (!paramBoolean)
      throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.math.MathPreconditions
 * JD-Core Version:    0.6.2
 */