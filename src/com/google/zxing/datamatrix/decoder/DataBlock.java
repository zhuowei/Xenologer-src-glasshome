package com.google.zxing.datamatrix.decoder;

final class DataBlock
{
  private final byte[] codewords;
  private final int numDataCodewords;

  private DataBlock(int paramInt, byte[] paramArrayOfByte)
  {
    this.numDataCodewords = paramInt;
    this.codewords = paramArrayOfByte;
  }

  static DataBlock[] getDataBlocks(byte[] paramArrayOfByte, Version paramVersion)
  {
    Version.ECBlocks localECBlocks = paramVersion.getECBlocks();
    int i = 0;
    Version.ECB[] arrayOfECB = localECBlocks.getECBlocks();
    int j = arrayOfECB.length;
    for (int k = 0; k < j; k++)
      i += arrayOfECB[k].getCount();
    DataBlock[] arrayOfDataBlock = new DataBlock[i];
    int m = 0;
    int n = arrayOfECB.length;
    for (int i1 = 0; i1 < n; i1++)
    {
      Version.ECB localECB = arrayOfECB[i1];
      int i23 = 0;
      while (i23 < localECB.getCount())
      {
        int i24 = localECB.getDataCodewords();
        int i25 = i24 + localECBlocks.getECCodewords();
        int i26 = m + 1;
        DataBlock localDataBlock = new DataBlock(i24, new byte[i25]);
        arrayOfDataBlock[m] = localDataBlock;
        i23++;
        m = i26;
      }
    }
    int i2 = arrayOfDataBlock[0].codewords.length - localECBlocks.getECCodewords();
    int i3 = i2 - 1;
    int i4 = 0;
    int i5 = 0;
    while (i5 < i3)
    {
      int i20 = 0;
      int i22;
      for (int i21 = i4; i20 < m; i21 = i22)
      {
        byte[] arrayOfByte3 = arrayOfDataBlock[i20].codewords;
        i22 = i21 + 1;
        arrayOfByte3[i5] = paramArrayOfByte[i21];
        i20++;
      }
      i5++;
      i4 = i21;
    }
    int i6;
    if (paramVersion.getVersionNumber() == 24)
    {
      i6 = 1;
      if (i6 == 0)
        break label324;
    }
    int i9;
    label324: for (int i7 = 8; ; i7 = m)
    {
      int i8 = 0;
      int i19;
      for (i9 = i4; i8 < i7; i9 = i19)
      {
        byte[] arrayOfByte2 = arrayOfDataBlock[i8].codewords;
        int i18 = i2 - 1;
        i19 = i9 + 1;
        arrayOfByte2[i18] = paramArrayOfByte[i9];
        i8++;
      }
      i6 = 0;
      break;
    }
    int i10 = arrayOfDataBlock[0].codewords.length;
    int i11 = i2;
    int i15;
    for (int i12 = i9; i11 < i10; i12 = i15)
    {
      int i14 = 0;
      i15 = i12;
      if (i14 < m)
      {
        if ((i6 != 0) && (i14 > 7));
        for (int i16 = i11 - 1; ; i16 = i11)
        {
          byte[] arrayOfByte1 = arrayOfDataBlock[i14].codewords;
          int i17 = i15 + 1;
          arrayOfByte1[i16] = paramArrayOfByte[i15];
          i14++;
          i15 = i17;
          break;
        }
      }
      i11++;
    }
    int i13 = paramArrayOfByte.length;
    if (i12 != i13)
      throw new IllegalArgumentException();
    return arrayOfDataBlock;
  }

  byte[] getCodewords()
  {
    return this.codewords;
  }

  int getNumDataCodewords()
  {
    return this.numDataCodewords;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.datamatrix.decoder.DataBlock
 * JD-Core Version:    0.6.2
 */