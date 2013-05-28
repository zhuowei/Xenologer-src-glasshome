package com.google.zxing.datamatrix;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.Dimension;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.datamatrix.encoder.DefaultPlacement;
import com.google.zxing.datamatrix.encoder.ErrorCorrection;
import com.google.zxing.datamatrix.encoder.HighLevelEncoder;
import com.google.zxing.datamatrix.encoder.SymbolInfo;
import com.google.zxing.datamatrix.encoder.SymbolShapeHint;
import com.google.zxing.qrcode.encoder.ByteMatrix;
import java.util.Map;

public final class DataMatrixWriter
  implements Writer
{
  private static BitMatrix convertByteMatrixToBitMatrix(ByteMatrix paramByteMatrix)
  {
    int i = paramByteMatrix.getWidth();
    int j = paramByteMatrix.getHeight();
    BitMatrix localBitMatrix = new BitMatrix(i, j);
    localBitMatrix.clear();
    for (int k = 0; k < i; k++)
      for (int m = 0; m < j; m++)
        if (paramByteMatrix.get(k, m) == 1)
          localBitMatrix.set(k, m);
    return localBitMatrix;
  }

  private static BitMatrix encodeLowLevel(DefaultPlacement paramDefaultPlacement, SymbolInfo paramSymbolInfo)
  {
    int i = paramSymbolInfo.getSymbolDataWidth();
    int j = paramSymbolInfo.getSymbolDataHeight();
    ByteMatrix localByteMatrix = new ByteMatrix(paramSymbolInfo.getSymbolWidth(), paramSymbolInfo.getSymbolHeight());
    int k = 0;
    for (int m = 0; m < j; m++)
    {
      if (m % paramSymbolInfo.matrixHeight == 0)
      {
        int i4 = 0;
        int i5 = 0;
        if (i5 < paramSymbolInfo.getSymbolWidth())
        {
          if (i5 % 2 == 0);
          for (boolean bool2 = true; ; bool2 = false)
          {
            localByteMatrix.set(i4, k, bool2);
            i4++;
            i5++;
            break;
          }
        }
        k++;
      }
      int n = 0;
      int i1 = 0;
      if (i1 < i)
      {
        if (i1 % paramSymbolInfo.matrixWidth == 0)
        {
          localByteMatrix.set(n, k, true);
          n++;
        }
        localByteMatrix.set(n, k, paramDefaultPlacement.getBit(i1, m));
        n++;
        if (i1 % paramSymbolInfo.matrixWidth == -1 + paramSymbolInfo.matrixWidth)
          if (m % 2 != 0)
            break label204;
        label204: for (boolean bool1 = true; ; bool1 = false)
        {
          localByteMatrix.set(n, k, bool1);
          n++;
          i1++;
          break;
        }
      }
      k++;
      if (m % paramSymbolInfo.matrixHeight == -1 + paramSymbolInfo.matrixHeight)
      {
        int i2 = 0;
        for (int i3 = 0; i3 < paramSymbolInfo.getSymbolWidth(); i3++)
        {
          localByteMatrix.set(i2, k, true);
          i2++;
        }
        k++;
      }
    }
    return convertByteMatrixToBitMatrix(localByteMatrix);
  }

  public BitMatrix encode(String paramString, BarcodeFormat paramBarcodeFormat, int paramInt1, int paramInt2)
  {
    return encode(paramString, paramBarcodeFormat, paramInt1, paramInt2, null);
  }

  public BitMatrix encode(String paramString, BarcodeFormat paramBarcodeFormat, int paramInt1, int paramInt2, Map<EncodeHintType, ?> paramMap)
  {
    if (paramString.length() == 0)
      throw new IllegalArgumentException("Found empty contents");
    if (paramBarcodeFormat != BarcodeFormat.DATA_MATRIX)
      throw new IllegalArgumentException("Can only encode DATA_MATRIX, but got " + paramBarcodeFormat);
    if ((paramInt1 < 0) || (paramInt2 < 0))
      throw new IllegalArgumentException("Requested dimensions are too small: " + paramInt1 + 'x' + paramInt2);
    Object localObject1 = SymbolShapeHint.FORCE_NONE;
    Object localObject2 = null;
    Object localObject3 = null;
    if (paramMap != null)
    {
      SymbolShapeHint localSymbolShapeHint = (SymbolShapeHint)paramMap.get(EncodeHintType.DATA_MATRIX_SHAPE);
      if (localSymbolShapeHint != null)
        localObject1 = localSymbolShapeHint;
      Dimension localDimension1 = (Dimension)paramMap.get(EncodeHintType.MIN_SIZE);
      localObject3 = null;
      if (localDimension1 != null)
        localObject3 = localDimension1;
      Dimension localDimension2 = (Dimension)paramMap.get(EncodeHintType.MAX_SIZE);
      localObject2 = null;
      if (localDimension2 != null)
        localObject2 = localDimension2;
    }
    String str = HighLevelEncoder.encodeHighLevel(paramString, (SymbolShapeHint)localObject1, localObject3, localObject2);
    SymbolInfo localSymbolInfo = SymbolInfo.lookup(str.length(), (SymbolShapeHint)localObject1, localObject3, localObject2, true);
    DefaultPlacement localDefaultPlacement = new DefaultPlacement(ErrorCorrection.encodeECC200(str, localSymbolInfo), localSymbolInfo.getSymbolDataWidth(), localSymbolInfo.getSymbolDataHeight());
    localDefaultPlacement.place();
    return encodeLowLevel(localDefaultPlacement, localSymbolInfo);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.datamatrix.DataMatrixWriter
 * JD-Core Version:    0.6.2
 */