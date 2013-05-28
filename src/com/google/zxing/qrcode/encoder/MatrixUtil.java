package com.google.zxing.qrcode.encoder;

import com.google.zxing.WriterException;
import com.google.zxing.common.BitArray;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.decoder.Version;

final class MatrixUtil
{
  private static final int[][] POSITION_ADJUSTMENT_PATTERN = { { 1, 1, 1, 1, 1 }, { 1, 0, 0, 0, 1 }, { 1, 0, 1, 0, 1 }, { 1, 0, 0, 0, 1 }, { 1, 1, 1, 1, 1 } };
  private static final int[][] POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE = { { -1, -1, -1, -1, -1, -1, -1 }, { 6, 18, -1, -1, -1, -1, -1 }, { 6, 22, -1, -1, -1, -1, -1 }, { 6, 26, -1, -1, -1, -1, -1 }, { 6, 30, -1, -1, -1, -1, -1 }, { 6, 34, -1, -1, -1, -1, -1 }, { 6, 22, 38, -1, -1, -1, -1 }, { 6, 24, 42, -1, -1, -1, -1 }, { 6, 26, 46, -1, -1, -1, -1 }, { 6, 28, 50, -1, -1, -1, -1 }, { 6, 30, 54, -1, -1, -1, -1 }, { 6, 32, 58, -1, -1, -1, -1 }, { 6, 34, 62, -1, -1, -1, -1 }, { 6, 26, 46, 66, -1, -1, -1 }, { 6, 26, 48, 70, -1, -1, -1 }, { 6, 26, 50, 74, -1, -1, -1 }, { 6, 30, 54, 78, -1, -1, -1 }, { 6, 30, 56, 82, -1, -1, -1 }, { 6, 30, 58, 86, -1, -1, -1 }, { 6, 34, 62, 90, -1, -1, -1 }, { 6, 28, 50, 72, 94, -1, -1 }, { 6, 26, 50, 74, 98, -1, -1 }, { 6, 30, 54, 78, 102, -1, -1 }, { 6, 28, 54, 80, 106, -1, -1 }, { 6, 32, 58, 84, 110, -1, -1 }, { 6, 30, 58, 86, 114, -1, -1 }, { 6, 34, 62, 90, 118, -1, -1 }, { 6, 26, 50, 74, 98, 122, -1 }, { 6, 30, 54, 78, 102, 126, -1 }, { 6, 26, 52, 78, 104, 130, -1 }, { 6, 30, 56, 82, 108, 134, -1 }, { 6, 34, 60, 86, 112, 138, -1 }, { 6, 30, 58, 86, 114, 142, -1 }, { 6, 34, 62, 90, 118, 146, -1 }, { 6, 30, 54, 78, 102, 126, 150 }, { 6, 24, 50, 76, 102, 128, 154 }, { 6, 28, 54, 80, 106, 132, 158 }, { 6, 32, 58, 84, 110, 136, 162 }, { 6, 26, 54, 82, 110, 138, 166 }, { 6, 30, 58, 86, 114, 142, 170 } };
  private static final int[][] POSITION_DETECTION_PATTERN = { { 1, 1, 1, 1, 1, 1, 1 }, { 1, 0, 0, 0, 0, 0, 1 }, { 1, 0, 1, 1, 1, 0, 1 }, { 1, 0, 1, 1, 1, 0, 1 }, { 1, 0, 1, 1, 1, 0, 1 }, { 1, 0, 0, 0, 0, 0, 1 }, { 1, 1, 1, 1, 1, 1, 1 } };
  private static final int[][] TYPE_INFO_COORDINATES = { { 8, 0 }, { 8, 1 }, { 8, 2 }, { 8, 3 }, { 8, 4 }, { 8, 5 }, { 8, 7 }, { 8, 8 }, { 7, 8 }, { 5, 8 }, { 4, 8 }, { 3, 8 }, { 2, 8 }, { 1, 8 }, { 0, 8 } };
  private static final int TYPE_INFO_MASK_PATTERN = 21522;
  private static final int TYPE_INFO_POLY = 1335;
  private static final int VERSION_INFO_POLY = 7973;

  static void buildMatrix(BitArray paramBitArray, ErrorCorrectionLevel paramErrorCorrectionLevel, Version paramVersion, int paramInt, ByteMatrix paramByteMatrix)
    throws WriterException
  {
    clearMatrix(paramByteMatrix);
    embedBasicPatterns(paramVersion, paramByteMatrix);
    embedTypeInfo(paramErrorCorrectionLevel, paramInt, paramByteMatrix);
    maybeEmbedVersionInfo(paramVersion, paramByteMatrix);
    embedDataBits(paramBitArray, paramInt, paramByteMatrix);
  }

