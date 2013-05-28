package com.google.zxing.pdf417.detector;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.common.GridSampler;
import com.google.zxing.common.PerspectiveTransform;
import com.google.zxing.common.detector.MathUtils;
import java.util.Arrays;
import java.util.Map;

public final class Detector
{
  private static final int INTEGER_MATH_SHIFT = 8;
  private static final int MAX_AVG_VARIANCE = 107;
  private static final int MAX_INDIVIDUAL_VARIANCE = 204;
  private static final int PATTERN_MATCH_RESULT_SCALE_FACTOR = 256;
  private static final int[] START_PATTERN = { 8, 1, 1, 1, 1, 1, 1, 3 };
  private static final int[] START_PATTERN_REVERSE = { 3, 1, 1, 1, 1, 1, 1, 8 };
  private static final int[] STOP_PATTERN = { 7, 1, 1, 3, 1, 1, 1, 2, 1 };
  private static final int[] STOP_PATTERN_REVERSE = { 1, 2, 1, 1, 1, 3, 1, 1, 7 };
  private final BinaryBitmap image;

  public Detector(BinaryBitmap paramBinaryBitmap)
  {
    this.image = paramBinaryBitmap;
  }

  private static int computeDimension(ResultPoint paramResultPoint1, ResultPoint paramResultPoint2, ResultPoint paramResultPoint3, ResultPoint paramResultPoint4, float paramFloat)
  {
    return 17 * ((8 + (MathUtils.round(ResultPoint.distance(paramResultPoint1, paramResultPoint2) / paramFloat) + MathUtils.round(ResultPoint.distance(paramResultPoint3, paramResultPoint4) / paramFloat) >> 1)) / 17);
  }

  private static float computeModuleWidth(ResultPoint[] paramArrayOfResultPoint)
  {
    return ((ResultPoint.distance(paramArrayOfResultPoint[0], paramArrayOfResultPoint[4]) + ResultPoint.distance(paramArrayOfResultPoint[1], paramArrayOfResultPoint[5])) / 34.0F + (ResultPoint.distance(paramArrayOfResultPoint[6], paramArrayOfResultPoint[2]) + ResultPoint.distance(paramArrayOfResultPoint[7], paramArrayOfResultPoint[3])) / 36.0F) / 2.0F;
  }

  private static int computeYDimension(ResultPoint paramResultPoint1, ResultPoint paramResultPoint2, ResultPoint paramResultPoint3, ResultPoint paramResultPoint4, float paramFloat)
  {
    return MathUtils.round(ResultPoint.distance(paramResultPoint1, paramResultPoint3) / paramFloat) + MathUtils.round(ResultPoint.distance(paramResultPoint2, paramResultPoint4) / paramFloat) >> 1;
  }

  private static void correctVertices(BitMatrix paramBitMatrix, ResultPoint[] paramArrayOfResultPoint, boolean paramBoolean)
    throws NotFoundException
  {
    int i;
    if (Math.abs(paramArrayOfResultPoint[4].getY() - paramArrayOfResultPoint[5].getY()) < 20.0D)
    {
      i = 1;
      if (Math.abs(paramArrayOfResultPoint[6].getY() - paramArrayOfResultPoint[7].getY()) >= 20.0D)
        break label73;
    }
    label73: for (int j = 1; ; j = 0)
    {
      if ((i == 0) && (j == 0))
        break label79;
      throw NotFoundException.getNotFoundInstance();
      i = 0;
      break;
    }
    label79: int k;
    int m;
    label106: int n;
    if (paramBoolean)
    {
      k = 1;
      findWideBarTopBottom(paramBitMatrix, paramArrayOfResultPoint, 0, 0, 8, 17, k);
      if (!paramBoolean)
        break label224;
      m = -1;
      findWideBarTopBottom(paramBitMatrix, paramArrayOfResultPoint, 1, 0, 8, 17, m);
      if (!paramBoolean)
        break label230;
      n = 1;
      label126: findWideBarTopBottom(paramBitMatrix, paramArrayOfResultPoint, 2, 11, 7, 18, n);
      if (!paramBoolean)
        break label236;
    }
    label224: label230: label236: for (int i1 = -1; ; i1 = 1)
    {
      findWideBarTopBottom(paramBitMatrix, paramArrayOfResultPoint, 3, 11, 7, 18, i1);
      findCrossingPoint(paramArrayOfResultPoint, 12, 4, 5, 8, 10, paramBitMatrix);
      findCrossingPoint(paramArrayOfResultPoint, 13, 4, 5, 9, 11, paramBitMatrix);
      findCrossingPoint(paramArrayOfResultPoint, 14, 6, 7, 8, 10, paramBitMatrix);
      findCrossingPoint(paramArrayOfResultPoint, 15, 6, 7, 9, 11, paramBitMatrix);
      return;
      k = -1;
      break;
      m = 1;
      break label106;
      n = -1;
      break label126;
    }
  }

