package com.google.zxing.oned.rss.expanded.decoders;

final class DecodedNumeric extends DecodedObject
{
  static final int FNC1 = 10;
  private final int firstDigit;
  private final int secondDigit;

  DecodedNumeric(int paramInt1, int paramInt2, int paramInt3)
  {
    super(paramInt1);
    this.firstDigit = paramInt2;
    this.secondDigit = paramInt3;
    if ((this.firstDigit < 0) || (this.firstDigit > 10))
      throw new IllegalArgumentException("Invalid firstDigit: " + paramInt2);
    if ((this.secondDigit < 0) || (this.secondDigit > 10))
      throw new IllegalArgumentException("Invalid secondDigit: " + paramInt3);
  }

  int getFirstDigit()
  {
    return this.firstDigit;
  }

  int getSecondDigit()
  {
    return this.secondDigit;
  }

  int getValue()
  {
    return 10 * this.firstDigit + this.secondDigit;
  }

  boolean isAnyFNC1()
  {
    return (this.firstDigit == 10) || (this.secondDigit == 10);
  }

  boolean isFirstDigitFNC1()
  {
    return this.firstDigit == 10;
  }

  boolean isSecondDigitFNC1()
  {
    return this.secondDigit == 10;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.rss.expanded.decoders.DecodedNumeric
 * JD-Core Version:    0.6.2
 */