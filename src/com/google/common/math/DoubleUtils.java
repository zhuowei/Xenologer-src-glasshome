package com.google.common.math;

import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import java.math.BigInteger;

final class DoubleUtils
{
  static final int EXPONENT_BIAS = 1023;
  static final long EXPONENT_MASK = 9218868437227405312L;
  static final long IMPLICIT_BIT = 4503599627370496L;
  static final int MAX_DOUBLE_EXPONENT = 1023;
  static final int MIN_DOUBLE_EXPONENT = -1022;
  private static final long ONE_BITS = 0L;
  static final int SIGNIFICAND_BITS = 52;
  static final long SIGNIFICAND_MASK = 4503599627370495L;
  static final long SIGN_MASK = -9223372036854775808L;

  static double bigToDouble(BigInteger paramBigInteger)
  {
    BigInteger localBigInteger = paramBigInteger.abs();
    int i = -1 + localBigInteger.bitLength();
    if (i < 63)
      return paramBigInteger.longValue();
    if (i > 1023)
      return (1.0D / 0.0D) * paramBigInteger.signum();
    int j = -1 + (i - 52);
    long l1 = localBigInteger.shiftRight(j).longValue();
    long l2 = 0xFFFFFFFF & l1 >> 1;
    int k;
    if (((1L & l1) != 0L) && (((1L & l2) != 0L) || (localBigInteger.getLowestSetBit() < j)))
    {
      k = 1;
      if (k == 0)
        break label140;
    }
    label140: for (long l3 = l2 + 1L; ; l3 = l2)
    {
      return Double.longBitsToDouble(l3 + (i + 1023 << 52) | 0x0 & paramBigInteger.signum());
      k = 0;
      break;
    }
  }

  @VisibleForTesting
  static int getExponent(double paramDouble)
  {
    return -1023 + (int)((0x0 & Double.doubleToRawLongBits(paramDouble)) >> 52);
  }

  static long getSignificand(double paramDouble)
  {
    Preconditions.checkArgument(isFinite(paramDouble), "not a normal value");
    int i = getExponent(paramDouble);
    long l = 0xFFFFFFFF & Double.doubleToRawLongBits(paramDouble);
    if (i == -1023)
      return l << 1;
    return 0x0 | l;
  }

  static boolean isFinite(double paramDouble)
  {
    return getExponent(paramDouble) <= 1023;
  }

  static boolean isNormal(double paramDouble)
  {
    return getExponent(paramDouble) >= -1022;
  }

  static double next(double paramDouble, boolean paramBoolean)
  {
    if (paramDouble == 0.0D)
    {
      if (paramBoolean)
        return 4.9E-324D;
      return -4.940656458412465E-324D;
    }
    long l1 = Double.doubleToRawLongBits(paramDouble);
    boolean bool;
    if (paramDouble < 0.0D)
    {
      bool = true;
      if (bool != paramBoolean)
        break label55;
    }
    label55: for (long l2 = l1 - 1L; ; l2 = l1 + 1L)
    {
      return Double.longBitsToDouble(l2);
      bool = false;
      break;
    }
  }

  static strictfp double scalb(double paramDouble, int paramInt)
  {
    int i = 1;
    int j = getExponent(paramDouble);
    int k;
    int m;
    switch (j)
    {
    default:
      k = j + paramInt;
      if (-1022 <= k)
      {
        m = i;
        if (k > 1023)
          break label110;
      }
      break;
    case 1024:
    case -1023:
    }
    while (true)
    {
      if ((i & m) == 0)
        break label115;
      paramDouble = Double.longBitsToDouble(0xFFFFFFFF & Double.doubleToRawLongBits(paramDouble) | k + 1023 << 52);
      return paramDouble;
      return paramDouble * StrictMath.pow(2.0D, paramInt);
      m = 0;
      break;
      label110: i = 0;
    }
    label115: return paramDouble * StrictMath.pow(2.0D, paramInt);
  }

  static double scaleNormalize(double paramDouble)
  {
    return Double.longBitsToDouble(0xFFFFFFFF & Double.doubleToRawLongBits(paramDouble) | ONE_BITS);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.math.DoubleUtils
 * JD-Core Version:    0.6.2
 */