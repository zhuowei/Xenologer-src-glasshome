package com.google.zxing;

public final class RGBLuminanceSource extends LuminanceSource
{
  private final int dataHeight;
  private final int dataWidth;
  private final int left;
  private final byte[] luminances;
  private final int top;

  public RGBLuminanceSource(int paramInt1, int paramInt2, int[] paramArrayOfInt)
  {
    super(paramInt1, paramInt2);
    this.dataWidth = paramInt1;
    this.dataHeight = paramInt2;
    this.left = 0;
    this.top = 0;
    this.luminances = new byte[paramInt1 * paramInt2];
    for (int i = 0; i < paramInt2; i++)
    {
      int j = i * paramInt1;
      int k = 0;
      if (k < paramInt1)
      {
        int m = paramArrayOfInt[(j + k)];
        int n = 0xFF & m >> 16;
        int i1 = 0xFF & m >> 8;
        int i2 = m & 0xFF;
        if ((n == i1) && (i1 == i2))
          this.luminances[(j + k)] = ((byte)n);
        while (true)
        {
          k++;
          break;
          this.luminances[(j + k)] = ((byte)(i2 + (i1 + (n + i1)) >> 2));
        }
      }
    }
  }

  private RGBLuminanceSource(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    super(paramInt5, paramInt6);
    if ((paramInt3 + paramInt5 > paramInt1) || (paramInt4 + paramInt6 > paramInt2))
      throw new IllegalArgumentException("Crop rectangle does not fit within image data.");
    this.luminances = paramArrayOfByte;
    this.dataWidth = paramInt1;
    this.dataHeight = paramInt2;
    this.left = paramInt3;
    this.top = paramInt4;
  }

  public LuminanceSource crop(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return new RGBLuminanceSource(this.luminances, this.dataWidth, this.dataHeight, paramInt1 + this.left, paramInt2 + this.top, paramInt3, paramInt4);
  }

  public byte[] getMatrix()
  {
    int i = getWidth();
    int j = getHeight();
    byte[] arrayOfByte1;
    if ((i == this.dataWidth) && (j == this.dataHeight))
      arrayOfByte1 = this.luminances;
    while (true)
    {
      return arrayOfByte1;
      int k = i * j;
      arrayOfByte1 = new byte[k];
      int m = this.top * this.dataWidth + this.left;
      if (i == this.dataWidth)
      {
        System.arraycopy(this.luminances, m, arrayOfByte1, 0, k);
        return arrayOfByte1;
      }
      byte[] arrayOfByte2 = this.luminances;
      for (int n = 0; n < j; n++)
      {
        System.arraycopy(arrayOfByte2, m, arrayOfByte1, n * i, i);
        m += this.dataWidth;
      }
    }
  }

  public byte[] getRow(int paramInt, byte[] paramArrayOfByte)
  {
    if ((paramInt < 0) || (paramInt >= getHeight()))
      throw new IllegalArgumentException("Requested row is outside the image: " + paramInt);
    int i = getWidth();
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length < i))
      paramArrayOfByte = new byte[i];
    int j = (paramInt + this.top) * this.dataWidth + this.left;
    System.arraycopy(this.luminances, j, paramArrayOfByte, 0, i);
    return paramArrayOfByte;
  }

  public boolean isCropSupported()
  {
    return true;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.RGBLuminanceSource
 * JD-Core Version:    0.6.2
 */