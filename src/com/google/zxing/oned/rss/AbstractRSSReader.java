package com.google.zxing.oned.rss;

import com.google.zxing.NotFoundException;
import com.google.zxing.oned.OneDReader;

public abstract class AbstractRSSReader extends OneDReader
{
  private static final int MAX_AVG_VARIANCE = 51;
  private static final float MAX_FINDER_PATTERN_RATIO = 0.8928571F;
  private static final int MAX_INDIVIDUAL_VARIANCE = 115;
  private static final float MIN_FINDER_PATTERN_RATIO = 0.7916667F;
  private final int[] dataCharacterCounters = new int[8];
  private final int[] decodeFinderCounters = new int[4];
  private final int[] evenCounts = new int[this.dataCharacterCounters.length / 2];
  private final float[] evenRoundingErrors = new float[4];
  private final int[] oddCounts = new int[this.dataCharacterCounters.length / 2];
  private final float[] oddRoundingErrors = new float[4];

  protected static int count(int[] paramArrayOfInt)
  {
    int i = 0;
    int j = paramArrayOfInt.length;
    for (int k = 0; k < j; k++)
      i += paramArrayOfInt[k];
    return i;
  }

  protected static void decrement(int[] paramArrayOfInt, float[] paramArrayOfFloat)
  {
    int i = 0;
    float f = paramArrayOfFloat[0];
    for (int j = 1; j < paramArrayOfInt.length; j++)
      if (paramArrayOfFloat[j] < f)
      {
        f = paramArrayOfFloat[j];
        i = j;
      }
    paramArrayOfInt[i] = (-1 + paramArrayOfInt[i]);
  }

  protected static void increment(int[] paramArrayOfInt, float[] paramArrayOfFloat)
  {
    int i = 0;
    float f = paramArrayOfFloat[0];
    for (int j = 1; j < paramArrayOfInt.length; j++)
      if (paramArrayOfFloat[j] > f)
      {
        f = paramArrayOfFloat[j];
        i = j;
      }
    paramArrayOfInt[i] = (1 + paramArrayOfInt[i]);
  }

  protected static boolean isFinderPattern(int[] paramArrayOfInt)
  {
    int i = paramArrayOfInt[0] + paramArrayOfInt[1];
    int j = i + paramArrayOfInt[2] + paramArrayOfInt[3];
    float f = i / j;
    if ((f >= 0.7916667F) && (f <= 0.8928571F))
    {
      int k = 2147483647;
      int m = -2147483648;
      int n = paramArrayOfInt.length;
      for (int i1 = 0; i1 < n; i1++)
      {
        int i2 = paramArrayOfInt[i1];
        if (i2 > m)
          m = i2;
        if (i2 < k)
          k = i2;
      }
      return m < k * 10;
    }
    return false;
  }

  protected static int parseFinderValue(int[] paramArrayOfInt, int[][] paramArrayOfInt1)
    throws NotFoundException
  {
    for (int i = 0; i < paramArrayOfInt1.length; i++)
      if (patternMatchVariance(paramArrayOfInt, paramArrayOfInt1[i], 115) < 51)
        return i;
    throw NotFoundException.getNotFoundInstance();
  }

  protected final int[] getDataCharacterCounters()
  {
    return this.dataCharacterCounters;
  }

  protected final int[] getDecodeFinderCounters()
  {
    return this.decodeFinderCounters;
  }

  protected final int[] getEvenCounts()
  {
    return this.evenCounts;
  }

  protected final float[] getEvenRoundingErrors()
  {
    return this.evenRoundingErrors;
  }

  protected final int[] getOddCounts()
  {
    return this.oddCounts;
  }

  protected final float[] getOddRoundingErrors()
  {
    return this.oddRoundingErrors;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.rss.AbstractRSSReader
 * JD-Core Version:    0.6.2
 */