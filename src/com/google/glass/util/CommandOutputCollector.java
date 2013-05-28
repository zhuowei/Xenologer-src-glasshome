package com.google.glass.util;

import java.io.BufferedReader;
import java.io.IOException;

public class CommandOutputCollector
{
  private static final String[] SYSTEM_LOG_COMMAND = { "logcat", "-d", "-v", "threadtime" };
  private static final String TAG = CommandOutputCollector.class.getSimpleName();

  // ERROR //
  public static String[] collectOutput(String[] paramArrayOfString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aconst_null
    //   3: astore_2
    //   4: invokestatic 43	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   7: aload_0
    //   8: invokevirtual 47	java/lang/Runtime:exec	([Ljava/lang/String;)Ljava/lang/Process;
    //   11: astore 14
    //   13: new 49	java/io/BufferedReader
    //   16: dup
    //   17: new 51	java/io/InputStreamReader
    //   20: dup
    //   21: aload 14
    //   23: invokevirtual 57	java/lang/Process:getInputStream	()Ljava/io/InputStream;
    //   26: invokespecial 60	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   29: invokespecial 63	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   32: astore 15
    //   34: new 49	java/io/BufferedReader
    //   37: dup
    //   38: new 51	java/io/InputStreamReader
    //   41: dup
    //   42: aload 14
    //   44: invokevirtual 66	java/lang/Process:getErrorStream	()Ljava/io/InputStream;
    //   47: invokespecial 60	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   50: invokespecial 63	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   53: astore 16
    //   55: iconst_2
    //   56: anewarray 20	java/lang/String
    //   59: astore 17
    //   61: aload 17
    //   63: iconst_0
    //   64: aload 15
    //   66: invokestatic 70	com/google/glass/util/CommandOutputCollector:readStream	(Ljava/io/BufferedReader;)Ljava/lang/StringBuilder;
    //   69: invokevirtual 75	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   72: aastore
    //   73: aload 17
    //   75: iconst_1
    //   76: aload 16
    //   78: invokestatic 70	com/google/glass/util/CommandOutputCollector:readStream	(Ljava/io/BufferedReader;)Ljava/lang/StringBuilder;
    //   81: invokevirtual 75	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   84: aastore
    //   85: aload 15
    //   87: ifnull +8 -> 95
    //   90: aload 15
    //   92: invokevirtual 78	java/io/BufferedReader:close	()V
    //   95: aload 16
    //   97: ifnull +8 -> 105
    //   100: aload 16
    //   102: invokevirtual 78	java/io/BufferedReader:close	()V
    //   105: aload 17
    //   107: areturn
    //   108: astore 20
    //   110: getstatic 18	com/google/glass/util/CommandOutputCollector:TAG	Ljava/lang/String;
    //   113: aload 20
    //   115: invokevirtual 81	java/io/IOException:getMessage	()Ljava/lang/String;
    //   118: aload 20
    //   120: invokestatic 87	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   123: pop
    //   124: goto -29 -> 95
    //   127: astore 18
    //   129: getstatic 18	com/google/glass/util/CommandOutputCollector:TAG	Ljava/lang/String;
    //   132: aload 18
    //   134: invokevirtual 81	java/io/IOException:getMessage	()Ljava/lang/String;
    //   137: aload 18
    //   139: invokestatic 87	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   142: pop
    //   143: goto -38 -> 105
    //   146: astore 8
    //   148: getstatic 18	com/google/glass/util/CommandOutputCollector:TAG	Ljava/lang/String;
    //   151: aload 8
    //   153: invokevirtual 81	java/io/IOException:getMessage	()Ljava/lang/String;
    //   156: invokestatic 90	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   159: pop
    //   160: aload_1
    //   161: ifnull +7 -> 168
    //   164: aload_1
    //   165: invokevirtual 78	java/io/BufferedReader:close	()V
    //   168: aload_2
    //   169: ifnull +7 -> 176
    //   172: aload_2
    //   173: invokevirtual 78	java/io/BufferedReader:close	()V
    //   176: aconst_null
    //   177: areturn
    //   178: astore 12
    //   180: getstatic 18	com/google/glass/util/CommandOutputCollector:TAG	Ljava/lang/String;
    //   183: aload 12
    //   185: invokevirtual 81	java/io/IOException:getMessage	()Ljava/lang/String;
    //   188: aload 12
    //   190: invokestatic 87	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   193: pop
    //   194: goto -26 -> 168
    //   197: astore 10
    //   199: getstatic 18	com/google/glass/util/CommandOutputCollector:TAG	Ljava/lang/String;
    //   202: aload 10
    //   204: invokevirtual 81	java/io/IOException:getMessage	()Ljava/lang/String;
    //   207: aload 10
    //   209: invokestatic 87	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   212: pop
    //   213: goto -37 -> 176
    //   216: astore_3
    //   217: aload_1
    //   218: ifnull +7 -> 225
    //   221: aload_1
    //   222: invokevirtual 78	java/io/BufferedReader:close	()V
    //   225: aload_2
    //   226: ifnull +7 -> 233
    //   229: aload_2
    //   230: invokevirtual 78	java/io/BufferedReader:close	()V
    //   233: aload_3
    //   234: athrow
    //   235: astore 6
    //   237: getstatic 18	com/google/glass/util/CommandOutputCollector:TAG	Ljava/lang/String;
    //   240: aload 6
    //   242: invokevirtual 81	java/io/IOException:getMessage	()Ljava/lang/String;
    //   245: aload 6
    //   247: invokestatic 87	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   250: pop
    //   251: goto -26 -> 225
    //   254: astore 4
    //   256: getstatic 18	com/google/glass/util/CommandOutputCollector:TAG	Ljava/lang/String;
    //   259: aload 4
    //   261: invokevirtual 81	java/io/IOException:getMessage	()Ljava/lang/String;
    //   264: aload 4
    //   266: invokestatic 87	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   269: pop
    //   270: goto -37 -> 233
    //   273: astore_3
    //   274: aload 15
    //   276: astore_1
    //   277: aconst_null
    //   278: astore_2
    //   279: goto -62 -> 217
    //   282: astore_3
    //   283: aload 16
    //   285: astore_2
    //   286: aload 15
    //   288: astore_1
    //   289: goto -72 -> 217
    //   292: astore 8
    //   294: aload 15
    //   296: astore_1
    //   297: aconst_null
    //   298: astore_2
    //   299: goto -151 -> 148
    //   302: astore 8
    //   304: aload 16
    //   306: astore_2
    //   307: aload 15
    //   309: astore_1
    //   310: goto -162 -> 148
    //
    // Exception table:
    //   from	to	target	type
    //   90	95	108	java/io/IOException
    //   100	105	127	java/io/IOException
    //   4	34	146	java/io/IOException
    //   164	168	178	java/io/IOException
    //   172	176	197	java/io/IOException
    //   4	34	216	finally
    //   148	160	216	finally
    //   221	225	235	java/io/IOException
    //   229	233	254	java/io/IOException
    //   34	55	273	finally
    //   55	85	282	finally
    //   34	55	292	java/io/IOException
    //   55	85	302	java/io/IOException
  }

  public static String getLogcat()
  {
    String[] arrayOfString = collectOutput(SYSTEM_LOG_COMMAND);
    if ((arrayOfString != null) && (arrayOfString.length > 0))
      return arrayOfString[0];
    return "";
  }

  private static StringBuilder readStream(BufferedReader paramBufferedReader)
    throws IOException
  {
    StringBuilder localStringBuilder = new StringBuilder();
    while (true)
    {
      String str = paramBufferedReader.readLine();
      if (str == null)
        break;
      localStringBuilder.append(str);
      localStringBuilder.append(System.getProperty("line.separator"));
    }
    return localStringBuilder;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.util.CommandOutputCollector
 * JD-Core Version:    0.6.2
 */