  private static void findCrossingPoint(ResultPoint[] paramArrayOfResultPoint, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, BitMatrix paramBitMatrix)
    throws NotFoundException
  {
    ResultPoint localResultPoint = intersection(paramArrayOfResultPoint[paramInt2], paramArrayOfResultPoint[paramInt3], paramArrayOfResultPoint[paramInt4], paramArrayOfResultPoint[paramInt5]);
    if (localResultPoint == null)
      throw NotFoundException.getNotFoundInstance();
    int i = Math.round(localResultPoint.getX());
    int j = Math.round(localResultPoint.getY());
    if ((i < 0) || (i >= paramBitMatrix.getWidth()) || (j < 0) || (j >= paramBitMatrix.getHeight()))
      throw NotFoundException.getNotFoundInstance();
    paramArrayOfResultPoint[paramInt1] = localResultPoint;
  }

  private static int[] findGuardPattern(BitMatrix paramBitMatrix, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    Arrays.fill(paramArrayOfInt2, 0, paramArrayOfInt2.length, 0);
    int i = paramArrayOfInt1.length;
    boolean bool = paramBoolean;
    int j = 0;
    int k = paramInt1;
    int m = paramInt1;
    while (m < paramInt1 + paramInt3)
      if ((bool ^ paramBitMatrix.get(m, paramInt2)))
      {
        paramArrayOfInt2[j] = (1 + paramArrayOfInt2[j]);
        m++;
      }
      else
      {
        if (j == i - 1)
        {
          if (patternMatchVariance(paramArrayOfInt2, paramArrayOfInt1, 204) < 107)
            return new int[] { k, m };
          k += paramArrayOfInt2[0] + paramArrayOfInt2[1];
          System.arraycopy(paramArrayOfInt2, 2, paramArrayOfInt2, 0, i - 2);
          paramArrayOfInt2[(i - 2)] = 0;
          paramArrayOfInt2[(i - 1)] = 0;
          j--;
          label151: paramArrayOfInt2[j] = 1;
          if (bool)
            break label174;
        }
        label174: for (bool = true; ; bool = false)
        {
          break;
          j++;
          break label151;
        }
      }
    return null;
  }

