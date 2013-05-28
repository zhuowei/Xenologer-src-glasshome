package com.google.zxing.qrcode.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.common.BitMatrix;

final class BitMatrixParser
{
  private final BitMatrix bitMatrix;
  private FormatInformation parsedFormatInfo;
  private Version parsedVersion;

  BitMatrixParser(BitMatrix paramBitMatrix)
    throws FormatException
  {
    int i = paramBitMatrix.getHeight();
    if ((i < 21) || ((i & 0x3) != 1))
      throw FormatException.getFormatInstance();
    this.bitMatrix = paramBitMatrix;
  }

  private int copyBit(int paramInt1, int paramInt2, int paramInt3)
  {
    if (this.bitMatrix.get(paramInt1, paramInt2))
      return 0x1 | paramInt3 << 1;
    return paramInt3 << 1;
  }

  byte[] readCodewords()
    throws FormatException
  {
    FormatInformation localFormatInformation = readFormatInformation();
    Version localVersion = readVersion();
    DataMask localDataMask = DataMask.forReference(localFormatInformation.getDataMask());
    int i = this.bitMatrix.getHeight();
    localDataMask.unmaskBitMatrix(this.bitMatrix, i);
    BitMatrix localBitMatrix = localVersion.buildFunctionPattern();
    int j = 1;
    byte[] arrayOfByte = new byte[localVersion.getTotalCodewords()];
    int k = 0;
    int m = 0;
    int n = 0;
    int i1 = i - 1;
    int i2;
    label87: int i3;
    label108: int i4;
    int i5;
    label115: int i6;
    if (i1 > 0)
    {
      if (i1 == 6)
        i1--;
      i2 = 0;
      if (i2 < i)
        if (j != 0)
        {
          i3 = i - 1 - i2;
          i4 = 0;
          i5 = k;
          if (i4 >= 2)
            break label212;
          if (localBitMatrix.get(i1 - i4, i3))
            break label250;
          n++;
          m <<= 1;
          if (this.bitMatrix.get(i1 - i4, i3))
            m |= 1;
          if (n != 8)
            break label250;
          i6 = i5 + 1;
          arrayOfByte[i5] = ((byte)m);
          n = 0;
          m = 0;
        }
    }
    while (true)
    {
      i4++;
      i5 = i6;
      break label115;
      i3 = i2;
      break label108;
      label212: i2++;
      k = i5;
      break label87;
      j ^= 1;
      i1 -= 2;
      break;
      if (k != localVersion.getTotalCodewords())
        throw FormatException.getFormatInstance();
      return arrayOfByte;
      label250: i6 = i5;
    }
  }

  FormatInformation readFormatInformation()
    throws FormatException
  {
    if (this.parsedFormatInfo != null)
      return this.parsedFormatInfo;
    int i = 0;
    for (int j = 0; j < 6; j++)
      i = copyBit(j, 8, i);
    int k = copyBit(8, 7, copyBit(8, 8, copyBit(7, 8, i)));
    for (int m = 5; m >= 0; m--)
      k = copyBit(8, m, k);
    int n = this.bitMatrix.getHeight();
    int i1 = 0;
    int i2 = n - 7;
    for (int i3 = n - 1; i3 >= i2; i3--)
      i1 = copyBit(8, i3, i1);
    for (int i4 = n - 8; i4 < n; i4++)
      i1 = copyBit(i4, 8, i1);
    this.parsedFormatInfo = FormatInformation.decodeFormatInformation(k, i1);
    if (this.parsedFormatInfo != null)
      return this.parsedFormatInfo;
    throw FormatException.getFormatInstance();
  }

  Version readVersion()
    throws FormatException
  {
    if (this.parsedVersion != null)
      return this.parsedVersion;
    int i = this.bitMatrix.getHeight();
    int j = i - 17 >> 2;
    if (j <= 6)
      return Version.getVersionForNumber(j);
    int k = 0;
    int m = i - 11;
    for (int n = 5; n >= 0; n--)
      for (int i4 = i - 9; i4 >= m; i4--)
        k = copyBit(i4, n, k);
    Version localVersion1 = Version.decodeVersionInformation(k);
    if ((localVersion1 != null) && (localVersion1.getDimensionForVersion() == i))
    {
      this.parsedVersion = localVersion1;
      return localVersion1;
    }
    int i1 = 0;
    for (int i2 = 5; i2 >= 0; i2--)
      for (int i3 = i - 9; i3 >= m; i3--)
        i1 = copyBit(i2, i3, i1);
    Version localVersion2 = Version.decodeVersionInformation(i1);
    if ((localVersion2 != null) && (localVersion2.getDimensionForVersion() == i))
    {
      this.parsedVersion = localVersion2;
      return localVersion2;
    }
    throw FormatException.getFormatInstance();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.decoder.BitMatrixParser
 * JD-Core Version:    0.6.2
 */