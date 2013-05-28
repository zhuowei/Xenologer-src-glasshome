package com.google.zxing.multi.qrcode.detector;

import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.detector.FinderPattern;
import com.google.zxing.qrcode.detector.FinderPatternFinder;
import com.google.zxing.qrcode.detector.FinderPatternInfo;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;

final class MultiFinderPatternFinder extends FinderPatternFinder
{
  private static final float DIFF_MODSIZE_CUTOFF = 0.5F;
  private static final float DIFF_MODSIZE_CUTOFF_PERCENT = 0.05F;
  private static final FinderPatternInfo[] EMPTY_RESULT_ARRAY = new FinderPatternInfo[0];
  private static final float MAX_MODULE_COUNT_PER_EDGE = 180.0F;
  private static final float MIN_MODULE_COUNT_PER_EDGE = 9.0F;

  MultiFinderPatternFinder(BitMatrix paramBitMatrix)
  {
    super(paramBitMatrix);
  }

  MultiFinderPatternFinder(BitMatrix paramBitMatrix, ResultPointCallback paramResultPointCallback)
  {
    super(paramBitMatrix, paramResultPointCallback);
  }

  private FinderPattern[][] selectMutipleBestPatterns()
    throws NotFoundException
  {
    List localList = getPossibleCenters();
    int i = localList.size();
    if (i < 3)
      throw NotFoundException.getNotFoundInstance();
    if (i == 3)
    {
      FinderPattern[][] arrayOfFinderPattern; = new FinderPattern[1][];
      FinderPattern[] arrayOfFinderPattern2 = new FinderPattern[3];
      arrayOfFinderPattern2[0] = ((FinderPattern)localList.get(0));
      arrayOfFinderPattern2[1] = ((FinderPattern)localList.get(1));
      arrayOfFinderPattern2[2] = ((FinderPattern)localList.get(2));
      arrayOfFinderPattern;[0] = arrayOfFinderPattern2;
      return arrayOfFinderPattern;;
    }
    Collections.sort(localList, new ModuleSizeComparator(null));
    ArrayList localArrayList = new ArrayList();
    int j = 0;
    if (j < i - 2)
    {
      FinderPattern localFinderPattern1 = (FinderPattern)localList.get(j);
      if (localFinderPattern1 == null);
      int k;
      FinderPattern localFinderPattern2;
      label182: float f1;
      do
      {
        while (true)
        {
          j++;
          break;
          for (k = j + 1; k < i - 1; k++)
          {
            localFinderPattern2 = (FinderPattern)localList.get(k);
            if (localFinderPattern2 != null)
              break label182;
          }
        }
        f1 = (localFinderPattern1.getEstimatedModuleSize() - localFinderPattern2.getEstimatedModuleSize()) / Math.min(localFinderPattern1.getEstimatedModuleSize(), localFinderPattern2.getEstimatedModuleSize());
      }
      while ((Math.abs(localFinderPattern1.getEstimatedModuleSize() - localFinderPattern2.getEstimatedModuleSize()) > 0.5F) && (f1 >= 0.05F));
      int m = k + 1;
      label243: FinderPattern localFinderPattern3;
      if (m < i)
      {
        localFinderPattern3 = (FinderPattern)localList.get(m);
        if (localFinderPattern3 != null)
          break label273;
      }
      while (true)
      {
        m++;
        break label243;
        break;
        label273: float f2 = (localFinderPattern2.getEstimatedModuleSize() - localFinderPattern3.getEstimatedModuleSize()) / Math.min(localFinderPattern2.getEstimatedModuleSize(), localFinderPattern3.getEstimatedModuleSize());
        if ((Math.abs(localFinderPattern2.getEstimatedModuleSize() - localFinderPattern3.getEstimatedModuleSize()) > 0.5F) && (f2 >= 0.05F))
          break;
        FinderPattern[] arrayOfFinderPattern1 = { localFinderPattern1, localFinderPattern2, localFinderPattern3 };
        ResultPoint.orderBestPatterns(arrayOfFinderPattern1);
        FinderPatternInfo localFinderPatternInfo = new FinderPatternInfo(arrayOfFinderPattern1);
        float f3 = ResultPoint.distance(localFinderPatternInfo.getTopLeft(), localFinderPatternInfo.getBottomLeft());
        float f4 = ResultPoint.distance(localFinderPatternInfo.getTopRight(), localFinderPatternInfo.getBottomLeft());
        float f5 = ResultPoint.distance(localFinderPatternInfo.getTopLeft(), localFinderPatternInfo.getTopRight());
        float f6 = (f3 + f5) / (2.0F * localFinderPattern1.getEstimatedModuleSize());
        if ((f6 <= 180.0F) && (f6 >= 9.0F) && (Math.abs((f3 - f5) / Math.min(f3, f5)) < 0.1F))
        {
          float f7 = (float)Math.sqrt(f3 * f3 + f5 * f5);
          if (Math.abs((f4 - f7) / Math.min(f4, f7)) < 0.1F)
            localArrayList.add(arrayOfFinderPattern1);
        }
      }
    }
    if (!localArrayList.isEmpty())
      return (FinderPattern[][])localArrayList.toArray(new FinderPattern[localArrayList.size()][]);
    throw NotFoundException.getNotFoundInstance();
  }

