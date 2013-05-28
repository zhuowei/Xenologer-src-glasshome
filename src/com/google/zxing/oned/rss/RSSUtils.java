package com.google.zxing.oned.rss;

public final class RSSUtils
{
  private static int combins(int paramInt1, int paramInt2)
  {
    int i;
    if (paramInt1 - paramInt2 > paramInt2)
      i = paramInt2;
    int k;
    int m;
    for (int j = paramInt1 - paramInt2; ; j = paramInt2)
    {
      k = 1;
      m = 1;
      for (int n = paramInt1; n > j; n--)
      {
        k *= n;
        if (m <= i)
        {
          k /= m;
          m++;
        }
      }
      i = paramInt1 - paramInt2;
    }
    while (m <= i)
    {
      k /= m;
      m++;
    }
    return k;
  }

  static int[] elements(int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    int[] arrayOfInt = new int[2 + paramArrayOfInt.length];
    int i = paramInt2 << 1;
    arrayOfInt[0] = 1;
    int j = 10;
    int k = 1;
    for (int m = 1; m < i - 2; m += 2)
    {
      arrayOfInt[m] = (paramArrayOfInt[(m - 1)] - arrayOfInt[(m - 1)]);
      arrayOfInt[(m + 1)] = (paramArrayOfInt[m] - arrayOfInt[m]);
      k += arrayOfInt[m] + arrayOfInt[(m + 1)];
      if (arrayOfInt[m] < j)
        j = arrayOfInt[m];
    }
    arrayOfInt[(i - 1)] = (paramInt1 - k);
    if (arrayOfInt[(i - 1)] < j)
      j = arrayOfInt[(i - 1)];
    if (j > 1)
      for (int n = 0; n < i; n += 2)
      {
        arrayOfInt[n] += j - 1;
        int i1 = n + 1;
        arrayOfInt[i1] -= j - 1;
      }
    return arrayOfInt;
  }

  public static int getRSSvalue(int[] paramArrayOfInt, int paramInt, boolean paramBoolean)
  {
    int i = paramArrayOfInt.length;
    int j = 0;
    int k = paramArrayOfInt.length;
    for (int m = 0; m < k; m++)
      j += paramArrayOfInt[m];
    int n = 0;
    int i1 = 0;
    for (int i2 = 0; i2 < i - 1; i2++)
    {
      int i3 = 1;
      i1 |= 1 << i2;
      if (i3 < paramArrayOfInt[i2])
      {
        int i4 = combins(-1 + (j - i3), -2 + (i - i2));
        if ((paramBoolean) && (i1 == 0) && (j - i3 - (-1 + (i - i2)) >= -1 + (i - i2)))
          i4 -= combins(j - i3 - (i - i2), -2 + (i - i2));
        if (-1 + (i - i2) > 1)
        {
          int i5 = 0;
          for (int i6 = j - i3 - (-2 + (i - i2)); i6 > paramInt; i6--)
            i5 += combins(-1 + (j - i3 - i6), -3 + (i - i2));
          i4 -= i5 * (i - 1 - i2);
        }
        while (true)
        {
          n += i4;
          i3++;
          i1 &= (0xFFFFFFFF ^ 1 << i2);
          break;
          if (j - i3 > paramInt)
            i4--;
        }
      }
      j -= i3;
    }
    return n;
  }

  static int[] getRSSwidths(int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean)
  {
    int[] arrayOfInt = new int[paramInt3];
    int i = 0;
    int j = 0;
    if (j < paramInt3 - 1)
    {
      i |= 1 << j;
      int k = 1;
      while (true)
      {
        int m = combins(-1 + (paramInt2 - k), -2 + (paramInt3 - j));
        if ((paramBoolean) && (i == 0) && (paramInt2 - k - (-1 + (paramInt3 - j)) >= -1 + (paramInt3 - j)))
          m -= combins(paramInt2 - k - (paramInt3 - j), -2 + (paramInt3 - j));
        if (-1 + (paramInt3 - j) > 1)
        {
          int n = 0;
          for (int i1 = paramInt2 - k - (-2 + (paramInt3 - j)); i1 > paramInt4; i1--)
            n += combins(-1 + (paramInt2 - k - i1), -3 + (paramInt3 - j));
          m -= n * (paramInt3 - 1 - j);
        }
        while (true)
        {
          paramInt1 -= m;
          if (paramInt1 >= 0)
            break label226;
          paramInt1 += m;
          paramInt2 -= k;
          arrayOfInt[j] = k;
          j++;
          break;
          if (paramInt2 - k > paramInt4)
            m--;
        }
        label226: k++;
        i &= (0xFFFFFFFF ^ 1 << j);
      }
    }
    arrayOfInt[j] = paramInt2;
    return arrayOfInt;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.rss.RSSUtils
 * JD-Core Version:    0.6.2
 */