  static int calculateBCHCode(int paramInt1, int paramInt2)
  {
    int i = findMSBSet(paramInt2);
    int j = paramInt1 << i - 1;
    while (findMSBSet(j) >= i)
      j ^= paramInt2 << findMSBSet(j) - i;
    return j;
  }

  static void clearMatrix(ByteMatrix paramByteMatrix)
  {
    paramByteMatrix.clear((byte)-1);
  }

  static void embedBasicPatterns(Version paramVersion, ByteMatrix paramByteMatrix)
    throws WriterException
  {
    embedPositionDetectionPatternsAndSeparators(paramByteMatrix);
    embedDarkDotAtLeftBottomCorner(paramByteMatrix);
    maybeEmbedPositionAdjustmentPatterns(paramVersion, paramByteMatrix);
    embedTimingPatterns(paramByteMatrix);
  }

  private static void embedDarkDotAtLeftBottomCorner(ByteMatrix paramByteMatrix)
    throws WriterException
  {
    if (paramByteMatrix.get(8, -8 + paramByteMatrix.getHeight()) == 0)
      throw new WriterException();
    paramByteMatrix.set(8, -8 + paramByteMatrix.getHeight(), 1);
  }

  static void embedDataBits(BitArray paramBitArray, int paramInt, ByteMatrix paramByteMatrix)
    throws WriterException
  {
    int i = 0;
    int j = -1;
    int k = -1 + paramByteMatrix.getWidth();
    int m = -1 + paramByteMatrix.getHeight();
    while (k > 0)
    {
      if (k == 6)
        k--;
      while ((m >= 0) && (m < paramByteMatrix.getHeight()))
      {
        int n = 0;
        while (n < 2)
        {
          int i1 = k - n;
          if (!isEmpty(paramByteMatrix.get(i1, m)))
          {
            n++;
          }
          else
          {
            if (i < paramBitArray.getSize())
            {
              bool = paramBitArray.get(i);
              i++;
              label104: if ((paramInt != -1) && (MaskUtil.getDataMaskBit(paramInt, i1, m)))
                if (bool)
                  break label147;
            }
            label147: for (boolean bool = true; ; bool = false)
            {
              paramByteMatrix.set(i1, m, bool);
              break;
              bool = false;
              break label104;
            }
          }
        }
        m += j;
      }
      j = -j;
      m += j;
      k -= 2;
    }
    if (i != paramBitArray.getSize())
      throw new WriterException("Not all bits consumed: " + i + '/' + paramBitArray.getSize());
  }

  private static void embedHorizontalSeparationPattern(int paramInt1, int paramInt2, ByteMatrix paramByteMatrix)
    throws WriterException
  {
    for (int i = 0; i < 8; i++)
    {
      if (!isEmpty(paramByteMatrix.get(paramInt1 + i, paramInt2)))
        throw new WriterException();
      paramByteMatrix.set(paramInt1 + i, paramInt2, 0);
    }
  }

  private static void embedPositionAdjustmentPattern(int paramInt1, int paramInt2, ByteMatrix paramByteMatrix)
  {
    for (int i = 0; i < 5; i++)
      for (int j = 0; j < 5; j++)
        paramByteMatrix.set(paramInt1 + j, paramInt2 + i, POSITION_ADJUSTMENT_PATTERN[i][j]);
  }

  private static void embedPositionDetectionPattern(int paramInt1, int paramInt2, ByteMatrix paramByteMatrix)
  {
    for (int i = 0; i < 7; i++)
      for (int j = 0; j < 7; j++)
        paramByteMatrix.set(paramInt1 + j, paramInt2 + i, POSITION_DETECTION_PATTERN[i][j]);
  }

  private static void embedPositionDetectionPatternsAndSeparators(ByteMatrix paramByteMatrix)
    throws WriterException
  {
    int i = POSITION_DETECTION_PATTERN[0].length;
    embedPositionDetectionPattern(0, 0, paramByteMatrix);
    embedPositionDetectionPattern(paramByteMatrix.getWidth() - i, 0, paramByteMatrix);
    embedPositionDetectionPattern(0, paramByteMatrix.getWidth() - i, paramByteMatrix);
    embedHorizontalSeparationPattern(0, 7, paramByteMatrix);
    embedHorizontalSeparationPattern(paramByteMatrix.getWidth() - 8, 7, paramByteMatrix);
    embedHorizontalSeparationPattern(0, paramByteMatrix.getWidth() - 8, paramByteMatrix);
    embedVerticalSeparationPattern(7, 0, paramByteMatrix);
    embedVerticalSeparationPattern(-1 + (paramByteMatrix.getHeight() - 7), 0, paramByteMatrix);
    embedVerticalSeparationPattern(7, paramByteMatrix.getHeight() - 7, paramByteMatrix);
  }