  private static ResultPoint[] findVertices(BitMatrix paramBitMatrix, int paramInt)
  {
    int i = paramBitMatrix.getHeight();
    int j = paramBitMatrix.getWidth();
    ResultPoint[] arrayOfResultPoint = new ResultPoint[16];
    int[] arrayOfInt1 = new int[START_PATTERN.length];
    int k = 0;
    int m = 0;
    int i2;
    label109: int[] arrayOfInt2;
    int i1;
    label195: int n;
    if (k < i)
    {
      int[] arrayOfInt6 = findGuardPattern(paramBitMatrix, 0, k, j, false, START_PATTERN, arrayOfInt1);
      if (arrayOfInt6 != null)
      {
        arrayOfResultPoint[0] = new ResultPoint(arrayOfInt6[0], k);
        arrayOfResultPoint[4] = new ResultPoint(arrayOfInt6[1], k);
        m = 1;
      }
    }
    else
    {
      if (m != 0)
      {
        i2 = i - 1;
        m = 0;
        if (i2 > 0)
        {
          int[] arrayOfInt5 = findGuardPattern(paramBitMatrix, 0, i2, j, false, START_PATTERN, arrayOfInt1);
          if (arrayOfInt5 == null)
            break label365;
          arrayOfResultPoint[1] = new ResultPoint(arrayOfInt5[0], i2);
          arrayOfResultPoint[5] = new ResultPoint(arrayOfInt5[1], i2);
          m = 1;
        }
      }
      arrayOfInt2 = new int[STOP_PATTERN.length];
      if (m != 0)
      {
        i1 = 0;
        m = 0;
        if (i1 < i)
        {
          int[] arrayOfInt4 = findGuardPattern(paramBitMatrix, 0, i1, j, false, STOP_PATTERN, arrayOfInt2);
          if (arrayOfInt4 == null)
            break label374;
          arrayOfResultPoint[2] = new ResultPoint(arrayOfInt4[1], i1);
          arrayOfResultPoint[6] = new ResultPoint(arrayOfInt4[0], i1);
          m = 1;
        }
      }
      if (m != 0)
        n = i - 1;
    }
    while (true)
    {
      m = 0;
      if (n > 0)
      {
        int[] arrayOfInt3 = findGuardPattern(paramBitMatrix, 0, n, j, false, STOP_PATTERN, arrayOfInt2);
        if (arrayOfInt3 != null)
        {
          arrayOfResultPoint[3] = new ResultPoint(arrayOfInt3[1], n);
          arrayOfResultPoint[7] = new ResultPoint(arrayOfInt3[0], n);
          m = 1;
        }
      }
      else
      {
        if (m == 0)
          break label392;
        return arrayOfResultPoint;
        k += paramInt;
        break;
        label365: i2 -= paramInt;
        break label109;
        label374: i1 += paramInt;
        break label195;
      }
      n -= paramInt;
    }
    label392: return null;
  }

  private static ResultPoint[] findVertices180(BitMatrix paramBitMatrix, int paramInt)
  {
    int i = paramBitMatrix.getHeight();
    int j = paramBitMatrix.getWidth() >> 1;
    ResultPoint[] arrayOfResultPoint = new ResultPoint[16];
    int[] arrayOfInt1 = new int[START_PATTERN_REVERSE.length];
    int k = i - 1;
    int m = 0;
    int i2;
    label110: int[] arrayOfInt2;
    int i1;
    label199: int n;
    if (k > 0)
    {
      int[] arrayOfInt8 = findGuardPattern(paramBitMatrix, j, k, j, true, START_PATTERN_REVERSE, arrayOfInt1);
      if (arrayOfInt8 != null)
      {
        arrayOfResultPoint[0] = new ResultPoint(arrayOfInt8[1], k);
        arrayOfResultPoint[4] = new ResultPoint(arrayOfInt8[0], k);
        m = 1;
      }
    }
    else
    {
      if (m != 0)
      {
        i2 = 0;
        m = 0;
        if (i2 < i)
        {
          int[] arrayOfInt7 = findGuardPattern(paramBitMatrix, j, i2, j, true, START_PATTERN_REVERSE, arrayOfInt1);
          if (arrayOfInt7 == null)
            break label375;
          arrayOfResultPoint[1] = new ResultPoint(arrayOfInt7[1], i2);
          arrayOfResultPoint[5] = new ResultPoint(arrayOfInt7[0], i2);
          m = 1;
        }
      }
      arrayOfInt2 = new int[STOP_PATTERN_REVERSE.length];
      if (m != 0)
      {
        i1 = i - 1;
        m = 0;
        if (i1 > 0)
        {
          int[] arrayOfInt5 = STOP_PATTERN_REVERSE;
          int[] arrayOfInt6 = findGuardPattern(paramBitMatrix, 0, i1, j, false, arrayOfInt5, arrayOfInt2);
          if (arrayOfInt6 == null)
            break label384;
          arrayOfResultPoint[2] = new ResultPoint(arrayOfInt6[0], i1);
          arrayOfResultPoint[6] = new ResultPoint(arrayOfInt6[1], i1);
          m = 1;
        }
      }
      if (m != 0)
        n = 0;
    }
    while (true)
    {
      m = 0;
      if (n < i)
      {
        int[] arrayOfInt3 = STOP_PATTERN_REVERSE;
        int[] arrayOfInt4 = findGuardPattern(paramBitMatrix, 0, n, j, false, arrayOfInt3, arrayOfInt2);
        if (arrayOfInt4 != null)
        {
          arrayOfResultPoint[3] = new ResultPoint(arrayOfInt4[0], n);
          arrayOfResultPoint[7] = new ResultPoint(arrayOfInt4[1], n);
          m = 1;
        }
      }
      else
      {
        if (m == 0)
          break label402;
        return arrayOfResultPoint;
        k -= paramInt;
        break;
        label375: i2 += paramInt;
        break label110;
        label384: i1 -= paramInt;
        break label199;
      }
      n += paramInt;
    }
    label402: return null;
  }

