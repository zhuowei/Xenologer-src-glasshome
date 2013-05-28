package com.google.zxing.qrcode;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.qrcode.decoder.Decoder;
import com.google.zxing.qrcode.detector.Detector;
import java.util.List;
import java.util.Map;

public class QRCodeReader
  implements Reader
{
  private static final ResultPoint[] NO_POINTS = new ResultPoint[0];
  private final Decoder decoder = new Decoder();

  private static BitMatrix extractPureBits(BitMatrix paramBitMatrix)
    throws NotFoundException
  {
    int[] arrayOfInt1 = paramBitMatrix.getTopLeftOnBit();
    int[] arrayOfInt2 = paramBitMatrix.getBottomRightOnBit();
    if ((arrayOfInt1 == null) || (arrayOfInt2 == null))
      throw NotFoundException.getNotFoundInstance();
    float f = moduleSize(arrayOfInt1, paramBitMatrix);
    int i = arrayOfInt1[1];
    int j = arrayOfInt2[1];
    int k = arrayOfInt1[0];
    int m = arrayOfInt2[0];
    if (j - i != m - k)
      m = k + (j - i);
    int n = Math.round((1 + (m - k)) / f);
    int i1 = Math.round((1 + (j - i)) / f);
    if ((n <= 0) || (i1 <= 0))
      throw NotFoundException.getNotFoundInstance();
    if (i1 != n)
      throw NotFoundException.getNotFoundInstance();
    int i2 = (int)(f / 2.0F);
    int i3 = i + i2;
    int i4 = k + i2;
    BitMatrix localBitMatrix = new BitMatrix(n, i1);
    for (int i5 = 0; i5 < i1; i5++)
    {
      int i6 = i3 + (int)(f * i5);
      for (int i7 = 0; i7 < n; i7++)
        if (paramBitMatrix.get(i4 + (int)(f * i7), i6))
          localBitMatrix.set(i7, i5);
    }
    return localBitMatrix;
  }

  private static float moduleSize(int[] paramArrayOfInt, BitMatrix paramBitMatrix)
    throws NotFoundException
  {
    int i = paramBitMatrix.getHeight();
    int j = paramBitMatrix.getWidth();
    int k = paramArrayOfInt[0];
    int m = paramArrayOfInt[1];
    int n = 1;
    int i1 = 0;
    if ((k < j) && (m < i))
    {
      if (n == paramBitMatrix.get(k, m))
        break label84;
      i1++;
      if (i1 != 5);
    }
    else
    {
      if ((k != j) && (m != i))
        break label99;
      throw NotFoundException.getNotFoundInstance();
    }
    if (n == 0);
    for (n = 1; ; n = 0)
    {
      label84: k++;
      m++;
      break;
    }
    label99: return (k - paramArrayOfInt[0]) / 7.0F;
  }

  public Result decode(BinaryBitmap paramBinaryBitmap)
    throws NotFoundException, ChecksumException, FormatException
  {
    return decode(paramBinaryBitmap, null);
  }

  public final Result decode(BinaryBitmap paramBinaryBitmap, Map<DecodeHintType, ?> paramMap)
    throws NotFoundException, ChecksumException, FormatException
  {
    DecoderResult localDecoderResult;
    if ((paramMap != null) && (paramMap.containsKey(DecodeHintType.PURE_BARCODE)))
    {
      BitMatrix localBitMatrix = extractPureBits(paramBinaryBitmap.getBlackMatrix());
      localDecoderResult = this.decoder.decode(localBitMatrix, paramMap);
    }
    DetectorResult localDetectorResult;
    for (ResultPoint[] arrayOfResultPoint = NO_POINTS; ; arrayOfResultPoint = localDetectorResult.getPoints())
    {
      Result localResult = new Result(localDecoderResult.getText(), localDecoderResult.getRawBytes(), arrayOfResultPoint, BarcodeFormat.QR_CODE);
      List localList = localDecoderResult.getByteSegments();
      if (localList != null)
        localResult.putMetadata(ResultMetadataType.BYTE_SEGMENTS, localList);
      String str = localDecoderResult.getECLevel();
      if (str != null)
        localResult.putMetadata(ResultMetadataType.ERROR_CORRECTION_LEVEL, str);
      return localResult;
      localDetectorResult = new Detector(paramBinaryBitmap.getBlackMatrix()).detect(paramMap);
      localDecoderResult = this.decoder.decode(localDetectorResult.getBits(), paramMap);
    }
  }

  protected final Decoder getDecoder()
  {
    return this.decoder;
  }

  public void reset()
  {
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.QRCodeReader
 * JD-Core Version:    0.6.2
 */