package com.google.glass.home.companion;

import android.app.Service;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothServerSocket;
import android.bluetooth.BluetoothSocket;
import android.content.Intent;
import android.location.LocationListener;
import android.os.Binder;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.util.LruCache;
import android.util.Pair;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.app.GlassApplication;
import com.google.glass.bluetooth.BluetoothAdapterState;
import com.google.glass.bluetooth.BluetoothAdapterState.Listener;
import com.google.glass.companion.CompanionConstants;
import com.google.glass.companion.CompanionMessagingUtil;
import com.google.glass.companion.CompanionUtils;
import com.google.glass.companion.Proto.Envelope;
import com.google.glass.companion.Proto.Envelope.Builder;
import com.google.glass.companion.Proto.LocationRequest;
import com.google.glass.companion.Proto.LocationRequest.Builder;
import com.google.glass.companion.Proto.LocationRequest.RequestType;
import com.google.glass.hidden.HiddenBluetoothDevice;
import com.google.glass.home.R.string;
import com.google.glass.location.LocationProxy;
import com.google.glass.logging.UserEventAction;
import com.google.glass.logging.UserEventAction.TimelineItemInserted;
import com.google.glass.logging.UserEventHelper;
import com.google.glass.timeline.TimelineHelper;
import com.google.glass.timeline.TimelineNotificationHelper;
import com.google.glass.util.Assert;
import com.google.glass.util.BluetoothHelper;
import com.google.glass.util.FullScreenMessagingDialogHelper;
import com.google.glass.util.PowerHelper;
import com.google.glass.util.WifiHelper;
import com.google.googlex.glass.common.proto.TimelineItem;
import java.io.Closeable;
import java.io.IOException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

