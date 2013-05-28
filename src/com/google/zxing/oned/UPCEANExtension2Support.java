package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.EnumMap;
import java.util.Map;

final class UPCEANExtension2Support
{
  private final int[] decodeMiddleCounters = new int[4];
  private final StringBuilder decodeRowStringBuffer = new StringBuilder();

  private static Map<ResultMetadataType, Object> parseExtensionString(String paramString)
  {
    if (paramString.length() != 2)
      return null;
    EnumMap localEnumMap = new EnumMap(ResultMetadataType.class);
    localEnumMap.put(ResultMetadataType.ISSUE_NUMBER, Integer.valueOf(paramString));
    return localEnumMap;
  }

  int decodeMiddle(BitArray paramBitArray, int[] paramArrayOfInt, StringBuilder paramStringBuilder)
    throws NotFoundException
  {
    int[] arrayOfInt = this.decodeMiddleCounters;
    arrayOfInt[0] = 0;
    arrayOfInt[1] = 0;
    arrayOfInt[2] = 0;
    arrayOfInt[3] = 0;
    int i = paramBitArray.getSize();
    int j = paramArrayOfInt[1];
    int k = 0;
    for (int m = 0; (m < 2) && (j < i); m++)
    {
      int n = UPCEANReader.decodeDigit(paramBitArray, arrayOfInt, j, UPCEANReader.L_AND_G_PATTERNS);
      paramStringBuilder.append((char)(48 + n % 10));
      int i1 = arrayOfInt.length;
      for (int i2 = 0; i2 < i1; i2++)
        j += arrayOfInt[i2];
      if (n >= 10)
        k |= 1 << 1 - m;
      if (m != 1)
        j = paramBitArray.getNextUnset(paramBitArray.getNextSet(j));
    }
    if (paramStringBuilder.length() != 2)
      throw NotFoundException.getNotFoundInstance();
    if (Integer.parseInt(paramStringBuilder.toString()) % 4 != k)
      throw NotFoundException.getNotFoundInstance();
    return j;
  }

  Result decodeRow(int paramInt, BitArray paramBitArray, int[] paramArrayOfInt)
    throws NotFoundException
  {
    StringBuilder localStringBuilder = this.decodeRowStringBuffer;
    localStringBuilder.setLength(0);
    int i = decodeMiddle(paramBitArray, paramArrayOfInt, localStringBuilder);
    String str = localStringBuilder.toString();
    Map localMap = parseExtensionString(str);
    ResultPoint[] arrayOfResultPoint = new ResultPoint[2];
    arrayOfResultPoint[0] = new ResultPoint((paramArrayOfInt[0] + paramArrayOfInt[1]) / 2.0F, paramInt);
    arrayOfResultPoint[1] = new ResultPoint(i, paramInt);
    Result localResult = new Result(str, null, arrayOfResultPoint, BarcodeFormat.UPC_EAN_EXTENSION);
    if (localMap != null)
      localResult.putAllMetadata(localMap);
    return localResult;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.UPCEANExtension2Support
 * JD-Core Version:    0.6.2
 */