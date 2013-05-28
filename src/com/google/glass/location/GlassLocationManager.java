package com.google.glass.location;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Process;
import android.os.RemoteException;
import android.util.Log;
import com.google.glass.util.Assert;
import java.util.ArrayList;
import java.util.HashMap;

public class GlassLocationManager
{
  public static final String EXTRA_LEVEL_ID = "levelId";
  public static final String EXTRA_LEVEL_NUMBER_E3 = "levelNumberE3";
  public static final String EXTRA_RECEIVER = "receiver";
  public static final String EXTRA_SATELLITES_USED_IN_FIX = "satellites";
  public static final String EXTRA_VISIBLE_SATELLITES = "visible_satellites";
  private static final String TAG = GlassLocationManager.class.getSimpleName();
  private static GlassLocationManager instance;
  private final ServiceConnection connection = new ServiceConnection()
  {
    public void onServiceConnected(ComponentName paramAnonymousComponentName, IBinder paramAnonymousIBinder)
    {
      GlassLocationManager.this.handleConnection(paramAnonymousComponentName, paramAnonymousIBinder);
    }

    public void onServiceDisconnected(ComponentName paramAnonymousComponentName)
    {
      GlassLocationManager.this.handleDisconnection();
    }
  };
  private ConnectionState connectionState = ConnectionState.DISCONNECTED;
  private final Context context;
  private final Messenger incoming = new Messenger(new Handler(Looper.getMainLooper())
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      GlassLocationManager.this.handleIncomingMessage(paramAnonymousMessage);
    }
  });
  private final HashMap<String, Location> lastKnownLocations = new HashMap();
  private final ArrayList<ListenerRecord> listeners = new ArrayList();
  private int nextListenerId = 1;
  private Messenger outgoing = null;
  private final LocationManager systemLocationManager;

  private GlassLocationManager(Context paramContext)
  {
    this.context = paramContext;
    this.systemLocationManager = ((LocationManager)paramContext.getSystemService("location"));
  }

  private void connectIfNecessary()
  {
    try
    {
      if (this.connectionState == ConnectionState.DISCONNECTED)
      {
        Log.i(TAG, "Opening connection to LocationService from: " + this.context.getPackageName());
        Intent localIntent = new Intent();
        localIntent.setComponent(LocationConstants.SERVICE_COMPONENT);
        if (!this.context.bindService(localIntent, this.connection, 1))
          break label86;
        this.connectionState = ConnectionState.CONNECTING;
      }
      while (true)
      {
        return;
        label86: Log.w(TAG, "bindService() failed. Remaining disconnected.");
      }
    }
    finally
    {
    }
  }

  public static GlassLocationManager getInstance()
  {
    try
    {
      if (instance == null)
        throw new IllegalAccessError("GlassLocationManager was not initialised.");
    }
    finally
    {
    }
    instance.connectIfNecessary();
    return instance;
  }

  private void handleConnection(ComponentName paramComponentName, IBinder paramIBinder)
  {
    try
    {
      Assert.assertUiThread();
      Log.d(TAG, "Connected to " + paramComponentName.getClassName());
      this.outgoing = new Messenger(paramIBinder);
      this.connectionState = ConnectionState.CONNECTED;
      Message localMessage = Message.obtain(null, 1);
      localMessage.replyTo = this.incoming;
      Bundle localBundle = new Bundle();
      localBundle.putString("name", this.context.getPackageName());
      localMessage.setData(localBundle);
      sendMessage(localMessage);
      for (int i = 0; i < this.listeners.size(); i++)
        sendMessage(2, ((ListenerRecord)this.listeners.get(i)).request.toBundle());
      return;
    }
    finally
    {
    }
  }

  private void handleDisconnection()
  {
    try
    {
      Assert.assertUiThread();
      Log.d(TAG, "Disconnected from LocationService!");
      this.connectionState = ConnectionState.DISCONNECTED;
      this.outgoing = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void handleIncomingMessage(Message paramMessage)
  {
    int i = paramMessage.arg1;
    switch (paramMessage.what)
    {
    default:
      Log.e(TAG, "Unhandled message type: " + paramMessage.what);
    case 101:
    }
    while (true)
    {
      return;
      Location localLocation = (Location)paramMessage.obj;
      try
      {
        this.lastKnownLocations.put(localLocation.getProvider(), localLocation);
        for (ListenerRecord localListenerRecord : snapshotListeners())
          if (localListenerRecord.request.getListenerId() == i)
            localListenerRecord.listener.onLocationChanged(localLocation);
      }
      finally
      {
      }
    }
  }

  public static void init(Context paramContext)
  {
    Assert.assertUiThread();
    if (instance == null)
      instance = new GlassLocationManager(paramContext.getApplicationContext());
  }

  private void sendMessage(int paramInt, Bundle paramBundle)
  {
    Message localMessage = Message.obtain(null, paramInt);
    localMessage.setData(paramBundle);
    sendMessage(localMessage);
  }

  private void sendMessage(Message paramMessage)
  {
    if (this.connectionState != ConnectionState.CONNECTED)
    {
      Log.w(TAG, "Dropping message: " + LocationConstants.messageTypeToString(paramMessage.what) + ", state: " + this.connectionState);
      connectIfNecessary();
      return;
    }
    Log.d(TAG, "Sending message: " + LocationConstants.messageTypeToString(paramMessage.what));
    try
    {
      paramMessage.arg1 = Process.myPid();
      this.outgoing.send(paramMessage);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      Log.e(TAG, "RemoteException sending message: " + LocationConstants.messageTypeToString(paramMessage.what));
      handleDisconnection();
      connectIfNecessary();
    }
  }

  public static void setInstanceForTest(GlassLocationManager paramGlassLocationManager)
  {
    Assert.assertIsTest();
    instance = paramGlassLocationManager;
  }

  private ListenerRecord[] snapshotListeners()
  {
    try
    {
      ListenerRecord[] arrayOfListenerRecord = (ListenerRecord[])this.listeners.toArray(new ListenerRecord[this.listeners.size()]);
      return arrayOfListenerRecord;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void disconnect()
  {
    try
    {
      if (this.connectionState == ConnectionState.CONNECTED)
      {
        Log.i(TAG, "Disconnecting...");
        this.context.unbindService(this.connection);
        this.connectionState = ConnectionState.DISCONNECTING;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public Location getLastKnownLocation(String paramString)
  {
    try
    {
      Location localLocation1 = (Location)this.lastKnownLocations.get(paramString);
      Location localLocation2 = this.systemLocationManager.getLastKnownLocation(paramString);
      Location localLocation3;
      if (localLocation1 != null)
      {
        if (localLocation2 != null)
        {
          long l1 = localLocation2.getTime();
          long l2 = localLocation1.getTime();
          if (l1 <= l2);
        }
      }
      else
      {
        localLocation3 = localLocation2;
        if (localLocation3 != null)
          break label77;
      }
      label77: for (Location localLocation4 = null; ; localLocation4 = new Location(localLocation3))
      {
        return localLocation4;
        localLocation3 = localLocation1;
        break;
      }
    }
    finally
    {
    }
  }

  public void removeUpdates(LocationListener paramLocationListener)
  {
    try
    {
      for (int i = -1 + this.listeners.size(); i >= 0; i--)
        if (((ListenerRecord)this.listeners.get(i)).listener == paramLocationListener)
          sendMessage(3, ((ListenerRecord)this.listeners.remove(i)).request.toBundle());
      return;
    }
    finally
    {
    }
  }

  public void requestLocationUpdates(String paramString, long paramLong, float paramFloat, LocationListener paramLocationListener)
  {
    try
    {
      int i = Process.myPid();
      int j = this.nextListenerId;
      this.nextListenerId = (j + 1);
      ListenerRecord localListenerRecord = new ListenerRecord(new LocationRequest(i, j, paramString, paramLong, paramFloat), paramLocationListener);
      this.listeners.add(localListenerRecord);
      sendMessage(2, localListenerRecord.request.toBundle());
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private static enum ConnectionState
  {
    static
    {
      CONNECTING = new ConnectionState("CONNECTING", 1);
      CONNECTED = new ConnectionState("CONNECTED", 2);
      DISCONNECTING = new ConnectionState("DISCONNECTING", 3);
      ConnectionState[] arrayOfConnectionState = new ConnectionState[4];
      arrayOfConnectionState[0] = DISCONNECTED;
      arrayOfConnectionState[1] = CONNECTING;
      arrayOfConnectionState[2] = CONNECTED;
      arrayOfConnectionState[3] = DISCONNECTING;
    }
  }

  private static class ListenerRecord
  {
    final LocationListener listener;
    final LocationRequest request;

    ListenerRecord(LocationRequest paramLocationRequest, LocationListener paramLocationListener)
    {
      this.request = paramLocationRequest;
      this.listener = paramLocationListener;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.location.GlassLocationManager
 * JD-Core Version:    0.6.2
 */