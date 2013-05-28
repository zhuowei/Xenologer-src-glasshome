package com.google.zxing.aztec.encoder;

import com.google.zxing.common.BitMatrix;

public final class AztecCode
{
  private int codeWords;
  private boolean compact;
  private int layers;
  private BitMatrix matrix;
  private int size;

  public int getCodeWords()
  {
    return this.codeWords;
  }

  public int getLayers()
  {
    return this.layers;
  }

  public BitMatrix getMatrix()
  {
    return this.matrix;
  }

  public int getSize()
  {
    return this.size;
  }

  public boolean isCompact()
  {
    return this.compact;
  }

  public void setCodeWords(int paramInt)
  {
    this.codeWords = paramInt;
  }

  public void setCompact(boolean paramBoolean)
  {
    this.compact = paramBoolean;
  }

  public void setLayers(int paramInt)
  {
    this.layers = paramInt;
  }

  public void setMatrix(BitMatrix paramBitMatrix)
  {
    this.matrix = paramBitMatrix;
  }

  public void setSize(int paramInt)
  {
    this.size = paramInt;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.aztec.encoder.AztecCode
 * JD-Core Version:    0.6.2
 */