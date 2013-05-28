package com.google.zxing.aztec.encoder;

import com.google.zxing.common.BitArray;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonEncoder;
import java.lang.reflect.Array;
import java.util.Arrays;

public final class Encoder
{
  private static final int[][] CHAR_MAP;
  public static final int DEFAULT_EC_PERCENT = 33;
  private static final int[][] LATCH_TABLE;
  private static final int[] NB_BITS;
  private static final int[] NB_BITS_COMPACT;
  private static final int[][] SHIFT_TABLE;
  private static final int TABLE_BINARY = 5;
  private static final int TABLE_DIGIT = 2;
  private static final int TABLE_LOWER = 1;
  private static final int TABLE_MIXED = 3;
  private static final int TABLE_PUNCT = 4;
  private static final int TABLE_UPPER;
  private static final int[] WORD_SIZE = { 4, 6, 6, 8, 8, 8, 8, 8, 8, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12 };

  static
  {
    int[] arrayOfInt1 = { 5, 256 };
    CHAR_MAP = (int[][])Array.newInstance(Integer.TYPE, arrayOfInt1);
    int[] arrayOfInt2 = { 6, 6 };
    SHIFT_TABLE = (int[][])Array.newInstance(Integer.TYPE, arrayOfInt2);
    int[] arrayOfInt3 = { 6, 6 };
    LATCH_TABLE = (int[][])Array.newInstance(Integer.TYPE, arrayOfInt3);
    CHAR_MAP[0][32] = 1;
    for (int i = 65; i <= 90; i++)
      CHAR_MAP[0][i] = (2 + (i - 65));
    CHAR_MAP[1][32] = 1;
    for (int j = 97; j <= 122; j++)
      CHAR_MAP[1][j] = (2 + (j - 97));
    CHAR_MAP[2][32] = 1;
    for (int k = 48; k <= 57; k++)
      CHAR_MAP[2][k] = (2 + (k - 48));
    CHAR_MAP[2][44] = 12;
    CHAR_MAP[2][46] = 13;
    int[] arrayOfInt4 = { 0, 32, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 27, 28, 29, 30, 31, 64, 92, 94, 95, 96, 124, 126, 127 };
    for (int m = 0; m < arrayOfInt4.length; m++)
      CHAR_MAP[3][arrayOfInt4[m]] = m;
    int[] arrayOfInt5 = { 0, 13, 0, 0, 0, 0, 33, 39, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 58, 59, 60, 61, 62, 63, 91, 93, 123, 125 };
    for (int n = 0; n < arrayOfInt5.length; n++)
      if (arrayOfInt5[n] > 0)
        CHAR_MAP[4][arrayOfInt5[n]] = n;
    int[][] arrayOfInt6 = SHIFT_TABLE;
    int i1 = arrayOfInt6.length;
    for (int i2 = 0; i2 < i1; i2++)
      Arrays.fill(arrayOfInt6[i2], -1);
    int[][] arrayOfInt7 = LATCH_TABLE;
    int i3 = arrayOfInt7.length;
    for (int i4 = 0; i4 < i3; i4++)
      Arrays.fill(arrayOfInt7[i4], -1);
    SHIFT_TABLE[0][4] = 0;
    LATCH_TABLE[0][1] = 28;
    LATCH_TABLE[0][3] = 29;
    LATCH_TABLE[0][2] = 30;
    SHIFT_TABLE[0][5] = 31;
    SHIFT_TABLE[1][4] = 0;
    SHIFT_TABLE[1][0] = 28;
    LATCH_TABLE[1][3] = 29;
    LATCH_TABLE[1][2] = 30;
    SHIFT_TABLE[1][5] = 31;
    SHIFT_TABLE[3][4] = 0;
    LATCH_TABLE[3][1] = 28;
    LATCH_TABLE[3][0] = 29;
    LATCH_TABLE[3][4] = 30;
    SHIFT_TABLE[3][5] = 31;
    LATCH_TABLE[4][0] = 31;
    SHIFT_TABLE[2][4] = 0;
    LATCH_TABLE[2][0] = 30;
    SHIFT_TABLE[2][0] = 31;
    NB_BITS_COMPACT = new int[5];
    for (int i5 = 1; i5 < NB_BITS_COMPACT.length; i5++)
      NB_BITS_COMPACT[i5] = (i5 * (88 + i5 * 16));
    NB_BITS = new int[33];
    for (int i6 = 1; i6 < NB_BITS.length; i6++)
      NB_BITS[i6] = (i6 * (112 + i6 * 16));
  }

