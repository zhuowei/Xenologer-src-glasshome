package com.google.zxing.multi;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class GenericMultipleBarcodeReader
  implements MultipleBarcodeReader
{
  private static final int MAX_DEPTH = 4;
  private static final int MIN_DIMENSION_TO_RECUR = 100;
  private final Reader delegate;

  public GenericMultipleBarcodeReader(Reader paramReader)
  {
    this.delegate = paramReader;
  }

  private void doDecodeMultiple(BinaryBitmap paramBinaryBitmap, Map<DecodeHintType, ?> paramMap, List<Result> paramList, int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt3 > 4);
    int j;
    int k;
    float f4;
    do
    {
      float f1;
      float f2;
      float f3;
      while (true)
      {
        return;
        try
        {
          Result localResult = this.delegate.decode(paramBinaryBitmap, paramMap);
          Iterator localIterator = paramList.iterator();
          do
          {
            boolean bool = localIterator.hasNext();
            i = 0;
            if (!bool)
              break;
          }
          while (!((Result)localIterator.next()).getText().equals(localResult.getText()));
          int i = 1;
          if (i == 0)
            paramList.add(translateResultPoints(localResult, paramInt1, paramInt2));
          ResultPoint[] arrayOfResultPoint = localResult.getResultPoints();
          if ((arrayOfResultPoint != null) && (arrayOfResultPoint.length != 0))
          {
            j = paramBinaryBitmap.getWidth();
            k = paramBinaryBitmap.getHeight();
            f1 = j;
            f2 = k;
            f3 = 0.0F;
            f4 = 0.0F;
            int m = arrayOfResultPoint.length;
            for (int n = 0; n < m; n++)
            {
              ResultPoint localResultPoint = arrayOfResultPoint[n];
              float f5 = localResultPoint.getX();
              float f6 = localResultPoint.getY();
              if (f5 < f1)
                f1 = f5;
              if (f6 < f2)
                f2 = f6;
              if (f5 > f3)
                f3 = f5;
              if (f6 > f4)
                f4 = f6;
            }
          }
        }
        catch (ReaderException localReaderException)
        {
          return;
        }
      }
      if (f1 > 100.0F)
        doDecodeMultiple(paramBinaryBitmap.crop(0, 0, (int)f1, k), paramMap, paramList, paramInt1, paramInt2, paramInt3 + 1);
      if (f2 > 100.0F)
        doDecodeMultiple(paramBinaryBitmap.crop(0, 0, j, (int)f2), paramMap, paramList, paramInt1, paramInt2, paramInt3 + 1);
      if (f3 < j - 100)
        doDecodeMultiple(paramBinaryBitmap.crop((int)f3, 0, j - (int)f3, k), paramMap, paramList, paramInt1 + (int)f3, paramInt2, paramInt3 + 1);
    }
    while (f4 >= k - 100);
    doDecodeMultiple(paramBinaryBitmap.crop(0, (int)f4, j, k - (int)f4), paramMap, paramList, paramInt1, paramInt2 + (int)f4, paramInt3 + 1);
  }

  private static Result translateResultPoints(Result paramResult, int paramInt1, int paramInt2)
  {
    ResultPoint[] arrayOfResultPoint1 = paramResult.getResultPoints();
    if (arrayOfResultPoint1 == null)
      return paramResult;
    ResultPoint[] arrayOfResultPoint2 = new ResultPoint[arrayOfResultPoint1.length];
    for (int i = 0; i < arrayOfResultPoint1.length; i++)
    {
      ResultPoint localResultPoint = arrayOfResultPoint1[i];
      arrayOfResultPoint2[i] = new ResultPoint(localResultPoint.getX() + paramInt1, localResultPoint.getY() + paramInt2);
    }
    Result localResult = new Result(paramResult.getText(), paramResult.getRawBytes(), arrayOfResultPoint2, paramResult.getBarcodeFormat());
    localResult.putAllMetadata(paramResult.getResultMetadata());
    return localResult;
  }

  public Result[] decodeMultiple(BinaryBitmap paramBinaryBitmap)
    throws NotFoundException
  {
    return decodeMultiple(paramBinaryBitmap, null);
  }

  public Result[] decodeMultiple(BinaryBitmap paramBinaryBitmap, Map<DecodeHintType, ?> paramMap)
    throws NotFoundException
  {
    ArrayList localArrayList = new ArrayList();
    doDecodeMultiple(paramBinaryBitmap, paramMap, localArrayList, 0, 0, 0);
    if (localArrayList.isEmpty())
      throw NotFoundException.getNotFoundInstance();
    return (Result[])localArrayList.toArray(new Result[localArrayList.size()]);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.multi.GenericMultipleBarcodeReader
 * JD-Core Version:    0.6.2
 */