  private static void embedTimingPatterns(ByteMatrix paramByteMatrix)
  {
    for (int i = 8; i < -8 + paramByteMatrix.getWidth(); i++)
    {
      int j = (i + 1) % 2;
      if (isEmpty(paramByteMatrix.get(i, 6)))
        paramByteMatrix.set(i, 6, j);
      if (isEmpty(paramByteMatrix.get(6, i)))
        paramByteMatrix.set(6, i, j);
    }
  }

  static void embedTypeInfo(ErrorCorrectionLevel paramErrorCorrectionLevel, int paramInt, ByteMatrix paramByteMatrix)
    throws WriterException
  {
    BitArray localBitArray = new BitArray();
    makeTypeInfoBits(paramErrorCorrectionLevel, paramInt, localBitArray);
    int i = 0;
    if (i < localBitArray.getSize())
    {
      boolean bool = localBitArray.get(-1 + localBitArray.getSize() - i);
      paramByteMatrix.set(TYPE_INFO_COORDINATES[i][0], TYPE_INFO_COORDINATES[i][1], bool);
      if (i < 8)
        paramByteMatrix.set(-1 + (paramByteMatrix.getWidth() - i), 8, bool);
      while (true)
      {
        i++;
        break;
        paramByteMatrix.set(8, -7 + paramByteMatrix.getHeight() + (i - 8), bool);
      }
    }
  }

  private static void embedVerticalSeparationPattern(int paramInt1, int paramInt2, ByteMatrix paramByteMatrix)
    throws WriterException
  {
    for (int i = 0; i < 7; i++)
    {
      if (!isEmpty(paramByteMatrix.get(paramInt1, paramInt2 + i)))
        throw new WriterException();
      paramByteMatrix.set(paramInt1, paramInt2 + i, 0);
    }
  }

  static int findMSBSet(int paramInt)
  {
    for (int i = 0; paramInt != 0; i++)
      paramInt >>>= 1;
    return i;
  }

  private static boolean isEmpty(int paramInt)
  {
    return paramInt == -1;
  }

  static void makeTypeInfoBits(ErrorCorrectionLevel paramErrorCorrectionLevel, int paramInt, BitArray paramBitArray)
    throws WriterException
  {
    if (!QRCode.isValidMaskPattern(paramInt))
      throw new WriterException("Invalid mask pattern");
    int i = paramInt | paramErrorCorrectionLevel.getBits() << 3;
    paramBitArray.appendBits(i, 5);
    paramBitArray.appendBits(calculateBCHCode(i, 1335), 10);
    BitArray localBitArray = new BitArray();
    localBitArray.appendBits(21522, 15);
    paramBitArray.xor(localBitArray);
    if (paramBitArray.getSize() != 15)
      throw new WriterException("should not happen but we got: " + paramBitArray.getSize());
  }

  static void makeVersionInfoBits(Version paramVersion, BitArray paramBitArray)
    throws WriterException
  {
    paramBitArray.appendBits(paramVersion.getVersionNumber(), 6);
    paramBitArray.appendBits(calculateBCHCode(paramVersion.getVersionNumber(), 7973), 12);
    if (paramBitArray.getSize() != 18)
      throw new WriterException("should not happen but we got: " + paramBitArray.getSize());
  }

  private static void maybeEmbedPositionAdjustmentPatterns(Version paramVersion, ByteMatrix paramByteMatrix)
  {
    if (paramVersion.getVersionNumber() < 2);
    while (true)
    {
      return;
      int i = -1 + paramVersion.getVersionNumber();
      int[] arrayOfInt = POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE[i];
      int j = POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE[i].length;
      for (int k = 0; k < j; k++)
      {
        int m = 0;
        if (m < j)
        {
          int n = arrayOfInt[k];
          int i1 = arrayOfInt[m];
          if ((i1 == -1) || (n == -1));
          while (true)
          {
            m++;
            break;
            if (isEmpty(paramByteMatrix.get(i1, n)))
              embedPositionAdjustmentPattern(i1 - 2, n - 2, paramByteMatrix);
          }
        }
      }
    }
  }

  static void maybeEmbedVersionInfo(Version paramVersion, ByteMatrix paramByteMatrix)
    throws WriterException
  {
    if (paramVersion.getVersionNumber() < 7);
    while (true)
    {
      return;
      BitArray localBitArray = new BitArray();
      makeVersionInfoBits(paramVersion, localBitArray);
      int i = 17;
      for (int j = 0; j < 6; j++)
        for (int k = 0; k < 3; k++)
        {
          boolean bool = localBitArray.get(i);
          i--;
          paramByteMatrix.set(j, k + (-11 + paramByteMatrix.getHeight()), bool);
          paramByteMatrix.set(k + (-11 + paramByteMatrix.getHeight()), j, bool);
        }
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.encoder.MatrixUtil
 * JD-Core Version:    0.6.2
 */