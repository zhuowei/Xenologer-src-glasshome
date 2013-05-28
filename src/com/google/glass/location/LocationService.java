package com.google.glass.location;

import android.app.Service;
import android.content.Intent;
import android.location.GpsStatus;
import android.location.GpsStatus.Listener;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IBinder.DeathRecipient;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import com.google.glass.util.Assert;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class LocationService extends Service
{
  private static final boolean ENABLE_LOCAL_GPS = false;
  private static final long GPS_STALENESS_THRESHOLD_MS = 20000L;
  private static final long NETWORK_STALENESS_THRESHOLD_MS = 120000L;
  private static final long NO_TIME = -4611686018427387904L;
  private static final String TAG = LocationService.class.getSimpleName();
  private static LocationService runningInstance;
  private final HashMap<Integer, String> clientNames = new HashMap();
  private LocationRequest combinedGpsRequest;
  private LocationRequest combinedNetworkRequest;
  private boolean connectedToCompanion;
  private final Runnable gpsUpdateRunnable = new UpdateRunnable(null);
  private final Handler handler = new Handler();
  private final Messenger incoming = new Messenger(new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      LocationService.this.handleIncomingMessage(paramAnonymousMessage);
    }
  });
  private final HashMap<String, Location> lastKnownLocations = new HashMap();
  private final LocalLocationListener localGpsListener = new LocalLocationListener(null);
  private final RequestState localGpsState = new RequestState(null);
  private final LocationListener localNetworkListener = new LocalLocationListener(null);
  private final RequestState localNetworkState = new RequestState(null);
  private LocationManager localProvider;
  private final Runnable networkUpdateRunnable = new UpdateRunnable(null);
  private final HashMap<Integer, Messenger> outgoing = new HashMap();
  private final RequestState remoteGpsState = new RequestState(null);
  private final LocationListener remoteLocationListener = new RemoteLocationListener(null);
  private final RequestState remoteNetworkState = new RequestState(null);
  private LocationProxy remoteProvider;
  private final ArrayList<LocationRequest> requests = new ArrayList();

  private String getClientName(int paramInt)
  {
    String str = (String)this.clientNames.get(Integer.valueOf(paramInt));
    if (str == null)
      str = String.valueOf(paramInt);
    return str;
  }

  private LocationRequest getCombinedRequest(String paramString)
  {
    LocationRequest localLocationRequest1 = null;
    int i = 0;
    if (i < this.requests.size())
    {
      LocationRequest localLocationRequest2 = (LocationRequest)this.requests.get(i);
      if (localLocationRequest2.getProvider().equals(paramString))
        if (localLocationRequest1 != null)
          break label60;
      for (localLocationRequest1 = new LocationRequest(localLocationRequest2); ; localLocationRequest1 = new LocationRequest(localLocationRequest2.getProvider(), Math.min(localLocationRequest2.getMinTime(), localLocationRequest1.getMinTime()), Math.min(localLocationRequest2.getMinDistance(), localLocationRequest1.getMinDistance())))
        label60: 
        do
        {
          i++;
          break;
        }
        while ((localLocationRequest2.getMinTime() >= localLocationRequest1.getMinTime()) && (localLocationRequest2.getMinDistance() >= localLocationRequest1.getMinDistance()));
    }
    return localLocationRequest1;
  }

  private RequestState getProviderState(String paramString, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      if (paramString.equals("gps"))
        return this.localGpsState;
      if (paramString.equals("network"))
        return this.localNetworkState;
    }
    else
    {
      if (paramString.equals("gps"))
        return this.remoteGpsState;
      if (paramString.equals("network"))
        return this.remoteNetworkState;
    }
    return null;
  }

  public static LocationService getRunningInstance()
  {
    Assert.assertUiThread();
    return runningInstance;
  }

  private void handleCompanionConnected()
  {
    Assert.assertUiThread();
    Log.d(TAG, "onCompanionConnected");
    this.connectedToCompanion = true;
    this.remoteGpsState.request = null;
    this.remoteNetworkState.request = null;
    updateLocationRequests();
  }

  private void handleIncomingMessage(Message paramMessage)
  {
    Assert.assertUiThread();
    Log.d(TAG, "Incoming message: " + LocationConstants.messageTypeToString(paramMessage.what));
    switch (paramMessage.what)
    {
    default:
      return;
    case 1:
      handleRegisterClient(paramMessage);
      return;
    case 2:
      handleRequestUpdates(paramMessage);
      return;
    case 3:
    }
    handleRemoveUpdates(paramMessage);
  }

  private void handleLocationChanged(Location paramLocation, boolean paramBoolean)
  {
    Assert.assertUiThread();
    if ((paramLocation.getLatitude() == 0.0D) && (paramLocation.getLongitude() == 0.0D));
    String str1;
    long l;
    do
    {
      do
      {
        return;
        str1 = paramLocation.getProvider();
        String str2 = TAG;
        StringBuilder localStringBuilder = new StringBuilder().append("LocationChanged ").append(str1);
        if (paramBoolean);
        for (String str3 = " local"; ; str3 = " remote")
        {
          Log.d(str2, str3);
          this.lastKnownLocations.put(str1, paramLocation);
          l = SystemClock.uptimeMillis();
          getProviderState(str1, paramBoolean).lastLocationTime = l;
          if ((!paramBoolean) && (isStale(paramLocation)))
            break;
          for (int i = 0; i < this.requests.size(); i++)
          {
            LocationRequest localLocationRequest = (LocationRequest)this.requests.get(i);
            if (localLocationRequest.getProvider().equals(str1))
              sendLocationMessage(localLocationRequest, paramLocation);
          }
        }
        Log.d(TAG, "Dropping stale remote location");
      }
      while (!paramBoolean);
      updateLocationRequests();
      if (str1.equals("gps"))
      {
        this.handler.removeCallbacks(this.gpsUpdateRunnable);
        this.handler.postAtTime(this.gpsUpdateRunnable, 20000L + l);
        return;
      }
    }
    while (!str1.equals("network"));
    this.handler.removeCallbacks(this.networkUpdateRunnable);
    this.handler.postAtTime(this.networkUpdateRunnable, 120000L + l);
  }

  private void handleRegisterClient(Message paramMessage)
  {
    final int i = paramMessage.arg1;
    String str = paramMessage.getData().getString("name");
    this.outgoing.put(Integer.valueOf(i), paramMessage.replyTo);
    this.clientNames.put(Integer.valueOf(i), str + ":" + i);
    Log.i(TAG, "Registered client " + getClientName(i) + " (" + this.outgoing.size() + " total)");
    try
    {
      paramMessage.replyTo.getBinder().linkToDeath(new IBinder.DeathRecipient()
      {
        public void binderDied()
        {
          LocationService.this.postOnClientDisconnected(Integer.valueOf(i));
        }
      }
      , 0);
      Iterator localIterator = this.lastKnownLocations.values().iterator();
      while (localIterator.hasNext())
        sendLocationMessage(i, -1, (Location)localIterator.next());
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
        onClientDisconnected(Integer.valueOf(i));
    }
  }

  private void handleRemoveUpdates(Message paramMessage)
  {
    LocationRequest localLocationRequest = LocationRequest.fromBundle(paramMessage.getData());
    if (localLocationRequest == null)
    {
      Log.e(TAG, "Malformed removeUpdates message!");
      return;
    }
    Log.d(TAG, "Removing listener: " + localLocationRequest);
    for (int i = -1 + this.requests.size(); i >= 0; i--)
      if (((LocationRequest)this.requests.get(i)).matchesListener(localLocationRequest))
        this.requests.remove(i);
    onListenersChanged();
  }

  private void handleRequestUpdates(Message paramMessage)
  {
    LocationRequest localLocationRequest = LocationRequest.fromBundle(paramMessage.getData());
    if (localLocationRequest == null)
    {
      Log.e(TAG, "Malformed requestUpdates message!");
      return;
    }
    Log.d(TAG, "Adding listener: " + localLocationRequest.toString());
    this.requests.add(localLocationRequest);
    onListenersChanged();
  }

  private static boolean hasSameRequestParameters(LocationRequest paramLocationRequest1, LocationRequest paramLocationRequest2)
  {
    if (paramLocationRequest1 == paramLocationRequest2);
    do
    {
      return true;
      if ((paramLocationRequest1 == null) || (paramLocationRequest2 == null))
        return false;
    }
    while ((paramLocationRequest1.getProvider().equals(paramLocationRequest2.getProvider())) && (paramLocationRequest1.getMinDistance() == paramLocationRequest2.getMinDistance()) && (paramLocationRequest1.getMinTime() == paramLocationRequest2.getMinTime()));
    return false;
  }

  private boolean isLocalGpsLocationStale()
  {
    return SystemClock.uptimeMillis() - this.localGpsState.lastLocationTime >= 20000L;
  }

  private boolean isLocalNetworkLocationStale()
  {
    return SystemClock.uptimeMillis() - this.localNetworkState.lastLocationTime >= 120000L;
  }

  private boolean isStale(Location paramLocation)
  {
    long l = System.currentTimeMillis();
    if ("gps".equals(paramLocation.getProvider()))
      if (l - paramLocation.getTime() < 20000L);
    while ((!"network".equals(paramLocation.getProvider())) || (l - paramLocation.getTime() >= 120000L))
    {
      return true;
      return false;
    }
    return false;
  }

  private void onClientDisconnected(Integer paramInteger)
  {
    Assert.assertUiThread();
    String str = getClientName(paramInteger.intValue());
    this.outgoing.remove(paramInteger);
    this.clientNames.remove(paramInteger);
    for (int i = -1 + this.requests.size(); i >= 0; i--)
      if (((LocationRequest)this.requests.get(i)).getPid() == paramInteger.intValue())
        this.requests.remove(i);
    Log.i(TAG, "Disconnected from " + str + " (" + this.outgoing.size() + " remaining listeners)");
    onListenersChanged();
  }

  private void onListenersChanged()
  {
    this.combinedGpsRequest = getCombinedRequest("gps");
    this.combinedNetworkRequest = getCombinedRequest("network");
    updateLocationRequests();
  }

  private void postOnClientDisconnected(final Integer paramInteger)
  {
    this.handler.post(new Runnable()
    {
      public void run()
      {
        LocationService.this.onClientDisconnected(paramInteger);
      }
    });
  }

  private void sendLocationMessage(int paramInt1, int paramInt2, Location paramLocation)
  {
    Message localMessage = Message.obtain(null, 101);
    localMessage.arg1 = paramInt2;
    localMessage.obj = paramLocation;
    sendMessage(Integer.valueOf(paramInt1), localMessage);
  }

  private void sendLocationMessage(LocationRequest paramLocationRequest, Location paramLocation)
  {
    sendLocationMessage(paramLocationRequest.getPid(), paramLocationRequest.getListenerId(), paramLocation);
  }

  private void sendMessage(Integer paramInteger, Message paramMessage)
  {
    Messenger localMessenger = (Messenger)this.outgoing.get(paramInteger);
    if (localMessenger == null)
    {
      Log.e(TAG, "No messenger for pid: " + paramInteger);
      return;
    }
    try
    {
      localMessenger.send(paramMessage);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      onClientDisconnected(paramInteger);
    }
  }

  private void updateLocationRequests()
  {
    LocationRequest localLocationRequest1;
    LocationRequest localLocationRequest2;
    label194: String str1;
    String str2;
    label308: String str3;
    label338: String str4;
    label368: StringBuilder localStringBuilder4;
    if (isLocalGpsLocationStale())
    {
      localLocationRequest1 = this.combinedGpsRequest;
      LocationProxy localLocationProxy = this.remoteProvider;
      int i = 0;
      if (localLocationProxy != null)
      {
        boolean bool = hasSameRequestParameters(localLocationRequest1, this.remoteGpsState.request);
        i = 0;
        if (!bool)
        {
          this.remoteProvider.removeLocationUpdates("gps");
          if (localLocationRequest1 != null)
            this.remoteProvider.requestLocationUpdates("gps", this.combinedGpsRequest.getMinTime(), this.combinedGpsRequest.getMinDistance(), true);
          this.remoteGpsState.request = localLocationRequest1;
          i = 1;
        }
      }
      if ((this.localProvider.getProvider("network") != null) && (!hasSameRequestParameters(this.combinedNetworkRequest, this.localNetworkState.request)))
      {
        this.localProvider.removeUpdates(this.localNetworkListener);
        if (this.combinedNetworkRequest != null)
          this.localProvider.requestLocationUpdates("network", this.combinedNetworkRequest.getMinTime(), this.combinedNetworkRequest.getMinDistance(), this.localNetworkListener);
        this.localNetworkState.request = this.combinedNetworkRequest;
        i = 1;
      }
      if (!isLocalNetworkLocationStale())
        break label420;
      localLocationRequest2 = this.combinedNetworkRequest;
      if ((this.remoteProvider != null) && (!hasSameRequestParameters(localLocationRequest2, this.remoteNetworkState.request)))
      {
        this.remoteProvider.removeLocationUpdates("network");
        if (localLocationRequest2 != null)
          this.remoteProvider.requestLocationUpdates("network", this.combinedNetworkRequest.getMinTime(), this.combinedNetworkRequest.getMinDistance(), true);
        this.remoteNetworkState.request = localLocationRequest2;
        i = 1;
      }
      if (i != 0)
      {
        str1 = TAG;
        StringBuilder localStringBuilder1 = new StringBuilder().append("Requests Updated:  localGps:");
        if (this.localGpsState.request != null)
          break label426;
        str2 = "OFF";
        StringBuilder localStringBuilder2 = localStringBuilder1.append(str2).append(" remoteGps:");
        if (this.remoteGpsState.request != null)
          break label434;
        str3 = "OFF";
        StringBuilder localStringBuilder3 = localStringBuilder2.append(str3).append(" localNetwork:");
        if (this.localNetworkState.request != null)
          break label442;
        str4 = "OFF";
        localStringBuilder4 = localStringBuilder3.append(str4).append(" remoteNetwork:");
        if (this.remoteNetworkState.request != null)
          break label450;
      }
    }
    label420: label426: label434: label442: label450: for (String str5 = "OFF"; ; str5 = "ON")
    {
      Log.d(str1, str5);
      return;
      localLocationRequest1 = null;
      break;
      localLocationRequest2 = null;
      break label194;
      str2 = "ON";
      break label308;
      str3 = "ON";
      break label338;
      str4 = "ON";
      break label368;
    }
  }

  protected void dump(FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    try
    {
      paramPrintWriter.append("\nCurrent Time: " + SystemClock.uptimeMillis());
      paramPrintWriter.append("\nConnected: " + this.connectedToCompanion);
      paramPrintWriter.append("\nClient Processes:\n");
      Iterator localIterator1 = this.clientNames.values().iterator();
      while (localIterator1.hasNext())
      {
        String str2 = (String)localIterator1.next();
        paramPrintWriter.append("  " + str2 + "\n");
      }
    }
    finally
    {
    }
    paramPrintWriter.append("\nListeners:\n");
    for (int i = 0; i < this.requests.size(); i++)
      paramPrintWriter.append("  " + i + ": " + this.requests.get(i) + "\n");
    paramPrintWriter.append("\nLast Known Locations:\n");
    Iterator localIterator2 = this.lastKnownLocations.keySet().iterator();
    while (localIterator2.hasNext())
    {
      String str1 = (String)localIterator2.next();
      paramPrintWriter.append("  " + str1 + ": " + this.lastKnownLocations.get(str1) + "\n");
    }
    paramPrintWriter.append("\nState:");
    paramPrintWriter.append("\n  Local GPS:      ").append(this.localGpsState.toString());
    paramPrintWriter.append("\n  Remote GPS:     ").append(this.remoteGpsState.toString());
    paramPrintWriter.append("\n  Local Network:  ").append(this.localNetworkState.toString());
    paramPrintWriter.append("\n  Remote Network: ").append(this.remoteNetworkState.toString());
    paramPrintWriter.append("\n");
  }

  public void handleCompanionDisconnected()
  {
    Assert.assertUiThread();
    Log.d(TAG, "onCompanionDisconnected");
    this.connectedToCompanion = false;
    this.remoteGpsState.request = null;
    this.remoteNetworkState.request = null;
  }

  public IBinder onBind(Intent paramIntent)
  {
    Log.d(TAG, "onBind");
    return this.incoming.getBinder();
  }

  public void onCompanionConnected()
  {
    this.handler.post(new Runnable()
    {
      public void run()
      {
        LocationService.this.handleCompanionConnected();
      }
    });
  }

  public void onCompanionDisconnected()
  {
    this.handler.post(new Runnable()
    {
      public void run()
      {
        LocationService.this.handleCompanionDisconnected();
      }
    });
  }

  public void onCreate()
  {
    Log.d(TAG, "onCreate");
    runningInstance = this;
    super.onCreate();
    this.localProvider = ((LocationManager)getSystemService("location"));
    updateLocationRequests();
  }

  public void onDestroy()
  {
    Log.d(TAG, "onDestroy");
    runningInstance = null;
    if (this.remoteProvider != null)
    {
      this.remoteProvider.removeLocationUpdates("gps");
      this.remoteProvider.removeLocationUpdates("network");
      this.remoteProvider.setLocationListener(null);
    }
    this.localProvider.removeUpdates(this.localGpsListener);
    this.localProvider.removeGpsStatusListener(this.localGpsListener);
    this.localProvider.removeUpdates(this.localNetworkListener);
    super.onDestroy();
  }

  public void setLocationProxy(LocationProxy paramLocationProxy)
  {
    Log.d(TAG, "setLocationProxy: " + paramLocationProxy.getClass().getSimpleName());
    this.remoteProvider = paramLocationProxy;
    this.remoteProvider.setLocationListener(this.remoteLocationListener);
  }

  private class LocalLocationListener
    implements LocationListener, GpsStatus.Listener
  {
    private GpsStatus gpsStatus;

    private LocalLocationListener()
    {
    }

    public void onGpsStatusChanged(int paramInt)
    {
      this.gpsStatus = LocationService.this.localProvider.getGpsStatus(this.gpsStatus);
    }

    public void onLocationChanged(Location paramLocation)
    {
      LocationHelper.addSatelliteExtras(paramLocation, this.gpsStatus);
      LocationService.this.handleLocationChanged(paramLocation, true);
    }

    public void onProviderDisabled(String paramString)
    {
    }

    public void onProviderEnabled(String paramString)
    {
    }

    public void onStatusChanged(String paramString, int paramInt, Bundle paramBundle)
    {
    }
  }

  private class RemoteLocationListener
    implements LocationListener
  {
    private RemoteLocationListener()
    {
    }

    public void onLocationChanged(Location paramLocation)
    {
      LocationService.this.handleLocationChanged(paramLocation, false);
    }

    public void onProviderDisabled(String paramString)
    {
    }

    public void onProviderEnabled(String paramString)
    {
    }

    public void onStatusChanged(String paramString, int paramInt, Bundle paramBundle)
    {
    }
  }

  private static class RequestState
  {
    long lastLocationTime = -4611686018427387904L;
    LocationRequest request;

    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      if (this.request != null)
      {
        localStringBuilder.append("[ON ");
        localStringBuilder.append(" minTime:").append(this.request.getMinTime());
        localStringBuilder.append(" minDistance:").append(this.request.getMinDistance());
        if (this.lastLocationTime != -4611686018427387904L)
          break label94;
        localStringBuilder.append(" lastLocationTime:none");
      }
      while (true)
      {
        return "]";
        localStringBuilder.append("[OFF");
        break;
        label94: localStringBuilder.append(" lastLocationTime:").append(this.lastLocationTime);
      }
    }
  }

  private class UpdateRunnable
    implements Runnable
  {
    private UpdateRunnable()
    {
    }

    public void run()
    {
      LocationService.this.updateLocationRequests();
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.location.LocationService
 * JD-Core Version:    0.6.2
 */