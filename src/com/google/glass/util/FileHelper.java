package com.google.glass.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class FileHelper
{
  private static final String TAG = FileHelper.class.getSimpleName();
  private static final ThreadLocal<SimpleDateFormat> TIMESTAMP_FORMAT = new ThreadLocal()
  {
    protected SimpleDateFormat initialValue()
    {
      return new SimpleDateFormat("yyyyMMdd_HHmmss_SSS");
    }
  };

  // ERROR //
  public static void copyResourcesToFiles(android.content.Context paramContext, String paramString, java.util.Map<java.lang.Integer, String> paramMap)
  {
    // Byte code:
    //   0: new 33	java/io/File
    //   3: dup
    //   4: aload_1
    //   5: invokespecial 36	java/io/File:<init>	(Ljava/lang/String;)V
    //   8: astore_3
    //   9: aload_3
    //   10: invokevirtual 40	java/io/File:exists	()Z
    //   13: ifne +36 -> 49
    //   16: aload_3
    //   17: invokevirtual 43	java/io/File:mkdir	()Z
    //   20: ifne +29 -> 49
    //   23: getstatic 19	com/google/glass/util/FileHelper:TAG	Ljava/lang/String;
    //   26: new 45	java/lang/StringBuilder
    //   29: dup
    //   30: invokespecial 46	java/lang/StringBuilder:<init>	()V
    //   33: ldc 48
    //   35: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: aload_1
    //   39: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: invokevirtual 55	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   45: invokestatic 61	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   48: pop
    //   49: sipush 1024
    //   52: newarray byte
    //   54: astore 4
    //   56: aload_2
    //   57: invokeinterface 67 1 0
    //   62: invokeinterface 73 1 0
    //   67: astore 5
    //   69: aload 5
    //   71: invokeinterface 78 1 0
    //   76: ifeq +223 -> 299
    //   79: aload 5
    //   81: invokeinterface 82 1 0
    //   86: checkcast 84	java/util/Map$Entry
    //   89: astore 6
    //   91: new 45	java/lang/StringBuilder
    //   94: dup
    //   95: invokespecial 46	java/lang/StringBuilder:<init>	()V
    //   98: aload_1
    //   99: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   102: aload 6
    //   104: invokeinterface 87 1 0
    //   109: checkcast 89	java/lang/String
    //   112: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   115: invokevirtual 55	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   118: astore 7
    //   120: aload 6
    //   122: invokeinterface 92 1 0
    //   127: checkcast 94	java/lang/Integer
    //   130: invokevirtual 98	java/lang/Integer:intValue	()I
    //   133: istore 8
    //   135: aconst_null
    //   136: astore 9
    //   138: aconst_null
    //   139: astore 10
    //   141: new 100	java/io/BufferedInputStream
    //   144: dup
    //   145: aload_0
    //   146: invokevirtual 106	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   149: iload 8
    //   151: invokevirtual 112	android/content/res/Resources:openRawResource	(I)Ljava/io/InputStream;
    //   154: invokespecial 115	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   157: astore 11
    //   159: new 117	java/io/FileOutputStream
    //   162: dup
    //   163: aload 7
    //   165: invokespecial 118	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   168: astore 12
    //   170: aload 11
    //   172: aload 4
    //   174: invokevirtual 122	java/io/BufferedInputStream:read	([B)I
    //   177: istore 24
    //   179: iload 24
    //   181: iflt +9 -> 190
    //   184: iload 24
    //   186: iconst_m1
    //   187: if_icmpne +40 -> 227
    //   190: aload 11
    //   192: ifnull +8 -> 200
    //   195: aload 11
    //   197: invokevirtual 125	java/io/BufferedInputStream:close	()V
    //   200: aload 12
    //   202: ifnull -133 -> 69
    //   205: aload 12
    //   207: invokevirtual 126	java/io/FileOutputStream:close	()V
    //   210: goto -141 -> 69
    //   213: astore 25
    //   215: getstatic 19	com/google/glass/util/FileHelper:TAG	Ljava/lang/String;
    //   218: aload 25
    //   220: invokestatic 130	android/util/Log:w	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   223: pop
    //   224: goto -155 -> 69
    //   227: aload 12
    //   229: aload 4
    //   231: iconst_0
    //   232: iload 24
    //   234: invokevirtual 134	java/io/FileOutputStream:write	([BII)V
    //   237: goto -67 -> 170
    //   240: astore 18
    //   242: aload 12
    //   244: astore 10
    //   246: aload 11
    //   248: astore 9
    //   250: getstatic 19	com/google/glass/util/FileHelper:TAG	Ljava/lang/String;
    //   253: new 45	java/lang/StringBuilder
    //   256: dup
    //   257: invokespecial 46	java/lang/StringBuilder:<init>	()V
    //   260: ldc 136
    //   262: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   265: aload 7
    //   267: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   270: invokevirtual 55	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   273: aload 18
    //   275: invokestatic 139	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   278: pop
    //   279: aload 9
    //   281: ifnull +8 -> 289
    //   284: aload 9
    //   286: invokevirtual 125	java/io/BufferedInputStream:close	()V
    //   289: aload 10
    //   291: ifnull +8 -> 299
    //   294: aload 10
    //   296: invokevirtual 126	java/io/FileOutputStream:close	()V
    //   299: return
    //   300: astore 27
    //   302: getstatic 19	com/google/glass/util/FileHelper:TAG	Ljava/lang/String;
    //   305: aload 27
    //   307: invokestatic 130	android/util/Log:w	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   310: pop
    //   311: goto -111 -> 200
    //   314: astore 22
    //   316: getstatic 19	com/google/glass/util/FileHelper:TAG	Ljava/lang/String;
    //   319: aload 22
    //   321: invokestatic 130	android/util/Log:w	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   324: pop
    //   325: goto -36 -> 289
    //   328: astore 20
    //   330: getstatic 19	com/google/glass/util/FileHelper:TAG	Ljava/lang/String;
    //   333: aload 20
    //   335: invokestatic 130	android/util/Log:w	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   338: pop
    //   339: return
    //   340: astore 13
    //   342: aload 9
    //   344: ifnull +8 -> 352
    //   347: aload 9
    //   349: invokevirtual 125	java/io/BufferedInputStream:close	()V
    //   352: aload 10
    //   354: ifnull +8 -> 362
    //   357: aload 10
    //   359: invokevirtual 126	java/io/FileOutputStream:close	()V
    //   362: aload 13
    //   364: athrow
    //   365: astore 16
    //   367: getstatic 19	com/google/glass/util/FileHelper:TAG	Ljava/lang/String;
    //   370: aload 16
    //   372: invokestatic 130	android/util/Log:w	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   375: pop
    //   376: goto -24 -> 352
    //   379: astore 14
    //   381: getstatic 19	com/google/glass/util/FileHelper:TAG	Ljava/lang/String;
    //   384: aload 14
    //   386: invokestatic 130	android/util/Log:w	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   389: pop
    //   390: goto -28 -> 362
    //   393: astore 13
    //   395: aload 11
    //   397: astore 9
    //   399: aconst_null
    //   400: astore 10
    //   402: goto -60 -> 342
    //   405: astore 13
    //   407: aload 12
    //   409: astore 10
    //   411: aload 11
    //   413: astore 9
    //   415: goto -73 -> 342
    //   418: astore 18
    //   420: aconst_null
    //   421: astore 10
    //   423: aconst_null
    //   424: astore 9
    //   426: goto -176 -> 250
    //   429: astore 18
    //   431: aload 11
    //   433: astore 9
    //   435: aconst_null
    //   436: astore 10
    //   438: goto -188 -> 250
    //
    // Exception table:
    //   from	to	target	type
    //   205	210	213	java/io/IOException
    //   170	179	240	java/io/IOException
    //   227	237	240	java/io/IOException
    //   195	200	300	java/io/IOException
    //   284	289	314	java/io/IOException
    //   294	299	328	java/io/IOException
    //   141	159	340	finally
    //   250	279	340	finally
    //   347	352	365	java/io/IOException
    //   357	362	379	java/io/IOException
    //   159	170	393	finally
    //   170	179	405	finally
    //   227	237	405	finally
    //   141	159	418	java/io/IOException
    //   159	170	429	java/io/IOException
  }

  public static String formatTimestamp(long paramLong)
  {
    return formatTimestamp(new Date(paramLong));
  }

  public static String formatTimestamp(Date paramDate)
  {
    return ((SimpleDateFormat)TIMESTAMP_FORMAT.get()).format(paramDate);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.util.FileHelper
 * JD-Core Version:    0.6.2
 */