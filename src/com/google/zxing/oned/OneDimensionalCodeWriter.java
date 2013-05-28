package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.Map;

public abstract class OneDimensionalCodeWriter
  implements Writer
{
  protected static int appendPattern(boolean[] paramArrayOfBoolean, int paramInt, int[] paramArrayOfInt, boolean paramBoolean)
  {
    boolean bool = paramBoolean;
    int i = 0;
    int j = paramArrayOfInt.length;
    int k = 0;
    if (k < j)
    {
      int m = paramArrayOfInt[k];
      int n = 0;
      int i2;
      for (int i1 = paramInt; n < m; i1 = i2)
      {
        i2 = i1 + 1;
        paramArrayOfBoolean[i1] = bool;
        n++;
      }
      i += m;
      if (!bool);
      for (bool = true; ; bool = false)
      {
        k++;
        paramInt = i1;
        break;
      }
    }
    return i;
  }

  private static BitMatrix renderResult(boolean[] paramArrayOfBoolean, int paramInt1, int paramInt2, int paramInt3)
  {
    int i = paramArrayOfBoolean.length;
    int j = i + paramInt3;
    int k = Math.max(paramInt1, j);
    int m = Math.max(1, paramInt2);
    int n = k / j;
    int i1 = (k - i * n) / 2;
    BitMatrix localBitMatrix = new BitMatrix(k, m);
    int i2 = 0;
    int i3 = i1;
    while (i2 < i)
    {
      if (paramArrayOfBoolean[i2] != 0)
        localBitMatrix.setRegion(i3, 0, n, m);
      i2++;
      i3 += n;
    }
    return localBitMatrix;
  }

  public final BitMatrix encode(String paramString, BarcodeFormat paramBarcodeFormat, int paramInt1, int paramInt2)
    throws WriterException
  {
    return encode(paramString, paramBarcodeFormat, paramInt1, paramInt2, null);
  }

  public BitMatrix encode(String paramString, BarcodeFormat paramBarcodeFormat, int paramInt1, int paramInt2, Map<EncodeHintType, ?> paramMap)
    throws WriterException
  {
    if (paramString.length() == 0)
      throw new IllegalArgumentException("Found empty contents");
    if ((paramInt1 < 0) || (paramInt2 < 0))
      throw new IllegalArgumentException("Negative size is not allowed. Input: " + paramInt1 + 'x' + paramInt2);
    int i = getDefaultMargin();
    if (paramMap != null)
    {
      Integer localInteger = (Integer)paramMap.get(EncodeHintType.MARGIN);
      if (localInteger != null)
        i = localInteger.intValue();
    }
    return renderResult(encode(paramString), paramInt1, paramInt2, i);
  }

  public abstract boolean[] encode(String paramString);

  public int getDefaultMargin()
  {
    return 10;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.OneDimensionalCodeWriter
 * JD-Core Version:    0.6.2
 */