  static int[] bitsToWords(BitArray paramBitArray, int paramInt1, int paramInt2)
  {
    int[] arrayOfInt = new int[paramInt2];
    int i = 0;
    int j = paramBitArray.getSize() / paramInt1;
    while (i < j)
    {
      int k = 0;
      int m = 0;
      if (m < paramInt1)
      {
        if (paramBitArray.get(m + i * paramInt1));
        for (int n = 1 << -1 + (paramInt1 - m); ; n = 0)
        {
          k |= n;
          m++;
          break;
        }
      }
      arrayOfInt[i] = k;
      i++;
    }
    return arrayOfInt;
  }

  static void drawBullsEye(BitMatrix paramBitMatrix, int paramInt1, int paramInt2)
  {
    for (int i = 0; i < paramInt2; i += 2)
      for (int j = paramInt1 - i; j <= paramInt1 + i; j++)
      {
        paramBitMatrix.set(j, paramInt1 - i);
        paramBitMatrix.set(j, paramInt1 + i);
        paramBitMatrix.set(paramInt1 - i, j);
        paramBitMatrix.set(paramInt1 + i, j);
      }
    paramBitMatrix.set(paramInt1 - paramInt2, paramInt1 - paramInt2);
    paramBitMatrix.set(1 + (paramInt1 - paramInt2), paramInt1 - paramInt2);
    paramBitMatrix.set(paramInt1 - paramInt2, 1 + (paramInt1 - paramInt2));
    paramBitMatrix.set(paramInt1 + paramInt2, paramInt1 - paramInt2);
    paramBitMatrix.set(paramInt1 + paramInt2, 1 + (paramInt1 - paramInt2));
    paramBitMatrix.set(paramInt1 + paramInt2, -1 + (paramInt1 + paramInt2));
  }

  static void drawModeMessage(BitMatrix paramBitMatrix, boolean paramBoolean, int paramInt, BitArray paramBitArray)
  {
    if (paramBoolean)
      for (int j = 0; j < 7; j++)
      {
        if (paramBitArray.get(j))
          paramBitMatrix.set(j + (-3 + paramInt / 2), -5 + paramInt / 2);
        if (paramBitArray.get(j + 7))
          paramBitMatrix.set(5 + paramInt / 2, j + (-3 + paramInt / 2));
        if (paramBitArray.get(20 - j))
          paramBitMatrix.set(j + (-3 + paramInt / 2), 5 + paramInt / 2);
        if (paramBitArray.get(27 - j))
          paramBitMatrix.set(-5 + paramInt / 2, j + (-3 + paramInt / 2));
      }
    for (int i = 0; i < 10; i++)
    {
      if (paramBitArray.get(i))
        paramBitMatrix.set(i + (-5 + paramInt / 2) + i / 5, -7 + paramInt / 2);
      if (paramBitArray.get(i + 10))
        paramBitMatrix.set(7 + paramInt / 2, i + (-5 + paramInt / 2) + i / 5);
      if (paramBitArray.get(29 - i))
        paramBitMatrix.set(i + (-5 + paramInt / 2) + i / 5, 7 + paramInt / 2);
      if (paramBitArray.get(39 - i))
        paramBitMatrix.set(-7 + paramInt / 2, i + (-5 + paramInt / 2) + i / 5);
    }
  }