  private static void findWideBarTopBottom(BitMatrix paramBitMatrix, ResultPoint[] paramArrayOfResultPoint, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    ResultPoint localResultPoint1 = paramArrayOfResultPoint[paramInt1];
    ResultPoint localResultPoint2 = paramArrayOfResultPoint[(paramInt1 + 4)];
    int i = paramInt2 + paramInt3;
    float f1 = localResultPoint2.getX() - localResultPoint1.getX();
    float f2 = localResultPoint1.getX() + f1 * paramInt2 / paramInt4;
    float f3 = localResultPoint1.getX() + f1 * i / paramInt4;
    int j = Math.round((f2 + f3) / 2.0F);
    int k = Math.round(localResultPoint1.getY());
    int m = k;
    int n = 1 + (int)Math.max(f2, f3);
    int i1;
    int i2;
    if ((n >= paramBitMatrix.getWidth()) || ((!paramBitMatrix.get(n - 1, m)) && (paramBitMatrix.get(n, m))))
    {
      i1 = n - j;
      i2 = 0;
    }
    while (true)
    {
      label147: if (i2 != 0)
        break label311;
      if (paramBitMatrix.get(j, m))
      {
        if ((!paramBitMatrix.get(j + i1, m)) && (!paramBitMatrix.get(1 + (j + i1), m)));
        for (i2 = 1; ; i2 = 0)
        {
          m += paramInt5;
          if ((m > 0) && (m < -1 + paramBitMatrix.getHeight()))
            break label147;
          i2 = 1;
          break label147;
          n++;
          break;
        }
      }
      if ((j > 0) && (paramBitMatrix.get(j - 1, m)))
      {
        j--;
      }
      else if ((j < -1 + paramBitMatrix.getWidth()) && (paramBitMatrix.get(j + 1, m)))
      {
        j++;
      }
      else
      {
        i2 = 1;
        if (m != k)
          m -= paramInt5;
      }
    }
    label311: paramArrayOfResultPoint[(paramInt1 + 8)] = new ResultPoint(j, m);
  }

  private static ResultPoint intersection(ResultPoint paramResultPoint1, ResultPoint paramResultPoint2, ResultPoint paramResultPoint3, ResultPoint paramResultPoint4)
  {
    float f1 = paramResultPoint1.getX() - paramResultPoint2.getX();
    float f2 = paramResultPoint3.getX() - paramResultPoint4.getX();
    float f3 = paramResultPoint1.getY() - paramResultPoint2.getY();
    float f4 = paramResultPoint3.getY() - paramResultPoint4.getY();
    float f5 = paramResultPoint1.getX() * paramResultPoint2.getY() - paramResultPoint1.getY() * paramResultPoint2.getX();
    float f6 = paramResultPoint3.getX() * paramResultPoint4.getY() - paramResultPoint3.getY() * paramResultPoint4.getX();
    float f7 = f1 * f4 - f3 * f2;
    if (f7 == 0.0F)
      return null;
    return new ResultPoint((f5 * f2 - f1 * f6) / f7, (f5 * f4 - f3 * f6) / f7);
  }

