package com.google.zxing.client.j2se;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.MultiFormatWriter;
import java.io.File;
import java.io.PrintStream;
import java.util.Locale;

public final class CommandLineEncoder
{
  private static final BarcodeFormat DEFAULT_BARCODE_FORMAT = BarcodeFormat.QR_CODE;
  private static final int DEFAULT_HEIGHT = 300;
  private static final String DEFAULT_IMAGE_FORMAT = "PNG";
  private static final String DEFAULT_OUTPUT_FILE = "out";
  private static final int DEFAULT_WIDTH = 300;

  public static void main(String[] paramArrayOfString)
    throws Exception
  {
    if (paramArrayOfString.length == 0)
    {
      printUsage();
      return;
    }
    BarcodeFormat localBarcodeFormat = DEFAULT_BARCODE_FORMAT;
    String str1 = "PNG";
    String str2 = "out";
    int i = 300;
    int j = 300;
    int k = paramArrayOfString.length;
    int m = 0;
    if (m < k)
    {
      String str4 = paramArrayOfString[m];
      if (str4.startsWith("--barcode_format"))
        localBarcodeFormat = BarcodeFormat.valueOf(str4.split("=")[1]);
      while (true)
      {
        m++;
        break;
        if (str4.startsWith("--image_format"))
          str1 = str4.split("=")[1];
        else if (str4.startsWith("--output"))
          str2 = str4.split("=")[1];
        else if (str4.startsWith("--width"))
          i = Integer.parseInt(str4.split("=")[1]);
        else if (str4.startsWith("--height"))
          j = Integer.parseInt(str4.split("=")[1]);
      }
    }
    if ("out".equals(str2))
      str2 = str2 + '.' + str1.toLowerCase(Locale.ENGLISH);
    int n = paramArrayOfString.length;
    Object localObject;
    for (int i1 = 0; ; i1++)
    {
      localObject = null;
      if (i1 < n)
      {
        String str3 = paramArrayOfString[i1];
        if (!str3.startsWith("--"))
          localObject = str3;
      }
      else
      {
        if (localObject != null)
          break;
        printUsage();
        return;
      }
    }
    MatrixToImageWriter.writeToFile(new MultiFormatWriter().encode(localObject, localBarcodeFormat, i, j), str1, new File(str2));
  }

  private static void printUsage()
  {
    System.err.println("Encodes barcode images using the ZXing library\n");
    System.err.println("usage: CommandLineEncoder [ options ] content_to_encode");
    System.err.println("  --barcode_format=format: Format to encode, from BarcodeFormat class. Not all formats are supported. Defaults to QR_CODE.");
    System.err.println("  --image_format=format: image output format, such as PNG, JPG, GIF. Defaults to PNG");
    System.err.println("  --output=filename: File to write to. Defaults to out.png");
    System.err.println("  --width=pixels: Image width. Defaults to 300");
    System.err.println("  --height=pixels: Image height. Defaults to 300");
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.client.j2se.CommandLineEncoder
 * JD-Core Version:    0.6.2
 */