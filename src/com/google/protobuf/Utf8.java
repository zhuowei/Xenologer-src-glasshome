package com.google.protobuf;

final class Utf8
{
  public static final int COMPLETE = 0;
  public static final int MALFORMED = -1;

  private static int incompleteStateFor(int paramInt)
  {
    if (paramInt > -12)
      paramInt = -1;
    return paramInt;
  }

  private static int incompleteStateFor(int paramInt1, int paramInt2)
  {
    if ((paramInt1 > -12) || (paramInt2 > -65))
      return -1;
    return paramInt1 ^ paramInt2 << 8;
  }

  private static int incompleteStateFor(int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramInt1 > -12) || (paramInt2 > -65) || (paramInt3 > -65))
      return -1;
    return paramInt1 ^ paramInt2 << 8 ^ paramInt3 << 16;
  }

  private static int incompleteStateFor(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = paramArrayOfByte[(paramInt1 - 1)];
    switch (paramInt2 - paramInt1)
    {
    default:
      throw new AssertionError();
    case 0:
      return incompleteStateFor(i);
    case 1:
      return incompleteStateFor(i, paramArrayOfByte[paramInt1]);
    case 2:
    }
    return incompleteStateFor(i, paramArrayOfByte[paramInt1], paramArrayOfByte[(paramInt1 + 1)]);
  }

  public static boolean isValidUtf8(byte[] paramArrayOfByte)
  {
    return isValidUtf8(paramArrayOfByte, 0, paramArrayOfByte.length);
  }

  public static boolean isValidUtf8(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return partialIsValidUtf8(paramArrayOfByte, paramInt1, paramInt2) == 0;
  }

  public static int partialIsValidUtf8(int paramInt1, byte[] paramArrayOfByte, int paramInt2, int paramInt3)
  {
    int i;
    int i5;
    int i3;
    if (paramInt1 != 0)
    {
      if (paramInt2 >= paramInt3)
        return paramInt1;
      i = (byte)paramInt1;
      if (i < -32)
      {
        if (i >= -62)
        {
          i5 = paramInt2 + 1;
          if (paramArrayOfByte[paramInt2] <= -65);
        }
        else
        {
          return -1;
        }
      }
      else if (i < -16)
      {
        int i2 = (byte)(0xFFFFFFFF ^ paramInt1 >> 8);
        if (i2 == 0)
        {
          i3 = paramInt2 + 1;
          i2 = paramArrayOfByte[paramInt2];
          if (i3 >= paramInt3)
          {
            int i4 = incompleteStateFor(i, i2);
            return i4;
          }
        }
        else
        {
          i3 = paramInt2;
        }
        if ((i2 > -65) || ((i == -32) && (i2 < -96)) || ((i == -19) && (i2 >= -96)))
          break label308;
        paramInt2 = i3 + 1;
        if (paramArrayOfByte[i3] <= -65)
          break label295;
      }
    }
    label295: label308: 
    while (true)
    {
      return -1;
      int j = (byte)(0xFFFFFFFF ^ paramInt1 >> 8);
      int m;
      int k;
      if (j == 0)
      {
        m = paramInt2 + 1;
        j = paramArrayOfByte[paramInt2];
        k = 0;
        if (m >= paramInt3)
        {
          int i1 = incompleteStateFor(i, j);
          return i1;
        }
      }
      else
      {
        k = (byte)(paramInt1 >> 16);
        m = paramInt2;
      }
      if (k == 0)
      {
        int n = m + 1;
        k = paramArrayOfByte[m];
        if (n >= paramInt3)
          return incompleteStateFor(i, j, k);
        m = n;
      }
      if ((j <= -65) && ((i << 28) + (j + 112) >> 30 == 0) && (k <= -65))
      {
        paramInt2 = m + 1;
        if (paramArrayOfByte[m] <= -65);
      }
      while (true)
      {
        return -1;
        paramInt2 = i5;
        return partialIsValidUtf8(paramArrayOfByte, paramInt2, paramInt3);
      }
    }
  }

  public static int partialIsValidUtf8(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    while ((paramInt1 < paramInt2) && (paramArrayOfByte[paramInt1] >= 0))
      paramInt1++;
    if (paramInt1 >= paramInt2)
      return 0;
    return partialIsValidUtf8NonAscii(paramArrayOfByte, paramInt1, paramInt2);
  }

  private static int partialIsValidUtf8NonAscii(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = paramInt1;
    while (true)
    {
      int k;
      if (i >= paramInt2)
        k = 0;
      int j;
      do
      {
        return k;
        j = i + 1;
        k = paramArrayOfByte[i];
        if (k >= 0)
          break label257;
        if (k >= -32)
          break;
      }
      while (j >= paramInt2);
      int m;
      int i2;
      if (k >= -62)
      {
        m = j + 1;
        if (paramArrayOfByte[j] <= -65);
      }
      else
      {
        return -1;
        if (k < -16)
        {
          if (j >= paramInt2 - 1)
            return incompleteStateFor(paramArrayOfByte, j, paramInt2);
          int i3 = j + 1;
          int i4 = paramArrayOfByte[j];
          if ((i4 > -65) || ((k == -32) && (i4 < -96)) || ((k == -19) && (i4 >= -96)))
            break label254;
          i2 = i3 + 1;
          if (paramArrayOfByte[i3] <= -65)
            break label248;
        }
      }
      label242: label244: label248: label254: 
      while (true)
      {
        return -1;
        if (j >= paramInt2 - 2)
          return incompleteStateFor(paramArrayOfByte, j, paramInt2);
        m = j + 1;
        int n = paramArrayOfByte[j];
        if ((n <= -65) && ((k << 28) + (n + 112) >> 30 == 0))
        {
          int i1 = m + 1;
          if (paramArrayOfByte[m] > -65)
            break label242;
          m = i1 + 1;
          if (paramArrayOfByte[i1] <= -65)
            break label244;
        }
        return -1;
        i2 = m;
        i = i2;
        break;
      }
      label257: i = j;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.protobuf.Utf8
 * JD-Core Version:    0.6.2
 */