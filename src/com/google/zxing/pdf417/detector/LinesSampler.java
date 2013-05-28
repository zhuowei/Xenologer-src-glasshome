package com.google.zxing.pdf417.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.pdf417.decoder.BitMatrixParser;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class LinesSampler
{
  private static final int BARCODE_START_OFFSET = 2;
  private static final int BARS_IN_SYMBOL = 8;
  private static final int MODULES_IN_SYMBOL = 17;
  private static final float[] RATIOS_TABLE;
  private final int dimension;
  private final BitMatrix linesMatrix;
  private final int symbolsPerLine;

  static
  {
    int[] arrayOfInt = { BitMatrixParser.SYMBOL_TABLE.length, 8 };
    float[][] arrayOfFloat = (float[][])Array.newInstance(Float.TYPE, arrayOfInt);
    RATIOS_TABLE = new float[8 * BitMatrixParser.SYMBOL_TABLE.length];
    int i = 0;
    for (int j = 0; j < BitMatrixParser.SYMBOL_TABLE.length; j++)
    {
      int k = BitMatrixParser.SYMBOL_TABLE[j];
      int m = k & 0x1;
      for (int n = 0; n < 8; n++)
      {
        float f = 0.0F;
        while ((k & 0x1) == m)
        {
          f += 1.0F;
          k >>= 1;
        }
        m = k & 0x1;
        arrayOfFloat[j][(-1 + (8 - n))] = (f / 17.0F);
      }
      for (int i1 = 0; i1 < 8; i1++)
      {
        RATIOS_TABLE[i] = arrayOfFloat[j][i1];
        i++;
      }
    }
  }

  public LinesSampler(BitMatrix paramBitMatrix, int paramInt)
  {
    this.linesMatrix = paramBitMatrix;
    this.symbolsPerLine = (paramInt / 17);
    this.dimension = paramInt;
  }

  private static int calculateClusterNumber(int paramInt)
  {
    if (paramInt == 0)
      return -1;
    int i = 0;
    int j = 1;
    int k = 0;
    int m = 0;
    if (m < 17)
    {
      if ((paramInt & 1 << m) > 0)
      {
        if (j == 0)
        {
          j = 1;
          i++;
        }
        if (i % 2 == 0)
          k++;
      }
      while (true)
      {
        m++;
        break;
        k--;
        continue;
        if (j != 0)
          j = 0;
      }
    }
    return (k + 9) % 9;
  }

  private static BitMatrix codewordsToBitMatrix(List<List<Integer>> paramList, int paramInt1, int paramInt2)
  {
    BitMatrix localBitMatrix = new BitMatrix(paramInt1, paramInt2);
    for (int i = 0; i < paramList.size(); i++)
      for (int j = 0; j < ((List)paramList.get(i)).size(); j++)
      {
        int k = j * 17;
        for (int m = 0; m < 17; m++)
          if ((((Integer)((List)paramList.get(i)).get(j)).intValue() & 1 << -1 + (17 - m)) > 0)
            localBitMatrix.set(k + m, i);
      }
    return localBitMatrix;
  }

  private int decodeRowCount(List<List<Integer>> paramList, List<Integer> paramList1)
  {
    paramList1.clear();
    HashMap localHashMap1 = new HashMap();
    HashMap localHashMap2 = new HashMap();
    HashMap localHashMap3 = new HashMap();
    int i = -1;
    for (int j = 0; j + 2 < paramList.size(); j += 3)
    {
      localHashMap3.clear();
      int n = -1;
      if (((Integer)((List)paramList.get(j)).get(0)).intValue() != 0)
        n = BitMatrixParser.getCodeword(((Integer)((List)paramList.get(j)).get(0)).intValue());
      int i1 = -1;
      if (((Integer)((List)paramList.get(j + 1)).get(0)).intValue() != 0)
        i1 = BitMatrixParser.getCodeword(((Integer)((List)paramList.get(j + 1)).get(0)).intValue());
      int i2 = -1;
      if (((Integer)((List)paramList.get(j + 2)).get(0)).intValue() != 0)
        i2 = BitMatrixParser.getCodeword(((Integer)((List)paramList.get(j + 2)).get(0)).intValue());
      int i3 = -1;
      if (((Integer)((List)paramList.get(j)).get(-1 + ((List)paramList.get(j)).size())).intValue() != 0)
        i3 = BitMatrixParser.getCodeword(((Integer)((List)paramList.get(j)).get(-1 + ((List)paramList.get(j)).size())).intValue());
      int i4 = -1;
      if (((Integer)((List)paramList.get(j + 1)).get(-1 + ((List)paramList.get(j + 1)).size())).intValue() != 0)
        i4 = BitMatrixParser.getCodeword(((Integer)((List)paramList.get(j + 1)).get(-1 + ((List)paramList.get(j + 1)).size())).intValue());
      int i5 = -1;
      if (((Integer)((List)paramList.get(j + 2)).get(-1 + ((List)paramList.get(j + 2)).size())).intValue() != 0)
        i5 = BitMatrixParser.getCodeword(((Integer)((List)paramList.get(j + 2)).get(-1 + ((List)paramList.get(j + 2)).size())).intValue());
      if ((n != -1) && (i1 != -1))
      {
        int i16 = 3 * (n % 30) + i1 % 30 % 3;
        int i17 = i1 % 30 / 3;
        localHashMap1.put(Integer.valueOf(i16), Integer.valueOf(1 + ((Integer)defaultValue(localHashMap1.get(Integer.valueOf(i16)), Integer.valueOf(0))).intValue()));
        localHashMap2.put(Integer.valueOf(i17), Integer.valueOf(1 + ((Integer)defaultValue(localHashMap2.get(Integer.valueOf(i17)), Integer.valueOf(0))).intValue()));
      }
      if ((i4 != -1) && (i5 != -1))
      {
        int i14 = 3 * (i4 % 30) + i5 % 30 % 3;
        int i15 = i5 % 30 / 3;
        localHashMap1.put(Integer.valueOf(i14), Integer.valueOf(1 + ((Integer)defaultValue(localHashMap1.get(Integer.valueOf(i14)), Integer.valueOf(0))).intValue()));
        localHashMap2.put(Integer.valueOf(i15), Integer.valueOf(1 + ((Integer)defaultValue(localHashMap2.get(Integer.valueOf(i15)), Integer.valueOf(0))).intValue()));
      }
      if (n != -1)
      {
        int i13 = n / 30;
        localHashMap3.put(Integer.valueOf(i13), Integer.valueOf(1 + ((Integer)defaultValue(localHashMap3.get(Integer.valueOf(i13)), Integer.valueOf(0))).intValue()));
      }
      if (i1 != -1)
      {
        int i12 = i1 / 30;
        localHashMap3.put(Integer.valueOf(i12), Integer.valueOf(1 + ((Integer)defaultValue(localHashMap3.get(Integer.valueOf(i12)), Integer.valueOf(0))).intValue()));
      }
      if (i2 != -1)
      {
        int i11 = i2 / 30;
        localHashMap3.put(Integer.valueOf(i11), Integer.valueOf(1 + ((Integer)defaultValue(localHashMap3.get(Integer.valueOf(i11)), Integer.valueOf(0))).intValue()));
      }
      if (i3 != -1)
      {
        int i10 = i3 / 30;
        localHashMap3.put(Integer.valueOf(i10), Integer.valueOf(1 + ((Integer)defaultValue(localHashMap3.get(Integer.valueOf(i10)), Integer.valueOf(0))).intValue()));
      }
      if (i4 != -1)
      {
        int i9 = i4 / 30;
        localHashMap3.put(Integer.valueOf(i9), Integer.valueOf(1 + ((Integer)defaultValue(localHashMap3.get(Integer.valueOf(i9)), Integer.valueOf(0))).intValue()));
      }
      if (i5 != -1)
      {
        int i8 = i5 / 30;
        localHashMap3.put(Integer.valueOf(i8), Integer.valueOf(1 + ((Integer)defaultValue(localHashMap3.get(Integer.valueOf(i8)), Integer.valueOf(0))).intValue()));
      }
      int i6 = getValueWithMaxVotes(localHashMap3).getVote();
      if (i + 1 < i6)
        for (int i7 = i + 1; i7 < i6; i7++)
        {
          paramList1.add(Integer.valueOf(j));
          paramList1.add(Integer.valueOf(j));
          paramList1.add(Integer.valueOf(j));
        }
      i = i6;
    }
    for (int k = 0; k < paramList1.size(); k++)
    {
      ArrayList localArrayList = new ArrayList();
      for (int m = 0; m < this.symbolsPerLine; m++)
        localArrayList.add(Integer.valueOf(0));
      paramList.add(k + ((Integer)paramList1.get(k)).intValue(), localArrayList);
    }
    return 1 + getValueWithMaxVotes(localHashMap1).getVote();
  }

  private static <T> T defaultValue(T paramT1, T paramT2)
  {
    if (paramT1 == null)
      return paramT2;
    return paramT1;
  }

  private List<List<Map<Integer, Integer>>> distributeVotes(int[][] paramArrayOfInt1, int[][] paramArrayOfInt2)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ArrayList());
    resize2((List)localArrayList.get(0), this.symbolsPerLine);
    int i = 0;
    HashMap localHashMap = new HashMap();
    int j = -1;
    for (int k = 0; k < paramArrayOfInt1.length; k++)
    {
      localHashMap.clear();
      for (int m = 0; m < paramArrayOfInt1[k].length; m++)
        if (paramArrayOfInt2[k][m] != -1)
          localHashMap.put(Integer.valueOf(paramArrayOfInt2[k][m]), Integer.valueOf(1 + ((Integer)defaultValue(localHashMap.get(Integer.valueOf(paramArrayOfInt2[k][m])), Integer.valueOf(0))).intValue()));
      if (!localHashMap.isEmpty())
      {
        VoteResult localVoteResult = getValueWithMaxVotes(localHashMap);
        boolean bool = localVoteResult.isIndecisive();
        int n = localVoteResult.getVote();
        if (bool)
          n = j;
        if ((n != (j + 3) % 9) && (j != -1))
          n = j;
        if (((n == 0) && (j == -1)) || (j != -1))
        {
          if ((n == (j + 3) % 9) && (j != -1))
          {
            i++;
            if (localArrayList.size() < i + 1)
            {
              resize1(localArrayList, i + 1);
              resize2((List)localArrayList.get(i), this.symbolsPerLine);
            }
          }
          if ((n == (j + 6) % 9) && (j != -1))
          {
            i += 2;
            if (localArrayList.size() < i + 1)
            {
              resize1(localArrayList, i + 1);
              resize2((List)localArrayList.get(i), this.symbolsPerLine);
            }
          }
          int i1 = 0;
          if (i1 < paramArrayOfInt1[k].length)
          {
            if (paramArrayOfInt2[k][i1] != -1)
            {
              if (paramArrayOfInt2[k][i1] != n)
                break label472;
              Map localMap3 = (Map)((List)localArrayList.get(i)).get(i1);
              localMap3.put(Integer.valueOf(paramArrayOfInt1[k][i1]), Integer.valueOf(1 + ((Integer)defaultValue(localMap3.get(Integer.valueOf(paramArrayOfInt1[k][i1])), Integer.valueOf(0))).intValue()));
            }
            while (true)
            {
              i1++;
              break;
              label472: if (paramArrayOfInt2[k][i1] == (n + 3) % 9)
              {
                if (localArrayList.size() < i + 2)
                {
                  resize1(localArrayList, i + 2);
                  resize2((List)localArrayList.get(i + 1), this.symbolsPerLine);
                }
                Map localMap2 = (Map)((List)localArrayList.get(i + 1)).get(i1);
                localMap2.put(Integer.valueOf(paramArrayOfInt1[k][i1]), Integer.valueOf(1 + ((Integer)defaultValue(localMap2.get(Integer.valueOf(paramArrayOfInt1[k][i1])), Integer.valueOf(0))).intValue()));
              }
              else if ((paramArrayOfInt2[k][i1] == (n + 6) % 9) && (i > 0))
              {
                Map localMap1 = (Map)((List)localArrayList.get(i - 1)).get(i1);
                localMap1.put(Integer.valueOf(paramArrayOfInt1[k][i1]), Integer.valueOf(1 + ((Integer)defaultValue(localMap1.get(Integer.valueOf(paramArrayOfInt1[k][i1])), Integer.valueOf(0))).intValue()));
              }
            }
          }
          j = n;
        }
      }
    }
    return localArrayList;
  }

  private List<Integer> findMissingLines(List<List<Integer>> paramList)
  {
    ArrayList localArrayList1 = new ArrayList();
    if (paramList.size() > 1)
      for (int k = 0; k < -1 + paramList.size(); k++)
      {
        int m = -1;
        for (int n = 0; (n < ((List)paramList.get(k)).size()) && (m == -1); n++)
        {
          int i4 = calculateClusterNumber(((Integer)((List)paramList.get(k)).get(n)).intValue());
          if (i4 != -1)
            m = i4;
        }
        if ((k == 0) && (m > 0))
        {
          localArrayList1.add(Integer.valueOf(0));
          if (m > 3)
            localArrayList1.add(Integer.valueOf(0));
        }
        int i1 = -1;
        for (int i2 = 0; (i2 < ((List)paramList.get(k + 1)).size()) && (i1 == -1); i2++)
        {
          int i3 = calculateClusterNumber(((Integer)((List)paramList.get(k + 1)).get(i2)).intValue());
          if (i3 != -1)
            i1 = i3;
        }
        if (((m + 3) % 9 != i1) && (m != -1) && (i1 != -1))
        {
          localArrayList1.add(Integer.valueOf(k + 1));
          if (m == i1)
            localArrayList1.add(Integer.valueOf(k + 1));
        }
      }
    for (int i = 0; i < localArrayList1.size(); i++)
    {
      ArrayList localArrayList2 = new ArrayList();
      for (int j = 0; j < this.symbolsPerLine; j++)
        localArrayList2.add(Integer.valueOf(0));
      paramList.add(i + ((Integer)localArrayList1.get(i)).intValue(), localArrayList2);
    }
    return localArrayList1;
  }

  private List<Float> findSymbolWidths()
  {
    if (this.symbolsPerLine > 0);
    ArrayList localArrayList;
    int i;
    int j;
    int[] arrayOfInt;
    int k;
    for (float f1 = this.linesMatrix.getWidth() / this.symbolsPerLine; ; f1 = this.linesMatrix.getWidth())
    {
      localArrayList = new ArrayList();
      i = 0;
      j = 1;
      arrayOfInt = new int[this.linesMatrix.getWidth()];
      k = 2;
      if (k >= this.linesMatrix.getWidth())
        break label228;
      for (int m = 0; m < this.linesMatrix.getHeight(); m++)
        if (this.linesMatrix.get(k, m))
          arrayOfInt[k] = (1 + arrayOfInt[k]);
    }
    if (arrayOfInt[k] == this.linesMatrix.getHeight())
      if (j == 0)
      {
        float f3 = k - i;
        if (f3 > 0.75D * f1)
        {
          while (f3 > 1.5D * f1)
          {
            localArrayList.add(Float.valueOf(f1));
            f3 -= f1;
          }
          localArrayList.add(Float.valueOf(f3));
          j = 1;
          i = k;
        }
      }
    while (true)
    {
      k++;
      break;
      if (j != 0)
        j = 0;
    }
    label228: for (float f2 = this.linesMatrix.getWidth() - i; f2 > 1.5D * f1; f2 -= f1)
      localArrayList.add(Float.valueOf(f1));
    localArrayList.add(Float.valueOf(f2));
    return localArrayList;
  }

  private static VoteResult getValueWithMaxVotes(Map<Integer, Integer> paramMap)
  {
    VoteResult localVoteResult = new VoteResult(null);
    int i = 0;
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (((Integer)localEntry.getValue()).intValue() > i)
      {
        i = ((Integer)localEntry.getValue()).intValue();
        localVoteResult.setVote(((Integer)localEntry.getKey()).intValue());
        localVoteResult.setIndecisive(false);
      }
      else if (((Integer)localEntry.getValue()).intValue() == i)
      {
        localVoteResult.setIndecisive(true);
      }
    }
    return localVoteResult;
  }

  private void linesMatrixToCodewords(int[][] paramArrayOfInt1, int[][] paramArrayOfInt2, List<Float> paramList)
    throws NotFoundException
  {
    if (this.symbolsPerLine > paramList.size())
      throw NotFoundException.getNotFoundInstance();
    for (int i = 0; ; i++)
    {
      int j = this.linesMatrix.getHeight();
      if (i >= j)
        break;
      paramArrayOfInt1[i] = new int[this.symbolsPerLine];
      paramArrayOfInt2[i] = new int[this.symbolsPerLine];
      Arrays.fill(paramArrayOfInt2[i], 0, paramArrayOfInt2[i].length, -1);
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(Integer.valueOf(2));
      int k = 1;
      int m = 2;
      int n = this.linesMatrix.getWidth();
      if (m < n)
      {
        if (this.linesMatrix.get(m, i))
          if (k == 0)
          {
            k = 1;
            localArrayList.add(Integer.valueOf(0));
          }
        while (true)
        {
          int i21 = -1 + localArrayList.size();
          localArrayList.set(i21, Integer.valueOf(1 + ((Integer)localArrayList.get(i21)).intValue()));
          m++;
          break;
          if (k != 0)
          {
            localArrayList.add(Integer.valueOf(0));
            k = 0;
          }
        }
      }
      int[] arrayOfInt1 = new int[this.symbolsPerLine];
      arrayOfInt1[0] = 0;
      int i1 = 1;
      int i2 = 0;
      for (int i3 = 0; ; i3++)
      {
        int i4 = localArrayList.size();
        if ((i3 >= i4) || (i1 >= this.symbolsPerLine))
          break;
        i2 += ((Integer)localArrayList.get(i3)).intValue();
        if (i2 > ((Float)paramList.get(i1 - 1)).floatValue())
        {
          if (i3 % 2 == 1)
            i3++;
          int i20 = localArrayList.size();
          if (i3 < i20)
            i2 = ((Integer)localArrayList.get(i3)).intValue();
          arrayOfInt1[i1] = i3;
          i1++;
        }
      }
      int[] arrayOfInt2 = { this.symbolsPerLine, 8 };
      float[][] arrayOfFloat = (float[][])Array.newInstance(Float.TYPE, arrayOfInt2);
      int i5 = 0;
      int i6 = this.symbolsPerLine;
      if (i5 < i6)
      {
        int i7 = arrayOfInt1[i5];
        int i8 = -1 + this.symbolsPerLine;
        int i9;
        label444: int i10;
        if (i5 == i8)
        {
          i9 = localArrayList.size();
          i10 = i9 - i7;
          if ((i10 >= 7) && (i10 <= 9))
            break label483;
        }
        while (true)
        {
          i5++;
          break;
          i9 = arrayOfInt1[(i5 + 1)];
          break label444;
          label483: float f1 = 0.0F;
          for (int i11 = 0; ; i11++)
          {
            int i12 = Math.min(8, i10);
            if (i11 >= i12)
              break;
            f1 += ((Integer)localArrayList.get(i7 + i11)).intValue();
          }
          float f2;
          int i15;
          if (i10 == 7)
          {
            for (int i19 = 0; i19 < i10; i19++)
              arrayOfFloat[i5][i19] = (((Integer)localArrayList.get(i7 + i19)).intValue() / ((Float)paramList.get(i5)).floatValue());
            arrayOfFloat[i5][7] = ((((Float)paramList.get(i5)).floatValue() - f1) / ((Float)paramList.get(i5)).floatValue());
            f2 = 3.4028235E+38F;
            i15 = 0;
          }
          for (int i16 = 0; ; i16++)
          {
            int i17 = BitMatrixParser.SYMBOL_TABLE.length;
            if (i16 >= i17)
              break label795;
            float f3 = 0.0F;
            int i18 = 0;
            while (i18 < 8)
            {
              float f4 = RATIOS_TABLE[(i18 + i16 * 8)] - arrayOfFloat[i5][i18];
              f3 += f4 * f4;
              i18++;
              continue;
              for (int i13 = 0; ; i13++)
              {
                int i14 = arrayOfFloat[i5].length;
                if (i13 >= i14)
                  break;
                arrayOfFloat[i5][i13] = (((Integer)localArrayList.get(i7 + i13)).intValue() / f1);
              }
            }
            if (f3 < f2)
            {
              f2 = f3;
              i15 = BitMatrixParser.SYMBOL_TABLE[i16];
            }
          }
          label795: paramArrayOfInt1[i][i5] = i15;
          paramArrayOfInt2[i][i5] = calculateClusterNumber(i15);
        }
      }
    }
  }

  private static void resize1(List<List<Map<Integer, Integer>>> paramList, int paramInt)
  {
    for (int i = paramInt; i < paramList.size(); i++)
      paramList.remove(i);
    for (int j = paramList.size(); j < paramInt; j++)
      paramList.add(new ArrayList());
  }

  private static void resize2(List<Map<Integer, Integer>> paramList, int paramInt)
  {
    for (int i = paramInt; i < paramList.size(); i++)
      paramList.remove(i);
    for (int j = paramList.size(); j < paramInt; j++)
      paramList.add(new HashMap());
  }

  private static void resize3(List<List<Integer>> paramList, int paramInt)
  {
    for (int i = paramInt; i < paramList.size(); i++)
      paramList.remove(i);
    for (int j = paramList.size(); j < paramInt; j++)
      paramList.add(new ArrayList());
  }

  private static void resize4(List<Integer> paramList, int paramInt)
  {
    for (int i = paramInt; i < paramList.size(); i++)
      paramList.remove(i);
    for (int j = paramList.size(); j < paramInt; j++)
      paramList.add(Integer.valueOf(0));
  }

  public BitMatrix sample()
    throws NotFoundException
  {
    List localList1 = findSymbolWidths();
    int[][] arrayOfInt1 = new int[this.linesMatrix.getHeight()][];
    int[][] arrayOfInt2 = new int[this.linesMatrix.getHeight()][];
    linesMatrixToCodewords(arrayOfInt1, arrayOfInt2, localList1);
    List localList2 = distributeVotes(arrayOfInt1, arrayOfInt2);
    ArrayList localArrayList = new ArrayList();
    resize3(localArrayList, localList2.size());
    for (int i = 0; i < localList2.size(); i++)
    {
      resize4((List)localArrayList.get(i), ((List)localList2.get(i)).size());
      for (int j = 0; j < ((List)localList2.get(i)).size(); j++)
        if (!((Map)((List)localList2.get(i)).get(j)).isEmpty())
          ((List)localArrayList.get(i)).set(j, Integer.valueOf(getValueWithMaxVotes((Map)((List)localList2.get(i)).get(j)).getVote()));
    }
    resize3(localArrayList, decodeRowCount(localArrayList, findMissingLines(localArrayList)));
    return codewordsToBitMatrix(localArrayList, this.dimension, localArrayList.size());
  }

  private static class VoteResult
  {
    private boolean indecisive;
    private int vote;

    int getVote()
    {
      return this.vote;
    }

    boolean isIndecisive()
    {
      return this.indecisive;
    }

    void setIndecisive(boolean paramBoolean)
    {
      this.indecisive = paramBoolean;
    }

    void setVote(int paramInt)
    {
      this.vote = paramInt;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.pdf417.detector.LinesSampler
 * JD-Core Version:    0.6.2
 */