package com.google.glass.home.settings;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;

public class GpsDebugSettingsItemView extends SettingsItemView
{
  private static final String TAG = GpsDebugSettingsItemView.class.getSimpleName();
  private final LocationListener locationListener = new LocationListener()
  {
    public void onLocationChanged(Location paramAnonymousLocation)
    {
      Log.d(GpsDebugSettingsItemView.TAG, "onLocationChanged: " + paramAnonymousLocation);
    }

    public void onProviderDisabled(String paramAnonymousString)
    {
      Log.d(GpsDebugSettingsItemView.TAG, "Provider disabled: " + paramAnonymousString);
    }

    public void onProviderEnabled(String paramAnonymousString)
    {
      Log.d(GpsDebugSettingsItemView.TAG, "Provider enabled: " + paramAnonymousString);
    }

    public void onStatusChanged(String paramAnonymousString, int paramAnonymousInt, Bundle paramAnonymousBundle)
    {
    }
  };
  private final LocationManager locationManager;

  public GpsDebugSettingsItemView(Context paramContext)
  {
    this(paramContext, null, 0);
  }

  public GpsDebugSettingsItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public GpsDebugSettingsItemView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.locationManager = ((LocationManager)paramContext.getSystemService("location"));
  }

  public void onLoad()
  {
    Log.d(TAG, "Requesting location updates.");
    this.locationManager.requestLocationUpdates("gps", 0L, 0.0F, this.locationListener);
  }

  public void onUnload()
  {
    Log.d(TAG, "Removing location updates.");
    this.locationManager.removeUpdates(this.locationListener);
    super.onUnload();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.settings.GpsDebugSettingsItemView
 * JD-Core Version:    0.6.2
 */