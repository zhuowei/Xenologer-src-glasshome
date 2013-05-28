package com.google.zxing.client.j2se;

import com.google.zxing.common.BitMatrix;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import javax.imageio.ImageIO;

public final class MatrixToImageWriter
{
  private static final MatrixToImageConfig DEFAULT_CONFIG = new MatrixToImageConfig();

  public static BufferedImage toBufferedImage(BitMatrix paramBitMatrix)
  {
    return toBufferedImage(paramBitMatrix, DEFAULT_CONFIG);
  }

  public static BufferedImage toBufferedImage(BitMatrix paramBitMatrix, MatrixToImageConfig paramMatrixToImageConfig)
  {
    int i = paramBitMatrix.getWidth();
    int j = paramBitMatrix.getHeight();
    BufferedImage localBufferedImage = new BufferedImage(i, j, paramMatrixToImageConfig.getBufferedImageColorModel());
    int k = paramMatrixToImageConfig.getPixelOnColor();
    int m = paramMatrixToImageConfig.getPixelOffColor();
    for (int n = 0; n < i; n++)
    {
      int i1 = 0;
      if (i1 < j)
      {
        if (paramBitMatrix.get(n, i1));
        for (int i2 = k; ; i2 = m)
        {
          localBufferedImage.setRGB(n, i1, i2);
          i1++;
          break;
        }
      }
    }
    return localBufferedImage;
  }

  public static void writeToFile(BitMatrix paramBitMatrix, String paramString, File paramFile)
    throws IOException
  {
    writeToFile(paramBitMatrix, paramString, paramFile, DEFAULT_CONFIG);
  }

  public static void writeToFile(BitMatrix paramBitMatrix, String paramString, File paramFile, MatrixToImageConfig paramMatrixToImageConfig)
    throws IOException
  {
    if (!ImageIO.write(toBufferedImage(paramBitMatrix, paramMatrixToImageConfig), paramString, paramFile))
      throw new IOException("Could not write an image of format " + paramString + " to " + paramFile);
  }

  public static void writeToStream(BitMatrix paramBitMatrix, String paramString, OutputStream paramOutputStream)
    throws IOException
  {
    writeToStream(paramBitMatrix, paramString, paramOutputStream, DEFAULT_CONFIG);
  }

  public static void writeToStream(BitMatrix paramBitMatrix, String paramString, OutputStream paramOutputStream, MatrixToImageConfig paramMatrixToImageConfig)
    throws IOException
  {
    if (!ImageIO.write(toBufferedImage(paramBitMatrix, paramMatrixToImageConfig), paramString, paramOutputStream))
      throw new IOException("Could not write an image of format " + paramString);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.client.j2se.MatrixToImageWriter
 * JD-Core Version:    0.6.2
 */