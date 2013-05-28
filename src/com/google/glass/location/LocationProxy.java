package com.google.glass.location;

import android.location.LocationListener;

public abstract interface LocationProxy
{
  public abstract void removeLocationUpdates(String paramString);

  public abstract void requestLocationUpdates(String paramString, long paramLong, float paramFloat, boolean paramBoolean);

  public abstract void setLocationListener(LocationListener paramLocationListener);
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.location.LocationProxy
 * JD-Core Version:    0.6.2
 */