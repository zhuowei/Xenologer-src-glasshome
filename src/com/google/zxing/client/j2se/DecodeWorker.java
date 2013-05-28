package com.google.zxing.client.j2se;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.client.result.ParsedResult;
import com.google.zxing.client.result.ResultParser;
import com.google.zxing.common.BitArray;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.HybridBinarizer;
import com.google.zxing.multi.GenericMultipleBarcodeReader;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.Writer;
import java.net.URI;
import java.nio.charset.Charset;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.Callable;
import javax.imageio.ImageIO;

final class DecodeWorker
  implements Callable<Integer>
{
  private final Config config;
  private final Queue<String> inputs;

  DecodeWorker(Config paramConfig, Queue<String> paramQueue)
  {
    this.config = paramConfig;
    this.inputs = paramQueue;
  }

  private Result decode(URI paramURI, Map<DecodeHintType, ?> paramMap)
    throws IOException
  {
    BufferedImage localBufferedImage;
    Result localResult;
    try
    {
      localBufferedImage = ImageIO.read(paramURI.toURL());
      if (localBufferedImage == null)
      {
        System.err.println(paramURI.toString() + ": Could not load image");
        localResult = null;
        return localResult;
      }
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      throw new FileNotFoundException("Resource not found: " + paramURI);
    }
    while (true)
    {
      try
      {
        if (this.config.getCrop() == null)
        {
          localBufferedImageLuminanceSource = new BufferedImageLuminanceSource(localBufferedImage);
          BinaryBitmap localBinaryBitmap = new BinaryBitmap(new HybridBinarizer(localBufferedImageLuminanceSource));
          if (this.config.isDumpBlackPoint())
            dumpBlackPoint(paramURI, localBufferedImage, localBinaryBitmap);
          localResult = new MultiFormatReader().decode(localBinaryBitmap, paramMap);
          if (!this.config.isBrief())
            break;
          System.out.println(paramURI.toString() + ": Success");
          return localResult;
        }
      }
      catch (NotFoundException localNotFoundException)
      {
        System.out.println(paramURI.toString() + ": No barcode found");
        return null;
      }
      int[] arrayOfInt = this.config.getCrop();
      BufferedImageLuminanceSource localBufferedImageLuminanceSource = new BufferedImageLuminanceSource(localBufferedImage, arrayOfInt[0], arrayOfInt[1], arrayOfInt[2], arrayOfInt[3]);
    }
    ParsedResult localParsedResult = ResultParser.parseResult(localResult);
    System.out.println(paramURI.toString() + " (format: " + localResult.getBarcodeFormat() + ", type: " + localParsedResult.getType() + "):\nRaw result:\n" + localResult.getText() + "\nParsed result:\n" + localParsedResult.getDisplayResult());
    System.out.println("Found " + localResult.getResultPoints().length + " result points.");
    for (int i = 0; i < localResult.getResultPoints().length; i++)
    {
      ResultPoint localResultPoint = localResult.getResultPoints()[i];
      System.out.println("  Point " + i + ": (" + localResultPoint.getX() + ',' + localResultPoint.getY() + ')');
    }
  }

  private Result[] decodeMulti(URI paramURI, Map<DecodeHintType, ?> paramMap)
    throws IOException
  {
    BufferedImage localBufferedImage;
    Result[] arrayOfResult1;
    try
    {
      localBufferedImage = ImageIO.read(paramURI.toURL());
      if (localBufferedImage == null)
      {
        System.err.println(paramURI.toString() + ": Could not load image");
        arrayOfResult1 = null;
        return arrayOfResult1;
      }
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      throw new FileNotFoundException("Resource not found: " + paramURI);
    }
    while (true)
    {
      try
      {
        if (this.config.getCrop() == null)
        {
          localBufferedImageLuminanceSource = new BufferedImageLuminanceSource(localBufferedImage);
          BinaryBitmap localBinaryBitmap = new BinaryBitmap(new HybridBinarizer(localBufferedImageLuminanceSource));
          if (this.config.isDumpBlackPoint())
            dumpBlackPoint(paramURI, localBufferedImage, localBinaryBitmap);
          MultiFormatReader localMultiFormatReader = new MultiFormatReader();
          GenericMultipleBarcodeReader localGenericMultipleBarcodeReader = new GenericMultipleBarcodeReader(localMultiFormatReader);
          arrayOfResult1 = localGenericMultipleBarcodeReader.decodeMultiple(localBinaryBitmap, paramMap);
          if (!this.config.isBrief())
            break;
          System.out.println(paramURI.toString() + ": Success");
          return arrayOfResult1;
        }
      }
      catch (NotFoundException localNotFoundException)
      {
        System.out.println(paramURI.toString() + ": No barcode found");
        return null;
      }
      int[] arrayOfInt = this.config.getCrop();
      BufferedImageLuminanceSource localBufferedImageLuminanceSource = new BufferedImageLuminanceSource(localBufferedImage, arrayOfInt[0], arrayOfInt[1], arrayOfInt[2], arrayOfInt[3]);
    }
    for (Result localResult : arrayOfResult1)
    {
      ParsedResult localParsedResult = ResultParser.parseResult(localResult);
      System.out.println(paramURI.toString() + " (format: " + localResult.getBarcodeFormat() + ", type: " + localParsedResult.getType() + "):\nRaw result:\n" + localResult.getText() + "\nParsed result:\n" + localParsedResult.getDisplayResult());
      System.out.println("Found " + localResult.getResultPoints().length + " result points.");
      for (int k = 0; k < localResult.getResultPoints().length; k++)
      {
        ResultPoint localResultPoint = localResult.getResultPoints()[k];
        System.out.println("  Point " + k + ": (" + localResultPoint.getX() + ',' + localResultPoint.getY() + ')');
      }
    }
  }

  private static void dumpBlackPoint(URI paramURI, BufferedImage paramBufferedImage, BinaryBitmap paramBinaryBitmap)
  {
    String str = paramURI.getPath();
    if (str.contains(".mono.png"))
      return;
    int i = paramBinaryBitmap.getWidth();
    int j = paramBinaryBitmap.getHeight();
    int k = i * 3;
    int[] arrayOfInt1 = new int[k * j];
    int[] arrayOfInt2 = new int[i];
    for (int m = 0; m < j; m++)
    {
      paramBufferedImage.getRGB(0, m, i, 1, arrayOfInt2, 0, i);
      System.arraycopy(arrayOfInt2, 0, arrayOfInt1, m * k, i);
    }
    Object localObject = new BitArray(i);
    int n = 0;
    while (n < j)
      try
      {
        BitArray localBitArray = paramBinaryBitmap.getBlackRow(n, (BitArray)localObject);
        localObject = localBitArray;
        i6 = i + n * k;
        for (i7 = 0; ; i7++)
        {
          if (i7 >= i)
            break label226;
          if (!((BitArray)localObject).get(i7))
            break;
          arrayOfInt1[(i6 + i7)] = -16777216;
        }
      }
      catch (NotFoundException localNotFoundException2)
      {
        while (true)
        {
          int i6;
          int i7;
          int i4 = i + n * k;
          for (int i5 = 0; i5 < i; i5++)
            arrayOfInt1[(i4 + i5)] = -65536;
          arrayOfInt1[(i6 + i7)] = -1;
        }
        label226: n++;
      }
    int i1 = 0;
    if (i1 < j);
    while (true)
    {
      int i3;
      try
      {
        BitMatrix localBitMatrix = paramBinaryBitmap.getBlackMatrix();
        int i2 = i1 * k + i * 2;
        i3 = 0;
        if (i3 >= i)
          break label323;
        if (localBitMatrix.get(i3, i1))
          arrayOfInt1[(i2 + i3)] = -16777216;
        else
          arrayOfInt1[(i2 + i3)] = -1;
      }
      catch (NotFoundException localNotFoundException1)
      {
      }
      writeResultImage(k, j, arrayOfInt1, paramURI, str, ".mono.png");
      return;
      label323: i1++;
      break;
      i3++;
    }
  }

  private static void dumpResult(File paramFile, Result paramResult)
    throws IOException
  {
    String str = paramFile.getCanonicalPath();
    int i = str.lastIndexOf('.');
    if (i > 0)
      str = str.substring(0, i);
    File localFile = new File(str + ".txt");
    writeStringToFile(paramResult.getText(), localFile);
  }

  private static void dumpResultMulti(File paramFile, Result[] paramArrayOfResult)
    throws IOException
  {
    String str = paramFile.getCanonicalPath();
    int i = str.lastIndexOf('.');
    if (i > 0)
      str = str.substring(0, i);
    writeResultsToFile(paramArrayOfResult, new File(str + ".txt"));
  }

  // ERROR //
  private static void writeResultImage(int paramInt1, int paramInt2, int[] paramArrayOfInt, URI paramURI, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: new 217	java/awt/image/BufferedImage
    //   3: dup
    //   4: iload_0
    //   5: iload_1
    //   6: iconst_2
    //   7: invokespecial 284	java/awt/image/BufferedImage:<init>	(III)V
    //   10: astore 6
    //   12: aload 6
    //   14: iconst_0
    //   15: iconst_0
    //   16: iload_0
    //   17: iload_1
    //   18: aload_2
    //   19: iconst_0
    //   20: iload_0
    //   21: invokevirtual 288	java/awt/image/BufferedImage:setRGB	(IIII[III)V
    //   24: aload 4
    //   26: astore 7
    //   28: ldc_w 290
    //   31: aload_3
    //   32: invokevirtual 293	java/net/URI:getScheme	()Ljava/lang/String;
    //   35: invokevirtual 297	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   38: ifeq +44 -> 82
    //   41: aload 7
    //   43: bipush 47
    //   45: invokevirtual 264	java/lang/String:lastIndexOf	(I)I
    //   48: istore 21
    //   50: iload 21
    //   52: ifle +30 -> 82
    //   55: new 49	java/lang/StringBuilder
    //   58: dup
    //   59: invokespecial 50	java/lang/StringBuilder:<init>	()V
    //   62: bipush 46
    //   64: invokevirtual 183	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   67: aload 7
    //   69: iload 21
    //   71: invokevirtual 300	java/lang/String:substring	(I)Ljava/lang/String;
    //   74: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   77: invokevirtual 61	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   80: astore 7
    //   82: aload 7
    //   84: bipush 46
    //   86: invokevirtual 264	java/lang/String:lastIndexOf	(I)I
    //   89: istore 8
    //   91: iload 8
    //   93: ifle +13 -> 106
    //   96: aload 7
    //   98: iconst_0
    //   99: iload 8
    //   101: invokevirtual 268	java/lang/String:substring	(II)Ljava/lang/String;
    //   104: astore 7
    //   106: new 49	java/lang/StringBuilder
    //   109: dup
    //   110: invokespecial 50	java/lang/StringBuilder:<init>	()V
    //   113: aload 7
    //   115: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   118: aload 5
    //   120: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   123: invokevirtual 61	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   126: astore 9
    //   128: aconst_null
    //   129: astore 10
    //   131: new 302	java/io/FileOutputStream
    //   134: dup
    //   135: aload 9
    //   137: invokespecial 303	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   140: astore 11
    //   142: aload 6
    //   144: ldc_w 305
    //   147: aload 11
    //   149: invokestatic 309	javax/imageio/ImageIO:write	(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/OutputStream;)Z
    //   152: ifne +30 -> 182
    //   155: getstatic 47	java/lang/System:err	Ljava/io/PrintStream;
    //   158: new 49	java/lang/StringBuilder
    //   161: dup
    //   162: invokespecial 50	java/lang/StringBuilder:<init>	()V
    //   165: ldc_w 311
    //   168: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   171: aload 9
    //   173: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   176: invokevirtual 61	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   179: invokevirtual 67	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   182: aload 11
    //   184: ifnull +8 -> 192
    //   187: aload 11
    //   189: invokevirtual 316	java/io/OutputStream:close	()V
    //   192: return
    //   193: astore 18
    //   195: return
    //   196: astore 20
    //   198: getstatic 47	java/lang/System:err	Ljava/io/PrintStream;
    //   201: new 49	java/lang/StringBuilder
    //   204: dup
    //   205: invokespecial 50	java/lang/StringBuilder:<init>	()V
    //   208: ldc_w 318
    //   211: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   214: aload 9
    //   216: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   219: invokevirtual 61	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   222: invokevirtual 67	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   225: aload 10
    //   227: ifnull -35 -> 192
    //   230: aload 10
    //   232: invokevirtual 316	java/io/OutputStream:close	()V
    //   235: return
    //   236: astore 15
    //   238: return
    //   239: astore 19
    //   241: getstatic 47	java/lang/System:err	Ljava/io/PrintStream;
    //   244: new 49	java/lang/StringBuilder
    //   247: dup
    //   248: invokespecial 50	java/lang/StringBuilder:<init>	()V
    //   251: ldc_w 320
    //   254: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   257: aload 9
    //   259: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   262: invokevirtual 61	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   265: invokevirtual 67	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   268: aload 10
    //   270: ifnull -78 -> 192
    //   273: aload 10
    //   275: invokevirtual 316	java/io/OutputStream:close	()V
    //   278: return
    //   279: astore 17
    //   281: return
    //   282: astore 13
    //   284: aload 10
    //   286: ifnull +8 -> 294
    //   289: aload 10
    //   291: invokevirtual 316	java/io/OutputStream:close	()V
    //   294: aload 13
    //   296: athrow
    //   297: astore 14
    //   299: goto -5 -> 294
    //   302: astore 13
    //   304: aload 11
    //   306: astore 10
    //   308: goto -24 -> 284
    //   311: astore 16
    //   313: aload 11
    //   315: astore 10
    //   317: goto -76 -> 241
    //   320: astore 12
    //   322: aload 11
    //   324: astore 10
    //   326: goto -128 -> 198
    //
    // Exception table:
    //   from	to	target	type
    //   187	192	193	java/io/IOException
    //   131	142	196	java/io/FileNotFoundException
    //   230	235	236	java/io/IOException
    //   131	142	239	java/io/IOException
    //   273	278	279	java/io/IOException
    //   131	142	282	finally
    //   198	225	282	finally
    //   241	268	282	finally
    //   289	294	297	java/io/IOException
    //   142	182	302	finally
    //   142	182	311	java/io/IOException
    //   142	182	320	java/io/FileNotFoundException
  }

  private static void writeResultsToFile(Result[] paramArrayOfResult, File paramFile)
    throws IOException
  {
    String str = System.getProperty("line.separator");
    OutputStreamWriter localOutputStreamWriter = new OutputStreamWriter(new FileOutputStream(paramFile), Charset.forName("UTF8"));
    try
    {
      int i = paramArrayOfResult.length;
      for (int j = 0; j < i; j++)
      {
        localOutputStreamWriter.write(paramArrayOfResult[j].getText());
        localOutputStreamWriter.write(str);
      }
      return;
    }
    finally
    {
      localOutputStreamWriter.close();
    }
  }

  private static void writeStringToFile(String paramString, File paramFile)
    throws IOException
  {
    OutputStreamWriter localOutputStreamWriter = new OutputStreamWriter(new FileOutputStream(paramFile), Charset.forName("UTF8"));
    try
    {
      localOutputStreamWriter.write(paramString);
      return;
    }
    finally
    {
      localOutputStreamWriter.close();
    }
  }

  public Integer call()
    throws IOException
  {
    int i = 0;
    while (true)
    {
      String str = (String)this.inputs.poll();
      if (str == null)
        break;
      File localFile = new File(str);
      if (localFile.exists())
      {
        if (this.config.isMulti())
        {
          Result[] arrayOfResult = decodeMulti(localFile.toURI(), this.config.getHints());
          if (arrayOfResult != null)
          {
            i++;
            if (this.config.isDumpResults())
              dumpResultMulti(localFile, arrayOfResult);
          }
        }
        else
        {
          Result localResult = decode(localFile.toURI(), this.config.getHints());
          if (localResult != null)
          {
            i++;
            if (this.config.isDumpResults())
              dumpResult(localFile, localResult);
          }
        }
      }
      else if (decode(URI.create(str), this.config.getHints()) != null)
        i++;
    }
    return Integer.valueOf(i);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.client.j2se.DecodeWorker
 * JD-Core Version:    0.6.2
 */