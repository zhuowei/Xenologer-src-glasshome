package com.google.zxing.qrcode.detector;

import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitMatrix;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class FinderPatternFinder
{
  private static final int CENTER_QUORUM = 2;
  private static final int INTEGER_MATH_SHIFT = 8;
  protected static final int MAX_MODULES = 57;
  protected static final int MIN_SKIP = 3;
  private final int[] crossCheckStateCount;
  private boolean hasSkipped;
  private final BitMatrix image;
  private final List<FinderPattern> possibleCenters;
  private final ResultPointCallback resultPointCallback;

  public FinderPatternFinder(BitMatrix paramBitMatrix)
  {
    this(paramBitMatrix, null);
  }

  public FinderPatternFinder(BitMatrix paramBitMatrix, ResultPointCallback paramResultPointCallback)
  {
    this.image = paramBitMatrix;
    this.possibleCenters = new ArrayList();
    this.crossCheckStateCount = new int[5];
    this.resultPointCallback = paramResultPointCallback;
  }

  private static float centerFromEnd(int[] paramArrayOfInt, int paramInt)
  {
    return paramInt - paramArrayOfInt[4] - paramArrayOfInt[3] - paramArrayOfInt[2] / 2.0F;
  }

  private float crossCheckHorizontal(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    BitMatrix localBitMatrix = this.image;
    int i = localBitMatrix.getWidth();
    int[] arrayOfInt = getCrossCheckStateCount();
    for (int j = paramInt1; (j >= 0) && (localBitMatrix.get(j, paramInt2)); j--)
      arrayOfInt[2] = (1 + arrayOfInt[2]);
    if (j < 0)
      return (0.0F / 0.0F);
    while ((j >= 0) && (!localBitMatrix.get(j, paramInt2)) && (arrayOfInt[1] <= paramInt3))
    {
      arrayOfInt[1] = (1 + arrayOfInt[1]);
      j--;
    }
    if ((j < 0) || (arrayOfInt[1] > paramInt3))
      return (0.0F / 0.0F);
    while ((j >= 0) && (localBitMatrix.get(j, paramInt2)) && (arrayOfInt[0] <= paramInt3))
    {
      arrayOfInt[0] = (1 + arrayOfInt[0]);
      j--;
    }
    if (arrayOfInt[0] > paramInt3)
      return (0.0F / 0.0F);
    for (int k = paramInt1 + 1; (k < i) && (localBitMatrix.get(k, paramInt2)); k++)
      arrayOfInt[2] = (1 + arrayOfInt[2]);
    if (k == i)
      return (0.0F / 0.0F);
    while ((k < i) && (!localBitMatrix.get(k, paramInt2)) && (arrayOfInt[3] < paramInt3))
    {
      arrayOfInt[3] = (1 + arrayOfInt[3]);
      k++;
    }
    if ((k == i) || (arrayOfInt[3] >= paramInt3))
      return (0.0F / 0.0F);
    while ((k < i) && (localBitMatrix.get(k, paramInt2)) && (arrayOfInt[4] < paramInt3))
    {
      arrayOfInt[4] = (1 + arrayOfInt[4]);
      k++;
    }
    if (arrayOfInt[4] >= paramInt3)
      return (0.0F / 0.0F);
    if (5 * Math.abs(arrayOfInt[0] + arrayOfInt[1] + arrayOfInt[2] + arrayOfInt[3] + arrayOfInt[4] - paramInt4) >= paramInt4)
      return (0.0F / 0.0F);
    if (foundPatternCross(arrayOfInt))
      return centerFromEnd(arrayOfInt, k);
    return (0.0F / 0.0F);
  }

  private float crossCheckVertical(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    BitMatrix localBitMatrix = this.image;
    int i = localBitMatrix.getHeight();
    int[] arrayOfInt = getCrossCheckStateCount();
    for (int j = paramInt1; (j >= 0) && (localBitMatrix.get(paramInt2, j)); j--)
      arrayOfInt[2] = (1 + arrayOfInt[2]);
    if (j < 0)
      return (0.0F / 0.0F);
    while ((j >= 0) && (!localBitMatrix.get(paramInt2, j)) && (arrayOfInt[1] <= paramInt3))
    {
      arrayOfInt[1] = (1 + arrayOfInt[1]);
      j--;
    }
    if ((j < 0) || (arrayOfInt[1] > paramInt3))
      return (0.0F / 0.0F);
    while ((j >= 0) && (localBitMatrix.get(paramInt2, j)) && (arrayOfInt[0] <= paramInt3))
    {
      arrayOfInt[0] = (1 + arrayOfInt[0]);
      j--;
    }
    if (arrayOfInt[0] > paramInt3)
      return (0.0F / 0.0F);
    for (int k = paramInt1 + 1; (k < i) && (localBitMatrix.get(paramInt2, k)); k++)
      arrayOfInt[2] = (1 + arrayOfInt[2]);
    if (k == i)
      return (0.0F / 0.0F);
    while ((k < i) && (!localBitMatrix.get(paramInt2, k)) && (arrayOfInt[3] < paramInt3))
    {
      arrayOfInt[3] = (1 + arrayOfInt[3]);
      k++;
    }
    if ((k == i) || (arrayOfInt[3] >= paramInt3))
      return (0.0F / 0.0F);
    while ((k < i) && (localBitMatrix.get(paramInt2, k)) && (arrayOfInt[4] < paramInt3))
    {
      arrayOfInt[4] = (1 + arrayOfInt[4]);
      k++;
    }
    if (arrayOfInt[4] >= paramInt3)
      return (0.0F / 0.0F);
    if (5 * Math.abs(arrayOfInt[0] + arrayOfInt[1] + arrayOfInt[2] + arrayOfInt[3] + arrayOfInt[4] - paramInt4) >= paramInt4 * 2)
      return (0.0F / 0.0F);
    if (foundPatternCross(arrayOfInt))
      return centerFromEnd(arrayOfInt, k);
    return (0.0F / 0.0F);
  }

  private int findRowSkip()
  {
    if (this.possibleCenters.size() <= 1);
    Object localObject;
    FinderPattern localFinderPattern;
    while (true)
    {
      return 0;
      localObject = null;
      Iterator localIterator = this.possibleCenters.iterator();
      while (localIterator.hasNext())
      {
        localFinderPattern = (FinderPattern)localIterator.next();
        if (localFinderPattern.getCount() >= 2)
        {
          if (localObject != null)
            break label63;
          localObject = localFinderPattern;
        }
      }
    }
    label63: this.hasSkipped = true;
    return (int)(Math.abs(localObject.getX() - localFinderPattern.getX()) - Math.abs(localObject.getY() - localFinderPattern.getY())) / 2;
  }

  protected static boolean foundPatternCross(int[] paramArrayOfInt)
  {
    boolean bool = true;
    int i = 0;
    int j = 0;
    if (j < 5)
    {
      n = paramArrayOfInt[j];
      if (n != 0);
    }
    while (i < 7)
    {
      int n;
      return false;
      i += n;
      j++;
      break;
    }
    int k = (i << 8) / 7;
    int m = k / 2;
    if ((Math.abs(k - (paramArrayOfInt[0] << 8)) < m) && (Math.abs(k - (paramArrayOfInt[bool] << 8)) < m) && (Math.abs(k * 3 - (paramArrayOfInt[2] << 8)) < m * 3) && (Math.abs(k - (paramArrayOfInt[3] << 8)) < m) && (Math.abs(k - (paramArrayOfInt[4] << 8)) < m));
    while (true)
    {
      return bool;
      bool = false;
    }
  }

  private int[] getCrossCheckStateCount()
  {
    this.crossCheckStateCount[0] = 0;
    this.crossCheckStateCount[1] = 0;
    this.crossCheckStateCount[2] = 0;
    this.crossCheckStateCount[3] = 0;
    this.crossCheckStateCount[4] = 0;
    return this.crossCheckStateCount;
  }

  private boolean haveMultiplyConfirmedCenters()
  {
    int i = 0;
    float f1 = 0.0F;
    int j = this.possibleCenters.size();
    Iterator localIterator1 = this.possibleCenters.iterator();
    while (localIterator1.hasNext())
    {
      FinderPattern localFinderPattern = (FinderPattern)localIterator1.next();
      if (localFinderPattern.getCount() >= 2)
      {
        i++;
        f1 += localFinderPattern.getEstimatedModuleSize();
      }
    }
    if (i < 3);
    float f3;
    do
    {
      return false;
      float f2 = f1 / j;
      f3 = 0.0F;
      Iterator localIterator2 = this.possibleCenters.iterator();
      while (localIterator2.hasNext())
        f3 += Math.abs(((FinderPattern)localIterator2.next()).getEstimatedModuleSize() - f2);
    }
    while (f3 > 0.05F * f1);
    return true;
  }

  private FinderPattern[] selectBestPatterns()
    throws NotFoundException
  {
    int i = this.possibleCenters.size();
    if (i < 3)
      throw NotFoundException.getNotFoundInstance();
    if (i > 3)
    {
      float f3 = 0.0F;
      float f4 = 0.0F;
      Iterator localIterator2 = this.possibleCenters.iterator();
      while (localIterator2.hasNext())
      {
        float f8 = ((FinderPattern)localIterator2.next()).getEstimatedModuleSize();
        f3 += f8;
        f4 += f8 * f8;
      }
      float f5 = f3 / i;
      float f6 = (float)Math.sqrt(f4 / i - f5 * f5);
      Collections.sort(this.possibleCenters, new FurthestFromAverageComparator(f5, null));
      float f7 = Math.max(0.2F * f5, f6);
      for (int j = 0; (j < this.possibleCenters.size()) && (this.possibleCenters.size() > 3); j++)
        if (Math.abs(((FinderPattern)this.possibleCenters.get(j)).getEstimatedModuleSize() - f5) > f7)
        {
          this.possibleCenters.remove(j);
          j--;
        }
    }
    if (this.possibleCenters.size() > 3)
    {
      float f1 = 0.0F;
      Iterator localIterator1 = this.possibleCenters.iterator();
      while (localIterator1.hasNext())
        f1 += ((FinderPattern)localIterator1.next()).getEstimatedModuleSize();
      float f2 = f1 / this.possibleCenters.size();
      Collections.sort(this.possibleCenters, new CenterComparator(f2, null));
      this.possibleCenters.subList(3, this.possibleCenters.size()).clear();
    }
    FinderPattern[] arrayOfFinderPattern = new FinderPattern[3];
    arrayOfFinderPattern[0] = ((FinderPattern)this.possibleCenters.get(0));
    arrayOfFinderPattern[1] = ((FinderPattern)this.possibleCenters.get(1));
    arrayOfFinderPattern[2] = ((FinderPattern)this.possibleCenters.get(2));
    return arrayOfFinderPattern;
  }

  final FinderPatternInfo find(Map<DecodeHintType, ?> paramMap)
    throws NotFoundException
  {
    int i;
    int j;
    int k;
    int m;
    boolean bool;
    int[] arrayOfInt;
    int n;
    if ((paramMap != null) && (paramMap.containsKey(DecodeHintType.TRY_HARDER)))
    {
      i = 1;
      j = this.image.getHeight();
      k = this.image.getWidth();
      m = j * 3 / 228;
      if ((m < 3) || (i != 0))
        m = 3;
      bool = false;
      arrayOfInt = new int[5];
      n = m - 1;
    }
    while (true)
    {
      if ((n >= j) || (bool))
        break label451;
      arrayOfInt[0] = 0;
      arrayOfInt[1] = 0;
      arrayOfInt[2] = 0;
      arrayOfInt[3] = 0;
      arrayOfInt[4] = 0;
      int i1 = 0;
      int i2 = 0;
      label113: if (i2 < k)
      {
        if (this.image.get(i2, n))
        {
          if ((i1 & 0x1) == 1)
            i1++;
          arrayOfInt[i1] = (1 + arrayOfInt[i1]);
        }
        while (true)
        {
          i2++;
          break label113;
          i = 0;
          break;
          if ((i1 & 0x1) == 0)
          {
            if (i1 == 4)
            {
              if (foundPatternCross(arrayOfInt))
              {
                if (handlePossibleCenter(arrayOfInt, n, i2))
                {
                  m = 2;
                  if (this.hasSkipped)
                    bool = haveMultiplyConfirmedCenters();
                  while (true)
                  {
                    arrayOfInt[0] = 0;
                    arrayOfInt[1] = 0;
                    arrayOfInt[2] = 0;
                    arrayOfInt[3] = 0;
                    arrayOfInt[4] = 0;
                    i1 = 0;
                    break;
                    int i3 = findRowSkip();
                    if (i3 > arrayOfInt[2])
                    {
                      n += i3 - arrayOfInt[2] - m;
                      i2 = k - 1;
                    }
                  }
                }
                arrayOfInt[0] = arrayOfInt[2];
                arrayOfInt[1] = arrayOfInt[3];
                arrayOfInt[2] = arrayOfInt[4];
                arrayOfInt[3] = 1;
                arrayOfInt[4] = 0;
                i1 = 3;
              }
              else
              {
                arrayOfInt[0] = arrayOfInt[2];
                arrayOfInt[1] = arrayOfInt[3];
                arrayOfInt[2] = arrayOfInt[4];
                arrayOfInt[3] = 1;
                arrayOfInt[4] = 0;
                i1 = 3;
              }
            }
            else
            {
              i1++;
              arrayOfInt[i1] = (1 + arrayOfInt[i1]);
            }
          }
          else
            arrayOfInt[i1] = (1 + arrayOfInt[i1]);
        }
      }
      if ((foundPatternCross(arrayOfInt)) && (handlePossibleCenter(arrayOfInt, n, k)))
      {
        m = arrayOfInt[0];
        if (this.hasSkipped)
          bool = haveMultiplyConfirmedCenters();
      }
      n += m;
    }
    label451: FinderPattern[] arrayOfFinderPattern = selectBestPatterns();
    ResultPoint.orderBestPatterns(arrayOfFinderPattern);
    return new FinderPatternInfo(arrayOfFinderPattern);
  }

  protected final BitMatrix getImage()
  {
    return this.image;
  }

  protected final List<FinderPattern> getPossibleCenters()
  {
    return this.possibleCenters;
  }

  protected final boolean handlePossibleCenter(int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    int i = paramArrayOfInt[0] + paramArrayOfInt[1] + paramArrayOfInt[2] + paramArrayOfInt[3] + paramArrayOfInt[4];
    float f1 = centerFromEnd(paramArrayOfInt, paramInt2);
    float f2 = crossCheckVertical(paramInt1, (int)f1, paramArrayOfInt[2], i);
    if (!Float.isNaN(f2))
    {
      float f3 = crossCheckHorizontal((int)f1, (int)f2, paramArrayOfInt[2], i);
      if (!Float.isNaN(f3))
      {
        float f4 = i / 7.0F;
        for (int j = 0; ; j++)
        {
          int k = this.possibleCenters.size();
          int m = 0;
          if (j < k)
          {
            FinderPattern localFinderPattern2 = (FinderPattern)this.possibleCenters.get(j);
            if (localFinderPattern2.aboutEquals(f4, f2, f3))
            {
              this.possibleCenters.set(j, localFinderPattern2.combineEstimate(f2, f3, f4));
              m = 1;
            }
          }
          else
          {
            if (m == 0)
            {
              FinderPattern localFinderPattern1 = new FinderPattern(f3, f2, f4);
              this.possibleCenters.add(localFinderPattern1);
              if (this.resultPointCallback != null)
                this.resultPointCallback.foundPossibleResultPoint(localFinderPattern1);
            }
            return true;
          }
        }
      }
    }
    return false;
  }

  private static final class CenterComparator
    implements Comparator<FinderPattern>, Serializable
  {
    private final float average;

    private CenterComparator(float paramFloat)
    {
      this.average = paramFloat;
    }

    public int compare(FinderPattern paramFinderPattern1, FinderPattern paramFinderPattern2)
    {
      if (paramFinderPattern2.getCount() == paramFinderPattern1.getCount())
      {
        float f1 = Math.abs(paramFinderPattern2.getEstimatedModuleSize() - this.average);
        float f2 = Math.abs(paramFinderPattern1.getEstimatedModuleSize() - this.average);
        if (f1 < f2)
          return 1;
        if (f1 == f2)
          return 0;
        return -1;
      }
      return paramFinderPattern2.getCount() - paramFinderPattern1.getCount();
    }
  }

  private static final class FurthestFromAverageComparator
    implements Comparator<FinderPattern>, Serializable
  {
    private final float average;

    private FurthestFromAverageComparator(float paramFloat)
    {
      this.average = paramFloat;
    }

    public int compare(FinderPattern paramFinderPattern1, FinderPattern paramFinderPattern2)
    {
      float f1 = Math.abs(paramFinderPattern2.getEstimatedModuleSize() - this.average);
      float f2 = Math.abs(paramFinderPattern1.getEstimatedModuleSize() - this.average);
      if (f1 < f2)
        return -1;
      if (f1 == f2)
        return 0;
      return 1;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.detector.FinderPatternFinder
 * JD-Core Version:    0.6.2
 */