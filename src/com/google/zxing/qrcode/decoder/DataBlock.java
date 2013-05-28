package com.google.zxing.qrcode.decoder;

final class DataBlock
{
  private final byte[] codewords;
  private final int numDataCodewords;

  private DataBlock(int paramInt, byte[] paramArrayOfByte)
  {
    this.numDataCodewords = paramInt;
    this.codewords = paramArrayOfByte;
  }

  static DataBlock[] getDataBlocks(byte[] paramArrayOfByte, Version paramVersion, ErrorCorrectionLevel paramErrorCorrectionLevel)
  {
    if (paramArrayOfByte.length != paramVersion.getTotalCodewords())
      throw new IllegalArgumentException();
    Version.ECBlocks localECBlocks = paramVersion.getECBlocksForLevel(paramErrorCorrectionLevel);
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
      int i21 = 0;
      while (i21 < localECB.getCount())
      {
        int i22 = localECB.getDataCodewords();
        int i23 = i22 + localECBlocks.getECCodewordsPerBlock();
        int i24 = m + 1;
        DataBlock localDataBlock = new DataBlock(i22, new byte[i23]);
        arrayOfDataBlock[m] = localDataBlock;
        i21++;
        m = i24;
      }
    }
    int i2 = arrayOfDataBlock[0].codewords.length;
    int i3 = -1 + arrayOfDataBlock.length;
    int i4;
    int i5;
    int i6;
    int i7;
    if ((i3 < 0) || (arrayOfDataBlock[i3].codewords.length == i2))
    {
      i4 = i3 + 1;
      i5 = i2 - localECBlocks.getECCodewordsPerBlock();
      i6 = 0;
      i7 = 0;
    }
    while (true)
    {
      if (i7 >= i5)
        break label300;
      int i18 = 0;
      int i19 = i6;
      while (true)
        if (i18 < m)
        {
          byte[] arrayOfByte3 = arrayOfDataBlock[i18].codewords;
          int i20 = i19 + 1;
          arrayOfByte3[i7] = paramArrayOfByte[i19];
          i18++;
          i19 = i20;
          continue;
          i3--;
          break;
        }
      i7++;
      i6 = i19;
    }
    label300: int i8 = i4;
    int i17;
    for (int i9 = i6; i8 < m; i9 = i17)
    {
      byte[] arrayOfByte2 = arrayOfDataBlock[i8].codewords;
      i17 = i9 + 1;
      arrayOfByte2[i5] = paramArrayOfByte[i9];
      i8++;
    }
    int i10 = arrayOfDataBlock[0].codewords.length;
    int i11 = i5;
    int i14;
    for (int i12 = i9; i11 < i10; i12 = i14)
    {
      int i13 = 0;
      i14 = i12;
      if (i13 < m)
      {
        if (i13 < i4);
        for (int i15 = i11; ; i15 = i11 + 1)
        {
          byte[] arrayOfByte1 = arrayOfDataBlock[i13].codewords;
          int i16 = i14 + 1;
          arrayOfByte1[i15] = paramArrayOfByte[i14];
          i13++;
          i14 = i16;
          break;
        }
      }
      i11++;
    }
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
 * Qualified Name:     com.google.zxing.qrcode.decoder.DataBlock
 * JD-Core Version:    0.6.2
 */