package com.google.glass.home.sync;

import android.util.Log;
import com.google.common.collect.Maps;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

class SyncStats
{
  private static final String TAG = SyncStats.class.getSimpleName();
  private Map<String, StatsInfo> downloads = Maps.newHashMap();
  private Map<String, StatsInfo> uploads = Maps.newHashMap();

  private String durationString(long paramLong)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramLong > 1000L)
    {
      localStringBuilder.append(paramLong / 1000L);
      localStringBuilder.append("secs");
    }
    while (true)
    {
      return localStringBuilder.toString();
      localStringBuilder.append(paramLong);
      localStringBuilder.append("ms");
    }
  }

  void log()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator1 = this.uploads.keySet().iterator();
    while (localIterator1.hasNext())
    {
      String str2 = (String)localIterator1.next();
      StatsInfo localStatsInfo2 = (StatsInfo)this.uploads.get(str2);
      localStringBuilder.append("Upload ");
      localStringBuilder.append(str2);
      localStringBuilder.append(" [numFiles=");
      localStringBuilder.append(localStatsInfo2.numFiles);
      localStringBuilder.append(", totalBytes=");
      localStringBuilder.append(localStatsInfo2.totalBytes / 1000L);
      localStringBuilder.append("kB, totalDuration=");
      localStringBuilder.append(durationString(localStatsInfo2.totalDurationMs));
      localStringBuilder.append("].\n");
    }
    Iterator localIterator2 = this.downloads.keySet().iterator();
    while (localIterator2.hasNext())
    {
      String str1 = (String)localIterator2.next();
      StatsInfo localStatsInfo1 = (StatsInfo)this.downloads.get(str1);
      localStringBuilder.append("Download ");
      localStringBuilder.append(str1);
      localStringBuilder.append(" [numFiles=");
      localStringBuilder.append(localStatsInfo1.numFiles);
      localStringBuilder.append(", totalBytes=");
      localStringBuilder.append(localStatsInfo1.totalBytes / 1000L);
      localStringBuilder.append("kB, totalDuration=");
      localStringBuilder.append(durationString(localStatsInfo1.totalDurationMs));
      localStringBuilder.append("].\n");
    }
    if (localStringBuilder.length() > 0)
      Log.i(TAG, localStringBuilder.toString());
  }

  void trackDownload(String paramString, long paramLong1, long paramLong2)
  {
    StatsInfo localStatsInfo = (StatsInfo)this.downloads.get(paramString);
    if (localStatsInfo == null)
      localStatsInfo = new StatsInfo(null);
    StatsInfo.access$108(localStatsInfo);
    StatsInfo.access$214(localStatsInfo, paramLong1);
    StatsInfo.access$314(localStatsInfo, paramLong2);
    this.downloads.put(paramString, localStatsInfo);
  }

  void trackUpload(String paramString, long paramLong1, long paramLong2)
  {
    StatsInfo localStatsInfo = (StatsInfo)this.uploads.get(paramString);
    if (localStatsInfo == null)
      localStatsInfo = new StatsInfo(null);
    StatsInfo.access$108(localStatsInfo);
    StatsInfo.access$214(localStatsInfo, paramLong1);
    StatsInfo.access$314(localStatsInfo, paramLong2);
    this.uploads.put(paramString, localStatsInfo);
  }

  private static class StatsInfo
  {
    private long numFiles;
    private long totalBytes;
    private long totalDurationMs;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.sync.SyncStats
 * JD-Core Version:    0.6.2
 */