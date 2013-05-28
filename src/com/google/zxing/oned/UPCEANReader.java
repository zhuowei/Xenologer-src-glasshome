package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitArray;
import java.util.Arrays;
import java.util.Map;

public abstract class UPCEANReader extends OneDReader
{
  static final int[][] L_AND_G_PATTERNS;
  static final int[][] L_PATTERNS;
  private static final int MAX_AVG_VARIANCE = 122;
  private static final int MAX_INDIVIDUAL_VARIANCE = 179;
  static final int[] MIDDLE_PATTERN;
  static final int[] START_END_PATTERN = { 1, 1, 1 };
  private final StringBuilder decodeRowStringBuffer = new StringBuilder(20);
  private final EANManufacturerOrgSupport eanManSupport = new EANManufacturerOrgSupport();
  private final UPCEANExtensionSupport extensionReader = new UPCEANExtensionSupport();

  static
  {
    MIDDLE_PATTERN = new int[] { 1, 1, 1, 1, 1 };
    L_PATTERNS = new int[][] { { 3, 2, 1, 1 }, { 2, 2, 2, 1 }, { 2, 1, 2, 2 }, { 1, 4, 1, 1 }, { 1, 1, 3, 2 }, { 1, 2, 3, 1 }, { 1, 1, 1, 4 }, { 1, 3, 1, 2 }, { 1, 2, 1, 3 }, { 3, 1, 1, 2 } };
    L_AND_G_PATTERNS = new int[20][];
    System.arraycopy(L_PATTERNS, 0, L_AND_G_PATTERNS, 0, 10);
    for (int i = 10; i < 20; i++)
    {
      int[] arrayOfInt1 = L_PATTERNS[(i - 10)];
      int[] arrayOfInt2 = new int[arrayOfInt1.length];
      for (int j = 0; j < arrayOfInt1.length; j++)
        arrayOfInt2[j] = arrayOfInt1[(-1 + (arrayOfInt1.length - j))];
      L_AND_G_PATTERNS[i] = arrayOfInt2;
    }
  }

  static boolean checkStandardUPCEANChecksum(CharSequence paramCharSequence)
    throws FormatException
  {
    int i = paramCharSequence.length();
    if (i == 0);
    int m;
    do
    {
      return false;
      int j = 0;
      for (int k = i - 2; k >= 0; k -= 2)
      {
        int i2 = '\0*0' + paramCharSequence.charAt(k);
        if ((i2 < 0) || (i2 > 9))
          throw FormatException.getFormatInstance();
        j += i2;
      }
      m = j * 3;
      for (int n = i - 1; n >= 0; n -= 2)
      {
        int i1 = '\0*0' + paramCharSequence.charAt(n);
        if ((i1 < 0) || (i1 > 9))
          throw FormatException.getFormatInstance();
        m += i1;
      }
    }
    while (m % 10 != 0);
    return true;
  }

  static int decodeDigit(BitArray paramBitArray, int[] paramArrayOfInt, int paramInt, int[][] paramArrayOfInt1)
    throws NotFoundException
  {
    recordPattern(paramBitArray, paramInt, paramArrayOfInt);
    int i = 122;
    int j = -1;
    int k = paramArrayOfInt1.length;
    for (int m = 0; m < k; m++)
    {
      int n = patternMatchVariance(paramArrayOfInt, paramArrayOfInt1[m], 179);
      if (n < i)
      {
        i = n;
        j = m;
      }
    }
    if (j >= 0)
      return j;
    throw NotFoundException.getNotFoundInstance();
  }

  static int[] findGuardPattern(BitArray paramBitArray, int paramInt, boolean paramBoolean, int[] paramArrayOfInt)
    throws NotFoundException
  {
    return findGuardPattern(paramBitArray, paramInt, paramBoolean, paramArrayOfInt, new int[paramArrayOfInt.length]);
  }

