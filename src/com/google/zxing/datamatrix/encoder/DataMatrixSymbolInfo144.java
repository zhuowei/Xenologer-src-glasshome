package com.google.zxing.datamatrix.encoder;

final class DataMatrixSymbolInfo144 extends SymbolInfo
{
  DataMatrixSymbolInfo144()
  {
    super(false, 1558, 620, 22, 22, 36);
    this.rsBlockData = -1;
    this.rsBlockError = 62;
  }

  public int getDataLengthForInterleavedBlock(int paramInt)
  {
    if (paramInt <= 8)
      return 156;
    return 155;
  }

  public int getInterleavedBlockCount()
  {
    return 10;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.datamatrix.encoder.DataMatrixSymbolInfo144
 * JD-Core Version:    0.6.2
 */