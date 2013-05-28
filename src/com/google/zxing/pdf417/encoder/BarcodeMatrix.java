package com.google.zxing.pdf417.encoder;

import java.lang.reflect.Array;

public final class BarcodeMatrix
{
  private int currentRow;
  private final int height;
  private final BarcodeRow[] matrix;
  private final int width;

  BarcodeMatrix(int paramInt1, int paramInt2)
  {
    this.matrix = new BarcodeRow[paramInt1 + 2];
    int i = 0;
    int j = this.matrix.length;
    while (i < j)
    {
      this.matrix[i] = new BarcodeRow(1 + 17 * (paramInt2 + 4));
      i++;
    }
    this.width = (paramInt2 * 17);
    this.height = (paramInt1 + 2);
    this.currentRow = 0;
  }

  BarcodeRow getCurrentRow()
  {
    return this.matrix[this.currentRow];
  }

  public byte[][] getMatrix()
  {
    return getScaledMatrix(1, 1);
  }

  public byte[][] getScaledMatrix(int paramInt)
  {
    return getScaledMatrix(paramInt, paramInt);
  }

  public byte[][] getScaledMatrix(int paramInt1, int paramInt2)
  {
    int[] arrayOfInt = { paramInt2 * this.height, paramInt1 * this.width };
    byte[][] arrayOfByte = (byte[][])Array.newInstance(Byte.TYPE, arrayOfInt);
    int i = paramInt2 * this.height;
    for (int j = 0; j < i; j++)
      arrayOfByte[(-1 + (i - j))] = this.matrix[(j / paramInt2)].getScaledRow(paramInt1);
    return arrayOfByte;
  }

  void set(int paramInt1, int paramInt2, byte paramByte)
  {
    this.matrix[paramInt2].set(paramInt1, paramByte);
  }

  void setMatrix(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (paramBoolean);
    for (int i = 1; ; i = 0)
    {
      set(paramInt1, paramInt2, (byte)i);
      return;
    }
  }

  void startRow()
  {
    this.currentRow = (1 + this.currentRow);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.pdf417.encoder.BarcodeMatrix
 * JD-Core Version:    0.6.2
 */