  public static AztecCode encode(byte[] paramArrayOfByte)
  {
    return encode(paramArrayOfByte, 33);
  }

  public static AztecCode encode(byte[] paramArrayOfByte, int paramInt)
  {
    BitArray localBitArray1 = highLevelEncode(paramArrayOfByte);
    int i = 11 + paramInt * localBitArray1.getSize() / 100;
    int j = i + localBitArray1.getSize();
    int k = 0;
    int m = 0;
    BitArray localBitArray2 = null;
    int n = 1;
    int i1 = NB_BITS_COMPACT.length;
    boolean bool;
    if (n < i1)
    {
      if (NB_BITS_COMPACT[n] >= j)
      {
        int i31 = WORD_SIZE[n];
        if (k != i31)
        {
          k = WORD_SIZE[n];
          localBitArray2 = stuffBits(localBitArray1, k);
        }
        m = NB_BITS_COMPACT[n];
        if (i + localBitArray2.getSize() > NB_BITS_COMPACT[n]);
      }
    }
    else
    {
      bool = true;
      int i2 = NB_BITS_COMPACT.length;
      if (n != i2);
    }
    for (n = 1; ; n++)
    {
      int i26 = NB_BITS.length;
      int i27 = n;
      bool = false;
      if (i27 < i26)
      {
        if (NB_BITS[n] >= j)
        {
          int i28 = WORD_SIZE[n];
          if (k != i28)
          {
            k = WORD_SIZE[n];
            localBitArray2 = stuffBits(localBitArray1, k);
          }
          m = NB_BITS[n];
          int i29 = i + localBitArray2.getSize();
          int i30 = NB_BITS[n];
          bool = false;
          if (i29 > i30);
        }
      }
      else
      {
        int i3 = NB_BITS.length;
        if (n != i3)
          break label268;
        throw new IllegalArgumentException("Data too large for an Aztec code");
        n++;
        break;
      }
    }
    label268: int i4 = (-1 + (k + localBitArray2.getSize())) / k;
    for (int i5 = i4 * k - localBitArray2.getSize(); i5 > 0; i5--)
      localBitArray2.appendBit(true);
    ReedSolomonEncoder localReedSolomonEncoder = new ReedSolomonEncoder(getGF(k));
    int i6 = m / k;
    int[] arrayOfInt1 = bitsToWords(localBitArray2, k, i6);
    localReedSolomonEncoder.encode(arrayOfInt1, i6 - i4);
    int i7 = m % k;
    BitArray localBitArray3 = new BitArray();
    localBitArray3.appendBits(0, i7);
    int i8 = arrayOfInt1.length;
    for (int i9 = 0; i9 < i8; i9++)
      localBitArray3.appendBits(arrayOfInt1[i9], k);
    BitArray localBitArray4 = generateModeMessage(bool, n, i4);
    if (bool);
    int[] arrayOfInt2;
    for (int i10 = 11 + n * 4; ; i10 = 14 + n * 4)
    {
      arrayOfInt2 = new int[i10];
      if (!bool)
        break;
      i11 = i10;
      for (int i25 = 0; i25 < arrayOfInt2.length; i25++)
        arrayOfInt2[i25] = i25;
    }
    int i11 = i10 + 1 + 2 * ((-1 + i10 / 2) / 15);
    int i12 = i10 / 2;
    int i13 = i11 / 2;
    for (int i14 = 0; i14 < i12; i14++)
    {
      int i24 = i14 + i14 / 15;
      arrayOfInt2[(-1 + (i12 - i14))] = (-1 + (i13 - i24));
      arrayOfInt2[(i12 + i14)] = (1 + (i13 + i24));
    }
    BitMatrix localBitMatrix = new BitMatrix(i11);
    int i15 = 0;
    int i16 = 0;
    while (i15 < n)
    {
      int i20;
      if (bool)
        i20 = 9 + 4 * (n - i15);
      for (int i21 = 0; ; i21++)
      {
        if (i21 >= i20)
          break label871;
        int i22 = i21 * 2;
        int i23 = 0;
        while (true)
          if (i23 < 2)
          {
            if (localBitArray3.get(i23 + (i16 + i22)))
              localBitMatrix.set(arrayOfInt2[(i23 + i15 * 2)], arrayOfInt2[(i21 + i15 * 2)]);
            if (localBitArray3.get(i23 + (i22 + (i16 + i20 * 2))))
              localBitMatrix.set(arrayOfInt2[(i21 + i15 * 2)], arrayOfInt2[(i10 - 1 - i15 * 2 - i23)]);
            if (localBitArray3.get(i23 + (i22 + (i16 + i20 * 4))))
              localBitMatrix.set(arrayOfInt2[(i10 - 1 - i15 * 2 - i23)], arrayOfInt2[(i10 - 1 - i15 * 2 - i21)]);
            if (localBitArray3.get(i23 + (i22 + (i16 + i20 * 6))))
              localBitMatrix.set(arrayOfInt2[(i10 - 1 - i15 * 2 - i21)], arrayOfInt2[(i23 + i15 * 2)]);
            i23++;
            continue;
            i20 = 12 + 4 * (n - i15);
            break;
          }
      }
      label871: i16 += i20 * 8;
      i15++;
    }
    drawModeMessage(localBitMatrix, bool, i11, localBitArray4);
    if (bool)
      drawBullsEye(localBitMatrix, i11 / 2, 5);
    while (true)
    {
      AztecCode localAztecCode = new AztecCode();
      localAztecCode.setCompact(bool);
      localAztecCode.setSize(i11);
      localAztecCode.setLayers(n);
      localAztecCode.setCodeWords(i4);
      localAztecCode.setMatrix(localBitMatrix);
      return localAztecCode;
      drawBullsEye(localBitMatrix, i11 / 2, 7);
      int i17 = 0;
      for (int i18 = 0; i17 < -1 + i10 / 2; i18 += 16)
      {
        for (int i19 = 0x1 & i11 / 2; i19 < i11; i19 += 2)
        {
          localBitMatrix.set(i11 / 2 - i18, i19);
          localBitMatrix.set(i18 + i11 / 2, i19);
          localBitMatrix.set(i19, i11 / 2 - i18);
          localBitMatrix.set(i19, i18 + i11 / 2);
        }
        i17 += 15;
      }
    }
  }

