package com.google.zxing.oned;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.Arrays;
import java.util.Map;

public abstract class OneDReader
  implements Reader
{
  protected static final int INTEGER_MATH_SHIFT = 8;
  protected static final int PATTERN_MATCH_RESULT_SCALE_FACTOR = 256;

  // ERROR //
  private Result doDecode(BinaryBitmap paramBinaryBitmap, Map<DecodeHintType, ?> paramMap)
    throws NotFoundException
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 27	com/google/zxing/BinaryBitmap:getWidth	()I
    //   4: istore_3
    //   5: aload_1
    //   6: invokevirtual 30	com/google/zxing/BinaryBitmap:getHeight	()I
    //   9: istore 4
    //   11: new 32	com/google/zxing/common/BitArray
    //   14: dup
    //   15: iload_3
    //   16: invokespecial 35	com/google/zxing/common/BitArray:<init>	(I)V
    //   19: astore 5
    //   21: iload 4
    //   23: iconst_1
    //   24: ishr
    //   25: istore 6
    //   27: aload_2
    //   28: ifnull +110 -> 138
    //   31: getstatic 41	com/google/zxing/DecodeHintType:TRY_HARDER	Lcom/google/zxing/DecodeHintType;
    //   34: astore 24
    //   36: aload_2
    //   37: aload 24
    //   39: invokeinterface 47 2 0
    //   44: ifeq +94 -> 138
    //   47: iconst_1
    //   48: istore 7
    //   50: iload 7
    //   52: ifeq +92 -> 144
    //   55: bipush 8
    //   57: istore 8
    //   59: iconst_1
    //   60: iload 4
    //   62: iload 8
    //   64: ishr
    //   65: invokestatic 53	java/lang/Math:max	(II)I
    //   68: istore 9
    //   70: iload 7
    //   72: ifeq +78 -> 150
    //   75: iload 4
    //   77: istore 10
    //   79: iconst_0
    //   80: istore 11
    //   82: iload 11
    //   84: iload 10
    //   86: if_icmpge +48 -> 134
    //   89: iload 11
    //   91: iconst_1
    //   92: iadd
    //   93: iconst_1
    //   94: ishr
    //   95: istore 12
    //   97: iload 11
    //   99: iconst_1
    //   100: iand
    //   101: ifne +56 -> 157
    //   104: iconst_1
    //   105: istore 13
    //   107: iload 13
    //   109: ifeq +54 -> 163
    //   112: iload 6
    //   114: iload 9
    //   116: iload 12
    //   118: imul
    //   119: iadd
    //   120: istore 14
    //   122: iload 14
    //   124: iflt +10 -> 134
    //   127: iload 14
    //   129: iload 4
    //   131: if_icmplt +40 -> 171
    //   134: invokestatic 57	com/google/zxing/NotFoundException:getNotFoundInstance	()Lcom/google/zxing/NotFoundException;
    //   137: athrow
    //   138: iconst_0
    //   139: istore 7
    //   141: goto -91 -> 50
    //   144: iconst_5
    //   145: istore 8
    //   147: goto -88 -> 59
    //   150: bipush 15
    //   152: istore 10
    //   154: goto -75 -> 79
    //   157: iconst_0
    //   158: istore 13
    //   160: goto -53 -> 107
    //   163: iload 12
    //   165: ineg
    //   166: istore 12
    //   168: goto -56 -> 112
    //   171: aload_1
    //   172: iload 14
    //   174: aload 5
    //   176: invokevirtual 61	com/google/zxing/BinaryBitmap:getBlackRow	(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    //   179: astore 16
    //   181: aload 16
    //   183: astore 5
    //   185: iconst_0
    //   186: istore 17
    //   188: iload 17
    //   190: iconst_2
    //   191: if_icmpge +175 -> 366
    //   194: iload 17
    //   196: iconst_1
    //   197: if_icmpne +61 -> 258
    //   200: aload 5
    //   202: invokevirtual 64	com/google/zxing/common/BitArray:reverse	()V
    //   205: aload_2
    //   206: ifnull +52 -> 258
    //   209: getstatic 67	com/google/zxing/DecodeHintType:NEED_RESULT_POINT_CALLBACK	Lcom/google/zxing/DecodeHintType;
    //   212: astore 21
    //   214: aload_2
    //   215: aload 21
    //   217: invokeinterface 47 2 0
    //   222: ifeq +36 -> 258
    //   225: new 69	java/util/EnumMap
    //   228: dup
    //   229: ldc 37
    //   231: invokespecial 72	java/util/EnumMap:<init>	(Ljava/lang/Class;)V
    //   234: astore 22
    //   236: aload 22
    //   238: aload_2
    //   239: invokeinterface 76 2 0
    //   244: aload 22
    //   246: getstatic 67	com/google/zxing/DecodeHintType:NEED_RESULT_POINT_CALLBACK	Lcom/google/zxing/DecodeHintType;
    //   249: invokeinterface 80 2 0
    //   254: pop
    //   255: aload 22
    //   257: astore_2
    //   258: aload_0
    //   259: iload 14
    //   261: aload 5
    //   263: aload_2
    //   264: invokevirtual 84	com/google/zxing/oned/OneDReader:decodeRow	(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    //   267: astore 19
    //   269: iload 17
    //   271: iconst_1
    //   272: if_icmpne +89 -> 361
    //   275: aload 19
    //   277: getstatic 90	com/google/zxing/ResultMetadataType:ORIENTATION	Lcom/google/zxing/ResultMetadataType;
    //   280: sipush 180
    //   283: invokestatic 96	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   286: invokevirtual 102	com/google/zxing/Result:putMetadata	(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V
    //   289: aload 19
    //   291: invokevirtual 106	com/google/zxing/Result:getResultPoints	()[Lcom/google/zxing/ResultPoint;
    //   294: astore 20
    //   296: aload 20
    //   298: ifnull +63 -> 361
    //   301: aload 20
    //   303: iconst_0
    //   304: new 108	com/google/zxing/ResultPoint
    //   307: dup
    //   308: iload_3
    //   309: i2f
    //   310: aload 20
    //   312: iconst_0
    //   313: aaload
    //   314: invokevirtual 112	com/google/zxing/ResultPoint:getX	()F
    //   317: fsub
    //   318: fconst_1
    //   319: fsub
    //   320: aload 20
    //   322: iconst_0
    //   323: aaload
    //   324: invokevirtual 115	com/google/zxing/ResultPoint:getY	()F
    //   327: invokespecial 118	com/google/zxing/ResultPoint:<init>	(FF)V
    //   330: aastore
    //   331: aload 20
    //   333: iconst_1
    //   334: new 108	com/google/zxing/ResultPoint
    //   337: dup
    //   338: iload_3
    //   339: i2f
    //   340: aload 20
    //   342: iconst_1
    //   343: aaload
    //   344: invokevirtual 112	com/google/zxing/ResultPoint:getX	()F
    //   347: fsub
    //   348: fconst_1
    //   349: fsub
    //   350: aload 20
    //   352: iconst_1
    //   353: aaload
    //   354: invokevirtual 115	com/google/zxing/ResultPoint:getY	()F
    //   357: invokespecial 118	com/google/zxing/ResultPoint:<init>	(FF)V
    //   360: aastore
    //   361: aload 19
    //   363: areturn
    //   364: astore 15
    //   366: iinc 11 1
    //   369: goto -287 -> 82
    //   372: astore 18
    //   374: iinc 17 1
    //   377: goto -189 -> 188
    //
    // Exception table:
    //   from	to	target	type
    //   171	181	364	com/google/zxing/NotFoundException
    //   258	269	372	com/google/zxing/ReaderException
    //   275	296	372	com/google/zxing/ReaderException
    //   301	361	372	com/google/zxing/ReaderException
  }

  protected static int patternMatchVariance(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int paramInt)
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

  protected static void recordPattern(BitArray paramBitArray, int paramInt, int[] paramArrayOfInt)
    throws NotFoundException
  {
    int i = paramArrayOfInt.length;
    Arrays.fill(paramArrayOfInt, 0, i, 0);
    int j = paramBitArray.getSize();
    if (paramInt >= j)
      throw NotFoundException.getNotFoundInstance();
    if (!paramBitArray.get(paramInt));
    int m;
    int n;
    for (int k = 1; ; k = 0)
    {
      m = 0;
      for (n = paramInt; ; n++)
      {
        if (n >= j)
          break label93;
        if ((k ^ paramBitArray.get(n)) == 0)
          break;
        paramArrayOfInt[m] = (1 + paramArrayOfInt[m]);
      }
    }
    m++;
    if (m == i)
    {
      label93: if ((m != i) && ((m != i - 1) || (n != j)))
        throw NotFoundException.getNotFoundInstance();
    }
    else
    {
      paramArrayOfInt[m] = 1;
      if (k == 0);
      for (k = 1; ; k = 0)
        break;
    }
  }

  protected static void recordPatternInReverse(BitArray paramBitArray, int paramInt, int[] paramArrayOfInt)
    throws NotFoundException
  {
    int i = paramArrayOfInt.length;
    boolean bool = paramBitArray.get(paramInt);
    while ((paramInt > 0) && (i >= 0))
    {
      paramInt--;
      if (paramBitArray.get(paramInt) != bool)
      {
        i--;
        if (!bool);
        for (bool = true; ; bool = false)
          break;
      }
    }
    if (i >= 0)
      throw NotFoundException.getNotFoundInstance();
    recordPattern(paramBitArray, paramInt + 1, paramArrayOfInt);
  }

  public Result decode(BinaryBitmap paramBinaryBitmap)
    throws NotFoundException, FormatException
  {
    return decode(paramBinaryBitmap, null);
  }

  public Result decode(BinaryBitmap paramBinaryBitmap, Map<DecodeHintType, ?> paramMap)
    throws NotFoundException, FormatException
  {
    try
    {
      Result localResult2 = doDecode(paramBinaryBitmap, paramMap);
      localResult1 = localResult2;
      return localResult1;
    }
    catch (NotFoundException localNotFoundException)
    {
      Result localResult1;
      if ((paramMap != null) && (paramMap.containsKey(DecodeHintType.TRY_HARDER)));
      for (int i = 1; ; i = 0)
      {
        if ((i == 0) || (!paramBinaryBitmap.isRotateSupported()))
          break label206;
        BinaryBitmap localBinaryBitmap = paramBinaryBitmap.rotateCounterClockwise();
        localResult1 = doDecode(localBinaryBitmap, paramMap);
        Map localMap = localResult1.getResultMetadata();
        int j = 270;
        if ((localMap != null) && (localMap.containsKey(ResultMetadataType.ORIENTATION)))
          j = (j + ((Integer)localMap.get(ResultMetadataType.ORIENTATION)).intValue()) % 360;
        localResult1.putMetadata(ResultMetadataType.ORIENTATION, Integer.valueOf(j));
        ResultPoint[] arrayOfResultPoint = localResult1.getResultPoints();
        if (arrayOfResultPoint == null)
          break;
        int k = localBinaryBitmap.getHeight();
        for (int m = 0; m < arrayOfResultPoint.length; m++)
          arrayOfResultPoint[m] = new ResultPoint(k - arrayOfResultPoint[m].getY() - 1.0F, arrayOfResultPoint[m].getX());
      }
      label206: throw localNotFoundException;
    }
  }

  public abstract Result decodeRow(int paramInt, BitArray paramBitArray, Map<DecodeHintType, ?> paramMap)
    throws NotFoundException, ChecksumException, FormatException;

  public void reset()
  {
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.OneDReader
 * JD-Core Version:    0.6.2
 */