public class CompanionService extends Service
  implements LocationProxy, BluetoothAdapterState.Listener
{
  private static final int MAX_PENDING_ITEMS = 20;
  private static final String TAG = CompanionService.class.getSimpleName();
  private static final int WHAT_START_LISTENING;
  private static volatile ConnectionState state;
  private AcceptThread acceptThread;
  private final BluetoothAdapterState adapterState = new BluetoothAdapterState(this);
  private final Binder binder = new CompanionBinder();
  private final BluetoothAdapter btAdapter = BluetoothAdapter.getDefaultAdapter();
  private ConnectedThread connectedThread;
  private volatile CompanionConnection connection = null;
  private final ConnectionController connectionController = new ConnectionController(this);
  private final Handler handler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      switch (paramAnonymousMessage.what)
      {
      default:
        super.handleMessage(paramAnonymousMessage);
        return;
      case 0:
      }
      CompanionService.this.handler.removeMessages(0);
      CompanionService.this.start();
    }
  };
  private final Messenger incoming;
  private final Set<CompanionListener> listeners = new HashSet();
  private LocationListener locationListener;
  private final LruCache<Long, MessageHandler> pendingMessageHandlers = new LruCache(20)
  {
    protected void entryRemoved(boolean paramAnonymousBoolean, Long paramAnonymousLong, MessageHandler paramAnonymousMessageHandler1, MessageHandler paramAnonymousMessageHandler2)
    {
      if (paramAnonymousBoolean)
      {
        Log.i(CompanionService.TAG, "evicting handler with key " + paramAnonymousLong);
        paramAnonymousMessageHandler1.handle(null);
      }
    }
  };
  private PowerHelper powerHelper;
  private BluetoothDevice previouslyConnectedCompanionDevice;
  private int remoteVersion = -1;
  private BluetoothDevice temporaryScreencastDevice;
  private TimelineHelper timelineHelper;
  private final UpgradeListener upgradeListener = new UpgradeListener(null);
  private WifiHelper wifiHelper;

  public CompanionService()
  {
    state = ConnectionState.NONE;
    HandlerThread localHandlerThread = new HandlerThread("CompanionService.incoming");
    localHandlerThread.start();
    this.incoming = new Messenger(new Handler(localHandlerThread.getLooper())
    {
      public void handleMessage(Message paramAnonymousMessage)
      {
        final Pair localPair = CompanionMessagingUtil.parseRequestMessage(paramAnonymousMessage);
        Log.i(CompanionService.TAG, "Handling message with replyable id " + localPair.first);
        boolean bool = ((Long)localPair.first).longValue() < 0L;
        MessageHandler local1 = null;
        if (bool)
        {
          Messenger localMessenger = paramAnonymousMessage.replyTo;
          local1 = null;
          if (localMessenger != null)
          {
            local1 = new MessageHandler()
            {
              public void handle(Proto.Envelope paramAnonymous2Envelope)
              {
                Log.i(CompanionService.TAG, "Handling replyable message from companion for " + localPair.first);
                if ((this.val$replyToMessenger.getBinder() != null) && (this.val$replyToMessenger.getBinder().isBinderAlive()))
                  try
                  {
                    this.val$replyToMessenger.send(CompanionMessagingUtil.createResponseMessage(paramAnonymous2Envelope));
                    return;
                  }
                  catch (RemoteException localRemoteException)
                  {
                    Log.i(CompanionService.TAG, "RemoteException for " + localPair.first);
                    return;
                  }
                Log.i(CompanionService.TAG, "failed to reply message " + localPair.first);
              }
            };
            CompanionService.this.pendingMessageHandlers.put(localPair.first, local1);
          }
        }
        if (!CompanionService.this.sendEnvelope((byte[])localPair.second))
        {
          CompanionService.this.pendingMessageHandlers.remove(localPair.first);
          if (local1 != null)
            local1.handle(null);
        }
      }
    });
  }

  private void connected(BluetoothSocket paramBluetoothSocket, BluetoothDevice paramBluetoothDevice)
  {
    killConnectedThread();
    if (this.acceptThread != null)
    {
      this.acceptThread.cancel();
      this.acceptThread = null;
    }
    Log.d(TAG, "Canceled AcceptThread, starting ConnectedThread...");
    this.connectedThread = new ConnectedThread(paramBluetoothSocket);
    this.connectedThread.start();
  }

  @VisibleForTesting
  public static ConnectionState getConnectionState()
  {
    return state;
  }

  private void killConnectedThread()
  {
    if (this.connectedThread != null)
    {
      this.connectedThread.cancel();
      this.connectedThread = null;
    }
  }

  private boolean sendEnvelope(byte[] paramArrayOfByte)
  {
    CompanionConnection localCompanionConnection = this.connection;
    if (localCompanionConnection != null)
      return localCompanionConnection.getEnvelopeSender().sendEnvelope(paramArrayOfByte);
    return false;
  }

  @VisibleForTesting
  public static void setConnectionState(ConnectionState paramConnectionState)
  {
    state = paramConnectionState;
  }

  public void addCompanionListener(CompanionListener paramCompanionListener)
  {
    if (!this.listeners.contains(paramCompanionListener))
      this.listeners.add(paramCompanionListener);
    this.connectionController.checkImmediate();
  }

  public void closeSocket(Closeable paramCloseable)
  {
    if (paramCloseable == null)
    {
      Log.v(TAG, "No closeable provided");
      return;
    }
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IOException localIOException)
    {
      Log.e(TAG, "Failed to close unwanted closable.", localIOException);
    }
  }

  public LocationListener getLocationListener()
  {
    return this.locationListener;
  }

  public int getRemoteVersion()
  {
    return this.remoteVersion;
  }

  public void handle(Proto.Envelope paramEnvelope, long paramLong)
  {
    MessageHandler localMessageHandler = (MessageHandler)this.pendingMessageHandlers.remove(Long.valueOf(paramLong));
    if (localMessageHandler != null)
    {
      Log.i(TAG, "handle id " + paramLong);
      localMessageHandler.handle(paramEnvelope);
      return;
    }
    Log.i(TAG, "no handle for id " + paramLong);
  }

  public void insertTimelineItem(TimelineItem paramTimelineItem, UserEventAction.TimelineItemInserted paramTimelineItemInserted)
  {
    if (paramTimelineItem == null)
    {
      Log.e(TAG, "Invalid or no TimelineItem given [item=" + paramTimelineItem + ", itemType=" + paramTimelineItemInserted + "].");
      return;
    }
    Log.d(TAG, "Inserting item into timeline [id=" + paramTimelineItem.getId() + ", itemType=" + paramTimelineItemInserted + "].");
    this.timelineHelper.insertTimelineItem(this, paramTimelineItem, paramTimelineItemInserted, null);
    TimelineNotificationHelper.notify(this, paramTimelineItem, 1);
  }

  boolean isConnected()
  {
    return state == ConnectionState.CONNECTED;
  }

  boolean isTetheringErrorDetected()
  {
    return this.connectionController.isTetheringErrorDetected();
  }

  public void notifyCompanionConnected(BluetoothDevice paramBluetoothDevice)
  {
    if (this.listeners != null)
    {
      Iterator localIterator = this.listeners.iterator();
      while (localIterator.hasNext())
        ((CompanionListener)localIterator.next()).onCompanionConnected(paramBluetoothDevice);
    }
    Intent localIntent = new Intent("com.google.glass.action.COMPANION_APP_CONNECTIVITY_CHANGE");
    localIntent.putExtra("com.google.glass.extra.STATE", true);
    localIntent.putExtra("android.bluetooth.device.extra.DEVICE", paramBluetoothDevice);
    sendBroadcast(localIntent);
  }

  public void notifyCompanionConnectionFailed()
  {
    if (this.listeners != null)
    {
      Iterator localIterator = this.listeners.iterator();
      while (localIterator.hasNext())
        ((CompanionListener)localIterator.next()).onCompanionConnectionFailed();
    }
  }

  public void notifyCompanionDisconnected()
  {
    if (this.listeners != null)
    {
      Iterator localIterator = this.listeners.iterator();
      while (localIterator.hasNext())
        ((CompanionListener)localIterator.next()).onCompanionDisconnected();
    }
    Intent localIntent = new Intent("com.google.glass.action.COMPANION_APP_CONNECTIVITY_CHANGE");
    localIntent.putExtra("com.google.glass.extra.STATE", false);
    sendBroadcast(localIntent);
  }

  public void notifyCompanionVersionMismatch(int paramInt1, int paramInt2)
  {
    if (this.listeners != null)
    {
      Iterator localIterator = this.listeners.iterator();
      while (localIterator.hasNext())
        ((CompanionListener)localIterator.next()).onCompanionVersionMismatch(paramInt1, paramInt2);
    }
  }

  public IBinder onBind(Intent paramIntent)
  {
    Log.i(TAG, "Service bound from: " + paramIntent.toString());
    if ((paramIntent != null) && ("com.google.glass.companion.MESSENGER".equals(paramIntent.getAction())))
      return this.incoming.getBinder();
    return this.binder;
  }

  public void onBluetoothAdapterDisabled()
  {
    stop();
  }

  public void onBluetoothAdapterEnabled()
  {
    start();
    this.connectionController.recover();
  }

  public void onCreate()
  {
    super.onCreate();
    this.connectionController.init();
    addCompanionListener(this.connectionController);
    addCompanionListener(this.upgradeListener);
    this.adapterState.addListener(this);
    this.powerHelper = new PowerHelper(this);
    this.wifiHelper = new WifiHelper(this);
    this.timelineHelper = new TimelineHelper();
  }

  public void onDestroy()
  {
    this.adapterState.removeListener(this);
    removeCompanionListener(this.connectionController);
    removeCompanionListener(this.upgradeListener);
    if (this.connection != null)
    {
      this.connection.close();
      this.connection = null;
    }
    killConnectedThread();
    if (this.acceptThread != null)
    {
      this.acceptThread.cancel();
      this.acceptThread = null;
    }
    super.onDestroy();
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    Log.i(TAG, "Starting Companion connection service...");
    return 1;
  }

  public void registerCompanionHandler(long paramLong, MessageHandler paramMessageHandler)
  {
    if (paramMessageHandler != null)
    {
      this.pendingMessageHandlers.put(Long.valueOf(paramLong), paramMessageHandler);
      return;
    }
    this.pendingMessageHandlers.remove(Long.valueOf(paramLong));
  }

  public void removeCompanionListener(CompanionListener paramCompanionListener)
  {
    if (this.listeners.contains(paramCompanionListener))
      this.listeners.remove(paramCompanionListener);
  }

  public void removeLocationUpdates(String paramString)
  {
    Log.d(TAG, "Removing location updates: " + paramString);
    Proto.LocationRequest localLocationRequest = Proto.LocationRequest.newBuilder().setType(Proto.LocationRequest.RequestType.STOP_LISTENING).setProvider(paramString).build();
    CompanionConnection localCompanionConnection = this.connection;
    if (localCompanionConnection != null)
      localCompanionConnection.getEnvelopeSender().sendEnvelopeAsync(CompanionMessagingUtil.newEnvelopeBuilder().setLocationRequestG2C(localLocationRequest).build());
  }

  public void requestLocationUpdates(String paramString, long paramLong, float paramFloat, boolean paramBoolean)
  {
    Log.d(TAG, "Requesting location updates: " + paramString);
    Proto.LocationRequest localLocationRequest = Proto.LocationRequest.newBuilder().setType(Proto.LocationRequest.RequestType.START_LISTENING).setProvider(paramString).setMinTime(paramLong).setMinDistance(paramFloat).setSendLastKnownLocation(paramBoolean).build();
    CompanionConnection localCompanionConnection = this.connection;
    if (localCompanionConnection != null)
      localCompanionConnection.getEnvelopeSender().sendEnvelopeAsync(CompanionMessagingUtil.newEnvelopeBuilder().setLocationRequestG2C(localLocationRequest).build());
  }

  public boolean sendEnvelope(Proto.Envelope paramEnvelope)
  {
    CompanionConnection localCompanionConnection = this.connection;
    if (localCompanionConnection != null)
      return localCompanionConnection.getEnvelopeSender().sendEnvelope(paramEnvelope);
    return false;
  }

  public void setLocationListener(LocationListener paramLocationListener)
  {
    this.locationListener = paramLocationListener;
  }

  void setRemoteVersion(int paramInt)
  {
    this.remoteVersion = paramInt;
  }

  public void setupScreencastAndPair(BluetoothDevice paramBluetoothDevice)
  {
    if (isConnected())
    {
      this.previouslyConnectedCompanionDevice = this.connection.getConnectedDevice();
      Log.d(TAG, "Saving currently connected Companion device: " + BluetoothHelper.loggableDevice(this.previouslyConnectedCompanionDevice));
    }
    while (true)
    {
      this.temporaryScreencastDevice = paramBluetoothDevice;
      Log.d(TAG, "Attempting to pair to " + BluetoothHelper.loggableDevice(paramBluetoothDevice));
      HiddenBluetoothDevice.createBond(paramBluetoothDevice);
      return;
      this.previouslyConnectedCompanionDevice = null;
    }
  }

  public void start()
  {
    killConnectedThread();
    if (this.acceptThread == null)
    {
      this.acceptThread = new AcceptThread();
      this.acceptThread.start();
    }
    state = ConnectionState.LISTENING;
  }

  public void stop()
  {
    killConnectedThread();
    if (this.acceptThread != null)
    {
      this.acceptThread.cancel();
      this.acceptThread = null;
    }
    state = ConnectionState.NONE;
  }

  public void stopScreencastAndRestorePairing()
  {
    Assert.assertTrue(isConnected());
    UserEventHelper localUserEventHelper = GlassApplication.from(this).getUserEventHelper();
    UserEventAction localUserEventAction = UserEventAction.COMPANION_SCREENCAST;
    if (this.temporaryScreencastDevice != null);
    for (String str = "1"; ; str = "2")
    {
      localUserEventHelper.log(localUserEventAction, str);
      if (this.temporaryScreencastDevice != null)
      {
        BluetoothDevice localBluetoothDevice = this.connection.getConnectedDevice();
        Assert.assertTrue(localBluetoothDevice.getAddress().equals(this.temporaryScreencastDevice.getAddress()));
        Log.d(TAG, "Forgetting temporary screencast device: " + BluetoothHelper.loggableDevice(localBluetoothDevice));
        HiddenBluetoothDevice.removeBond(localBluetoothDevice);
        this.temporaryScreencastDevice = null;
      }
      if (this.previouslyConnectedCompanionDevice != null)
      {
        Log.d(TAG, "Re-pairing with " + BluetoothHelper.loggableDevice(this.previouslyConnectedCompanionDevice));
        HiddenBluetoothDevice.createBond(this.previouslyConnectedCompanionDevice);
        this.previouslyConnectedCompanionDevice = null;
      }
      return;
    }
  }

  public void wakeupScreen()
  {
    this.powerHelper.wakeUp();
  }

  private class AcceptThread extends Thread
  {
    private final AtomicBoolean canCloseServerSocket = new AtomicBoolean(false);
    private volatile BluetoothServerSocket serverSocket;

    public AcceptThread()
    {
    }

    private boolean createServerSocket()
    {
      boolean bool = true;
      try
      {
        Log.d(CompanionService.TAG, "Listening using secure SDP: " + CompanionConstants.SECURE_UUID);
        BluetoothServerSocket localBluetoothServerSocket2 = CompanionService.this.btAdapter.listenUsingRfcommWithServiceRecord("Companion", CompanionConstants.SECURE_UUID);
        localBluetoothServerSocket1 = localBluetoothServerSocket2;
        this.serverSocket = localBluetoothServerSocket1;
        if (this.canCloseServerSocket.getAndSet(bool))
        {
          CompanionService.this.closeSocket(this.serverSocket);
          return false;
        }
      }
      catch (IOException localIOException)
      {
        while (true)
        {
          Log.e(CompanionService.TAG, "Failed to listen for Bluetooth server socket connect.", localIOException);
          BluetoothServerSocket localBluetoothServerSocket1 = null;
        }
      }
      if (this.serverSocket != null);
      while (true)
      {
        return bool;
        bool = false;
      }
    }

    public void cancel()
    {
      if (!this.canCloseServerSocket.getAndSet(true))
        return;
      CompanionService.this.closeSocket(this.serverSocket);
    }

    public void run()
    {
      setName("AcceptThread");
      if (!createServerSocket())
        return;
      Log.d(CompanionService.TAG, "AcceptThread now running.");
      while (true)
      {
        BluetoothSocket localBluetoothSocket;
        if (CompanionService.state != CompanionService.ConnectionState.CONNECTED)
        {
          try
          {
            Log.i(CompanionService.TAG, "Waiting for a Companion client to connect...");
            localBluetoothSocket = this.serverSocket.accept();
            if (localBluetoothSocket == null)
              continue;
            switch (CompanionService.4.$SwitchMap$com$google$glass$home$companion$CompanionService$ConnectionState[CompanionService.state.ordinal()])
            {
            default:
              break;
            case 1:
            case 2:
              CompanionService.this.connected(localBluetoothSocket, localBluetoothSocket.getRemoteDevice());
            case 3:
            case 4:
            }
          }
          catch (IOException localIOException)
          {
            Log.e(CompanionService.TAG, "Failed to accept Bluetooth socket.", localIOException);
          }
        }
        else
        {
          Log.d(CompanionService.TAG, "AcceptThread done running.");
          return;
          CompanionService.this.closeSocket(localBluetoothSocket);
        }
      }
    }
  }

  public class CompanionBinder extends Binder
  {
    public CompanionBinder()
    {
    }

    public CompanionService getService()
    {
      return CompanionService.this;
    }
  }

  public static abstract interface CompanionListener
  {
    public abstract void onCompanionConnected(BluetoothDevice paramBluetoothDevice);

    public abstract void onCompanionConnectionFailed();

    public abstract void onCompanionDisconnected();

    public abstract void onCompanionVersionMismatch(int paramInt1, int paramInt2);
  }

  private class ConnectedThread extends Thread
  {
    private final BluetoothSocket socket;

    public ConnectedThread(BluetoothSocket arg2)
    {
      Object localObject;
      this.socket = localObject;
    }

    public void cancel()
    {
      try
      {
        this.socket.close();
        return;
      }
      catch (IOException localIOException)
      {
        Log.e(CompanionService.TAG, "Unable to close Bluetooth socket.", localIOException);
      }
    }

    public void run()
    {
      setName("ConnectedThread");
      if (CompanionService.this.connection != null)
        CompanionService.this.connection.close();
      CompanionService.access$802(CompanionService.this, new CompanionConnection(CompanionService.this, this.socket, CompanionService.this.wifiHelper));
      BluetoothDevice localBluetoothDevice = this.socket.getRemoteDevice();
      CompanionService.access$602(CompanionService.ConnectionState.CONNECTED);
      CompanionService.this.notifyCompanionConnected(localBluetoothDevice);
      Log.v(CompanionService.TAG, "Starting Companion connection handling.");
      CompanionService.this.connection.run();
      Log.v(CompanionService.TAG, "Completed Companion connection handling.");
      CompanionService.this.connection.close();
      CompanionService.access$802(CompanionService.this, null);
      CompanionService.this.closeSocket(this.socket);
      Log.v(CompanionService.TAG, "Connection closed, restarting Companion service...");
      Message.obtain(CompanionService.this.handler, 0).sendToTarget();
      CompanionService.this.notifyCompanionDisconnected();
    }
  }

  public static enum ConnectionState
  {
    static
    {
      LISTENING = new ConnectionState("LISTENING", 1);
      CONNECTING = new ConnectionState("CONNECTING", 2);
      CONNECTED = new ConnectionState("CONNECTED", 3);
      ConnectionState[] arrayOfConnectionState = new ConnectionState[4];
      arrayOfConnectionState[0] = NONE;
      arrayOfConnectionState[1] = LISTENING;
      arrayOfConnectionState[2] = CONNECTING;
      arrayOfConnectionState[3] = CONNECTED;
    }
  }

  public static abstract class SimpleCompanionListener
    implements CompanionService.CompanionListener
  {
    public void onCompanionConnected(BluetoothDevice paramBluetoothDevice)
    {
    }

    public void onCompanionConnectionFailed()
    {
    }

    public void onCompanionDisconnected()
    {
    }

    public void onCompanionVersionMismatch(int paramInt1, int paramInt2)
    {
    }
  }

  private class UpgradeListener extends CompanionService.SimpleCompanionListener
  {
    private UpgradeListener()
    {
    }

    public void onCompanionVersionMismatch(final int paramInt1, final int paramInt2)
    {
      CompanionService.this.handler.post(new Runnable()
      {
        public void run()
        {
          if (CompanionUtils.getMajorVersion(paramInt1) < CompanionUtils.getMajorVersion(paramInt2))
          {
            String str = CompanionService.this.getString(R.string.version_mismatch_require_glass_ota);
            new FullScreenMessagingDialogHelper(CompanionService.this.getApplicationContext()).showFullScreenMessage(str);
          }
        }
      });
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.companion.CompanionService
 * JD-Core Version:    0.6.2
 */