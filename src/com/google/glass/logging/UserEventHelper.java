package com.google.glass.logging;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.google.common.base.CharMatcher;
import com.google.common.base.Preconditions;
import com.google.common.logging.GlassUserEventFrequencyStat;
import com.google.common.logging.GlassUserEventFrequencyStat.Builder;
import com.google.common.logging.GlassUserEventPerformanceStats;
import com.google.common.logging.GlassUserEventPerformanceStats.Builder;
import com.google.common.logging.GlassUserEventProto;
import com.google.common.logging.GlassUserEventProto.Builder;
import com.google.glass.util.AsyncThreadExecutorManager;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.Executor;

public class UserEventHelper
{
  private static final char EVENT_TUPLE_ASSIGNMENT = '=';
  private static final char EVENT_TUPLE_SEPARATOR = '|';
  public static final String EXTRA_USER_EVENT = "user_event";
  private static final CharMatcher RESERVED_CHAR_MATCHER = CharMatcher.anyOf(Character.toString('=') + Character.toString('|'));
  private static final String TAG = UserEventHelper.class.getSimpleName();
  private static final String USER_EVENT_SERVICE = "com.google.glass.logging.UserEventService";
  private static final String USER_EVENT_SERVICE_PACKAGE = "com.google.glass.logging";
  private final Context context;
  private final boolean loggingEnabled;

  public UserEventHelper(Context paramContext)
  {
  }

  UserEventHelper(Context paramContext, boolean paramBoolean)
  {
    this.context = paramContext;
    this.loggingEnabled = paramBoolean;
  }

  public static void appendData(StringBuilder paramStringBuilder, String paramString)
  {
    if ((paramString == null) || (paramString.isEmpty()))
      return;
    ensureEndsWithSeparator(paramStringBuilder);
    if (paramString.charAt(0) == '|')
      paramStringBuilder.append(paramString, 1, paramString.length());
    while (true)
    {
      ensureEndsWithSeparator(paramStringBuilder);
      return;
      paramStringBuilder.append(paramString);
    }
  }

  private static void appendPair(StringBuilder paramStringBuilder, String paramString, Object paramObject)
  {
    ensureEndsWithSeparator(paramStringBuilder);
    paramStringBuilder.append(sanitize(paramString));
    paramStringBuilder.append('=');
    paramStringBuilder.append(sanitize(paramObject));
    paramStringBuilder.append('|');
  }

  private GlassUserEventPerformanceStats collectPerformanceStats()
  {
    GlassUserEventPerformanceStats.Builder localBuilder = GlassUserEventPerformanceStats.newBuilder().setBoardTemperatureMilliCentigrade((int)PerformanceUtil.getBoardTemperature()).setBatteryStateOfChargeMah((int)PerformanceUtil.getBatteryStateOfChargeUah()).setBatteryChargeWhenFullMah((int)PerformanceUtil.getBatteryChargeWhenFullUah()).setBatteryTemperatureMilliCentigrade((int)PerformanceUtil.getBatteryTemperature()).setTotalBytesSent(PerformanceUtil.getTotalBytesSent());
    TreeMap localTreeMap = new TreeMap();
    PerformanceUtil.getFrequencyStats(localTreeMap);
    long l = 0L;
    Iterator localIterator = localTreeMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localBuilder.addFrequencyStat(GlassUserEventFrequencyStat.newBuilder().setFrequencyHz(((Long)localEntry.getKey()).longValue()).setDurationMs(((Long)localEntry.getValue()).longValue()));
      l += ((Long)localEntry.getValue()).longValue();
    }
    localBuilder.setTotalKernelMs(l);
    return localBuilder.build();
  }

  public static String createEventTuple(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
    return createEventTupleBuilder(paramString, paramObject, paramArrayOfObject).toString();
  }

  public static StringBuilder createEventTupleBuilder(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
    Preconditions.checkNotNull(paramString, "null key");
    if (paramArrayOfObject.length % 2 == 0);
    StringBuilder localStringBuilder;
    for (boolean bool1 = true; ; bool1 = false)
    {
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(paramArrayOfObject.length);
      Preconditions.checkArgument(bool1, "invalid number of key/value arguments (%s", arrayOfObject1);
      localStringBuilder = new StringBuilder();
      appendPair(localStringBuilder, paramString, paramObject);
      for (int i = 0; i < -1 + paramArrayOfObject.length; i += 2)
      {
        Object localObject1 = paramArrayOfObject[i];
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Integer.valueOf(i);
        Object localObject2 = Preconditions.checkNotNull(localObject1, "null key (vararg %s)", arrayOfObject2);
        boolean bool2 = localObject2 instanceof String;
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = Integer.valueOf(i);
        Preconditions.checkArgument(bool2, "key (vararg %s) is not a String.", arrayOfObject3);
        appendPair(localStringBuilder, (String)localObject2, paramArrayOfObject[(i + 1)]);
      }
    }
    return localStringBuilder;
  }

  private static void ensureEndsWithSeparator(StringBuilder paramStringBuilder)
  {
    int i = paramStringBuilder.length();
    if ((i == 0) || (paramStringBuilder.charAt(i - 1) != '|'))
      paramStringBuilder.append('|');
  }

  private void logInternal(UserEventAction paramUserEventAction, String paramString)
  {
    if (!this.loggingEnabled)
    {
      Log.d(TAG, "Not logging user event as logging is disabled [action=" + paramUserEventAction + ", data=" + paramString + "].");
      return;
    }
    Log.d(TAG, "Logging user event [action=" + paramUserEventAction + ", data=" + paramString + "].");
    GlassUserEventProto.Builder localBuilder = GlassUserEventProto.newBuilder().setEventType(paramUserEventAction.action).setEventTimeMs(System.currentTimeMillis()).setPerformanceStats(collectPerformanceStats());
    if (paramString != null)
      localBuilder.setEventData(paramString);
    Intent localIntent = new Intent();
    localIntent.setClassName("com.google.glass.logging", "com.google.glass.logging.UserEventService");
    localIntent.putExtra("user_event", localBuilder.build());
    this.context.startService(localIntent);
  }

  private static String sanitize(Object paramObject)
  {
    if (paramObject == null)
      return null;
    return RESERVED_CHAR_MATCHER.removeFrom(String.valueOf(paramObject));
  }

  public void log(UserEventAction paramUserEventAction)
  {
    log(paramUserEventAction, null);
  }

  public void log(final UserEventAction paramUserEventAction, final String paramString)
  {
    AsyncThreadExecutorManager.getThreadPoolExecutor().execute(new Runnable()
    {
      public void run()
      {
        UserEventHelper.this.logInternal(paramUserEventAction, paramString);
      }
    });
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.logging.UserEventHelper
 * JD-Core Version:    0.6.2
 */