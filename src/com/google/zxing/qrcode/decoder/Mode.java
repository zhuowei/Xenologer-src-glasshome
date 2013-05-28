package com.google.zxing.qrcode.decoder;

public enum Mode
{
  private final int bits;
  private final int[] characterCountBitsForVersions;

  static
  {
    NUMERIC = new Mode("NUMERIC", 1, new int[] { 10, 12, 14 }, 1);
    ALPHANUMERIC = new Mode("ALPHANUMERIC", 2, new int[] { 9, 11, 13 }, 2);
    STRUCTURED_APPEND = new Mode("STRUCTURED_APPEND", 3, new int[] { 0, 0, 0 }, 3);
    BYTE = new Mode("BYTE", 4, new int[] { 8, 16, 16 }, 4);
    ECI = new Mode("ECI", 5, new int[] { 0, 0, 0 }, 7);
    KANJI = new Mode("KANJI", 6, new int[] { 8, 10, 12 }, 8);
    FNC1_FIRST_POSITION = new Mode("FNC1_FIRST_POSITION", 7, new int[] { 0, 0, 0 }, 5);
    FNC1_SECOND_POSITION = new Mode("FNC1_SECOND_POSITION", 8, new int[] { 0, 0, 0 }, 9);
    HANZI = new Mode("HANZI", 9, new int[] { 8, 10, 12 }, 13);
    Mode[] arrayOfMode = new Mode[10];
    arrayOfMode[0] = TERMINATOR;
    arrayOfMode[1] = NUMERIC;
    arrayOfMode[2] = ALPHANUMERIC;
    arrayOfMode[3] = STRUCTURED_APPEND;
    arrayOfMode[4] = BYTE;
    arrayOfMode[5] = ECI;
    arrayOfMode[6] = KANJI;
    arrayOfMode[7] = FNC1_FIRST_POSITION;
    arrayOfMode[8] = FNC1_SECOND_POSITION;
    arrayOfMode[9] = HANZI;
  }

  private Mode(int[] paramArrayOfInt, int paramInt)
  {
    this.characterCountBitsForVersions = paramArrayOfInt;
    this.bits = paramInt;
  }

  public static Mode forBits(int paramInt)
  {
    switch (paramInt)
    {
    case 6:
    case 10:
    case 11:
    case 12:
    default:
      throw new IllegalArgumentException();
    case 0:
      return TERMINATOR;
    case 1:
      return NUMERIC;
    case 2:
      return ALPHANUMERIC;
    case 3:
      return STRUCTURED_APPEND;
    case 4:
      return BYTE;
    case 5:
      return FNC1_FIRST_POSITION;
    case 7:
      return ECI;
    case 8:
      return KANJI;
    case 9:
      return FNC1_SECOND_POSITION;
    case 13:
    }
    return HANZI;
  }

  public int getBits()
  {
    return this.bits;
  }

  public int getCharacterCountBits(Version paramVersion)
  {
    int i = paramVersion.getVersionNumber();
    int j;
    if (i <= 9)
      j = 0;
    while (true)
    {
      return this.characterCountBitsForVersions[j];
      if (i <= 26)
        j = 1;
      else
        j = 2;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.decoder.Mode
 * JD-Core Version:    0.6.2
 */