package com.google.zxing.client.j2se;

import com.google.zxing.LuminanceSource;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.geom.AffineTransform;
import java.awt.image.BufferedImage;
import java.awt.image.WritableRaster;

public final class BufferedImageLuminanceSource extends LuminanceSource
{
  private static final boolean EXPLICIT_LUMINANCE_CONVERSION = false;
  private static final double MINUS_45_IN_RADIANS = -0.7853981633974483D;
  private final BufferedImage image;
  private final int left;
  private final int top;

  static
  {
    String str = System.getProperty("explicitLuminanceConversion");
    if (str == null)
      str = System.getenv("EXPLICIT_LUMINANCE_CONVERSION");
  }

  public BufferedImageLuminanceSource(BufferedImage paramBufferedImage)
  {
    this(paramBufferedImage, 0, 0, paramBufferedImage.getWidth(), paramBufferedImage.getHeight());
  }

  public BufferedImageLuminanceSource(BufferedImage paramBufferedImage, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super(paramInt3, paramInt4);
    if (paramBufferedImage.getType() == 10)
      this.image = paramBufferedImage;
    while (true)
    {
      this.left = paramInt1;
      this.top = paramInt2;
      return;
      int i = paramBufferedImage.getWidth();
      int j = paramBufferedImage.getHeight();
      if ((paramInt1 + paramInt3 > i) || (paramInt2 + paramInt4 > j))
        throw new IllegalArgumentException("Crop rectangle does not fit within image data.");
      this.image = new BufferedImage(i, j, 10);
      if (EXPLICIT_LUMINANCE_CONVERSION)
      {
        WritableRaster localWritableRaster = this.image.getRaster();
        int[] arrayOfInt2 = new int[paramInt3];
        for (int i1 = paramInt2; i1 < paramInt2 + paramInt4; i1++)
        {
          paramBufferedImage.getRGB(paramInt1, i1, paramInt3, 1, arrayOfInt2, 0, i);
          for (int i2 = 0; i2 < paramInt3; i2++)
          {
            int i3 = arrayOfInt2[i2];
            if ((0xFF000000 & i3) == 0)
              i3 = -1;
            arrayOfInt2[i2] = (512 + (306 * (0xFF & i3 >> 16) + 601 * (0xFF & i3 >> 8) + 117 * (i3 & 0xFF)) >> 10);
          }
          localWritableRaster.setPixels(paramInt1, i1, paramInt3, 1, arrayOfInt2);
        }
      }
      else
      {
        if (paramBufferedImage.getAlphaRaster() != null)
        {
          int[] arrayOfInt1 = new int[paramInt3];
          for (int k = paramInt2; k < paramInt2 + paramInt4; k++)
          {
            paramBufferedImage.getRGB(paramInt1, k, paramInt3, 1, arrayOfInt1, 0, i);
            int m = 0;
            for (int n = 0; n < paramInt3; n++)
              if ((0xFF000000 & arrayOfInt1[n]) == 0)
              {
                arrayOfInt1[n] = -1;
                m = 1;
              }
            if (m != 0)
              paramBufferedImage.setRGB(paramInt1, k, paramInt3, 1, arrayOfInt1, 0, i);
          }
        }
        this.image.getGraphics().drawImage(paramBufferedImage, 0, 0, null);
      }
    }
  }

  public LuminanceSource crop(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return new BufferedImageLuminanceSource(this.image, paramInt1 + this.left, paramInt2 + this.top, paramInt3, paramInt4);
  }

  public byte[] getMatrix()
  {
    int i = getWidth();
    int j = getHeight();
    byte[] arrayOfByte = new byte[i * j];
    this.image.getRaster().getDataElements(this.left, this.top, i, j, arrayOfByte);
    return arrayOfByte;
  }

  public byte[] getRow(int paramInt, byte[] paramArrayOfByte)
  {
    if ((paramInt < 0) || (paramInt >= getHeight()))
      throw new IllegalArgumentException("Requested row is outside the image: " + paramInt);
    int i = getWidth();
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length < i))
      paramArrayOfByte = new byte[i];
    this.image.getRaster().getDataElements(this.left, paramInt + this.top, i, 1, paramArrayOfByte);
    return paramArrayOfByte;
  }

  public boolean isCropSupported()
  {
    return true;
  }

  public boolean isRotateSupported()
  {
    return true;
  }

  public LuminanceSource rotateCounterClockwise()
  {
    int i = this.image.getWidth();
    int j = this.image.getHeight();
    AffineTransform localAffineTransform = new AffineTransform(0.0D, -1.0D, 1.0D, 0.0D, 0.0D, i);
    BufferedImage localBufferedImage = new BufferedImage(j, i, 10);
    Graphics2D localGraphics2D = localBufferedImage.createGraphics();
    localGraphics2D.drawImage(this.image, localAffineTransform, null);
    localGraphics2D.dispose();
    int k = getWidth();
    return new BufferedImageLuminanceSource(localBufferedImage, this.top, i - (k + this.left), getHeight(), k);
  }

  public LuminanceSource rotateCounterClockwise45()
  {
    int i = getWidth();
    int j = getHeight();
    int k = this.left + i / 2;
    int m = this.top + j / 2;
    AffineTransform localAffineTransform = AffineTransform.getRotateInstance(-0.7853981633974483D, k, m);
    int n = Math.max(this.image.getWidth(), this.image.getHeight());
    BufferedImage localBufferedImage = new BufferedImage(n, n, 10);
    Graphics2D localGraphics2D = localBufferedImage.createGraphics();
    localGraphics2D.drawImage(this.image, localAffineTransform, null);
    localGraphics2D.dispose();
    int i1 = Math.max(i, j) / 2;
    int i2 = Math.max(0, k - i1);
    int i3 = Math.max(0, m - i1);
    int i4 = Math.min(n - 1, k + i1);
    int i5 = Math.min(n - 1, m + i1);
    return new BufferedImageLuminanceSource(localBufferedImage, i2, i3, i4 - i2, i5 - i3);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.client.j2se.BufferedImageLuminanceSource
 * JD-Core Version:    0.6.2
 */