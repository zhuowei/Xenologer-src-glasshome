package com.google.zxing.client.j2se;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import java.io.File;
import java.io.IOException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.regex.Pattern;

public final class CommandLineRunner
{
  private static final Pattern COMMA = Pattern.compile(",");
  private static final String POSSIBLE_FORMATS_ARG = "--possibleFormats=";

  private static void addArgumentToInputs(String paramString, Config paramConfig, Queue<String> paramQueue)
    throws IOException
  {
    File localFile1 = new File(paramString);
    if (localFile1.exists())
    {
      if (localFile1.isDirectory())
      {
        File[] arrayOfFile = localFile1.listFiles();
        int i = arrayOfFile.length;
        int j = 0;
        if (j < i)
        {
          File localFile2 = arrayOfFile[j];
          String str = localFile2.getName().toLowerCase(Locale.ENGLISH);
          if (str.startsWith("."));
          while (true)
          {
            j++;
            break;
            if (localFile2.isDirectory())
            {
              if (paramConfig.isRecursive())
                addArgumentToInputs(localFile2.getAbsolutePath(), paramConfig, paramQueue);
            }
            else if ((!str.endsWith(".txt")) && (!str.contains(".mono.png")))
              paramQueue.add(localFile2.getCanonicalPath());
          }
        }
      }
      else
      {
        paramQueue.add(localFile1.getCanonicalPath());
      }
      return;
    }
    paramQueue.add(paramString);
  }

  private static Map<DecodeHintType, ?> buildHints(Config paramConfig)
  {
    ArrayList localArrayList = new ArrayList();
    String[] arrayOfString = paramConfig.getPossibleFormats();
    int i;
    int j;
    if ((arrayOfString != null) && (arrayOfString.length > 0))
    {
      i = arrayOfString.length;
      j = 0;
    }
    while (j < i)
    {
      localArrayList.add(BarcodeFormat.valueOf(arrayOfString[j]));
      j++;
      continue;
      localArrayList.add(BarcodeFormat.UPC_A);
      localArrayList.add(BarcodeFormat.UPC_E);
      localArrayList.add(BarcodeFormat.EAN_13);
      localArrayList.add(BarcodeFormat.EAN_8);
      localArrayList.add(BarcodeFormat.RSS_14);
      localArrayList.add(BarcodeFormat.RSS_EXPANDED);
      if (!paramConfig.isProductsOnly())
      {
        localArrayList.add(BarcodeFormat.CODE_39);
        localArrayList.add(BarcodeFormat.CODE_93);
        localArrayList.add(BarcodeFormat.CODE_128);
        localArrayList.add(BarcodeFormat.ITF);
        localArrayList.add(BarcodeFormat.QR_CODE);
        localArrayList.add(BarcodeFormat.DATA_MATRIX);
        localArrayList.add(BarcodeFormat.AZTEC);
        localArrayList.add(BarcodeFormat.PDF_417);
        localArrayList.add(BarcodeFormat.CODABAR);
        localArrayList.add(BarcodeFormat.MAXICODE);
      }
    }
    EnumMap localEnumMap = new EnumMap(DecodeHintType.class);
    localEnumMap.put(DecodeHintType.POSSIBLE_FORMATS, localArrayList);
    if (paramConfig.isTryHarder())
      localEnumMap.put(DecodeHintType.TRY_HARDER, Boolean.TRUE);
    if (paramConfig.isPureBarcode())
      localEnumMap.put(DecodeHintType.PURE_BARCODE, Boolean.TRUE);
    return localEnumMap;
  }

