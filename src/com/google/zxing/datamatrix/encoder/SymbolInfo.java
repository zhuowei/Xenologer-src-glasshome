package com.google.zxing.datamatrix.encoder;

import com.google.zxing.Dimension;

public class SymbolInfo
{
  public static final SymbolInfo[] PROD_SYMBOLS = arrayOfSymbolInfo;
  private static SymbolInfo[] symbols = PROD_SYMBOLS;
  final int dataCapacity;
  private final int dataRegions;
  final int errorCodewords;
  public final int matrixHeight;
  public final int matrixWidth;
  private final boolean rectangular;
  int rsBlockData;
  int rsBlockError;

  static
  {
    SymbolInfo[] arrayOfSymbolInfo = new SymbolInfo[30];
    arrayOfSymbolInfo[0] = new SymbolInfo(false, 3, 5, 8, 8, 1);
    arrayOfSymbolInfo[1] = new SymbolInfo(false, 5, 7, 10, 10, 1);
    arrayOfSymbolInfo[2] = new SymbolInfo(true, 5, 7, 16, 6, 1);
    arrayOfSymbolInfo[3] = new SymbolInfo(false, 8, 10, 12, 12, 1);
    arrayOfSymbolInfo[4] = new SymbolInfo(true, 10, 11, 14, 6, 2);
    arrayOfSymbolInfo[5] = new SymbolInfo(false, 12, 12, 14, 14, 1);
    arrayOfSymbolInfo[6] = new SymbolInfo(true, 16, 14, 24, 10, 1);
    arrayOfSymbolInfo[7] = new SymbolInfo(false, 18, 14, 16, 16, 1);
    arrayOfSymbolInfo[8] = new SymbolInfo(false, 22, 18, 18, 18, 1);
    arrayOfSymbolInfo[9] = new SymbolInfo(true, 22, 18, 16, 10, 2);
    arrayOfSymbolInfo[10] = new SymbolInfo(false, 30, 20, 20, 20, 1);
    arrayOfSymbolInfo[11] = new SymbolInfo(true, 32, 24, 16, 14, 2);
    arrayOfSymbolInfo[12] = new SymbolInfo(false, 36, 24, 22, 22, 1);
    arrayOfSymbolInfo[13] = new SymbolInfo(false, 44, 28, 24, 24, 1);
    arrayOfSymbolInfo[14] = new SymbolInfo(true, 49, 28, 22, 14, 2);
    arrayOfSymbolInfo[15] = new SymbolInfo(false, 62, 36, 14, 14, 4);
    arrayOfSymbolInfo[16] = new SymbolInfo(false, 86, 42, 16, 16, 4);
    arrayOfSymbolInfo[17] = new SymbolInfo(false, 114, 48, 18, 18, 4);
    arrayOfSymbolInfo[18] = new SymbolInfo(false, 144, 56, 20, 20, 4);
    arrayOfSymbolInfo[19] = new SymbolInfo(false, 174, 68, 22, 22, 4);
    arrayOfSymbolInfo[20] = new SymbolInfo(false, 204, 84, 24, 24, 4, 102, 42);
    arrayOfSymbolInfo[21] = new SymbolInfo(false, 280, 112, 14, 14, 16, 140, 56);
    arrayOfSymbolInfo[22] = new SymbolInfo(false, 368, 144, 16, 16, 16, 92, 36);
    arrayOfSymbolInfo[23] = new SymbolInfo(false, 456, 192, 18, 18, 16, 114, 48);
    arrayOfSymbolInfo[24] = new SymbolInfo(false, 576, 224, 20, 20, 16, 144, 56);
    arrayOfSymbolInfo[25] = new SymbolInfo(false, 696, 272, 22, 22, 16, 174, 68);
    arrayOfSymbolInfo[26] = new SymbolInfo(false, 816, 336, 24, 24, 16, 136, 56);
    arrayOfSymbolInfo[27] = new SymbolInfo(false, 1050, 408, 18, 18, 36, 175, 68);
    arrayOfSymbolInfo[28] = new SymbolInfo(false, 1304, 496, 20, 20, 36, 163, 62);
    arrayOfSymbolInfo[29] = new DataMatrixSymbolInfo144();
  }

  public SymbolInfo(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    this(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt1, paramInt2);
  }

  private SymbolInfo(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7)
  {
    this.rectangular = paramBoolean;
    this.dataCapacity = paramInt1;
    this.errorCodewords = paramInt2;
    this.matrixWidth = paramInt3;
    this.matrixHeight = paramInt4;
    this.dataRegions = paramInt5;
    this.rsBlockData = paramInt6;
    this.rsBlockError = paramInt7;
  }

  public static SymbolInfo lookup(int paramInt)
  {
    return lookup(paramInt, SymbolShapeHint.FORCE_NONE, true);
  }

