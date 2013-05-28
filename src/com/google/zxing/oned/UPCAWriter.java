package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.Map;

public final class UPCAWriter
  implements Writer
{
  private final EAN13Writer subWriter = new EAN13Writer();

  private static String preencode(String paramString)
  {
    int i = paramString.length();
    if (i == 11)
    {
      j = 0;
      k = 0;
      if (k < 11)
      {
        m = '\0*0' + paramString.charAt(k);
        if (k % 2 == 0);
        for (n = 3; ; n = 1)
        {
          j += n * m;
          k++;
          break;
        }
      }
      paramString = paramString + (1000 - j) % 10;
    }
    while (i == 12)
    {
      int j;
      int k;
      int m;
      int n;
      return '0' + paramString;
    }
    throw new IllegalArgumentException("Requested contents should be 11 or 12 digits long, but got " + paramString.length());
  }

  public BitMatrix encode(String paramString, BarcodeFormat paramBarcodeFormat, int paramInt1, int paramInt2)
    throws WriterException
  {
    return encode(paramString, paramBarcodeFormat, paramInt1, paramInt2, null);
  }

  public BitMatrix encode(String paramString, BarcodeFormat paramBarcodeFormat, int paramInt1, int paramInt2, Map<EncodeHintType, ?> paramMap)
    throws WriterException
  {
    if (paramBarcodeFormat != BarcodeFormat.UPC_A)
      throw new IllegalArgumentException("Can only encode UPC-A, but got " + paramBarcodeFormat);
    return this.subWriter.encode(preencode(paramString), BarcodeFormat.EAN_13, paramInt1, paramInt2, paramMap);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.UPCAWriter
 * JD-Core Version:    0.6.2
 */