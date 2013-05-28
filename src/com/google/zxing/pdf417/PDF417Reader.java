package com.google.zxing.pdf417;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.pdf417.decoder.Decoder;
import com.google.zxing.pdf417.detector.Detector;
import java.util.Map;

public final class PDF417Reader
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
    int m = findPatternStart(arrayOfInt1[0], j, paramBitMatrix);
    int n = (1 + (findPatternEnd(arrayOfInt1[0], j, paramBitMatrix) - m)) / i;
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

  private static int findPatternEnd(int paramInt1, int paramInt2, BitMatrix paramBitMatrix)
    throws NotFoundException
  {
    for (int i = -1 + paramBitMatrix.getWidth(); (i > paramInt1) && (!paramBitMatrix.get(i, paramInt2)); i--);
    int j = 0;
    boolean bool2;
    for (boolean bool1 = true; (i > paramInt1) && (j < 9); bool1 = bool2)
    {
      i--;
      bool2 = paramBitMatrix.get(i, paramInt2);
      if (bool1 != bool2)
        j++;
    }
    if (i == paramInt1)
      throw NotFoundException.getNotFoundInstance();
    return i;
  }

  private static int findPatternStart(int paramInt1, int paramInt2, BitMatrix paramBitMatrix)
    throws NotFoundException
  {
    int i = paramBitMatrix.getWidth();
    int j = paramInt1;
    int k = 0;
    boolean bool2;
    for (boolean bool1 = true; (j < i - 1) && (k < 8); bool1 = bool2)
    {
      j++;
      bool2 = paramBitMatrix.get(j, paramInt2);
      if (bool1 != bool2)
        k++;
    }
    if (j == i - 1)
      throw NotFoundException.getNotFoundInstance();
    return j;
  }

  private static int moduleSize(int[] paramArrayOfInt, BitMatrix paramBitMatrix)
    throws NotFoundException
  {
    int i = paramArrayOfInt[0];
    int j = paramArrayOfInt[1];
    int k = paramBitMatrix.getWidth();
    while ((i < k) && (paramBitMatrix.get(i, j)))
      i++;
    if (i == k)
      throw NotFoundException.getNotFoundInstance();
    int m = i - paramArrayOfInt[0] >>> 3;
    if (m == 0)
      throw NotFoundException.getNotFoundInstance();
    return m;
  }

  public Result decode(BinaryBitmap paramBinaryBitmap)
    throws NotFoundException, FormatException, ChecksumException
  {
    return decode(paramBinaryBitmap, null);
  }

  public Result decode(BinaryBitmap paramBinaryBitmap, Map<DecodeHintType, ?> paramMap)
    throws NotFoundException, FormatException, ChecksumException
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
      return new Result(localDecoderResult.getText(), localDecoderResult.getRawBytes(), arrayOfResultPoint, BarcodeFormat.PDF_417);
      localDetectorResult = new Detector(paramBinaryBitmap).detect();
      localDecoderResult = this.decoder.decode(localDetectorResult.getBits());
    }
  }

  public void reset()
  {
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.pdf417.PDF417Reader
 * JD-Core Version:    0.6.2
 */