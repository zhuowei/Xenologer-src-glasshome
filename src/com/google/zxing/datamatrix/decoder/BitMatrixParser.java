package com.google.zxing.datamatrix.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.common.BitMatrix;

final class BitMatrixParser
{
  private final BitMatrix mappingBitMatrix;
  private final BitMatrix readMappingMatrix;
  private final Version version;

  BitMatrixParser(BitMatrix paramBitMatrix)
    throws FormatException
  {
    int i = paramBitMatrix.getHeight();
    if ((i < 8) || (i > 144) || ((i & 0x1) != 0))
      throw FormatException.getFormatInstance();
    this.version = readVersion(paramBitMatrix);
    this.mappingBitMatrix = extractDataRegion(paramBitMatrix);
    this.readMappingMatrix = new BitMatrix(this.mappingBitMatrix.getWidth(), this.mappingBitMatrix.getHeight());
  }

  private static Version readVersion(BitMatrix paramBitMatrix)
    throws FormatException
  {
    return Version.getVersionForDimensions(paramBitMatrix.getHeight(), paramBitMatrix.getWidth());
  }

  BitMatrix extractDataRegion(BitMatrix paramBitMatrix)
  {
    int i = this.version.getSymbolSizeRows();
    int j = this.version.getSymbolSizeColumns();
    if (paramBitMatrix.getHeight() != i)
      throw new IllegalArgumentException("Dimension of bitMarix must match the version size");
    int k = this.version.getDataRegionSizeRows();
    int m = this.version.getDataRegionSizeColumns();
    int n = i / k;
    int i1 = j / m;
    int i2 = n * k;
    BitMatrix localBitMatrix = new BitMatrix(i1 * m, i2);
    for (int i3 = 0; i3 < n; i3++)
    {
      int i4 = i3 * k;
      for (int i5 = 0; i5 < i1; i5++)
      {
        int i6 = i5 * m;
        for (int i7 = 0; i7 < k; i7++)
        {
          int i8 = i7 + (1 + i3 * (k + 2));
          int i9 = i4 + i7;
          for (int i10 = 0; i10 < m; i10++)
            if (paramBitMatrix.get(i10 + (1 + i5 * (m + 2)), i8))
              localBitMatrix.set(i6 + i10, i9);
        }
      }
    }
    return localBitMatrix;
  }

  Version getVersion()
  {
    return this.version;
  }

  byte[] readCodewords()
    throws FormatException
  {
    byte[] arrayOfByte = new byte[this.version.getTotalCodewords()];
    int i = 4;
    int j = 0;
    int k = this.mappingBitMatrix.getHeight();
    int m = this.mappingBitMatrix.getWidth();
    int n = 0;
    int i1 = 0;
    int i2 = 0;
    int i3 = 0;
    int i4 = 0;
    int i9;
    if ((i == k) && (j == 0) && (n == 0))
    {
      i9 = i4 + 1;
      arrayOfByte[i4] = ((byte)readCorner1(k, m));
      i -= 2;
      j += 2;
      n = 1;
    }
    label90: int i5;
    while (true)
      if ((i >= k) && (j >= m))
        if (i9 != this.version.getTotalCodewords())
        {
          throw FormatException.getFormatInstance();
          if ((i == k - 2) && (j == 0) && ((m & 0x3) != 0) && (i1 == 0))
          {
            i9 = i4 + 1;
            arrayOfByte[i4] = ((byte)readCorner2(k, m));
            i -= 2;
            j += 2;
            i1 = 1;
            continue;
          }
          if ((i == k + 4) && (j == 2) && ((m & 0x7) == 0) && (i2 == 0))
          {
            i9 = i4 + 1;
            arrayOfByte[i4] = ((byte)readCorner3(k, m));
            i -= 2;
            j += 2;
            i2 = 1;
            continue;
          }
          if ((i == k - 2) && (j == 0) && ((m & 0x7) == 4) && (i3 == 0))
          {
            i9 = i4 + 1;
            arrayOfByte[i4] = ((byte)readCorner4(k, m));
            i -= 2;
            j += 2;
            i3 = 1;
            continue;
            label287: i4 = i5;
          }
          if ((i >= k) || (j < 0) || (this.readMappingMatrix.get(j, i)))
            break label467;
          i5 = i4 + 1;
          arrayOfByte[i4] = ((byte)readUtah(i, j, k, m));
        }
    while (true)
    {
      i -= 2;
      j += 2;
      if ((i >= 0) && (j < m))
        break label287;
      int i6 = i + 1;
      int i7 = j + 3;
      int i8 = i5;
      label364: if ((i6 >= 0) && (i7 < m) && (!this.readMappingMatrix.get(i7, i6)))
      {
        i9 = i8 + 1;
        arrayOfByte[i8] = ((byte)readUtah(i6, i7, k, m));
      }
      while (true)
      {
        i6 += 2;
        i7 -= 2;
        if ((i6 >= k) || (i7 < 0))
        {
          i = i6 + 3;
          j = i7 + 1;
          break label90;
          return arrayOfByte;
          i4 = i9;
          break;
        }
        i8 = i9;
        break label364;
        i9 = i8;
      }
      label467: i5 = i4;
    }
  }

