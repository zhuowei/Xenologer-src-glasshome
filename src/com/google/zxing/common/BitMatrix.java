package com.google.zxing.common;

public final class BitMatrix
{
  private final int[] bits;
  private final int height;
  private final int rowSize;
  private final int width;

  public BitMatrix(int paramInt)
  {
    this(paramInt, paramInt);
  }

  public BitMatrix(int paramInt1, int paramInt2)
  {
    if ((paramInt1 < 1) || (paramInt2 < 1))
      throw new IllegalArgumentException("Both dimensions must be greater than 0");
    this.width = paramInt1;
    this.height = paramInt2;
    this.rowSize = (paramInt1 + 31 >> 5);
    this.bits = new int[paramInt2 * this.rowSize];
  }

  public void clear()
  {
    int i = this.bits.length;
    for (int j = 0; j < i; j++)
      this.bits[j] = 0;
  }

  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof BitMatrix));
    BitMatrix localBitMatrix;
    do
    {
      return false;
      localBitMatrix = (BitMatrix)paramObject;
    }
    while ((this.width != localBitMatrix.width) || (this.height != localBitMatrix.height) || (this.rowSize != localBitMatrix.rowSize) || (this.bits.length != localBitMatrix.bits.length));
    for (int i = 0; ; i++)
    {
      if (i >= this.bits.length)
        break label92;
      if (this.bits[i] != localBitMatrix.bits[i])
        break;
    }
    label92: return true;
  }

  public void flip(int paramInt1, int paramInt2)
  {
    int i = paramInt2 * this.rowSize + (paramInt1 >> 5);
    int[] arrayOfInt = this.bits;
    arrayOfInt[i] ^= 1 << (paramInt1 & 0x1F);
  }

  public boolean get(int paramInt1, int paramInt2)
  {
    int i = paramInt2 * this.rowSize + (paramInt1 >> 5);
    return (0x1 & this.bits[i] >>> (paramInt1 & 0x1F)) != 0;
  }

  public int[] getBottomRightOnBit()
  {
    for (int i = -1 + this.bits.length; (i >= 0) && (this.bits[i] == 0); i--);
    if (i < 0)
      return null;
    int j = i / this.rowSize;
    int k = i % this.rowSize << 5;
    int m = this.bits[i];
    for (int n = 31; m >>> n == 0; n--);
    return new int[] { k + n, j };
  }

  public int[] getEnclosingRectangle()
  {
    int i = this.width;
    int j = this.height;
    int k = -1;
    int m = -1;
    for (int n = 0; n < this.height; n++)
      for (int i3 = 0; i3 < this.rowSize; i3++)
      {
        int i4 = this.bits[(i3 + n * this.rowSize)];
        if (i4 != 0)
        {
          if (n < j)
            j = n;
          if (n > m)
            m = n;
          if (i3 * 32 < i)
          {
            for (int i6 = 0; i4 << 31 - i6 == 0; i6++);
            if (i6 + i3 * 32 < i)
              i = i6 + i3 * 32;
          }
          if (31 + i3 * 32 > k)
          {
            for (int i5 = 31; i4 >>> i5 == 0; i5--);
            if (i5 + i3 * 32 > k)
              k = i5 + i3 * 32;
          }
        }
      }
    int i1 = k - i;
    int i2 = m - j;
    if ((i1 < 0) || (i2 < 0))
      return null;
    return new int[] { i, j, i1, i2 };
  }

  public int getHeight()
  {
    return this.height;
  }

  public BitArray getRow(int paramInt, BitArray paramBitArray)
  {
    if ((paramBitArray == null) || (paramBitArray.getSize() < this.width))
      paramBitArray = new BitArray(this.width);
    int i = paramInt * this.rowSize;
    for (int j = 0; j < this.rowSize; j++)
      paramBitArray.setBulk(j << 5, this.bits[(i + j)]);
    return paramBitArray;
  }

  public int[] getTopLeftOnBit()
  {
    for (int i = 0; (i < this.bits.length) && (this.bits[i] == 0); i++);
    if (i == this.bits.length)
      return null;
    int j = i / this.rowSize;
    int k = i % this.rowSize << 5;
    int m = this.bits[i];
    for (int n = 0; m << 31 - n == 0; n++);
    return new int[] { k + n, j };
  }

  public int getWidth()
  {
    return this.width;
  }

  public int hashCode()
  {
    int i = 31 * (31 * (31 * this.width + this.width) + this.height) + this.rowSize;
    int[] arrayOfInt = this.bits;
    int j = arrayOfInt.length;
    for (int k = 0; k < j; k++)
      i = arrayOfInt[k] + i * 31;
    return i;
  }

  public void set(int paramInt1, int paramInt2)
  {
    int i = paramInt2 * this.rowSize + (paramInt1 >> 5);
    int[] arrayOfInt = this.bits;
    arrayOfInt[i] |= 1 << (paramInt1 & 0x1F);
  }

  public void setRegion(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramInt2 < 0) || (paramInt1 < 0))
      throw new IllegalArgumentException("Left and top must be nonnegative");
    if ((paramInt4 < 1) || (paramInt3 < 1))
      throw new IllegalArgumentException("Height and width must be at least 1");
    int i = paramInt1 + paramInt3;
    int j = paramInt2 + paramInt4;
    if ((j > this.height) || (i > this.width))
      throw new IllegalArgumentException("The region must fit inside the matrix");
    for (int k = paramInt2; k < j; k++)
    {
      int m = k * this.rowSize;
      for (int n = paramInt1; n < i; n++)
      {
        int[] arrayOfInt = this.bits;
        int i1 = m + (n >> 5);
        arrayOfInt[i1] |= 1 << (n & 0x1F);
      }
    }
  }

  public void setRow(int paramInt, BitArray paramBitArray)
  {
    System.arraycopy(paramBitArray.getBitArray(), 0, this.bits, paramInt * this.rowSize, this.rowSize);
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(this.height * (1 + this.width));
    for (int i = 0; i < this.height; i++)
    {
      int j = 0;
      if (j < this.width)
      {
        if (get(j, i));
        for (String str = "X "; ; str = "  ")
        {
          localStringBuilder.append(str);
          j++;
          break;
        }
      }
      localStringBuilder.append('\n');
    }
    return localStringBuilder.toString();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.common.BitMatrix
 * JD-Core Version:    0.6.2
 */