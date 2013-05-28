package com.google.glass.home.sync;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.Log;
import com.google.glass.home.HomeApplication;
import com.google.glass.location.GlassLocationManager;
import com.google.glass.location.LocationHelper;
import com.google.glass.net.ProtoRequestDispatcher;
import com.google.glass.net.ProtoResponseHandler;
import com.google.glass.net.ServerConstants.Action;
import com.google.glass.util.Assert;
import com.google.glass.util.SettingsSecure;
import com.google.googlex.glass.common.proto.LocationUpdateRequest;
import com.google.googlex.glass.common.proto.LocationUpdateRequest.Builder;
import com.google.googlex.glass.common.proto.LocationUpdateResponse;
import com.google.googlex.glass.common.proto.ResponseWrapper.ErrorCode;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public class LocationSyncHandler extends BackOffSyncHandler
  implements ProtoResponseHandler<LocationUpdateResponse>
{
  private static final long LOCATION_UPDATE_TIMEOUT_MS = TimeUnit.SECONDS.toMillis(30L);
  private static final long MAX_LOCATION_AGE_MS = TimeUnit.MINUTES.toMillis(2L);
  private static final long MIN_SYNC_INTERVAL_MS = TimeUnit.MINUTES.toMillis(5L);
  private static final String TAG = LocationSyncHandler.class.getSimpleName();
  private final Context context;
  private long lastSuccessTime = -1L;
  private final GlassLocationManager locationManager = GlassLocationManager.getInstance();

  LocationSyncHandler(Context paramContext)
  {
    this.context = paramContext;
  }

  private Location awaitLocationUpdate()
  {
    final AtomicReference localAtomicReference = new AtomicReference(null);
    final CountDownLatch localCountDownLatch = new CountDownLatch(1);
    LocationListener local1 = new LocationListener()
    {
      public void onLocationChanged(Location paramAnonymousLocation)
      {
        localAtomicReference.set(paramAnonymousLocation);
        localCountDownLatch.countDown();
      }

      public void onProviderDisabled(String paramAnonymousString)
      {
      }

      public void onProviderEnabled(String paramAnonymousString)
      {
      }

      public void onStatusChanged(String paramAnonymousString, int paramAnonymousInt, Bundle paramAnonymousBundle)
      {
      }
    };
    this.locationManager.requestLocationUpdates("network", 0L, 0.0F, local1);
    try
    {
      localCountDownLatch.await(LOCATION_UPDATE_TIMEOUT_MS, TimeUnit.MILLISECONDS);
      return (Location)localAtomicReference.get();
    }
    catch (InterruptedException localInterruptedException)
    {
      Thread.currentThread().interrupt();
      return null;
    }
    finally
    {
      this.locationManager.removeUpdates(local1);
    }
  }

  private static boolean isUsableLocation(Location paramLocation)
  {
    if (paramLocation == null);
    while (System.currentTimeMillis() - paramLocation.getTime() > MAX_LOCATION_AGE_MS)
      return false;
    return true;
  }

  private void reportLocation(Location paramLocation)
  {
    long l = System.currentTimeMillis() - paramLocation.getTime();
    Log.i(TAG, "Location found, age: " + l + " ms. Reporting.");
    String str1 = new SettingsSecure(this.context.getContentResolver()).getString("android_id");
    String str2 = "device:" + str1;
    LocationUpdateRequest.Builder localBuilder = LocationUpdateRequest.newBuilder().setDeviceId(str1).setLocation(LocationHelper.toLocationProto(paramLocation, str2));
    ProtoRequestDispatcher localProtoRequestDispatcher = HomeApplication.from(this.context).getRequestDispatcher();
    if (localProtoRequestDispatcher != null)
      localProtoRequestDispatcher.blockingDispatch(ServerConstants.Action.REPORT_LOCATION, localBuilder.build(), LocationUpdateResponse.PARSER, this, true);
  }

  protected String getTag()
  {
    return TAG;
  }

  public void onCancel()
  {
    Log.w(TAG, "Sync request cancelled");
  }

  public void onError(ResponseWrapper.ErrorCode paramErrorCode)
  {
    Log.e(TAG, "Sync error: " + paramErrorCode);
    handleFail();
  }

  public void onSuccess(LocationUpdateResponse paramLocationUpdateResponse)
  {
    Log.i(TAG, "Successfully reported location.");
    this.lastSuccessTime = SystemClock.elapsedRealtime();
    handleSuccess();
  }

  public void performLocationSync()
  {
    Assert.assertNotUiThread();
    long l = SystemClock.elapsedRealtime();
    if (this.lastSuccessTime < 0L)
      Log.i(TAG, "Starting sync.");
    while (true)
    {
      Location localLocation1 = this.locationManager.getLastKnownLocation("gps");
      if (!isUsableLocation(localLocation1))
        break label158;
      reportLocation(localLocation1);
      return;
      if (l - this.lastSuccessTime < MIN_SYNC_INTERVAL_MS)
        break;
      Log.i(TAG, "Starting sync. Last successful sync was " + TimeUnit.MILLISECONDS.toSeconds(l - this.lastSuccessTime) + " sec ago.");
    }
    Log.i(TAG, "Skipping sync. Last successful sync was " + TimeUnit.MILLISECONDS.toSeconds(l - this.lastSuccessTime) + " sec ago.");
    return;
    label158: Location localLocation2 = this.locationManager.getLastKnownLocation("network");
    if (isUsableLocation(localLocation2))
    {
      reportLocation(localLocation2);
      return;
    }
    Location localLocation3 = awaitLocationUpdate();
    if (localLocation3 != null)
    {
      reportLocation(localLocation3);
      return;
    }
    Log.i(TAG, "No location found");
    handleSuccess();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.sync.LocationSyncHandler
 * JD-Core Version:    0.6.2
 */