  int readCorner1(int paramInt1, int paramInt2)
  {
    boolean bool = readModule(paramInt1 - 1, 0, paramInt1, paramInt2);
    int i = 0;
    if (bool)
      i = 0x0 | 0x1;
    int j = i << 1;
    if (readModule(paramInt1 - 1, 1, paramInt1, paramInt2))
      j |= 1;
    int k = j << 1;
    if (readModule(paramInt1 - 1, 2, paramInt1, paramInt2))
      k |= 1;
    int m = k << 1;
    if (readModule(0, paramInt2 - 2, paramInt1, paramInt2))
      m |= 1;
    int n = m << 1;
    if (readModule(0, paramInt2 - 1, paramInt1, paramInt2))
      n |= 1;
    int i1 = n << 1;
    if (readModule(1, paramInt2 - 1, paramInt1, paramInt2))
      i1 |= 1;
    int i2 = i1 << 1;
    if (readModule(2, paramInt2 - 1, paramInt1, paramInt2))
      i2 |= 1;
    int i3 = i2 << 1;
    if (readModule(3, paramInt2 - 1, paramInt1, paramInt2))
      i3 |= 1;
    return i3;
  }

  int readCorner2(int paramInt1, int paramInt2)
  {
    boolean bool = readModule(paramInt1 - 3, 0, paramInt1, paramInt2);
    int i = 0;
    if (bool)
      i = 0x0 | 0x1;
    int j = i << 1;
    if (readModule(paramInt1 - 2, 0, paramInt1, paramInt2))
      j |= 1;
    int k = j << 1;
    if (readModule(paramInt1 - 1, 0, paramInt1, paramInt2))
      k |= 1;
    int m = k << 1;
    if (readModule(0, paramInt2 - 4, paramInt1, paramInt2))
      m |= 1;
    int n = m << 1;
    if (readModule(0, paramInt2 - 3, paramInt1, paramInt2))
      n |= 1;
    int i1 = n << 1;
    if (readModule(0, paramInt2 - 2, paramInt1, paramInt2))
      i1 |= 1;
    int i2 = i1 << 1;
    if (readModule(0, paramInt2 - 1, paramInt1, paramInt2))
      i2 |= 1;
    int i3 = i2 << 1;
    if (readModule(1, paramInt2 - 1, paramInt1, paramInt2))
      i3 |= 1;
    return i3;
  }