  private static int[] findGuardPattern(BitArray paramBitArray, int paramInt, boolean paramBoolean, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
    throws NotFoundException
  {
    int i = paramArrayOfInt1.length;
    int j = paramBitArray.getSize();
    boolean bool = paramBoolean;
    if (paramBoolean);
    int m;
    int n;
    int i1;
    for (int k = paramBitArray.getNextUnset(paramInt); ; k = paramBitArray.getNextSet(paramInt))
    {
      m = 0;
      n = k;
      for (i1 = k; ; i1++)
      {
        if (i1 >= j)
          break label194;
        if (!(bool ^ paramBitArray.get(i1)))
          break;
        paramArrayOfInt2[m] = (1 + paramArrayOfInt2[m]);
      }
    }
    if (m == i - 1)
    {
      if (patternMatchVariance(paramArrayOfInt2, paramArrayOfInt1, 179) < 122)
        return new int[] { n, i1 };
      n += paramArrayOfInt2[0] + paramArrayOfInt2[1];
      System.arraycopy(paramArrayOfInt2, 2, paramArrayOfInt2, 0, i - 2);
      paramArrayOfInt2[(i - 2)] = 0;
      paramArrayOfInt2[(i - 1)] = 0;
      m--;
      label165: paramArrayOfInt2[m] = 1;
      if (bool)
        break label188;
    }
    label188: for (bool = true; ; bool = false)
    {
      break;
      m++;
      break label165;
    }
    label194: throw NotFoundException.getNotFoundInstance();
  }

  static int[] findStartGuardPattern(BitArray paramBitArray)
    throws NotFoundException
  {
    boolean bool = false;
    int[] arrayOfInt1 = null;
    int i = 0;
    int[] arrayOfInt2 = new int[START_END_PATTERN.length];
    while (!bool)
    {
      Arrays.fill(arrayOfInt2, 0, START_END_PATTERN.length, 0);
      arrayOfInt1 = findGuardPattern(paramBitArray, i, false, START_END_PATTERN, arrayOfInt2);
      int j = arrayOfInt1[0];
      i = arrayOfInt1[1];
      int k = j - (i - j);
      if (k >= 0)
        bool = paramBitArray.isRange(k, j, false);
    }
    return arrayOfInt1;
  }

  boolean checkChecksum(String paramString)
    throws ChecksumException, FormatException
  {
    return checkStandardUPCEANChecksum(paramString);
  }

  int[] decodeEnd(BitArray paramBitArray, int paramInt)
    throws NotFoundException
  {
    return findGuardPattern(paramBitArray, paramInt, false, START_END_PATTERN);
  }

  protected abstract int decodeMiddle(BitArray paramBitArray, int[] paramArrayOfInt, StringBuilder paramStringBuilder)
    throws NotFoundException;

  public Result decodeRow(int paramInt, BitArray paramBitArray, Map<DecodeHintType, ?> paramMap)
    throws NotFoundException, ChecksumException, FormatException
  {
    return decodeRow(paramInt, paramBitArray, findStartGuardPattern(paramBitArray), paramMap);
  }

  public Result decodeRow(int paramInt, BitArray paramBitArray, int[] paramArrayOfInt, Map<DecodeHintType, ?> paramMap)
    throws NotFoundException, ChecksumException, FormatException
  {
    if (paramMap == null);
    StringBuilder localStringBuilder;
    int[] arrayOfInt;
    for (ResultPointCallback localResultPointCallback = null; ; localResultPointCallback = (ResultPointCallback)paramMap.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK))
    {
      if (localResultPointCallback != null)
        localResultPointCallback.foundPossibleResultPoint(new ResultPoint((paramArrayOfInt[0] + paramArrayOfInt[1]) / 2.0F, paramInt));
      localStringBuilder = this.decodeRowStringBuffer;
      localStringBuilder.setLength(0);
      int i = decodeMiddle(paramBitArray, paramArrayOfInt, localStringBuilder);
      if (localResultPointCallback != null)
        localResultPointCallback.foundPossibleResultPoint(new ResultPoint(i, paramInt));
      arrayOfInt = decodeEnd(paramBitArray, i);
      if (localResultPointCallback != null)
        localResultPointCallback.foundPossibleResultPoint(new ResultPoint((arrayOfInt[0] + arrayOfInt[1]) / 2.0F, paramInt));
      int j = arrayOfInt[1];
      int k = j + (j - arrayOfInt[0]);
      if ((k < paramBitArray.getSize()) && (paramBitArray.isRange(j, k, false)))
        break;
      throw NotFoundException.getNotFoundInstance();
    }
    String str1 = localStringBuilder.toString();
    if (!checkChecksum(str1))
      throw ChecksumException.getChecksumInstance();
    float f1 = (paramArrayOfInt[1] + paramArrayOfInt[0]) / 2.0F;
    float f2 = (arrayOfInt[1] + arrayOfInt[0]) / 2.0F;
    BarcodeFormat localBarcodeFormat = getBarcodeFormat();
    ResultPoint[] arrayOfResultPoint = new ResultPoint[2];
    ResultPoint localResultPoint1 = new ResultPoint(f1, paramInt);
    arrayOfResultPoint[0] = localResultPoint1;
    ResultPoint localResultPoint2 = new ResultPoint(f2, paramInt);
    arrayOfResultPoint[1] = localResultPoint2;
    Result localResult1 = new Result(str1, null, arrayOfResultPoint, localBarcodeFormat);
    try
    {
      Result localResult2 = this.extensionReader.decodeRow(paramInt, paramBitArray, arrayOfInt[1]);
      localResult1.putMetadata(ResultMetadataType.UPC_EAN_EXTENSION, localResult2.getText());
      localResult1.putAllMetadata(localResult2.getResultMetadata());
      localResult1.addResultPoints(localResult2.getResultPoints());
      label348: if ((localBarcodeFormat == BarcodeFormat.EAN_13) || (localBarcodeFormat == BarcodeFormat.UPC_A))
      {
        String str2 = this.eanManSupport.lookupCountryIdentifier(str1);
        if (str2 != null)
          localResult1.putMetadata(ResultMetadataType.POSSIBLE_COUNTRY, str2);
      }
      return localResult1;
    }
    catch (ReaderException localReaderException)
    {
      break label348;
    }
  }

  abstract BarcodeFormat getBarcodeFormat();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.UPCEANReader
 * JD-Core Version:    0.6.2
 */