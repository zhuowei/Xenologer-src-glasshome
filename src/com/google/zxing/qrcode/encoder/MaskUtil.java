package com.google.zxing.qrcode.encoder;

final class MaskUtil
{
  private static final int N1 = 3;
  private static final int N2 = 3;
  private static final int N3 = 40;
  private static final int N4 = 10;

  static int applyMaskPenaltyRule1(ByteMatrix paramByteMatrix)
  {
    return applyMaskPenaltyRule1Internal(paramByteMatrix, true) + applyMaskPenaltyRule1Internal(paramByteMatrix, false);
  }

  private static int applyMaskPenaltyRule1Internal(ByteMatrix paramByteMatrix, boolean paramBoolean)
  {
    int i = 0;
    int j;
    int k;
    label21: byte[][] arrayOfByte;
    if (paramBoolean)
    {
      j = paramByteMatrix.getHeight();
      if (!paramBoolean)
        break label90;
      k = paramByteMatrix.getWidth();
      arrayOfByte = paramByteMatrix.getArray();
    }
    for (int m = 0; ; m++)
    {
      if (m >= j)
        break label158;
      int n = 0;
      int i1 = -1;
      int i2 = 0;
      label45: if (i2 < k)
      {
        int i3;
        if (paramBoolean)
        {
          i3 = arrayOfByte[m][i2];
          label66: if (i3 != i1)
            break label112;
          n++;
        }
        while (true)
        {
          i2++;
          break label45;
          j = paramByteMatrix.getWidth();
          break;
          label90: k = paramByteMatrix.getHeight();
          break label21;
          i3 = arrayOfByte[i2][m];
          break label66;
          label112: if (n >= 5)
            i += 3 + (n - 5);
          n = 1;
          i1 = i3;
        }
      }
      if (n >= 5)
        i += 3 + (n - 5);
    }
    label158: return i;
  }

  static int applyMaskPenaltyRule2(ByteMatrix paramByteMatrix)
  {
    int i = 0;
    byte[][] arrayOfByte = paramByteMatrix.getArray();
    int j = paramByteMatrix.getWidth();
    int k = paramByteMatrix.getHeight();
    for (int m = 0; m < k - 1; m++)
      for (int n = 0; n < j - 1; n++)
      {
        int i1 = arrayOfByte[m][n];
        if ((i1 == arrayOfByte[m][(n + 1)]) && (i1 == arrayOfByte[(m + 1)][n]) && (i1 == arrayOfByte[(m + 1)][(n + 1)]))
          i++;
      }
    return i * 3;
  }

  static int applyMaskPenaltyRule3(ByteMatrix paramByteMatrix)
  {
    int i = 0;
    byte[][] arrayOfByte = paramByteMatrix.getArray();
    int j = paramByteMatrix.getWidth();
    int k = paramByteMatrix.getHeight();
    for (int m = 0; m < k; m++)
      for (int n = 0; n < j; n++)
      {
        if ((n + 6 < j) && (arrayOfByte[m][n] == 1) && (arrayOfByte[m][(n + 1)] == 0) && (arrayOfByte[m][(n + 2)] == 1) && (arrayOfByte[m][(n + 3)] == 1) && (arrayOfByte[m][(n + 4)] == 1) && (arrayOfByte[m][(n + 5)] == 0) && (arrayOfByte[m][(n + 6)] == 1) && (((n + 10 < j) && (arrayOfByte[m][(n + 7)] == 0) && (arrayOfByte[m][(n + 8)] == 0) && (arrayOfByte[m][(n + 9)] == 0) && (arrayOfByte[m][(n + 10)] == 0)) || ((n - 4 >= 0) && (arrayOfByte[m][(n - 1)] == 0) && (arrayOfByte[m][(n - 2)] == 0) && (arrayOfByte[m][(n - 3)] == 0) && (arrayOfByte[m][(n - 4)] == 0))))
          i += 40;
        if ((m + 6 < k) && (arrayOfByte[m][n] == 1) && (arrayOfByte[(m + 1)][n] == 0) && (arrayOfByte[(m + 2)][n] == 1) && (arrayOfByte[(m + 3)][n] == 1) && (arrayOfByte[(m + 4)][n] == 1) && (arrayOfByte[(m + 5)][n] == 0) && (arrayOfByte[(m + 6)][n] == 1) && (((m + 10 < k) && (arrayOfByte[(m + 7)][n] == 0) && (arrayOfByte[(m + 8)][n] == 0) && (arrayOfByte[(m + 9)][n] == 0) && (arrayOfByte[(m + 10)][n] == 0)) || ((m - 4 >= 0) && (arrayOfByte[(m - 1)][n] == 0) && (arrayOfByte[(m - 2)][n] == 0) && (arrayOfByte[(m - 3)][n] == 0) && (arrayOfByte[(m - 4)][n] == 0))))
          i += 40;
      }
    return i;
  }

  static int applyMaskPenaltyRule4(ByteMatrix paramByteMatrix)
  {
    int i = 0;
    byte[][] arrayOfByte = paramByteMatrix.getArray();
    int j = paramByteMatrix.getWidth();
    int k = paramByteMatrix.getHeight();
    for (int m = 0; m < k; m++)
    {
      byte[] arrayOfByte1 = arrayOfByte[m];
      for (int i1 = 0; i1 < j; i1++)
        if (arrayOfByte1[i1] == 1)
          i++;
    }
    int n = paramByteMatrix.getHeight() * paramByteMatrix.getWidth();
    return 10 * (int)(20.0D * Math.abs(i / n - 0.5D));
  }

  static boolean getDataMaskBit(int paramInt1, int paramInt2, int paramInt3)
  {
    int i;
    switch (paramInt1)
    {
    default:
      throw new IllegalArgumentException("Invalid mask pattern: " + paramInt1);
    case 0:
      i = 0x1 & paramInt3 + paramInt2;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    }
    while (i == 0)
    {
      return true;
      i = paramInt3 & 0x1;
      continue;
      i = paramInt2 % 3;
      continue;
      i = (paramInt3 + paramInt2) % 3;
      continue;
      i = 0x1 & (paramInt3 >>> 1) + paramInt2 / 3;
      continue;
      int k = paramInt3 * paramInt2;
      i = (k & 0x1) + k % 3;
      continue;
      int j = paramInt3 * paramInt2;
      i = 0x1 & (j & 0x1) + j % 3;
      continue;
      i = 0x1 & paramInt3 * paramInt2 % 3 + (0x1 & paramInt3 + paramInt2);
    }
    return false;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.encoder.MaskUtil
 * JD-Core Version:    0.6.2
 */