  static BitArray generateCheckWords(BitArray paramBitArray, int paramInt1, int paramInt2)
  {
    int i = (-1 + (paramInt2 + paramBitArray.getSize())) / paramInt2;
    for (int j = i * paramInt2 - paramBitArray.getSize(); j > 0; j--)
      paramBitArray.appendBit(true);
    ReedSolomonEncoder localReedSolomonEncoder = new ReedSolomonEncoder(getGF(paramInt2));
    int k = paramInt1 / paramInt2;
    int[] arrayOfInt = bitsToWords(paramBitArray, paramInt2, k);
    localReedSolomonEncoder.encode(arrayOfInt, k - i);
    int m = paramInt1 % paramInt2;
    BitArray localBitArray = new BitArray();
    localBitArray.appendBits(0, m);
    int n = arrayOfInt.length;
    for (int i1 = 0; i1 < n; i1++)
      localBitArray.appendBits(arrayOfInt[i1], paramInt2);
    return localBitArray;
  }

  static BitArray generateModeMessage(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    BitArray localBitArray = new BitArray();
    if (paramBoolean)
    {
      localBitArray.appendBits(paramInt1 - 1, 2);
      localBitArray.appendBits(paramInt2 - 1, 6);
      return generateCheckWords(localBitArray, 28, 4);
    }
    localBitArray.appendBits(paramInt1 - 1, 5);
    localBitArray.appendBits(paramInt2 - 1, 11);
    return generateCheckWords(localBitArray, 40, 4);
  }

