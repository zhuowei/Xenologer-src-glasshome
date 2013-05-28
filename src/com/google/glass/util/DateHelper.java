package com.google.glass.util;

import android.content.Context;
import android.util.Log;
import com.google.glass.common.R.string;
import java.text.ParseException;
import java.util.Calendar;
import java.util.Date;

public class DateHelper
{
  private static final long MONTH_IN_MILLIS = 2620800000L;
  private static final String TAG = DateHelper.class.getSimpleName();

  public static String formattedDate(Context paramContext, long paramLong)
  {
    return android.text.format.DateFormat.format(paramContext.getString(R.string.date_format_pattern), paramLong).toString();
  }

  public static String formattedTime(Context paramContext, long paramLong, boolean paramBoolean)
  {
    return android.text.format.DateFormat.format(getTimeFormatPattern(paramContext, android.text.format.DateFormat.is24HourFormat(paramContext), paramBoolean), paramLong).toString();
  }

  public static String getRelativeTimestamp(Context paramContext, long paramLong)
  {
    return getRelativeTimestamp(paramContext, paramLong, System.currentTimeMillis(), false);
  }

  public static String getRelativeTimestamp(Context paramContext, long paramLong1, long paramLong2, boolean paramBoolean)
  {
    if (paramLong1 >= paramLong2)
    {
      long l9 = paramLong1 - paramLong2;
      if (l9 < 60000L)
        return paramContext.getString(R.string.timestamp_now_future);
      if (l9 < 3600000L)
      {
        long l16 = l9 / 60000L;
        StringBuilder localStringBuilder12 = new StringBuilder().append(paramContext.getString(R.string.timestamp_future_prefix)).append(Long.toString(l16));
        if (l16 == 1L);
        for (String str12 = paramContext.getString(R.string.timestamp_min); ; str12 = paramContext.getString(R.string.timestamp_mins))
          return str12;
      }
      Calendar localCalendar2 = Calendar.getInstance();
      localCalendar2.set(11, 0);
      localCalendar2.set(12, 0);
      localCalendar2.set(13, 0);
      localCalendar2.set(14, 0);
      long l10 = 86400000L + localCalendar2.getTimeInMillis();
      if (paramLong1 <= Math.max(l10, 18000000L + paramLong2))
      {
        long l15 = l9 / 3600000L;
        StringBuilder localStringBuilder11 = new StringBuilder().append(paramContext.getString(R.string.timestamp_future_prefix)).append(Long.toString(l15));
        if (l15 == 1L);
        for (String str11 = paramContext.getString(R.string.timestamp_hour); ; str11 = paramContext.getString(R.string.timestamp_hours))
          return str11;
      }
      if (paramLong1 <= 86400000L + l10)
        return paramContext.getString(R.string.timestamp_tomorrow);
      if (l9 < 604800000L)
      {
        long l14 = l9 / 86400000L;
        StringBuilder localStringBuilder10 = new StringBuilder().append(paramContext.getString(R.string.timestamp_future_prefix)).append(Long.toString(l14));
        if (l14 == 1L);
        for (String str10 = paramContext.getString(R.string.timestamp_day); ; str10 = paramContext.getString(R.string.timestamp_days))
          return str10;
      }
      if (l9 < 2620800000L)
      {
        long l13 = l9 / 604800000L;
        StringBuilder localStringBuilder9 = new StringBuilder().append(paramContext.getString(R.string.timestamp_future_prefix)).append(Long.toString(l13));
        if (l13 == 1L);
        for (String str9 = paramContext.getString(R.string.timestamp_week); ; str9 = paramContext.getString(R.string.timestamp_weeks))
          return str9;
      }
      if (l9 < 31449600000L)
      {
        long l12 = l9 / 2620800000L;
        StringBuilder localStringBuilder8 = new StringBuilder().append(paramContext.getString(R.string.timestamp_future_prefix)).append(Long.toString(l12));
        if (l12 == 1L);
        for (String str8 = paramContext.getString(R.string.timestamp_month); ; str8 = paramContext.getString(R.string.timestamp_months))
          return str8;
      }
      long l11 = l9 / 31449600000L;
      StringBuilder localStringBuilder7 = new StringBuilder().append(paramContext.getString(R.string.timestamp_future_prefix)).append(Long.toString(l11));
      if (l11 == 1L);
      for (String str7 = paramContext.getString(R.string.timestamp_year); ; str7 = paramContext.getString(R.string.timestamp_years))
        return str7;
    }
    long l1 = paramLong2 - paramLong1;
    if (paramBoolean)
    {
      if (l1 < 300000L)
        return paramContext.getString(R.string.timestamp_recent);
      if (l1 < 3600000L)
        return paramContext.getString(R.string.timestamp_past_hour);
    }
    else
    {
      if (l1 < 60000L)
        return paramContext.getString(R.string.timestamp_now_past);
      if (l1 < 3600000L)
      {
        long l8 = l1 / 60000L;
        StringBuilder localStringBuilder6 = new StringBuilder().append(Long.toString(l8));
        if (l8 == 1L);
        for (String str6 = paramContext.getString(R.string.timestamp_min); ; str6 = paramContext.getString(R.string.timestamp_mins))
          return str6 + paramContext.getString(R.string.timestamp_past_suffix);
      }
    }
    Calendar localCalendar1 = Calendar.getInstance();
    localCalendar1.set(11, 0);
    localCalendar1.set(12, 0);
    localCalendar1.set(13, 0);
    localCalendar1.set(14, 0);
    long l2 = localCalendar1.getTimeInMillis();
    if (paramLong1 >= Math.min(l2, paramLong2 - 18000000L))
    {
      long l7 = l1 / 3600000L;
      StringBuilder localStringBuilder5 = new StringBuilder().append(Long.toString(l7));
      if (l7 == 1L);
      for (String str5 = paramContext.getString(R.string.timestamp_hour); ; str5 = paramContext.getString(R.string.timestamp_hours))
        return str5 + paramContext.getString(R.string.timestamp_past_suffix);
    }
    if (paramLong1 >= l2 - 86400000L)
      return paramContext.getString(R.string.timestamp_yesterday);
    if (l1 < 604800000L)
    {
      long l6 = l1 / 86400000L;
      StringBuilder localStringBuilder4 = new StringBuilder().append(Long.toString(l6));
      if (l6 == 1L);
      for (String str4 = paramContext.getString(R.string.timestamp_day); ; str4 = paramContext.getString(R.string.timestamp_days))
        return str4 + paramContext.getString(R.string.timestamp_past_suffix);
    }
    if (l1 < 2620800000L)
    {
      long l5 = l1 / 604800000L;
      StringBuilder localStringBuilder3 = new StringBuilder().append(Long.toString(l5));
      if (l5 == 1L);
      for (String str3 = paramContext.getString(R.string.timestamp_week); ; str3 = paramContext.getString(R.string.timestamp_weeks))
        return str3 + paramContext.getString(R.string.timestamp_past_suffix);
    }
    if (l1 < 31449600000L)
    {
      long l4 = l1 / 2620800000L;
      StringBuilder localStringBuilder2 = new StringBuilder().append(Long.toString(l4));
      if (l4 == 1L);
      for (String str2 = paramContext.getString(R.string.timestamp_month); ; str2 = paramContext.getString(R.string.timestamp_months))
        return str2 + paramContext.getString(R.string.timestamp_past_suffix);
    }
    long l3 = l1 / 31449600000L;
    StringBuilder localStringBuilder1 = new StringBuilder().append(Long.toString(l3));
    if (l3 == 1L);
    for (String str1 = paramContext.getString(R.string.timestamp_year); ; str1 = paramContext.getString(R.string.timestamp_years))
      return str1 + paramContext.getString(R.string.timestamp_past_suffix);
  }

