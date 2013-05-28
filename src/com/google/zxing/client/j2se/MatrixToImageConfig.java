package com.google.zxing.client.j2se;

public final class MatrixToImageConfig
{
  public static final int BLACK = -16777216;
  public static final int WHITE = -1;
  private final int offColor;
  private final int onColor;

  public MatrixToImageConfig()
  {
    this(-16777216, -1);
  }

  public MatrixToImageConfig(int paramInt1, int paramInt2)
  {
    this.onColor = paramInt1;
    this.offColor = paramInt2;
  }

  int getBufferedImageColorModel()
  {
    if ((this.onColor == -16777216) && (this.offColor == -1))
      return 12;
    return 1;
  }

  public int getPixelOffColor()
  {
    return this.offColor;
  }

  public int getPixelOnColor()
  {
    return this.onColor;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.client.j2se.MatrixToImageConfig
 * JD-Core Version:    0.6.2
 */