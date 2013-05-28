package com.google.zxing.qrcode.decoder;

final class FormatInformation
{
  private static final int[] BITS_SET_IN_HALF_BYTE = { 0, 1, 1, 2, 1, 2, 2, 3, 1, 2, 2, 3, 2, 3, 3, 4 };
  private static final int[][] FORMAT_INFO_DECODE_LOOKUP = { { 21522, 0 }, { 20773, 1 }, { 24188, 2 }, { 23371, 3 }, { 17913, 4 }, { 16590, 5 }, { 20375, 6 }, { 19104, 7 }, { 30660, 8 }, { 29427, 9 }, { 32170, 10 }, { 30877, 11 }, { 26159, 12 }, { 25368, 13 }, { 27713, 14 }, { 26998, 15 }, { 5769, 16 }, { 5054, 17 }, { 7399, 18 }, { 6608, 19 }, { 1890, 20 }, { 597, 21 }, { 3340, 22 }, { 2107, 23 }, { 13663, 24 }, { 12392, 25 }, { 16177, 26 }, { 14854, 27 }, { 9396, 28 }, { 8579, 29 }, { 11994, 30 }, { 11245, 31 } };
  private static final int FORMAT_INFO_MASK_QR = 21522;
  private final byte dataMask;
  private final ErrorCorrectionLevel errorCorrectionLevel;

  private FormatInformation(int paramInt)
  {
    this.errorCorrectionLevel = ErrorCorrectionLevel.forBits(0x3 & paramInt >> 3);
    this.dataMask = ((byte)(paramInt & 0x7));
  }

  static FormatInformation decodeFormatInformation(int paramInt1, int paramInt2)
  {
    FormatInformation localFormatInformation = doDecodeFormatInformation(paramInt1, paramInt2);
    if (localFormatInformation != null)
      return localFormatInformation;
    return doDecodeFormatInformation(paramInt1 ^ 0x5412, paramInt2 ^ 0x5412);
  }

  private static FormatInformation doDecodeFormatInformation(int paramInt1, int paramInt2)
  {
    int i = 2147483647;
    int j = 0;
    for (int[] arrayOfInt1 : FORMAT_INFO_DECODE_LOOKUP)
    {
      int n = arrayOfInt1[0];
      if ((n == paramInt1) || (n == paramInt2))
        return new FormatInformation(arrayOfInt1[1]);
      int i1 = numBitsDiffering(paramInt1, n);
      if (i1 < i)
      {
        j = arrayOfInt1[1];
        i = i1;
      }
      if (paramInt1 != paramInt2)
      {
        int i2 = numBitsDiffering(paramInt2, n);
        if (i2 < i)
        {
          j = arrayOfInt1[1];
          i = i2;
        }
      }
    }
    if (i <= 3)
      return new FormatInformation(j);
    return null;
  }

  static int numBitsDiffering(int paramInt1, int paramInt2)
  {
    int i = paramInt1 ^ paramInt2;
    return BITS_SET_IN_HALF_BYTE[(i & 0xF)] + BITS_SET_IN_HALF_BYTE[(0xF & i >>> 4)] + BITS_SET_IN_HALF_BYTE[(0xF & i >>> 8)] + BITS_SET_IN_HALF_BYTE[(0xF & i >>> 12)] + BITS_SET_IN_HALF_BYTE[(0xF & i >>> 16)] + BITS_SET_IN_HALF_BYTE[(0xF & i >>> 20)] + BITS_SET_IN_HALF_BYTE[(0xF & i >>> 24)] + BITS_SET_IN_HALF_BYTE[(0xF & i >>> 28)];
  }

  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof FormatInformation));
    FormatInformation localFormatInformation;
    do
    {
      return false;
      localFormatInformation = (FormatInformation)paramObject;
    }
    while ((this.errorCorrectionLevel != localFormatInformation.errorCorrectionLevel) || (this.dataMask != localFormatInformation.dataMask));
    return true;
  }

  byte getDataMask()
  {
    return this.dataMask;
  }

  ErrorCorrectionLevel getErrorCorrectionLevel()
  {
    return this.errorCorrectionLevel;
  }

  public int hashCode()
  {
    return this.errorCorrectionLevel.ordinal() << 3 | this.dataMask;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.decoder.FormatInformation
 * JD-Core Version:    0.6.2
 */