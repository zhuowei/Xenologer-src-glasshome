package com.google.zxing.qrcode;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.encoder.ByteMatrix;
import com.google.zxing.qrcode.encoder.Encoder;
import com.google.zxing.qrcode.encoder.QRCode;
import java.util.Map;

public final class QRCodeWriter
  implements Writer
{
  private static final int QUIET_ZONE_SIZE = 4;

  private static BitMatrix renderResult(QRCode paramQRCode, int paramInt1, int paramInt2, int paramInt3)
  {
    ByteMatrix localByteMatrix = paramQRCode.getMatrix();
    if (localByteMatrix == null)
      throw new IllegalStateException();
    int i = localByteMatrix.getWidth();
    int j = localByteMatrix.getHeight();
    int k = i + (paramInt3 << 1);
    int m = j + (paramInt3 << 1);
    int n = Math.max(paramInt1, k);
    int i1 = Math.max(paramInt2, m);
    int i2 = Math.min(n / k, i1 / m);
    int i3 = (n - i * i2) / 2;
    int i4 = (i1 - j * i2) / 2;
    BitMatrix localBitMatrix = new BitMatrix(n, i1);
    int i5 = 0;
    int i6 = i4;
    while (i5 < j)
    {
      int i7 = 0;
      int i8 = i3;
      while (i7 < i)
      {
        if (localByteMatrix.get(i7, i5) == 1)
          localBitMatrix.setRegion(i8, i6, i2, i2);
        i7++;
        i8 += i2;
      }
      i5++;
      i6 += i2;
    }
    return localBitMatrix;
  }

  public BitMatrix encode(String paramString, BarcodeFormat paramBarcodeFormat, int paramInt1, int paramInt2)
    throws WriterException
  {
    return encode(paramString, paramBarcodeFormat, paramInt1, paramInt2, null);
  }

  public BitMatrix encode(String paramString, BarcodeFormat paramBarcodeFormat, int paramInt1, int paramInt2, Map<EncodeHintType, ?> paramMap)
    throws WriterException
  {
    if (paramString.length() == 0)
      throw new IllegalArgumentException("Found empty contents");
    if (paramBarcodeFormat != BarcodeFormat.QR_CODE)
      throw new IllegalArgumentException("Can only encode QR_CODE, but got " + paramBarcodeFormat);
    if ((paramInt1 < 0) || (paramInt2 < 0))
      throw new IllegalArgumentException("Requested dimensions are too small: " + paramInt1 + 'x' + paramInt2);
    Object localObject = ErrorCorrectionLevel.L;
    int i = 4;
    if (paramMap != null)
    {
      ErrorCorrectionLevel localErrorCorrectionLevel = (ErrorCorrectionLevel)paramMap.get(EncodeHintType.ERROR_CORRECTION);
      if (localErrorCorrectionLevel != null)
        localObject = localErrorCorrectionLevel;
      Integer localInteger = (Integer)paramMap.get(EncodeHintType.MARGIN);
      if (localInteger != null)
        i = localInteger.intValue();
    }
    return renderResult(Encoder.encode(paramString, (ErrorCorrectionLevel)localObject, paramMap), paramInt1, paramInt2, i);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.QRCodeWriter
 * JD-Core Version:    0.6.2
 */