  static GenericGF getGF(int paramInt)
  {
    switch (paramInt)
    {
    case 5:
    case 7:
    case 9:
    case 11:
    default:
      return null;
    case 4:
      return GenericGF.AZTEC_PARAM;
    case 6:
      return GenericGF.AZTEC_DATA_6;
    case 8:
      return GenericGF.AZTEC_DATA_8;
    case 10:
      return GenericGF.AZTEC_DATA_10;
    case 12:
    }
    return GenericGF.AZTEC_DATA_12;
  }

  static BitArray highLevelEncode(byte[] paramArrayOfByte)
  {
    BitArray localBitArray = new BitArray();
    int i = 0;
    int[] arrayOfInt1 = new int[5];
    int[] arrayOfInt2 = new int[5];
    int j = 0;
    if (j < paramArrayOfByte.length)
    {
      int k = 0xFF & paramArrayOfByte[j];
      int m;
      label60: int n;
      if (j < -1 + paramArrayOfByte.length)
      {
        m = 0xFF & paramArrayOfByte[(j + 1)];
        if ((k != 13) || (m != 10))
          break label109;
        n = 2;
        label77: if (n <= 0)
          break label247;
        if (i != 4)
          break label175;
        outputWord(localBitArray, 4, n);
        j++;
      }
      label642: 
      while (true)
      {
        j++;
        break;
        m = 0;
        break label60;
        label109: if ((k == 46) && (m == 32))
        {
          n = 3;
          break label77;
        }
        if ((k == 44) && (m == 32))
        {
          n = 4;
          break label77;
        }
        n = 0;
        if (k != 58)
          break label77;
        n = 0;
        if (m != 32)
          break label77;
        n = 5;
        break label77;
        label175: if (SHIFT_TABLE[i][4] >= 0)
        {
          outputWord(localBitArray, i, SHIFT_TABLE[i][4]);
          outputWord(localBitArray, 4, n);
          j++;
        }
        else
        {
          label696: if (LATCH_TABLE[i][4] >= 0)
          {
            outputWord(localBitArray, i, LATCH_TABLE[i][4]);
            outputWord(localBitArray, 4, n);
            i = 4;
            j++;
          }
          else
          {
            label247: int i1 = -1;
            int i2 = -1;
            int i3 = -1;
            for (int i4 = 0; i4 < 5; i4++)
            {
              arrayOfInt1[i4] = CHAR_MAP[i4][k];
              if ((arrayOfInt1[i4] > 0) && (i1 < 0))
                i1 = i4;
              if ((i2 < 0) && (arrayOfInt1[i4] > 0) && (SHIFT_TABLE[i][i4] >= 0))
                i2 = i4;
              arrayOfInt2[i4] = CHAR_MAP[i4][m];
              if ((i3 < 0) && (arrayOfInt1[i4] > 0) && ((m == 0) || (arrayOfInt2[i4] > 0)) && (LATCH_TABLE[i][i4] >= 0))
                i3 = i4;
            }
            if ((i2 < 0) && (i3 < 0));
            for (int i12 = 0; ; i12++)
              if (i12 < 5)
              {
                if ((arrayOfInt1[i12] > 0) && (LATCH_TABLE[i][i12] >= 0))
                  i3 = i12;
              }
              else
              {
                if (arrayOfInt1[i] <= 0)
                  break label445;
                outputWord(localBitArray, i, arrayOfInt1[i]);
                break;
              }
            label445: if (i3 >= 0)
            {
              outputWord(localBitArray, i, LATCH_TABLE[i][i3]);
              outputWord(localBitArray, i3, arrayOfInt1[i3]);
              i = i3;
            }
            else if (i2 >= 0)
            {
              outputWord(localBitArray, i, SHIFT_TABLE[i][i2]);
              int i11 = arrayOfInt1[i2];
              outputWord(localBitArray, i2, i11);
            }
            else if (i1 >= 0)
            {
              if (i == 4)
              {
                outputWord(localBitArray, 4, LATCH_TABLE[4][0]);
                j--;
                i = 0;
              }
              else if (i == 2)
              {
                outputWord(localBitArray, 2, LATCH_TABLE[2][0]);
                j--;
                i = 0;
              }
            }
            else
            {
              int i5 = j + 1;
              int i6 = 0;
              int i7;
              if (i5 < paramArrayOfByte.length)
              {
                int i8 = 0xFF & paramArrayOfByte[i5];
                int i9 = 1;
                for (int i10 = 0; ; i10++)
                  if (i10 < 5)
                  {
                    if (CHAR_MAP[i10][i8] > 0)
                      i9 = 0;
                  }
                  else
                  {
                    if (i9 == 0)
                      break label642;
                    i6 = 0;
                    i5++;
                    break;
                  }
                if (i6 >= 1)
                  i5 -= i6;
              }
              else
              {
                i7 = i5 - j;
                switch (i)
                {
                default:
                  if ((i7 >= 32) && (i7 < 63))
                    i7 = 31;
                  if (i7 > 542)
                    i7 = 542;
                  if (i7 < 32)
                    localBitArray.appendBits(i7, 5);
                  break;
                case 0:
                case 1:
                case 3:
                case 2:
                case 4:
                }
              }
              while (true)
              {
                if (i7 <= 0)
                  break label858;
                localBitArray.appendBits(paramArrayOfByte[j], 8);
                i7--;
                j++;
                continue;
                i6++;
                break;
                outputWord(localBitArray, i, SHIFT_TABLE[i][5]);
                break label696;
                outputWord(localBitArray, i, LATCH_TABLE[i][0]);
                outputWord(localBitArray, 0, SHIFT_TABLE[0][5]);
                i = 0;
                break label696;
                outputWord(localBitArray, i, LATCH_TABLE[i][0]);
                outputWord(localBitArray, 0, SHIFT_TABLE[0][5]);
                i = 0;
                break label696;
                localBitArray.appendBits(i7 - 31, 16);
              }
              label858: j--;
            }
          }
        }
      }
    }
    return localBitArray;
  }

