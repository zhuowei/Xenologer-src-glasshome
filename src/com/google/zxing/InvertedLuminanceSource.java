package com.google.zxing;

public final class InvertedLuminanceSource extends LuminanceSource
{
  private final LuminanceSource delegate;

  public InvertedLuminanceSource(LuminanceSource paramLuminanceSource)
  {
    super(paramLuminanceSource.getWidth(), paramLuminanceSource.getHeight());
    this.delegate = paramLuminanceSource;
  }

  public LuminanceSource crop(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return new InvertedLuminanceSource(this.delegate.crop(paramInt1, paramInt2, paramInt3, paramInt4));
  }

  public byte[] getMatrix()
  {
    byte[] arrayOfByte1 = this.delegate.getMatrix();
    int i = getWidth() * getHeight();
    byte[] arrayOfByte2 = new byte[i];
    for (int j = 0; j < i; j++)
      arrayOfByte2[j] = ((byte)(255 - (0xFF & arrayOfByte1[j])));
    return arrayOfByte2;
  }

  public byte[] getRow(int paramInt, byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = this.delegate.getRow(paramInt, paramArrayOfByte);
    int i = getWidth();
    for (int j = 0; j < i; j++)
      arrayOfByte[j] = ((byte)(255 - (0xFF & arrayOfByte[j])));
    return arrayOfByte;
  }

  public LuminanceSource invert()
  {
    return this.delegate;
  }

  public boolean isCropSupported()
  {
    return this.delegate.isCropSupported();
  }

  public boolean isRotateSupported()
  {
    return this.delegate.isRotateSupported();
  }

  public LuminanceSource rotateCounterClockwise()
  {
    return new InvertedLuminanceSource(this.delegate.rotateCounterClockwise());
  }

  public LuminanceSource rotateCounterClockwise45()
  {
    return new InvertedLuminanceSource(this.delegate.rotateCounterClockwise45());
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.InvertedLuminanceSource
 * JD-Core Version:    0.6.2
 */