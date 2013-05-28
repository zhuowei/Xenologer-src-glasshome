package com.google.zxing.qrcode.decoder;

import com.google.zxing.common.BitMatrix;

abstract class DataMask
{
  private static final DataMask[] DATA_MASKS = arrayOfDataMask;

  static
  {
    DataMask[] arrayOfDataMask = new DataMask[8];
    arrayOfDataMask[0] = new DataMask000(null);
    arrayOfDataMask[1] = new DataMask001(null);
    arrayOfDataMask[2] = new DataMask010(null);
    arrayOfDataMask[3] = new DataMask011(null);
    arrayOfDataMask[4] = new DataMask100(null);
    arrayOfDataMask[5] = new DataMask101(null);
    arrayOfDataMask[6] = new DataMask110(null);
    arrayOfDataMask[7] = new DataMask111(null);
  }

  static DataMask forReference(int paramInt)
  {
    if ((paramInt < 0) || (paramInt > 7))
      throw new IllegalArgumentException();
    return DATA_MASKS[paramInt];
  }

  abstract boolean isMasked(int paramInt1, int paramInt2);

  final void unmaskBitMatrix(BitMatrix paramBitMatrix, int paramInt)
  {
    for (int i = 0; i < paramInt; i++)
      for (int j = 0; j < paramInt; j++)
        if (isMasked(i, j))
          paramBitMatrix.flip(j, i);
  }

  private static final class DataMask000 extends DataMask
  {
    private DataMask000()
    {
      super();
    }

    boolean isMasked(int paramInt1, int paramInt2)
    {
      return (0x1 & paramInt1 + paramInt2) == 0;
    }
  }

  private static final class DataMask001 extends DataMask
  {
    private DataMask001()
    {
      super();
    }

    boolean isMasked(int paramInt1, int paramInt2)
    {
      return (paramInt1 & 0x1) == 0;
    }
  }

  private static final class DataMask010 extends DataMask
  {
    private DataMask010()
    {
      super();
    }

    boolean isMasked(int paramInt1, int paramInt2)
    {
      return paramInt2 % 3 == 0;
    }
  }

  private static final class DataMask011 extends DataMask
  {
    private DataMask011()
    {
      super();
    }

    boolean isMasked(int paramInt1, int paramInt2)
    {
      return (paramInt1 + paramInt2) % 3 == 0;
    }
  }

  private static final class DataMask100 extends DataMask
  {
    private DataMask100()
    {
      super();
    }

    boolean isMasked(int paramInt1, int paramInt2)
    {
      return (0x1 & (paramInt1 >>> 1) + paramInt2 / 3) == 0;
    }
  }

  private static final class DataMask101 extends DataMask
  {
    private DataMask101()
    {
      super();
    }

    boolean isMasked(int paramInt1, int paramInt2)
    {
      int i = paramInt1 * paramInt2;
      return (i & 0x1) + i % 3 == 0;
    }
  }

  private static final class DataMask110 extends DataMask
  {
    private DataMask110()
    {
      super();
    }

    boolean isMasked(int paramInt1, int paramInt2)
    {
      int i = paramInt1 * paramInt2;
      return (0x1 & (i & 0x1) + i % 3) == 0;
    }
  }

  private static final class DataMask111 extends DataMask
  {
    private DataMask111()
    {
      super();
    }

    boolean isMasked(int paramInt1, int paramInt2)
    {
      return (0x1 & (0x1 & paramInt1 + paramInt2) + paramInt1 * paramInt2 % 3) == 0;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.decoder.DataMask
 * JD-Core Version:    0.6.2
 */