  static void outputWord(BitArray paramBitArray, int paramInt1, int paramInt2)
  {
    if (paramInt1 == 2)
    {
      paramBitArray.appendBits(paramInt2, 4);
      return;
    }
    if (paramInt1 < 5)
    {
      paramBitArray.appendBits(paramInt2, 5);
      return;
    }
    paramBitArray.appendBits(paramInt2, 8);
  }

  static BitArray stuffBits(BitArray paramBitArray, int paramInt)
  {
    int i = 1;
    BitArray localBitArray = new BitArray();
    int j = paramBitArray.getSize();
    int k = -2 + (i << paramInt);
    int m = 0;
    if (m < j)
    {
      int i5 = 0;
      for (int i6 = 0; i6 < paramInt; i6++)
        if ((m + i6 >= j) || (paramBitArray.get(m + i6)))
          i5 |= i << paramInt - 1 - i6;
      if ((i5 & k) == k)
      {
        localBitArray.appendBits(i5 & k, paramInt);
        m--;
      }
      while (true)
      {
        m += paramInt;
        break;
        if ((i5 & k) == 0)
        {
          localBitArray.appendBits(i5 | 0x1, paramInt);
          m--;
        }
        else
        {
          localBitArray.appendBits(i5, paramInt);
        }
      }
    }
    int n = localBitArray.getSize();
    int i1 = n % paramInt;
    if (i1 != 0)
    {
      int i2 = 1;
      for (int i3 = 0; i3 < i1; i3++)
        if (!localBitArray.get(n - 1 - i3))
          i2 = 0;
      for (int i4 = i1; i4 < paramInt - 1; i4++)
        localBitArray.appendBit(i);
      if (i2 != 0)
        break label240;
    }
    while (true)
    {
      localBitArray.appendBit(i);
      return localBitArray;
      label240: i = 0;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.aztec.encoder.Encoder
 * JD-Core Version:    0.6.2
 */