  public FinderPatternInfo[] findMulti(Map<DecodeHintType, ?> paramMap)
    throws NotFoundException
  {
    int i;
    BitMatrix localBitMatrix;
    int j;
    int k;
    int m;
    int[] arrayOfInt;
    int n;
    if ((paramMap != null) && (paramMap.containsKey(DecodeHintType.TRY_HARDER)))
    {
      i = 1;
      localBitMatrix = getImage();
      j = localBitMatrix.getHeight();
      k = localBitMatrix.getWidth();
      m = (int)(3.0F * (j / 228.0F));
      if ((m < 3) || (i != 0))
        m = 3;
      arrayOfInt = new int[5];
      n = m - 1;
    }
    while (true)
    {
      if (n >= j)
        break label328;
      arrayOfInt[0] = 0;
      arrayOfInt[1] = 0;
      arrayOfInt[2] = 0;
      arrayOfInt[3] = 0;
      arrayOfInt[4] = 0;
      int i3 = 0;
      int i4 = 0;
      label109: if (i4 < k)
      {
        if (localBitMatrix.get(i4, n))
        {
          if ((i3 & 0x1) == 1)
            i3++;
          arrayOfInt[i3] = (1 + arrayOfInt[i3]);
        }
        while (true)
        {
          i4++;
          break label109;
          i = 0;
          break;
          if ((i3 & 0x1) == 0)
          {
            if (i3 == 4)
            {
              if ((foundPatternCross(arrayOfInt)) && (handlePossibleCenter(arrayOfInt, n, i4)))
              {
                arrayOfInt[0] = 0;
                arrayOfInt[1] = 0;
                arrayOfInt[2] = 0;
                arrayOfInt[3] = 0;
                arrayOfInt[4] = 0;
                i3 = 0;
              }
              else
              {
                arrayOfInt[0] = arrayOfInt[2];
                arrayOfInt[1] = arrayOfInt[3];
                arrayOfInt[2] = arrayOfInt[4];
                arrayOfInt[3] = 1;
                arrayOfInt[4] = 0;
                i3 = 3;
              }
            }
            else
            {
              i3++;
              arrayOfInt[i3] = (1 + arrayOfInt[i3]);
            }
          }
          else
            arrayOfInt[i3] = (1 + arrayOfInt[i3]);
        }
      }
      if (foundPatternCross(arrayOfInt))
        handlePossibleCenter(arrayOfInt, n, k);
      n += m;
    }
    label328: FinderPattern[][] arrayOfFinderPattern = selectMutipleBestPatterns();
    ArrayList localArrayList = new ArrayList();
    int i1 = arrayOfFinderPattern.length;
    for (int i2 = 0; i2 < i1; i2++)
    {
      FinderPattern[] arrayOfFinderPattern1 = arrayOfFinderPattern[i2];
      ResultPoint.orderBestPatterns(arrayOfFinderPattern1);
      FinderPatternInfo localFinderPatternInfo = new FinderPatternInfo(arrayOfFinderPattern1);
      localArrayList.add(localFinderPatternInfo);
    }
    if (localArrayList.isEmpty())
      return EMPTY_RESULT_ARRAY;
    return (FinderPatternInfo[])localArrayList.toArray(new FinderPatternInfo[localArrayList.size()]);
  }

  private static final class ModuleSizeComparator
    implements Comparator<FinderPattern>, Serializable
  {
    public int compare(FinderPattern paramFinderPattern1, FinderPattern paramFinderPattern2)
    {
      float f = paramFinderPattern2.getEstimatedModuleSize() - paramFinderPattern1.getEstimatedModuleSize();
      if (f < 0.0D)
        return -1;
      if (f > 0.0D)
        return 1;
      return 0;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.multi.qrcode.detector.MultiFinderPatternFinder
 * JD-Core Version:    0.6.2
 */