package com.google.zxing.aztec;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.aztec.encoder.AztecCode;
import com.google.zxing.aztec.encoder.Encoder;
import com.google.zxing.common.BitMatrix;
import java.nio.charset.Charset;
import java.util.Map;

public final class AztecWriter
  implements Writer
{
  private static final Charset DEFAULT_CHARSET = Charset.forName("ISO-8859-1");

  private static BitMatrix encode(String paramString, BarcodeFormat paramBarcodeFormat, Charset paramCharset, int paramInt)
  {
    if (paramBarcodeFormat != BarcodeFormat.AZTEC)
      throw new IllegalArgumentException("Can only encode AZTEC, but got " + paramBarcodeFormat);
    return Encoder.encode(paramString.getBytes(paramCharset), paramInt).getMatrix();
  }

  public BitMatrix encode(String paramString, BarcodeFormat paramBarcodeFormat, int paramInt1, int paramInt2)
  {
    return encode(paramString, paramBarcodeFormat, DEFAULT_CHARSET, 33);
  }

  public BitMatrix encode(String paramString, BarcodeFormat paramBarcodeFormat, int paramInt1, int paramInt2, Map<EncodeHintType, ?> paramMap)
  {
    String str = (String)paramMap.get(EncodeHintType.CHARACTER_SET);
    Number localNumber = (Number)paramMap.get(EncodeHintType.ERROR_CORRECTION);
    Charset localCharset;
    if (str == null)
    {
      localCharset = DEFAULT_CHARSET;
      if (localNumber != null)
        break label69;
    }
    label69: for (int i = 33; ; i = localNumber.intValue())
    {
      return encode(paramString, paramBarcodeFormat, localCharset, i);
      localCharset = Charset.forName(str);
      break;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.aztec.AztecWriter
 * JD-Core Version:    0.6.2
 */