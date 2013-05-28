package com.google.glass.logging;

import android.net.TrafficStats;
import android.util.Log;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class PerformanceUtil
{
  private static final String BATTERY_TEMPERATURE_FILE = "/sys/class/power_supply/bq27520-0/temp";
  private static final String BOARD_TEMPERATURE_FILE = "/sys/devices/platform/notle_pcb_sensor.0/temperature";
  private static final String CAPACITY_FILE_EVT2 = "/sys/class/power_supply/bq27520-0/capacity";
  private static final String CHARGE_FILE_EVT2 = "/sys/class/power_supply/bq27520-0/charge_now";
  private static final String CHARGE_WHEN_FULL_FILE_EVT2 = "/sys/class/power_supply/bq27520-0/charge_full";
  private static final String CPU_FREQUENCY_FILE = "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq";
  private static final String CPU_FREQUENCY_TIME_FILE = "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state";
  private static final String CURRENT_FILE_EVT2 = "/sys/class/power_supply/bq27520-0/current_now";
  private static final String TAG = PerformanceUtil.class.getSimpleName();
  private static final long UNKNOWN = -1L;

  public static long getBatteryCapacity()
  {
    return readValue("/sys/class/power_supply/bq27520-0/capacity");
  }

  public static long getBatteryChargeWhenFullUah()
  {
    return readValue("/sys/class/power_supply/bq27520-0/charge_full");
  }

  public static long getBatteryStateOfChargeUah()
  {
    return readValue("/sys/class/power_supply/bq27520-0/charge_now");
  }

  public static long getBatteryTemperature()
  {
    return 100L * readValue("/sys/class/power_supply/bq27520-0/temp");
  }

  public static long getBoardTemperature()
  {
    return readValue("/sys/devices/platform/notle_pcb_sensor.0/temperature");
  }

  public static void getFrequencyStats(Map<Long, Long> paramMap)
  {
    if (!readLongToLongMapFile("/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state", paramMap))
    {
      Log.e(TAG, "Failed to read time spent at different cpu frequencies from file:/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state");
      paramMap.clear();
    }
    while (true)
    {
      return;
      Iterator localIterator = paramMap.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        localEntry.setValue(Long.valueOf(10L * ((Long)localEntry.getValue()).longValue()));
      }
    }
  }

  public static long getTotalBytesSent()
  {
    return TrafficStats.getTotalTxBytes();
  }

  // ERROR //
  private static boolean readLongToLongMapFile(String paramString, Map<Long, Long> paramMap)
  {
    // Byte code:
    //   0: new 132	java/io/File
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 135	java/io/File:<init>	(Ljava/lang/String;)V
    //   8: astore_2
    //   9: aload_2
    //   10: invokevirtual 138	java/io/File:exists	()Z
    //   13: ifne +31 -> 44
    //   16: getstatic 44	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   19: new 140	java/lang/StringBuilder
    //   22: dup
    //   23: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   26: ldc 143
    //   28: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   31: aload_0
    //   32: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   35: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   38: invokestatic 73	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   41: pop
    //   42: iconst_0
    //   43: ireturn
    //   44: aload_2
    //   45: invokevirtual 153	java/io/File:canRead	()Z
    //   48: ifne +31 -> 79
    //   51: getstatic 44	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   54: new 140	java/lang/StringBuilder
    //   57: dup
    //   58: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   61: ldc 155
    //   63: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   66: aload_0
    //   67: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   70: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   73: invokestatic 73	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   76: pop
    //   77: iconst_0
    //   78: ireturn
    //   79: aconst_null
    //   80: astore_3
    //   81: new 157	java/io/BufferedReader
    //   84: dup
    //   85: new 159	java/io/FileReader
    //   88: dup
    //   89: aload_2
    //   90: invokespecial 162	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   93: invokespecial 165	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   96: astore 4
    //   98: aload 4
    //   100: invokevirtual 168	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   103: astore 20
    //   105: aload 20
    //   107: ifnull +287 -> 394
    //   110: aload 20
    //   112: invokestatic 174	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   115: ifeq +73 -> 188
    //   118: getstatic 44	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   121: new 140	java/lang/StringBuilder
    //   124: dup
    //   125: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   128: ldc 176
    //   130: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   133: aload_0
    //   134: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   137: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   140: invokestatic 73	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   143: pop
    //   144: aload 4
    //   146: ifnull -104 -> 42
    //   149: aload 4
    //   151: invokevirtual 179	java/io/BufferedReader:close	()V
    //   154: iconst_0
    //   155: ireturn
    //   156: astore 27
    //   158: getstatic 44	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   161: new 140	java/lang/StringBuilder
    //   164: dup
    //   165: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   168: ldc 181
    //   170: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   173: aload_0
    //   174: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   177: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   180: aload 27
    //   182: invokestatic 184	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   185: pop
    //   186: iconst_0
    //   187: ireturn
    //   188: aload 20
    //   190: ldc 186
    //   192: invokevirtual 192	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   195: astore 21
    //   197: aload 21
    //   199: arraylength
    //   200: iconst_2
    //   201: if_icmpeq +83 -> 284
    //   204: getstatic 44	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   207: new 140	java/lang/StringBuilder
    //   210: dup
    //   211: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   214: ldc 194
    //   216: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   219: aload_0
    //   220: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   223: ldc 196
    //   225: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   228: aload 20
    //   230: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   233: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   236: invokestatic 73	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   239: pop
    //   240: aload 4
    //   242: ifnull -200 -> 42
    //   245: aload 4
    //   247: invokevirtual 179	java/io/BufferedReader:close	()V
    //   250: iconst_0
    //   251: ireturn
    //   252: astore 24
    //   254: getstatic 44	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   257: new 140	java/lang/StringBuilder
    //   260: dup
    //   261: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   264: ldc 181
    //   266: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   269: aload_0
    //   270: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   273: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   276: aload 24
    //   278: invokestatic 184	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   281: pop
    //   282: iconst_0
    //   283: ireturn
    //   284: aload_1
    //   285: aload 21
    //   287: iconst_0
    //   288: aaload
    //   289: invokestatic 199	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   292: invokestatic 114	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   295: aload 21
    //   297: iconst_1
    //   298: aaload
    //   299: invokestatic 199	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   302: invokestatic 114	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   305: invokeinterface 203 3 0
    //   310: pop
    //   311: goto -213 -> 98
    //   314: astore 16
    //   316: aload 4
    //   318: astore_3
    //   319: getstatic 44	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   322: new 140	java/lang/StringBuilder
    //   325: dup
    //   326: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   329: ldc 205
    //   331: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   334: aload_0
    //   335: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   338: ldc 207
    //   340: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   343: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   346: aload 16
    //   348: invokestatic 184	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   351: pop
    //   352: aload_3
    //   353: ifnull -311 -> 42
    //   356: aload_3
    //   357: invokevirtual 179	java/io/BufferedReader:close	()V
    //   360: iconst_0
    //   361: ireturn
    //   362: astore 18
    //   364: getstatic 44	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   367: new 140	java/lang/StringBuilder
    //   370: dup
    //   371: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   374: ldc 181
    //   376: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   379: aload_0
    //   380: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   383: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   386: aload 18
    //   388: invokestatic 184	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   391: pop
    //   392: iconst_0
    //   393: ireturn
    //   394: aload 4
    //   396: ifnull +8 -> 404
    //   399: aload 4
    //   401: invokevirtual 179	java/io/BufferedReader:close	()V
    //   404: iconst_1
    //   405: ireturn
    //   406: astore 29
    //   408: getstatic 44	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   411: new 140	java/lang/StringBuilder
    //   414: dup
    //   415: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   418: ldc 181
    //   420: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   423: aload_0
    //   424: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   427: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   430: aload 29
    //   432: invokestatic 184	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   435: pop
    //   436: goto -32 -> 404
    //   439: astore 5
    //   441: getstatic 44	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   444: new 140	java/lang/StringBuilder
    //   447: dup
    //   448: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   451: ldc 209
    //   453: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   456: aload_0
    //   457: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   460: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   463: aload 5
    //   465: invokestatic 184	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   468: pop
    //   469: aload_3
    //   470: ifnull -428 -> 42
    //   473: aload_3
    //   474: invokevirtual 179	java/io/BufferedReader:close	()V
    //   477: iconst_0
    //   478: ireturn
    //   479: astore 10
    //   481: getstatic 44	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   484: new 140	java/lang/StringBuilder
    //   487: dup
    //   488: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   491: ldc 181
    //   493: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   496: aload_0
    //   497: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   500: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   503: aload 10
    //   505: invokestatic 184	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   508: pop
    //   509: iconst_0
    //   510: ireturn
    //   511: astore 12
    //   513: getstatic 44	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   516: new 140	java/lang/StringBuilder
    //   519: dup
    //   520: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   523: ldc 211
    //   525: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   528: aload_0
    //   529: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   532: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   535: aload 12
    //   537: invokestatic 184	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   540: pop
    //   541: aload_3
    //   542: ifnull -500 -> 42
    //   545: aload_3
    //   546: invokevirtual 179	java/io/BufferedReader:close	()V
    //   549: iconst_0
    //   550: ireturn
    //   551: astore 14
    //   553: getstatic 44	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   556: new 140	java/lang/StringBuilder
    //   559: dup
    //   560: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   563: ldc 181
    //   565: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   568: aload_0
    //   569: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   572: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   575: aload 14
    //   577: invokestatic 184	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   580: pop
    //   581: iconst_0
    //   582: ireturn
    //   583: astore 6
    //   585: aload_3
    //   586: ifnull +7 -> 593
    //   589: aload_3
    //   590: invokevirtual 179	java/io/BufferedReader:close	()V
    //   593: aload 6
    //   595: athrow
    //   596: astore 7
    //   598: getstatic 44	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   601: new 140	java/lang/StringBuilder
    //   604: dup
    //   605: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   608: ldc 181
    //   610: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   613: aload_0
    //   614: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   617: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   620: aload 7
    //   622: invokestatic 184	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   625: pop
    //   626: goto -33 -> 593
    //   629: astore 6
    //   631: aload 4
    //   633: astore_3
    //   634: goto -49 -> 585
    //   637: astore 12
    //   639: aload 4
    //   641: astore_3
    //   642: goto -129 -> 513
    //   645: astore 5
    //   647: aload 4
    //   649: astore_3
    //   650: goto -209 -> 441
    //   653: astore 16
    //   655: aconst_null
    //   656: astore_3
    //   657: goto -338 -> 319
    //
    // Exception table:
    //   from	to	target	type
    //   149	154	156	java/io/IOException
    //   245	250	252	java/io/IOException
    //   98	105	314	java/io/FileNotFoundException
    //   110	144	314	java/io/FileNotFoundException
    //   188	240	314	java/io/FileNotFoundException
    //   284	311	314	java/io/FileNotFoundException
    //   356	360	362	java/io/IOException
    //   399	404	406	java/io/IOException
    //   81	98	439	java/io/IOException
    //   473	477	479	java/io/IOException
    //   81	98	511	java/lang/NumberFormatException
    //   545	549	551	java/io/IOException
    //   81	98	583	finally
    //   319	352	583	finally
    //   441	469	583	finally
    //   513	541	583	finally
    //   589	593	596	java/io/IOException
    //   98	105	629	finally
    //   110	144	629	finally
    //   188	240	629	finally
    //   284	311	629	finally
    //   98	105	637	java/lang/NumberFormatException
    //   110	144	637	java/lang/NumberFormatException
    //   188	240	637	java/lang/NumberFormatException
    //   284	311	637	java/lang/NumberFormatException
    //   98	105	645	java/io/IOException
    //   110	144	645	java/io/IOException
    //   188	240	645	java/io/IOException
    //   284	311	645	java/io/IOException
    //   81	98	653	java/io/FileNotFoundException
  }

  // ERROR //
  private static long readSystemFile(String paramString)
  {
    // Byte code:
    //   0: ldc2_w 33
    //   3: lstore_1
    //   4: new 132	java/io/File
    //   7: dup
    //   8: aload_0
    //   9: invokespecial 135	java/io/File:<init>	(Ljava/lang/String;)V
    //   12: astore_3
    //   13: aload_3
    //   14: invokevirtual 138	java/io/File:exists	()Z
    //   17: ifne +31 -> 48
    //   20: getstatic 44	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   23: new 140	java/lang/StringBuilder
    //   26: dup
    //   27: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   30: ldc 143
    //   32: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   35: aload_0
    //   36: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   39: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   42: invokestatic 73	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   45: pop
    //   46: lload_1
    //   47: lreturn
    //   48: aload_3
    //   49: invokevirtual 153	java/io/File:canRead	()Z
    //   52: ifne +31 -> 83
    //   55: getstatic 44	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   58: new 140	java/lang/StringBuilder
    //   61: dup
    //   62: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   65: ldc 155
    //   67: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   70: aload_0
    //   71: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   74: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   77: invokestatic 73	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   80: pop
    //   81: lload_1
    //   82: lreturn
    //   83: aconst_null
    //   84: astore 4
    //   86: new 157	java/io/BufferedReader
    //   89: dup
    //   90: new 159	java/io/FileReader
    //   93: dup
    //   94: aload_3
    //   95: invokespecial 162	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   98: invokespecial 165	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   101: astore 5
    //   103: aload 5
    //   105: invokevirtual 168	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   108: astore 21
    //   110: aload 21
    //   112: invokestatic 174	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   115: ifeq +73 -> 188
    //   118: getstatic 44	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   121: new 140	java/lang/StringBuilder
    //   124: dup
    //   125: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   128: ldc 176
    //   130: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   133: aload_0
    //   134: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   137: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   140: invokestatic 73	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   143: pop
    //   144: aload 5
    //   146: ifnull -100 -> 46
    //   149: aload 5
    //   151: invokevirtual 179	java/io/BufferedReader:close	()V
    //   154: lload_1
    //   155: lreturn
    //   156: astore 27
    //   158: getstatic 44	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   161: new 140	java/lang/StringBuilder
    //   164: dup
    //   165: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   168: ldc 181
    //   170: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   173: aload_0
    //   174: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   177: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   180: aload 27
    //   182: invokestatic 184	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   185: pop
    //   186: lload_1
    //   187: lreturn
    //   188: aload 21
    //   190: invokestatic 199	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   193: lstore 22
    //   195: lload 22
    //   197: lstore_1
    //   198: aload 5
    //   200: ifnull -154 -> 46
    //   203: aload 5
    //   205: invokevirtual 179	java/io/BufferedReader:close	()V
    //   208: lload_1
    //   209: lreturn
    //   210: astore 24
    //   212: getstatic 44	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   215: new 140	java/lang/StringBuilder
    //   218: dup
    //   219: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   222: ldc 181
    //   224: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   227: aload_0
    //   228: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   231: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   234: aload 24
    //   236: invokestatic 184	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   239: pop
    //   240: lload_1
    //   241: lreturn
    //   242: astore 6
    //   244: getstatic 44	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   247: new 140	java/lang/StringBuilder
    //   250: dup
    //   251: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   254: ldc 205
    //   256: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   259: aload_0
    //   260: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   263: ldc 207
    //   265: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   268: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   271: aload 6
    //   273: invokestatic 184	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   276: pop
    //   277: aload 4
    //   279: ifnull -233 -> 46
    //   282: aload 4
    //   284: invokevirtual 179	java/io/BufferedReader:close	()V
    //   287: lload_1
    //   288: lreturn
    //   289: astore 11
    //   291: getstatic 44	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   294: new 140	java/lang/StringBuilder
    //   297: dup
    //   298: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   301: ldc 181
    //   303: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   306: aload_0
    //   307: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   310: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   313: aload 11
    //   315: invokestatic 184	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   318: pop
    //   319: lload_1
    //   320: lreturn
    //   321: astore 13
    //   323: getstatic 44	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   326: new 140	java/lang/StringBuilder
    //   329: dup
    //   330: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   333: ldc 209
    //   335: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   338: aload_0
    //   339: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   342: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   345: aload 13
    //   347: invokestatic 184	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   350: pop
    //   351: aload 4
    //   353: ifnull -307 -> 46
    //   356: aload 4
    //   358: invokevirtual 179	java/io/BufferedReader:close	()V
    //   361: lload_1
    //   362: lreturn
    //   363: astore 15
    //   365: getstatic 44	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   368: new 140	java/lang/StringBuilder
    //   371: dup
    //   372: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   375: ldc 181
    //   377: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   380: aload_0
    //   381: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   384: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   387: aload 15
    //   389: invokestatic 184	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   392: pop
    //   393: lload_1
    //   394: lreturn
    //   395: astore 17
    //   397: getstatic 44	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   400: new 140	java/lang/StringBuilder
    //   403: dup
    //   404: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   407: ldc 211
    //   409: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   412: aload_0
    //   413: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   416: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   419: aload 17
    //   421: invokestatic 184	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   424: pop
    //   425: aload 4
    //   427: ifnull -381 -> 46
    //   430: aload 4
    //   432: invokevirtual 179	java/io/BufferedReader:close	()V
    //   435: lload_1
    //   436: lreturn
    //   437: astore 19
    //   439: getstatic 44	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   442: new 140	java/lang/StringBuilder
    //   445: dup
    //   446: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   449: ldc 181
    //   451: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   454: aload_0
    //   455: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   458: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   461: aload 19
    //   463: invokestatic 184	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   466: pop
    //   467: lload_1
    //   468: lreturn
    //   469: astore 7
    //   471: aload 4
    //   473: ifnull +8 -> 481
    //   476: aload 4
    //   478: invokevirtual 179	java/io/BufferedReader:close	()V
    //   481: aload 7
    //   483: athrow
    //   484: astore 8
    //   486: getstatic 44	com/google/glass/logging/PerformanceUtil:TAG	Ljava/lang/String;
    //   489: new 140	java/lang/StringBuilder
    //   492: dup
    //   493: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   496: ldc 181
    //   498: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   501: aload_0
    //   502: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   505: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   508: aload 8
    //   510: invokestatic 184	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   513: pop
    //   514: goto -33 -> 481
    //   517: astore 7
    //   519: aload 5
    //   521: astore 4
    //   523: goto -52 -> 471
    //   526: astore 17
    //   528: aload 5
    //   530: astore 4
    //   532: goto -135 -> 397
    //   535: astore 13
    //   537: aload 5
    //   539: astore 4
    //   541: goto -218 -> 323
    //   544: astore 6
    //   546: aload 5
    //   548: astore 4
    //   550: goto -306 -> 244
    //
    // Exception table:
    //   from	to	target	type
    //   149	154	156	java/io/IOException
    //   203	208	210	java/io/IOException
    //   86	103	242	java/io/FileNotFoundException
    //   282	287	289	java/io/IOException
    //   86	103	321	java/io/IOException
    //   356	361	363	java/io/IOException
    //   86	103	395	java/lang/NumberFormatException
    //   430	435	437	java/io/IOException
    //   86	103	469	finally
    //   244	277	469	finally
    //   323	351	469	finally
    //   397	425	469	finally
    //   476	481	484	java/io/IOException
    //   103	144	517	finally
    //   188	195	517	finally
    //   103	144	526	java/lang/NumberFormatException
    //   188	195	526	java/lang/NumberFormatException
    //   103	144	535	java/io/IOException
    //   188	195	535	java/io/IOException
    //   103	144	544	java/io/FileNotFoundException
    //   188	195	544	java/io/FileNotFoundException
  }

  private static long readValue(String paramString)
  {
    return readSystemFile(paramString);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.logging.PerformanceUtil
 * JD-Core Version:    0.6.2
 */