  private static String getTimeFormatPattern(Context paramContext, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean1)
      return paramContext.getString(R.string.time_format_pattern_24h);
    if (paramBoolean2)
      return paramContext.getString(R.string.time_format_pattern_12h);
    return paramContext.getString(R.string.time_format_pattern_12h_am_pm);
  }

  public static String getVideoRecordingTimeString(long paramLong)
  {
    long l1 = paramLong / 1000L;
    long l2 = l1 / 60L;
    long l3 = l2 / 60L;
    long l4 = l2 - 60L * l3;
    long l5 = l1 - 60L * l2;
    StringBuilder localStringBuilder = new StringBuilder();
    if (l3 > 0L)
    {
      localStringBuilder.append(l3);
      localStringBuilder.append(60929);
    }
    if ((l3 > 0L) && (l4 < 10L))
      localStringBuilder.append('0');
    localStringBuilder.append(l4);
    localStringBuilder.append(60929);
    if (l5 < 10L)
      localStringBuilder.append('0');
    localStringBuilder.append(l5);
    return localStringBuilder.toString();
  }

  public static boolean isTimeInInterval(Date paramDate, String paramString1, String paramString2)
  {
    String[] arrayOfString = paramString1.split(paramString2);
    if (arrayOfString.length == 2)
      try
      {
        String str = java.text.DateFormat.getDateInstance(3).format(paramDate);
        java.text.DateFormat localDateFormat = java.text.DateFormat.getDateTimeInstance(3, 3);
        Date localDate1 = localDateFormat.parse(str + " " + arrayOfString[0]);
        Date localDate2 = localDateFormat.parse(str + " " + arrayOfString[1]);
        if (localDate1.after(localDate2))
          localDate2.setTime(86400000L + localDate2.getTime());
        if (paramDate.after(localDate1))
        {
          boolean bool = paramDate.before(localDate2);
          if (bool)
            return true;
        }
        return false;
      }
      catch (ParseException localParseException)
      {
        Log.w(TAG, localParseException.getMessage());
      }
    return false;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.util.DateHelper
 * JD-Core Version:    0.6.2
 */