  int readCorner3(int paramInt1, int paramInt2)
  {
    boolean bool = readModule(paramInt1 - 1, 0, paramInt1, paramInt2);
    int i = 0;
    if (bool)
      i = 0x0 | 0x1;
    int j = i << 1;
    if (readModule(paramInt1 - 1, paramInt2 - 1, paramInt1, paramInt2))
      j |= 1;
    int k = j << 1;
    if (readModule(0, paramInt2 - 3, paramInt1, paramInt2))
      k |= 1;
    int m = k << 1;
    if (readModule(0, paramInt2 - 2, paramInt1, paramInt2))
      m |= 1;
    int n = m << 1;
    if (readModule(0, paramInt2 - 1, paramInt1, paramInt2))
      n |= 1;
    int i1 = n << 1;
    if (readModule(1, paramInt2 - 3, paramInt1, paramInt2))
      i1 |= 1;
    int i2 = i1 << 1;
    if (readModule(1, paramInt2 - 2, paramInt1, paramInt2))
      i2 |= 1;
    int i3 = i2 << 1;
    if (readModule(1, paramInt2 - 1, paramInt1, paramInt2))
      i3 |= 1;
    return i3;
  }

  int readCorner4(int paramInt1, int paramInt2)
  {
    boolean bool = readModule(paramInt1 - 3, 0, paramInt1, paramInt2);
    int i = 0;
    if (bool)
      i = 0x0 | 0x1;
    int j = i << 1;
    if (readModule(paramInt1 - 2, 0, paramInt1, paramInt2))
      j |= 1;
    int k = j << 1;
    if (readModule(paramInt1 - 1, 0, paramInt1, paramInt2))
      k |= 1;
    int m = k << 1;
    if (readModule(0, paramInt2 - 2, paramInt1, paramInt2))
      m |= 1;
    int n = m << 1;
    if (readModule(0, paramInt2 - 1, paramInt1, paramInt2))
      n |= 1;
    int i1 = n << 1;
    if (readModule(1, paramInt2 - 1, paramInt1, paramInt2))
      i1 |= 1;
    int i2 = i1 << 1;
    if (readModule(2, paramInt2 - 1, paramInt1, paramInt2))
      i2 |= 1;
    int i3 = i2 << 1;
    if (readModule(3, paramInt2 - 1, paramInt1, paramInt2))
      i3 |= 1;
    return i3;
  }

  boolean readModule(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramInt1 < 0)
    {
      paramInt1 += paramInt3;
      paramInt2 += 4 - (0x7 & paramInt3 + 4);
    }
    if (paramInt2 < 0)
    {
      paramInt2 += paramInt4;
      paramInt1 += 4 - (0x7 & paramInt4 + 4);
    }
    this.readMappingMatrix.set(paramInt2, paramInt1);
    return this.mappingBitMatrix.get(paramInt2, paramInt1);
  }

  int readUtah(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    boolean bool = readModule(paramInt1 - 2, paramInt2 - 2, paramInt3, paramInt4);
    int i = 0;
    if (bool)
      i = 0x0 | 0x1;
    int j = i << 1;
    if (readModule(paramInt1 - 2, paramInt2 - 1, paramInt3, paramInt4))
      j |= 1;
    int k = j << 1;
    if (readModule(paramInt1 - 1, paramInt2 - 2, paramInt3, paramInt4))
      k |= 1;
    int m = k << 1;
    if (readModule(paramInt1 - 1, paramInt2 - 1, paramInt3, paramInt4))
      m |= 1;
    int n = m << 1;
    if (readModule(paramInt1 - 1, paramInt2, paramInt3, paramInt4))
      n |= 1;
    int i1 = n << 1;
    if (readModule(paramInt1, paramInt2 - 2, paramInt3, paramInt4))
      i1 |= 1;
    int i2 = i1 << 1;
    if (readModule(paramInt1, paramInt2 - 1, paramInt3, paramInt4))
      i2 |= 1;
    int i3 = i2 << 1;
    if (readModule(paramInt1, paramInt2, paramInt3, paramInt4))
      i3 |= 1;
    return i3;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.datamatrix.decoder.BitMatrixParser
 * JD-Core Version:    0.6.2
 */