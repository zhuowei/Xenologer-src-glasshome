package com.google.glass.home.timeline.html;

import java.io.IOException;
import java.io.InputStream;

public class ContentTypes
{
  private static final byte[] GIF_PREFIX = { 71, 73, 70, 56 };
  private static final byte[] JPEG_PREFIX = { -1, -40 };
  private static final int MAX_PREFIX_LENGTH = PNG_PREFIX.length;
  private static final byte[] PNG_PREFIX = { -119, 80, 78, 71, 13, 10, 26, 10 };

  private static boolean arrayStartsWith(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    if (paramArrayOfByte1.length < paramArrayOfByte2.length)
      return false;
    for (int i = 0; ; i++)
    {
      if (i >= paramArrayOfByte2.length)
        break label32;
      if (paramArrayOfByte1[i] != paramArrayOfByte2[i])
        break;
    }
    label32: return true;
  }

  private static String getContentType(byte[] paramArrayOfByte)
    throws IOException
  {
    if (arrayStartsWith(paramArrayOfByte, JPEG_PREFIX))
      return "image/jpeg";
    if (arrayStartsWith(paramArrayOfByte, PNG_PREFIX))
      return "image/png";
    if (arrayStartsWith(paramArrayOfByte, GIF_PREFIX))
      return "image/gif";
    throw new IOException("Unrecognized content type");
  }

  private static byte[] readPrefix(InputStream paramInputStream)
    throws IOException
  {
    if (!paramInputStream.markSupported())
      throw new IOException("InputStream must support mark()");
    paramInputStream.mark(MAX_PREFIX_LENGTH);
    byte[] arrayOfByte = new byte[MAX_PREFIX_LENGTH];
    int i = 0;
    while (i < arrayOfByte.length)
    {
      int j = paramInputStream.read(arrayOfByte, i, arrayOfByte.length - i);
      if (j <= 0)
        throw new IOException("Insufficient data");
      i += j;
    }
    paramInputStream.reset();
    return arrayOfByte;
  }

  public static String sniff(InputStream paramInputStream)
    throws IOException
  {
    return getContentType(readPrefix(paramInputStream));
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.timeline.html.ContentTypes
 * JD-Core Version:    0.6.2
 */