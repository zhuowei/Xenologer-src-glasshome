package com.google.glass.logging;

import android.text.TextUtils;
import android.util.Log;
import com.google.common.annotations.VisibleForTesting;
import com.google.googlex.glass.common.proto.proto2api.HardwareVersion;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Util
{

  @VisibleForTesting
  static final String CPU_INFO_FILE = "/proc/cpuinfo";
  private static final String CURRENT_FILE = "/sys/class/power_supply/twl6030_battery/current_now";
  private static final Pattern HARDWARE_VERSION_PATTERN = Pattern.compile("Revision\\s:\\s([0-9]+)");

  @VisibleForTesting
  static final LogDataLineParser<Long> SINGLE_LINE_LONG_PARSER;
  private static final String TAG = Util.class.getSimpleName();
  private static final String TEMPERATURE_FILE = "/sys/devices/platform/notle_pcb_sensor.0/temperature";
  public static final long UNKNOWN_LONG = -1L;
  private static final String VOLTAGE_FILE = "/sys/class/power_supply/twl6030_battery/voltage_now";

  static
  {
    SINGLE_LINE_LONG_PARSER = new LogDataLineParser()
    {
      public Long parse(String paramAnonymousString, Long paramAnonymousLong)
      {
        if (TextUtils.isEmpty(paramAnonymousString))
          return paramAnonymousLong;
        return Long.valueOf(Long.parseLong(paramAnonymousString));
      }
    };
  }

  public long getCpuCurrent()
  {
    return ((Long)readSystemFile("/sys/class/power_supply/twl6030_battery/current_now", SINGLE_LINE_LONG_PARSER, Long.valueOf(-1L))).longValue();
  }

  public long getCpuTemperature()
  {
    return ((Long)readSystemFile("/sys/devices/platform/notle_pcb_sensor.0/temperature", SINGLE_LINE_LONG_PARSER, Long.valueOf(-1L))).longValue();
  }

  public long getCpuVoltage()
  {
    long l = ((Long)readSystemFile("/sys/class/power_supply/twl6030_battery/voltage_now", SINGLE_LINE_LONG_PARSER, Long.valueOf(-1L))).longValue();
    for (int i = 0; (l < 0L) && (i < 10); i++)
      l = ((Long)readSystemFile("/sys/class/power_supply/twl6030_battery/voltage_now", SINGLE_LINE_LONG_PARSER, Long.valueOf(-1L))).longValue();
    return l;
  }

  public Integer getHardwareVersion()
  {
    return (Integer)readSystemFile("/proc/cpuinfo", new LogDataLineParser()
    {
      public Integer parse(String paramAnonymousString, Integer paramAnonymousInteger)
      {
        Matcher localMatcher = Util.HARDWARE_VERSION_PATTERN.matcher(paramAnonymousString);
        if (localMatcher.matches())
        {
          String str = localMatcher.group(1);
          try
          {
            Integer localInteger = Integer.valueOf(Integer.parseInt(str));
            return localInteger;
          }
          catch (NumberFormatException localNumberFormatException)
          {
            Log.e(Util.TAG, "Could not parse hardware version from: \"" + paramAnonymousString + "\"");
            return paramAnonymousInteger;
          }
        }
        return null;
      }
    }
    , Integer.valueOf(HardwareVersion.UNVERSIONED.getNumber()));
  }

  // ERROR //
  @VisibleForTesting
  <T> T readSystemFile(String paramString, LogDataLineParser<T> paramLogDataLineParser, T paramT)
  {
    // Byte code:
    //   0: new 104	java/io/File
    //   3: dup
    //   4: aload_1
    //   5: invokespecial 107	java/io/File:<init>	(Ljava/lang/String;)V
    //   8: astore 4
    //   10: aload 4
    //   12: invokevirtual 111	java/io/File:exists	()Z
    //   15: ifne +36 -> 51
    //   18: getstatic 38	com/google/glass/logging/Util:TAG	Ljava/lang/String;
    //   21: new 113	java/lang/StringBuilder
    //   24: dup
    //   25: invokespecial 114	java/lang/StringBuilder:<init>	()V
    //   28: ldc 116
    //   30: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   33: aload_1
    //   34: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: ldc 122
    //   39: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: invokevirtual 125	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   45: invokestatic 131	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   48: pop
    //   49: aload_3
    //   50: areturn
    //   51: aload 4
    //   53: invokevirtual 134	java/io/File:canRead	()Z
    //   56: ifne +31 -> 87
    //   59: getstatic 38	com/google/glass/logging/Util:TAG	Ljava/lang/String;
    //   62: new 113	java/lang/StringBuilder
    //   65: dup
    //   66: invokespecial 114	java/lang/StringBuilder:<init>	()V
    //   69: ldc 136
    //   71: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   74: aload_1
    //   75: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   78: invokevirtual 125	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   81: invokestatic 131	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   84: pop
    //   85: aload_3
    //   86: areturn
    //   87: aconst_null
    //   88: astore 5
    //   90: new 138	java/io/BufferedReader
    //   93: dup
    //   94: new 140	java/io/FileReader
    //   97: dup
    //   98: aload 4
    //   100: invokespecial 143	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   103: invokespecial 146	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   106: astore 6
    //   108: aload 6
    //   110: invokevirtual 149	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   113: astore 18
    //   115: aload 18
    //   117: ifnull +109 -> 226
    //   120: aload_2
    //   121: aload 18
    //   123: aload_3
    //   124: invokeinterface 155 3 0
    //   129: astore 19
    //   131: aload 19
    //   133: ifnull -25 -> 108
    //   136: aload 19
    //   138: aload_3
    //   139: invokevirtual 159	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   142: ifeq +38 -> 180
    //   145: getstatic 38	com/google/glass/logging/Util:TAG	Ljava/lang/String;
    //   148: new 113	java/lang/StringBuilder
    //   151: dup
    //   152: invokespecial 114	java/lang/StringBuilder:<init>	()V
    //   155: ldc 161
    //   157: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   160: aload_3
    //   161: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   164: ldc 166
    //   166: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   169: aload_1
    //   170: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   173: invokevirtual 125	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   176: invokestatic 131	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   179: pop
    //   180: aload 6
    //   182: ifnull +8 -> 190
    //   185: aload 6
    //   187: invokevirtual 169	java/io/BufferedReader:close	()V
    //   190: aload 19
    //   192: areturn
    //   193: astore 20
    //   195: getstatic 38	com/google/glass/logging/Util:TAG	Ljava/lang/String;
    //   198: new 113	java/lang/StringBuilder
    //   201: dup
    //   202: invokespecial 114	java/lang/StringBuilder:<init>	()V
    //   205: ldc 171
    //   207: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   210: aload_1
    //   211: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   214: invokevirtual 125	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   217: aload 20
    //   219: invokestatic 174	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   222: pop
    //   223: goto -33 -> 190
    //   226: aload 6
    //   228: ifnull +270 -> 498
    //   231: aload 6
    //   233: invokevirtual 169	java/io/BufferedReader:close	()V
    //   236: aload_3
    //   237: areturn
    //   238: astore 23
    //   240: getstatic 38	com/google/glass/logging/Util:TAG	Ljava/lang/String;
    //   243: new 113	java/lang/StringBuilder
    //   246: dup
    //   247: invokespecial 114	java/lang/StringBuilder:<init>	()V
    //   250: ldc 171
    //   252: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   255: aload_1
    //   256: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   259: invokevirtual 125	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   262: aload 23
    //   264: invokestatic 174	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   267: pop
    //   268: aload_3
    //   269: areturn
    //   270: astore 7
    //   272: getstatic 38	com/google/glass/logging/Util:TAG	Ljava/lang/String;
    //   275: new 113	java/lang/StringBuilder
    //   278: dup
    //   279: invokespecial 114	java/lang/StringBuilder:<init>	()V
    //   282: ldc 116
    //   284: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   287: aload_1
    //   288: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   291: ldc 122
    //   293: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   296: invokevirtual 125	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   299: aload 7
    //   301: invokestatic 174	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   304: pop
    //   305: aload 5
    //   307: ifnull -258 -> 49
    //   310: aload 5
    //   312: invokevirtual 169	java/io/BufferedReader:close	()V
    //   315: aload_3
    //   316: areturn
    //   317: astore 12
    //   319: getstatic 38	com/google/glass/logging/Util:TAG	Ljava/lang/String;
    //   322: new 113	java/lang/StringBuilder
    //   325: dup
    //   326: invokespecial 114	java/lang/StringBuilder:<init>	()V
    //   329: ldc 171
    //   331: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   334: aload_1
    //   335: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   338: invokevirtual 125	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   341: aload 12
    //   343: invokestatic 174	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   346: pop
    //   347: aload_3
    //   348: areturn
    //   349: astore 14
    //   351: getstatic 38	com/google/glass/logging/Util:TAG	Ljava/lang/String;
    //   354: new 113	java/lang/StringBuilder
    //   357: dup
    //   358: invokespecial 114	java/lang/StringBuilder:<init>	()V
    //   361: ldc 176
    //   363: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   366: aload_1
    //   367: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   370: invokevirtual 125	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   373: aload 14
    //   375: invokestatic 174	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   378: pop
    //   379: aload 5
    //   381: ifnull -332 -> 49
    //   384: aload 5
    //   386: invokevirtual 169	java/io/BufferedReader:close	()V
    //   389: aload_3
    //   390: areturn
    //   391: astore 16
    //   393: getstatic 38	com/google/glass/logging/Util:TAG	Ljava/lang/String;
    //   396: new 113	java/lang/StringBuilder
    //   399: dup
    //   400: invokespecial 114	java/lang/StringBuilder:<init>	()V
    //   403: ldc 171
    //   405: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   408: aload_1
    //   409: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   412: invokevirtual 125	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   415: aload 16
    //   417: invokestatic 174	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   420: pop
    //   421: aload_3
    //   422: areturn
    //   423: astore 8
    //   425: aload 5
    //   427: ifnull +8 -> 435
    //   430: aload 5
    //   432: invokevirtual 169	java/io/BufferedReader:close	()V
    //   435: aload 8
    //   437: athrow
    //   438: astore 9
    //   440: getstatic 38	com/google/glass/logging/Util:TAG	Ljava/lang/String;
    //   443: new 113	java/lang/StringBuilder
    //   446: dup
    //   447: invokespecial 114	java/lang/StringBuilder:<init>	()V
    //   450: ldc 171
    //   452: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   455: aload_1
    //   456: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   459: invokevirtual 125	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   462: aload 9
    //   464: invokestatic 174	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   467: pop
    //   468: goto -33 -> 435
    //   471: astore 8
    //   473: aload 6
    //   475: astore 5
    //   477: goto -52 -> 425
    //   480: astore 14
    //   482: aload 6
    //   484: astore 5
    //   486: goto -135 -> 351
    //   489: astore 7
    //   491: aload 6
    //   493: astore 5
    //   495: goto -223 -> 272
    //   498: aload_3
    //   499: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   185	190	193	java/io/IOException
    //   231	236	238	java/io/IOException
    //   90	108	270	java/io/FileNotFoundException
    //   310	315	317	java/io/IOException
    //   90	108	349	java/io/IOException
    //   384	389	391	java/io/IOException
    //   90	108	423	finally
    //   272	305	423	finally
    //   351	379	423	finally
    //   430	435	438	java/io/IOException
    //   108	115	471	finally
    //   120	131	471	finally
    //   136	180	471	finally
    //   108	115	480	java/io/IOException
    //   120	131	480	java/io/IOException
    //   136	180	480	java/io/IOException
    //   108	115	489	java/io/FileNotFoundException
    //   120	131	489	java/io/FileNotFoundException
    //   136	180	489	java/io/FileNotFoundException
  }

  @VisibleForTesting
  static abstract interface LogDataLineParser<T>
  {
    public abstract T parse(String paramString, T paramT);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.logging.Util
 * JD-Core Version:    0.6.2
 */