  private static int patternMatchVariance(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int paramInt)
  {
    int i = paramArrayOfInt1.length;
    int j = 0;
    int k = 0;
    for (int m = 0; m < i; m++)
    {
      j += paramArrayOfInt1[m];
      k += paramArrayOfInt2[m];
    }
    if (j < k);
    int i2;
    label143: 
    while (true)
    {
      return 2147483647;
      int n = (j << 8) / k;
      int i1 = paramInt * n >> 8;
      i2 = 0;
      int i3 = 0;
      if (i3 >= i)
        break;
      int i4 = paramArrayOfInt1[i3] << 8;
      int i5 = n * paramArrayOfInt2[i3];
      if (i4 > i5);
      for (int i6 = i4 - i5; ; i6 = i5 - i4)
      {
        if (i6 > i1)
          break label143;
        i2 += i6;
        i3++;
        break;
      }
    }
    return i2 / j;
  }

  private BitMatrix sampleLines(ResultPoint[] paramArrayOfResultPoint, int paramInt1, int paramInt2)
    throws NotFoundException
  {
    int i = paramInt1 * 8;
    int j = paramInt2 * 4;
    PerspectiveTransform localPerspectiveTransform = PerspectiveTransform.quadrilateralToQuadrilateral(0.0F, 0.0F, i, 0.0F, 0.0F, j, i, j, paramArrayOfResultPoint[12].getX(), paramArrayOfResultPoint[12].getY(), paramArrayOfResultPoint[14].getX(), paramArrayOfResultPoint[14].getY(), paramArrayOfResultPoint[13].getX(), paramArrayOfResultPoint[13].getY(), paramArrayOfResultPoint[15].getX(), paramArrayOfResultPoint[15].getY());
    return GridSampler.getInstance().sampleGrid(this.image.getBlackMatrix(), i, j, localPerspectiveTransform);
  }

  public DetectorResult detect()
    throws NotFoundException
  {
    return detect(null);
  }

  public DetectorResult detect(Map<DecodeHintType, ?> paramMap)
    throws NotFoundException
  {
    BitMatrix localBitMatrix1 = this.image.getBlackMatrix();
    ResultPoint[] arrayOfResultPoint1 = findVertices(localBitMatrix1, 8);
    if (arrayOfResultPoint1 == null)
    {
      arrayOfResultPoint1 = findVertices180(localBitMatrix1, 8);
      if (arrayOfResultPoint1 != null)
        correctVertices(localBitMatrix1, arrayOfResultPoint1, true);
    }
    while (arrayOfResultPoint1 == null)
    {
      throw NotFoundException.getNotFoundInstance();
      correctVertices(localBitMatrix1, arrayOfResultPoint1, false);
    }
    float f = computeModuleWidth(arrayOfResultPoint1);
    if (f < 1.0F)
      throw NotFoundException.getNotFoundInstance();
    int i = computeDimension(arrayOfResultPoint1[12], arrayOfResultPoint1[14], arrayOfResultPoint1[13], arrayOfResultPoint1[15], f);
    if (i < 1)
      throw NotFoundException.getNotFoundInstance();
    BitMatrix localBitMatrix2 = new LinesSampler(sampleLines(arrayOfResultPoint1, i, Math.max(computeYDimension(arrayOfResultPoint1[12], arrayOfResultPoint1[14], arrayOfResultPoint1[13], arrayOfResultPoint1[15], f), i)), i).sample();
    ResultPoint[] arrayOfResultPoint2 = new ResultPoint[4];
    arrayOfResultPoint2[0] = arrayOfResultPoint1[5];
    arrayOfResultPoint2[1] = arrayOfResultPoint1[4];
    arrayOfResultPoint2[2] = arrayOfResultPoint1[6];
    arrayOfResultPoint2[3] = arrayOfResultPoint1[7];
    return new DetectorResult(localBitMatrix2, arrayOfResultPoint2);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.pdf417.detector.Detector
 * JD-Core Version:    0.6.2
 */