  public static SymbolInfo lookup(int paramInt, SymbolShapeHint paramSymbolShapeHint)
  {
    return lookup(paramInt, paramSymbolShapeHint, true);
  }

  public static SymbolInfo lookup(int paramInt, SymbolShapeHint paramSymbolShapeHint, Dimension paramDimension1, Dimension paramDimension2, boolean paramBoolean)
  {
    SymbolInfo[] arrayOfSymbolInfo = symbols;
    int i = arrayOfSymbolInfo.length;
    int j = 0;
    if (j < i)
    {
      SymbolInfo localSymbolInfo = arrayOfSymbolInfo[j];
      if ((paramSymbolShapeHint == SymbolShapeHint.FORCE_SQUARE) && (localSymbolInfo.rectangular));
      while (((paramSymbolShapeHint == SymbolShapeHint.FORCE_RECTANGLE) && (!localSymbolInfo.rectangular)) || ((paramDimension1 != null) && ((localSymbolInfo.getSymbolWidth() < paramDimension1.getWidth()) || (localSymbolInfo.getSymbolHeight() < paramDimension1.getHeight()))) || ((paramDimension2 != null) && ((localSymbolInfo.getSymbolWidth() > paramDimension2.getWidth()) || (localSymbolInfo.getSymbolHeight() > paramDimension2.getHeight()))) || (paramInt > localSymbolInfo.dataCapacity))
      {
        j++;
        break;
      }
      return localSymbolInfo;
    }
    if (paramBoolean)
      throw new IllegalArgumentException("Can't find a symbol arrangement that matches the message. Data codewords: " + paramInt);
    return null;
  }

  private static SymbolInfo lookup(int paramInt, SymbolShapeHint paramSymbolShapeHint, boolean paramBoolean)
  {
    return lookup(paramInt, paramSymbolShapeHint, null, null, paramBoolean);
  }

  public static SymbolInfo lookup(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean1);
    for (SymbolShapeHint localSymbolShapeHint = SymbolShapeHint.FORCE_NONE; ; localSymbolShapeHint = SymbolShapeHint.FORCE_SQUARE)
      return lookup(paramInt, localSymbolShapeHint, paramBoolean2);
  }

  public static void overrideSymbolSet(SymbolInfo[] paramArrayOfSymbolInfo)
  {
    symbols = paramArrayOfSymbolInfo;
  }

  public int getCodewordCount()
  {
    return this.dataCapacity + this.errorCodewords;
  }

  public int getDataLengthForInterleavedBlock(int paramInt)
  {
    return this.rsBlockData;
  }

  public final int getErrorLengthForInterleavedBlock(int paramInt)
  {
    return this.rsBlockError;
  }

  final int getHorizontalDataRegions()
  {
    int i = 2;
    switch (this.dataRegions)
    {
    default:
      throw new IllegalStateException("Cannot handle this number of data regions");
    case 1:
      i = 1;
    case 2:
    case 4:
      return i;
    case 16:
      return 4;
    case 36:
    }
    return 6;
  }

  public int getInterleavedBlockCount()
  {
    return this.dataCapacity / this.rsBlockData;
  }

  public final int getSymbolDataHeight()
  {
    return getVerticalDataRegions() * this.matrixHeight;
  }

  public final int getSymbolDataWidth()
  {
    return getHorizontalDataRegions() * this.matrixWidth;
  }

  public final int getSymbolHeight()
  {
    return getSymbolDataHeight() + 2 * getVerticalDataRegions();
  }

  public final int getSymbolWidth()
  {
    return getSymbolDataWidth() + 2 * getHorizontalDataRegions();
  }

  final int getVerticalDataRegions()
  {
    int i = 1;
    switch (this.dataRegions)
    {
    default:
      throw new IllegalStateException("Cannot handle this number of data regions");
    case 4:
      i = 2;
    case 1:
    case 2:
      return i;
    case 16:
      return 4;
    case 36:
    }
    return 6;
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (this.rectangular);
    for (String str = "Rectangular Symbol:"; ; str = "Square Symbol:")
    {
      localStringBuilder.append(str);
      localStringBuilder.append(" data region ").append(this.matrixWidth).append('x').append(this.matrixHeight);
      localStringBuilder.append(", symbol size ").append(getSymbolWidth()).append('x').append(getSymbolHeight());
      localStringBuilder.append(", symbol data size ").append(getSymbolDataWidth()).append('x').append(getSymbolDataHeight());
      localStringBuilder.append(", codewords ").append(this.dataCapacity).append('+').append(this.errorCodewords);
      return localStringBuilder.toString();
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.datamatrix.encoder.SymbolInfo
 * JD-Core Version:    0.6.2
 */