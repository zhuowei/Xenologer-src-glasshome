package com.google.glass.location;

import android.location.GpsSatellite;
import android.location.GpsStatus;
import android.os.Bundle;
import android.util.Log;
import com.google.googlex.glass.common.proto.Location.Builder;
import java.util.Iterator;

public class LocationHelper
{
  public static final long FRESHNESS_THRESHOLD_MS = 60000L;
  private static final String TAG = LocationHelper.class.getSimpleName();

  public static void addSatelliteExtras(android.location.Location paramLocation, GpsStatus paramGpsStatus)
  {
    if ((paramGpsStatus == null) || (!"gps".equals(paramLocation.getProvider())))
      return;
    Bundle localBundle = paramLocation.getExtras();
    if (localBundle == null)
      localBundle = new Bundle();
    int i = 0;
    int j = 0;
    Iterator localIterator = paramGpsStatus.getSatellites().iterator();
    while (localIterator.hasNext())
    {
      GpsSatellite localGpsSatellite = (GpsSatellite)localIterator.next();
      i++;
      if (localGpsSatellite.usedInFix())
        j++;
    }
    localBundle.putInt("visible_satellites", i);
    localBundle.putInt("satellites", j);
    paramLocation.setExtras(localBundle);
  }

  public static android.location.Location getLastKnownLocation()
  {
    GlassLocationManager localGlassLocationManager = GlassLocationManager.getInstance();
    android.location.Location localLocation1 = localGlassLocationManager.getLastKnownLocation("gps");
    android.location.Location localLocation2 = localGlassLocationManager.getLastKnownLocation("network");
    if (localLocation1 != null)
      Log.d(TAG, "GPS - accuracy:" + localLocation1.getAccuracy() + " time: " + localLocation1.getTime());
    if (localLocation2 != null)
      Log.d(TAG, "Network - accuracy:" + localLocation2.getAccuracy() + " time: " + localLocation2.getTime());
    if (isBetterThan(localLocation1, localLocation2))
      return localLocation1;
    return localLocation2;
  }

  protected static boolean isBetterThan(android.location.Location paramLocation1, android.location.Location paramLocation2)
  {
    boolean bool = true;
    if (paramLocation1 == null)
      bool = false;
    do
    {
      do
        return bool;
      while ((paramLocation2 == null) || (paramLocation1.getTime() > 60000L + paramLocation2.getTime()));
      if (paramLocation2.getTime() > 60000L + paramLocation1.getTime())
        return false;
      if (!paramLocation1.hasAccuracy())
        return false;
    }
    while ((!paramLocation2.hasAccuracy()) || (paramLocation1.getAccuracy() < paramLocation2.getAccuracy()));
    return false;
  }

  public static com.google.googlex.glass.common.proto.Location toLocationProto(android.location.Location paramLocation, String paramString)
  {
    Location.Builder localBuilder = com.google.googlex.glass.common.proto.Location.newBuilder().setSource(paramString).setTimestamp(paramLocation.getTime()).setLatitude(paramLocation.getLatitude()).setLongitude(paramLocation.getLongitude());
    if (paramLocation.hasAccuracy())
      localBuilder.setAccuracy(paramLocation.getAccuracy());
    Bundle localBundle = paramLocation.getExtras();
    if (localBundle != null)
    {
      if (localBundle.containsKey("levelId"))
        localBuilder.setLevelId(localBundle.getString("levelId"));
      if (localBundle.containsKey("levelNumberE3"))
        localBuilder.setLevelNumber(localBundle.getInt("levelNumberE3") / 1000.0F);
    }
    return localBuilder.build();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.location.LocationHelper
 * JD-Core Version:    0.6.2
 */