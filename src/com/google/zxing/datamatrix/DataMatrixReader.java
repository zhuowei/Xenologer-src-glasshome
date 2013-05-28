package com.google.zxing.datamatrix;

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
import com.google.zxing.datamatrix.decoder.Decoder;
import com.google.zxing.datamatrix.detector.Detector;
import java.util.List;
import java.util.Map;

public final class DataMatrixReader
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
    int i = moduleSize(arrayOfInt1, paramBitMatrix);
    int j = arrayOfInt1[1];
    int k = arrayOfInt2[1];
    int m = arrayOfInt1[0];
    int n = (1 + (arrayOfInt2[0] - m)) / i;
    int i1 = (1 + (k - j)) / i;
    if ((n <= 0) || (i1 <= 0))
      throw NotFoundException.getNotFoundInstance();
    int i2 = i >> 1;
    int i3 = j + i2;
    int i4 = m + i2;
    BitMatrix localBitMatrix = new BitMatrix(n, i1);
    for (int i5 = 0; i5 < i1; i5++)
    {
      int i6 = i3 + i5 * i;
      for (int i7 = 0; i7 < n; i7++)
        if (paramBitMatrix.get(i4 + i7 * i, i6))
          localBitMatrix.set(i7, i5);
    }
    return localBitMatrix;
  }

  private static int moduleSize(int[] paramArrayOfInt, BitMatrix paramBitMatrix)
    throws NotFoundException
  {
    int i = paramBitMatrix.getWidth();
    int j = paramArrayOfInt[0];
    int k = paramArrayOfInt[1];
    while ((j < i) && (paramBitMatrix.get(j, k)))
      j++;
    if (j == i)
      throw NotFoundException.getNotFoundInstance();
    int m = j - paramArrayOfInt[0];
    if (m == 0)
      throw NotFoundException.getNotFoundInstance();
    return m;
  }

  public Result decode(BinaryBitmap paramBinaryBitmap)
    throws NotFoundException, ChecksumException, FormatException
  {
    return decode(paramBinaryBitmap, null);
  }

  public Result decode(BinaryBitmap paramBinaryBitmap, Map<DecodeHintType, ?> paramMap)
    throws NotFoundException, ChecksumException, FormatException
  {
    DecoderResult localDecoderResult;
    if ((paramMap != null) && (paramMap.containsKey(DecodeHintType.PURE_BARCODE)))
    {
      BitMatrix localBitMatrix = extractPureBits(paramBinaryBitmap.getBlackMatrix());
      localDecoderResult = this.decoder.decode(localBitMatrix);
    }
    DetectorResult localDetectorResult;
    for (ResultPoint[] arrayOfResultPoint = NO_POINTS; ; arrayOfResultPoint = localDetectorResult.getPoints())
    {
      Result localResult = new Result(localDecoderResult.getText(), localDecoderResult.getRawBytes(), arrayOfResultPoint, BarcodeFormat.DATA_MATRIX);
      List localList = localDecoderResult.getByteSegments();
      if (localList != null)
        localResult.putMetadata(ResultMetadataType.BYTE_SEGMENTS, localList);
      String str = localDecoderResult.getECLevel();
      if (str != null)
        localResult.putMetadata(ResultMetadataType.ERROR_CORRECTION_LEVEL, str);
      return localResult;
      localDetectorResult = new Detector(paramBinaryBitmap.getBlackMatrix()).detect();
      localDecoderResult = this.decoder.decode(localDetectorResult.getBits());
    }
  }

  public void reset()
  {
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.datamatrix.DataMatrixReader
 * JD-Core Version:    0.6.2
 */