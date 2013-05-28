package com.google.zxing.datamatrix.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.common.GridSampler;
import com.google.zxing.common.detector.MathUtils;
import com.google.zxing.common.detector.WhiteRectangleDetector;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class Detector
{
  private final BitMatrix image;
  private final WhiteRectangleDetector rectangleDetector;

  public Detector(BitMatrix paramBitMatrix)
    throws NotFoundException
  {
    this.image = paramBitMatrix;
    this.rectangleDetector = new WhiteRectangleDetector(paramBitMatrix);
  }

  private ResultPoint correctTopRight(ResultPoint paramResultPoint1, ResultPoint paramResultPoint2, ResultPoint paramResultPoint3, ResultPoint paramResultPoint4, int paramInt)
  {
    float f1 = distance(paramResultPoint1, paramResultPoint2) / paramInt;
    int i = distance(paramResultPoint3, paramResultPoint4);
    float f2 = (paramResultPoint4.getX() - paramResultPoint3.getX()) / i;
    float f3 = (paramResultPoint4.getY() - paramResultPoint3.getY()) / i;
    Object localObject = new ResultPoint(paramResultPoint4.getX() + f1 * f2, paramResultPoint4.getY() + f1 * f3);
    float f4 = distance(paramResultPoint1, paramResultPoint3) / paramInt;
    int j = distance(paramResultPoint2, paramResultPoint4);
    float f5 = (paramResultPoint4.getX() - paramResultPoint2.getX()) / j;
    float f6 = (paramResultPoint4.getY() - paramResultPoint2.getY()) / j;
    ResultPoint localResultPoint = new ResultPoint(paramResultPoint4.getX() + f4 * f5, paramResultPoint4.getY() + f4 * f6);
    if (!isValid((ResultPoint)localObject))
      if (isValid(localResultPoint))
        localObject = localResultPoint;
    while ((!isValid(localResultPoint)) || (Math.abs(transitionsBetween(paramResultPoint3, (ResultPoint)localObject).getTransitions() - transitionsBetween(paramResultPoint2, (ResultPoint)localObject).getTransitions()) <= Math.abs(transitionsBetween(paramResultPoint3, localResultPoint).getTransitions() - transitionsBetween(paramResultPoint2, localResultPoint).getTransitions())))
    {
      return localObject;
      return null;
    }
    return localResultPoint;
  }

  private ResultPoint correctTopRightRectangular(ResultPoint paramResultPoint1, ResultPoint paramResultPoint2, ResultPoint paramResultPoint3, ResultPoint paramResultPoint4, int paramInt1, int paramInt2)
  {
    float f1 = distance(paramResultPoint1, paramResultPoint2) / paramInt1;
    int i = distance(paramResultPoint3, paramResultPoint4);
    float f2 = (paramResultPoint4.getX() - paramResultPoint3.getX()) / i;
    float f3 = (paramResultPoint4.getY() - paramResultPoint3.getY()) / i;
    ResultPoint localResultPoint1 = new ResultPoint(paramResultPoint4.getX() + f1 * f2, paramResultPoint4.getY() + f1 * f3);
    float f4 = distance(paramResultPoint1, paramResultPoint3) / paramInt2;
    int j = distance(paramResultPoint2, paramResultPoint4);
    float f5 = (paramResultPoint4.getX() - paramResultPoint2.getX()) / j;
    float f6 = (paramResultPoint4.getY() - paramResultPoint2.getY()) / j;
    ResultPoint localResultPoint2 = new ResultPoint(paramResultPoint4.getX() + f4 * f5, paramResultPoint4.getY() + f4 * f6);
    if (!isValid(localResultPoint1))
      if (!isValid(localResultPoint2));
    do
    {
      return localResultPoint2;
      return null;
      if (!isValid(localResultPoint2))
        return localResultPoint1;
    }
    while (Math.abs(paramInt1 - transitionsBetween(paramResultPoint3, localResultPoint1).getTransitions()) + Math.abs(paramInt2 - transitionsBetween(paramResultPoint2, localResultPoint1).getTransitions()) > Math.abs(paramInt1 - transitionsBetween(paramResultPoint3, localResultPoint2).getTransitions()) + Math.abs(paramInt2 - transitionsBetween(paramResultPoint2, localResultPoint2).getTransitions()));
    return localResultPoint1;
  }

  private static int distance(ResultPoint paramResultPoint1, ResultPoint paramResultPoint2)
  {
    return MathUtils.round(ResultPoint.distance(paramResultPoint1, paramResultPoint2));
  }

  private static void increment(Map<ResultPoint, Integer> paramMap, ResultPoint paramResultPoint)
  {
    Integer localInteger = (Integer)paramMap.get(paramResultPoint);
    if (localInteger == null);
    for (int i = 1; ; i = 1 + localInteger.intValue())
    {
      paramMap.put(paramResultPoint, Integer.valueOf(i));
      return;
    }
  }

  private boolean isValid(ResultPoint paramResultPoint)
  {
    return (paramResultPoint.getX() >= 0.0F) && (paramResultPoint.getX() < this.image.getWidth()) && (paramResultPoint.getY() > 0.0F) && (paramResultPoint.getY() < this.image.getHeight());
  }

  private static BitMatrix sampleGrid(BitMatrix paramBitMatrix, ResultPoint paramResultPoint1, ResultPoint paramResultPoint2, ResultPoint paramResultPoint3, ResultPoint paramResultPoint4, int paramInt1, int paramInt2)
    throws NotFoundException
  {
    return GridSampler.getInstance().sampleGrid(paramBitMatrix, paramInt1, paramInt2, 0.5F, 0.5F, paramInt1 - 0.5F, 0.5F, paramInt1 - 0.5F, paramInt2 - 0.5F, 0.5F, paramInt2 - 0.5F, paramResultPoint1.getX(), paramResultPoint1.getY(), paramResultPoint4.getX(), paramResultPoint4.getY(), paramResultPoint3.getX(), paramResultPoint3.getY(), paramResultPoint2.getX(), paramResultPoint2.getY());
  }

  private ResultPointsAndTransitions transitionsBetween(ResultPoint paramResultPoint1, ResultPoint paramResultPoint2)
  {
    int i = (int)paramResultPoint1.getX();
    int j = (int)paramResultPoint1.getY();
    int k = (int)paramResultPoint2.getX();
    int m = (int)paramResultPoint2.getY();
    int n;
    int i1;
    int i2;
    int i3;
    int i4;
    label111: int i5;
    label120: int i6;
    int i7;
    label138: int i8;
    label146: boolean bool1;
    int i9;
    int i10;
    if (Math.abs(m - j) > Math.abs(k - i))
    {
      n = 1;
      if (n != 0)
      {
        int i13 = i;
        i = j;
        j = i13;
        int i14 = k;
        k = m;
        m = i14;
      }
      i1 = Math.abs(k - i);
      i2 = Math.abs(m - j);
      i3 = -i1 >> 1;
      if (j >= m)
        break label262;
      i4 = 1;
      if (i >= k)
        break label268;
      i5 = 1;
      i6 = 0;
      BitMatrix localBitMatrix1 = this.image;
      if (n == 0)
        break label274;
      i7 = j;
      if (n == 0)
        break label280;
      i8 = i;
      bool1 = localBitMatrix1.get(i7, i8);
      i9 = i;
      i10 = j;
    }
    while (true)
    {
      BitMatrix localBitMatrix2;
      int i11;
      if (i9 != k)
      {
        localBitMatrix2 = this.image;
        if (n == 0)
          break label287;
        i11 = i10;
        label186: if (n == 0)
          break label294;
      }
      label262: label268: label274: label280: label287: label294: for (int i12 = i9; ; i12 = i10)
      {
        boolean bool2 = localBitMatrix2.get(i11, i12);
        if (bool2 != bool1)
        {
          i6++;
          bool1 = bool2;
        }
        i3 += i2;
        if (i3 <= 0)
          break label315;
        if (i10 != m)
          break label301;
        ResultPointsAndTransitions localResultPointsAndTransitions = new ResultPointsAndTransitions(paramResultPoint1, paramResultPoint2, i6, null);
        return localResultPointsAndTransitions;
        n = 0;
        break;
        i4 = -1;
        break label111;
        i5 = -1;
        break label120;
        i7 = i;
        break label138;
        i8 = j;
        break label146;
        i11 = i9;
        break label186;
      }
      label301: i10 += i4;
      i3 -= i1;
      label315: i9 += i5;
    }
  }

  public DetectorResult detect()
    throws NotFoundException
  {
    ResultPoint[] arrayOfResultPoint1 = this.rectangleDetector.detect();
    ResultPoint localResultPoint1 = arrayOfResultPoint1[0];
    ResultPoint localResultPoint2 = arrayOfResultPoint1[1];
    ResultPoint localResultPoint3 = arrayOfResultPoint1[2];
    ResultPoint localResultPoint4 = arrayOfResultPoint1[3];
    ArrayList localArrayList = new ArrayList(4);
    localArrayList.add(transitionsBetween(localResultPoint1, localResultPoint2));
    localArrayList.add(transitionsBetween(localResultPoint1, localResultPoint3));
    localArrayList.add(transitionsBetween(localResultPoint2, localResultPoint4));
    localArrayList.add(transitionsBetween(localResultPoint3, localResultPoint4));
    Collections.sort(localArrayList, new ResultPointsAndTransitionsComparator(null));
    ResultPointsAndTransitions localResultPointsAndTransitions1 = (ResultPointsAndTransitions)localArrayList.get(0);
    ResultPointsAndTransitions localResultPointsAndTransitions2 = (ResultPointsAndTransitions)localArrayList.get(1);
    HashMap localHashMap = new HashMap();
    increment(localHashMap, localResultPointsAndTransitions1.getFrom());
    increment(localHashMap, localResultPointsAndTransitions1.getTo());
    increment(localHashMap, localResultPointsAndTransitions2.getFrom());
    increment(localHashMap, localResultPointsAndTransitions2.getTo());
    Object localObject1 = null;
    Object localObject2 = null;
    Object localObject3 = null;
    Iterator localIterator = localHashMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      ResultPoint localResultPoint10 = (ResultPoint)localEntry.getKey();
      if (((Integer)localEntry.getValue()).intValue() == 2)
        localObject2 = localResultPoint10;
      else if (localObject1 == null)
        localObject1 = localResultPoint10;
      else
        localObject3 = localResultPoint10;
    }
    if ((localObject1 == null) || (localObject2 == null) || (localObject3 == null))
      throw NotFoundException.getNotFoundInstance();
    ResultPoint[] arrayOfResultPoint2 = { localObject1, localObject2, localObject3 };
    ResultPoint.orderBestPatterns(arrayOfResultPoint2);
    ResultPoint localResultPoint5 = arrayOfResultPoint2[0];
    ResultPoint localResultPoint6 = arrayOfResultPoint2[1];
    ResultPoint localResultPoint7 = arrayOfResultPoint2[2];
    ResultPoint localResultPoint8;
    int k;
    int m;
    ResultPoint localResultPoint9;
    int n;
    int i1;
    if (!localHashMap.containsKey(localResultPoint1))
    {
      localResultPoint8 = localResultPoint1;
      int i = transitionsBetween(localResultPoint7, localResultPoint8).getTransitions();
      int j = transitionsBetween(localResultPoint5, localResultPoint8).getTransitions();
      if ((i & 0x1) == 1)
        i++;
      k = i + 2;
      if ((j & 0x1) == 1)
        j++;
      m = j + 2;
      if ((k * 4 < m * 7) && (m * 4 < k * 7))
        break label622;
      localResultPoint9 = correctTopRightRectangular(localResultPoint6, localResultPoint5, localResultPoint7, localResultPoint8, k, m);
      if (localResultPoint9 == null)
        localResultPoint9 = localResultPoint8;
      n = transitionsBetween(localResultPoint7, localResultPoint9).getTransitions();
      i1 = transitionsBetween(localResultPoint5, localResultPoint9).getTransitions();
      if ((n & 0x1) == 1)
        n++;
      if ((i1 & 0x1) == 1)
        i1++;
    }
    label622: int i3;
    for (BitMatrix localBitMatrix = sampleGrid(this.image, localResultPoint7, localResultPoint6, localResultPoint5, localResultPoint9, n, i1); ; localBitMatrix = sampleGrid(this.image, localResultPoint7, localResultPoint6, localResultPoint5, localResultPoint9, i3, i3))
    {
      ResultPoint[] arrayOfResultPoint3 = { localResultPoint7, localResultPoint6, localResultPoint5, localResultPoint9 };
      return new DetectorResult(localBitMatrix, arrayOfResultPoint3);
      if (!localHashMap.containsKey(localResultPoint2))
      {
        localResultPoint8 = localResultPoint2;
        break;
      }
      if (!localHashMap.containsKey(localResultPoint3))
      {
        localResultPoint8 = localResultPoint3;
        break;
      }
      localResultPoint8 = localResultPoint4;
      break;
      int i2 = Math.min(m, k);
      localResultPoint9 = correctTopRight(localResultPoint6, localResultPoint5, localResultPoint7, localResultPoint8, i2);
      if (localResultPoint9 == null)
        localResultPoint9 = localResultPoint8;
      i3 = 1 + Math.max(transitionsBetween(localResultPoint7, localResultPoint9).getTransitions(), transitionsBetween(localResultPoint5, localResultPoint9).getTransitions());
      if ((i3 & 0x1) == 1)
        i3++;
    }
  }

  private static final class ResultPointsAndTransitions
  {
    private final ResultPoint from;
    private final ResultPoint to;
    private final int transitions;

    private ResultPointsAndTransitions(ResultPoint paramResultPoint1, ResultPoint paramResultPoint2, int paramInt)
    {
      this.from = paramResultPoint1;
      this.to = paramResultPoint2;
      this.transitions = paramInt;
    }

    ResultPoint getFrom()
    {
      return this.from;
    }

    ResultPoint getTo()
    {
      return this.to;
    }

    public int getTransitions()
    {
      return this.transitions;
    }

    public String toString()
    {
      return this.from + "/" + this.to + '/' + this.transitions;
    }
  }

  private static final class ResultPointsAndTransitionsComparator
    implements Comparator<Detector.ResultPointsAndTransitions>, Serializable
  {
    public int compare(Detector.ResultPointsAndTransitions paramResultPointsAndTransitions1, Detector.ResultPointsAndTransitions paramResultPointsAndTransitions2)
    {
      return paramResultPointsAndTransitions1.getTransitions() - paramResultPointsAndTransitions2.getTransitions();
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.datamatrix.detector.Detector
 * JD-Core Version:    0.6.2
 */