  public static void main(String[] paramArrayOfString)
    throws Exception
  {
    if (paramArrayOfString.length == 0)
      printUsage();
    label282: int i1;
    int i2;
    do
    {
      return;
      Config localConfig = new Config();
      int i = paramArrayOfString.length;
      int j = 0;
      if (j < i)
      {
        String str2 = paramArrayOfString[j];
        if ("--try_harder".equals(str2))
          localConfig.setTryHarder(true);
        do
          while (true)
          {
            j++;
            break;
            if ("--pure_barcode".equals(str2))
            {
              localConfig.setPureBarcode(true);
            }
            else if ("--products_only".equals(str2))
            {
              localConfig.setProductsOnly(true);
            }
            else if ("--dump_results".equals(str2))
            {
              localConfig.setDumpResults(true);
            }
            else if ("--dump_black_point".equals(str2))
            {
              localConfig.setDumpBlackPoint(true);
            }
            else if ("--multi".equals(str2))
            {
              localConfig.setMulti(true);
            }
            else if ("--brief".equals(str2))
            {
              localConfig.setBrief(true);
            }
            else if ("--recursive".equals(str2))
            {
              localConfig.setRecursive(true);
            }
            else if (str2.startsWith("--crop"))
            {
              int[] arrayOfInt = new int[4];
              String[] arrayOfString = COMMA.split(str2.substring(7));
              for (int i4 = 0; i4 < arrayOfInt.length; i4++)
                arrayOfInt[i4] = Integer.parseInt(arrayOfString[i4]);
              localConfig.setCrop(arrayOfInt);
            }
            else
            {
              if (!str2.startsWith("--possibleFormats="))
                break label282;
              localConfig.setPossibleFormats(COMMA.split(str2.substring("--possibleFormats=".length())));
            }
          }
        while (!str2.startsWith("-"));
        System.err.println("Unknown command line option " + str2);
        printUsage();
        return;
      }
      localConfig.setHints(buildHints(localConfig));
      ConcurrentLinkedQueue localConcurrentLinkedQueue = new ConcurrentLinkedQueue();
      int k = paramArrayOfString.length;
      for (int m = 0; m < k; m++)
      {
        String str1 = paramArrayOfString[m];
        if (!str1.startsWith("--"))
          addArgumentToInputs(str1, localConfig, localConcurrentLinkedQueue);
      }
      int n = Math.min(localConcurrentLinkedQueue.size(), Runtime.getRuntime().availableProcessors());
      i1 = 0;
      if (n > 1)
      {
        ExecutorService localExecutorService = Executors.newFixedThreadPool(n);
        ArrayList localArrayList = new ArrayList(n);
        for (int i3 = 0; i3 < n; i3++)
        {
          DecodeWorker localDecodeWorker2 = new DecodeWorker(localConfig, localConcurrentLinkedQueue);
          localArrayList.add(localExecutorService.submit(localDecodeWorker2));
        }
        localExecutorService.shutdown();
        Iterator localIterator = localArrayList.iterator();
        while (localIterator.hasNext())
          i1 += ((Integer)((Future)localIterator.next()).get()).intValue();
      }
      DecodeWorker localDecodeWorker1 = new DecodeWorker(localConfig, localConcurrentLinkedQueue);
      i1 = 0 + localDecodeWorker1.call().intValue();
      i2 = localConcurrentLinkedQueue.size();
    }
    while (i2 <= 1);
    System.out.println("\nDecoded " + i1 + " files out of " + i2 + " successfully (" + i1 * 100 / i2 + "%)\n");
  }

  private static void printUsage()
  {
    System.err.println("Decode barcode images using the ZXing library");
    System.err.println();
    System.err.println("usage: CommandLineRunner { file | dir | url } [ options ]");
    System.err.println("  --try_harder: Use the TRY_HARDER hint, default is normal (mobile) mode");
    System.err.println("  --pure_barcode: Input image is a pure monochrome barcode image, not a photo");
    System.err.println("  --products_only: Only decode the UPC and EAN families of barcodes");
    System.err.println("  --dump_results: Write the decoded contents to input.txt");
    System.err.println("  --dump_black_point: Compare black point algorithms as input.mono.png");
    System.err.println("  --multi: Scans image for multiple barcodes");
    System.err.println("  --brief: Only output one line per file, omitting the contents");
    System.err.println("  --recursive: Descend into subdirectories");
    System.err.println("  --crop=left,top,width,height: Only examine cropped region of input image(s)");
    StringBuilder localStringBuilder = new StringBuilder("  --possibleFormats=barcodeFormat[,barcodeFormat2...] where barcodeFormat is any of: ");
    BarcodeFormat[] arrayOfBarcodeFormat = BarcodeFormat.values();
    int i = arrayOfBarcodeFormat.length;
    for (int j = 0; j < i; j++)
      localStringBuilder.append(arrayOfBarcodeFormat[j]).append(',');
    localStringBuilder.setLength(-1 + localStringBuilder.length());
    System.err.println(localStringBuilder);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.client.j2se.CommandLineRunner
 * JD-Core Version:    0.6.2
 */