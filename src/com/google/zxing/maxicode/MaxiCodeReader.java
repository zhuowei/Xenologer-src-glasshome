package com.google.zxing.maxicode;

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
import com.google.zxing.maxicode.decoder.Decoder;
import java.util.Map;

public final class MaxiCodeReader
  implements Reader
{
  private static final int MATRIX_HEIGHT = 33;
  private static final int MATRIX_WIDTH = 30;
  private static final ResultPoint[] NO_POINTS = new ResultPoint[0];
  private final Decoder decoder = new Decoder();

  private static BitMatrix extractPureBits(BitMatrix paramBitMatrix)
    throws NotFoundException
  {
    int[] arrayOfInt = paramBitMatrix.getEnclosingRectangle();
    if (arrayOfInt == null)
      throw NotFoundException.getNotFoundInstance();
    int i = arrayOfInt[0];
    int j = arrayOfInt[1];
    int k = arrayOfInt[2];
    int m = arrayOfInt[3];
    BitMatrix localBitMatrix = new BitMatrix(30, 33);
    for (int n = 0; n < 33; n++)
    {
      int i1 = j + (n * m + m / 2) / 33;
      for (int i2 = 0; i2 < 30; i2++)
        if (paramBitMatrix.get(i + (i2 * k + k / 2 + k * (n & 0x1) / 2) / 30, i1))
          localBitMatrix.set(i2, n);
    }
    return localBitMatrix;
  }

  public Result decode(BinaryBitmap paramBinaryBitmap)
    throws NotFoundException, ChecksumException, FormatException
  {
    return decode(paramBinaryBitmap, null);
  }

  public Result decode(BinaryBitmap paramBinaryBitmap, Map<DecodeHintType, ?> paramMap)
    throws NotFoundException, ChecksumException, FormatException
  {
    if ((paramMap != null) && (paramMap.containsKey(DecodeHintType.PURE_BARCODE)))
    {
      BitMatrix localBitMatrix = extractPureBits(paramBinaryBitmap.getBlackMatrix());
      DecoderResult localDecoderResult = this.decoder.decode(localBitMatrix, paramMap);
      ResultPoint[] arrayOfResultPoint = NO_POINTS;
      Result localResult = new Result(localDecoderResult.getText(), localDecoderResult.getRawBytes(), arrayOfResultPoint, BarcodeFormat.MAXICODE);
      String str = localDecoderResult.getECLevel();
      if (str != null)
        localResult.putMetadata(ResultMetadataType.ERROR_CORRECTION_LEVEL, str);
      return localResult;
    }
    throw NotFoundException.getNotFoundInstance();
  }

  Decoder getDecoder()
  {
    return this.decoder;
  }

  public void reset()
  {
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.maxicode.MaxiCodeReader
 * JD-Core Version:    0.6.2
 */