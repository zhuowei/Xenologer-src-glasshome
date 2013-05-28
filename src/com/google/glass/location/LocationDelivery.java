package com.google.glass.location;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.google.glass.companion.Proto.Location;
import com.google.glass.companion.Proto.LocationMessage;

public class LocationDelivery
{
  private static final String TAG = LocationDelivery.class.getSimpleName();

  public static void deliver(Proto.LocationMessage paramLocationMessage, LocationListener paramLocationListener)
  {
    if (paramLocationListener == null)
    {
      Log.e(TAG, "Dropping location message because we have no location listener.");
      return;
    }
    String str = paramLocationMessage.getProvider();
    if (TextUtils.isEmpty(str))
    {
      Log.e(TAG, "Dropping location message because it has no provider.");
      return;
    }
    switch (1.$SwitchMap$com$google$glass$companion$Proto$LocationMessage$MessageType[paramLocationMessage.getType().ordinal()])
    {
    default:
      return;
    case 1:
      paramLocationListener.onLocationChanged(parseLocation(paramLocationMessage));
      return;
    case 2:
      paramLocationListener.onProviderDisabled(str);
      return;
    case 3:
      paramLocationListener.onProviderDisabled(str);
      return;
    case 4:
    }
    paramLocationListener.onStatusChanged(str, paramLocationMessage.getStatus(), null);
  }

  private static Location parseLocation(Proto.LocationMessage paramLocationMessage)
  {
    Proto.Location localLocation = paramLocationMessage.getLocation();
    Location localLocation1 = new Location(paramLocationMessage.getProvider());
    localLocation1.setLatitude(localLocation.getLatitude());
    localLocation1.setLongitude(localLocation.getLongitude());
    if (localLocation.hasAccuracy())
      localLocation1.setAccuracy(localLocation.getAccuracy());
    if (localLocation.hasAltitude())
      localLocation1.setAltitude(localLocation.getAltitude());
    if (localLocation.hasBearing())
      localLocation1.setBearing(localLocation.getBearing());
    if (localLocation.hasSpeed())
      localLocation1.setSpeed(localLocation.getSpeed());
    if (localLocation.hasTime())
      localLocation1.setTime(localLocation.getTime());
    if ((localLocation.hasSatellitesUsedInFix()) || (localLocation.hasVisibleSatellites()) || (localLocation.hasLevelId()) || (localLocation.hasLevelNumberE3()) || (paramLocationMessage.hasReceiver()))
    {
      Bundle localBundle = new Bundle();
      if (localLocation.hasSatellitesUsedInFix())
        localBundle.putInt("satellites", localLocation.getSatellitesUsedInFix());
      if (localLocation.hasVisibleSatellites())
        localBundle.putInt("visible_satellites", localLocation.getVisibleSatellites());
      if (localLocation.hasLevelId())
        localBundle.putString("levelId", localLocation.getLevelId());
      if (localLocation.hasLevelNumberE3())
        localBundle.putInt("levelNumberE3", localLocation.getLevelNumberE3());
      if (paramLocationMessage.hasReceiver())
        localBundle.putString("receiver", paramLocationMessage.getReceiver());
      localLocation1.setExtras(localBundle);
    }
    return localLocation1;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.location.LocationDelivery
 * JD-Core Version:    0.6.2
 */