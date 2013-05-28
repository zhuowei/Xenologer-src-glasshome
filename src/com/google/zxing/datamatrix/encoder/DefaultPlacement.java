package com.google.zxing.datamatrix.encoder;

import java.util.Arrays;

public class DefaultPlacement
{
  private final byte[] bits;
  private final String codewords;
  private final int numcols;
  private final int numrows;

  public DefaultPlacement(String paramString, int paramInt1, int paramInt2)
  {
    this.codewords = paramString;
    this.numcols = paramInt1;
    this.numrows = paramInt2;
    this.bits = new byte[paramInt1 * paramInt2];
    Arrays.fill(this.bits, (byte)-1);
  }

  private void corner1(int paramInt)
  {
    module(-1 + this.numrows, 0, paramInt, 1);
    module(-1 + this.numrows, 1, paramInt, 2);
    module(-1 + this.numrows, 2, paramInt, 3);
    module(0, -2 + this.numcols, paramInt, 4);
    module(0, -1 + this.numcols, paramInt, 5);
    module(1, -1 + this.numcols, paramInt, 6);
    module(2, -1 + this.numcols, paramInt, 7);
    module(3, -1 + this.numcols, paramInt, 8);
  }

  private void corner2(int paramInt)
  {
    module(-3 + this.numrows, 0, paramInt, 1);
    module(-2 + this.numrows, 0, paramInt, 2);
    module(-1 + this.numrows, 0, paramInt, 3);
    module(0, -4 + this.numcols, paramInt, 4);
    module(0, -3 + this.numcols, paramInt, 5);
    module(0, -2 + this.numcols, paramInt, 6);
    module(0, -1 + this.numcols, paramInt, 7);
    module(1, -1 + this.numcols, paramInt, 8);
  }

  private void corner3(int paramInt)
  {
    module(-3 + this.numrows, 0, paramInt, 1);
    module(-2 + this.numrows, 0, paramInt, 2);
    module(-1 + this.numrows, 0, paramInt, 3);
    module(0, -2 + this.numcols, paramInt, 4);
    module(0, -1 + this.numcols, paramInt, 5);
    module(1, -1 + this.numcols, paramInt, 6);
    module(2, -1 + this.numcols, paramInt, 7);
    module(3, -1 + this.numcols, paramInt, 8);
  }

  private void corner4(int paramInt)
  {
    module(-1 + this.numrows, 0, paramInt, 1);
    module(-1 + this.numrows, -1 + this.numcols, paramInt, 2);
    module(0, -3 + this.numcols, paramInt, 3);
    module(0, -2 + this.numcols, paramInt, 4);
    module(0, -1 + this.numcols, paramInt, 5);
    module(1, -3 + this.numcols, paramInt, 6);
    module(1, -2 + this.numcols, paramInt, 7);
    module(1, -1 + this.numcols, paramInt, 8);
  }

  private void module(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = 1;
    if (paramInt1 < 0)
    {
      paramInt1 += this.numrows;
      paramInt2 += 4 - (4 + this.numrows) % 8;
    }
    if (paramInt2 < 0)
    {
      paramInt2 += this.numcols;
      paramInt1 += 4 - (4 + this.numcols) % 8;
    }
    if ((this.codewords.charAt(paramInt3) & i << 8 - paramInt4) != 0);
    while (true)
    {
      setBit(paramInt2, paramInt1, i);
      return;
      int j = 0;
    }
  }

  private void utah(int paramInt1, int paramInt2, int paramInt3)
  {
    module(paramInt1 - 2, paramInt2 - 2, paramInt3, 1);
    module(paramInt1 - 2, paramInt2 - 1, paramInt3, 2);
    module(paramInt1 - 1, paramInt2 - 2, paramInt3, 3);
    module(paramInt1 - 1, paramInt2 - 1, paramInt3, 4);
    module(paramInt1 - 1, paramInt2, paramInt3, 5);
    module(paramInt1, paramInt2 - 2, paramInt3, 6);
    module(paramInt1, paramInt2 - 1, paramInt3, 7);
    module(paramInt1, paramInt2, paramInt3, 8);
  }

  public final boolean getBit(int paramInt1, int paramInt2)
  {
    return this.bits[(paramInt1 + paramInt2 * this.numcols)] == 1;
  }

  final byte[] getBits()
  {
    return this.bits;
  }

  final int getNumcols()
  {
    return this.numcols;
  }

  final int getNumrows()
  {
    return this.numrows;
  }

  final boolean hasBit(int paramInt1, int paramInt2)
  {
    return this.bits[(paramInt1 + paramInt2 * this.numcols)] >= 0;
  }

  public final void place()
  {
    int i = 0;
    int j = 4;
    int k = 0;
    if ((j == this.numrows) && (k == 0))
    {
      int i6 = i + 1;
      corner1(i);
      i = i6;
    }
    if ((j == -2 + this.numrows) && (k == 0) && (this.numcols % 4 != 0))
    {
      int i5 = i + 1;
      corner2(i);
      i = i5;
    }
    if ((j == -2 + this.numrows) && (k == 0) && (this.numcols % 8 == 4))
    {
      int i4 = i + 1;
      corner3(i);
      i = i4;
    }
    if ((j == 4 + this.numrows) && (k == 2) && (this.numcols % 8 == 0))
    {
      int i3 = i + 1;
      corner4(i);
      i = i3;
    }
    do
    {
      if ((j < this.numrows) && (k >= 0) && (!hasBit(k, j)))
      {
        int i2 = i + 1;
        utah(j, k, i);
        i = i2;
      }
      j -= 2;
      k += 2;
    }
    while ((j >= 0) && (k < this.numcols));
    int m = j + 1;
    int n = k + 3;
    int i1 = i;
    label212: if ((m >= 0) && (n < this.numcols) && (!hasBit(n, m)))
    {
      i = i1 + 1;
      utah(m, n, i1);
    }
    while (true)
    {
      m += 2;
      n -= 2;
      if ((m >= this.numrows) || (n < 0))
      {
        j = m + 3;
        k = n + 1;
        if ((j < this.numrows) || (k < this.numcols))
          break;
        if (!hasBit(-1 + this.numcols, -1 + this.numrows))
        {
          setBit(-1 + this.numcols, -1 + this.numrows, true);
          setBit(-2 + this.numcols, -2 + this.numrows, true);
        }
        return;
      }
      i1 = i;
      break label212;
      i = i1;
    }
  }

  final void setBit(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    byte[] arrayOfByte = this.bits;
    int i = paramInt1 + paramInt2 * this.numcols;
    if (paramBoolean);
    for (int j = 1; ; j = 0)
    {
      arrayOfByte[i] = j;
      return;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.datamatrix.encoder.DefaultPlacement
 * JD-Core Version:    0.6.2
 */