package com.google.zxing.pdf417.encoder;

public final class Dimensions
{
  private final int maxCols;
  private final int maxRows;
  private final int minCols;
  private final int minRows;

  public Dimensions(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.minCols = paramInt1;
    this.maxCols = paramInt2;
    this.minRows = paramInt3;
    this.maxRows = paramInt4;
  }

  public int getMaxCols()
  {
    return this.maxCols;
  }

  public int getMaxRows()
  {
    return this.maxRows;
  }

  public int getMinCols()
  {
    return this.minCols;
  }

  public int getMinRows()
  {
    return this.minRows;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.pdf417.encoder.Dimensions
 * JD-Core Version:    0.6.2
 */