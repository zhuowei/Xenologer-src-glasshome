package com.google.glass.home.companion;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.AsyncTask;
import android.util.Log;
import com.google.glass.companion.BluetoothDeviceWrapper;
import com.google.glass.companion.CompanionMessagingUtil;
import com.google.glass.companion.Proto.CompanionInfo;
import com.google.glass.companion.Proto.CompanionInfo.Builder;
import com.google.glass.companion.Proto.Envelope;
import com.google.glass.companion.Proto.Envelope.Builder;
import com.google.glass.companion.Proto.Error;
import com.google.glass.companion.Proto.Error.Builder;
import com.google.glass.companion.Proto.Error.ErrorType;
import com.google.glass.home.HomeApplication;
import com.google.glass.logging.UserEventAction;
import com.google.glass.logging.UserEventHelper;
import com.google.glass.net.NetworkUtil;
import com.google.glass.net.NetworkUtil.CompanionNetworkWorker;
import com.google.glass.util.BluetoothHelper;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

public class ConnectionController extends CompanionService.SimpleCompanionListener
  implements NetworkUtil.CompanionNetworkWorker
{
  private static final long CHECK_INTERVAL = 50000L;
  private static final int JELLY_BEAN_MR1_VERSION_CODE = 17;
  private static final String LAST_CONNECTED_DEVICE_ADDRESS = "LAST_CONNECTED_DEVICE_ADDRESS";
  private static final int MAX_CONTINUAL_TETHERING_ERROR = 5;
  private static final long REPORT_INTERVAL = 50000L;
  private static final String TAG = ConnectionController.class.getSimpleName();
  private final MessageHandler companionMessageHandler = new MessageHandler()
  {
    public void handle(Proto.Envelope paramAnonymousEnvelope)
    {
      if (paramAnonymousEnvelope == null)
      {
        Log.i(ConnectionController.TAG, "Message is canceled.");
        return;
      }
      if (!paramAnonymousEnvelope.hasCompanionInfo())
      {
        Log.e(ConnectionController.TAG, "No companion info specified.");
        return;
      }
      Proto.CompanionInfo localCompanionInfo = paramAnonymousEnvelope.getCompanionInfo();
      Object[] arrayOfObject = new Object[4];
      arrayOfObject[0] = "d";
      String str1;
      if (localCompanionInfo.getResponseIsNetworkOk())
      {
        str1 = "y";
        arrayOfObject[1] = str1;
        arrayOfObject[2] = "v";
        if (!localCompanionInfo.hasResponseAndroidVersion())
          break label219;
      }
      label219: for (Object localObject = Integer.valueOf(localCompanionInfo.getResponseAndroidVersion()); ; localObject = "0")
      {
        arrayOfObject[3] = localObject;
        String str2 = UserEventHelper.createEventTuple("t", "0", arrayOfObject);
        Log.i(ConnectionController.TAG, "Logging " + str2 + " for " + localCompanionInfo.getId());
        if ((localCompanionInfo.getResponseIsNetworkOk()) && (localCompanionInfo.hasResponseAndroidVersion()) && (localCompanionInfo.getResponseAndroidVersion() == 17) && (ConnectionController.this.tetheringProblemCounter.incrementAndGet() >= 5))
        {
          Log.i(ConnectionController.TAG, "Send tethering error message to companion..");
          ConnectionController.this.sendTetheringErrorMessage();
        }
        HomeApplication.from(ConnectionController.this.context).getUserEventHelper().log(UserEventAction.COMPANION_CONNECTION, str2);
        return;
        str1 = "n";
        break;
      }
    }
  };
  private final Context context;
  private volatile boolean isConnected;
  private long lastCheckTime = 0L;
  private BluetoothDevice lastConnectedDevice;
  private String lastDeviceAddress;
  private long lastReportErrorTime = 0L;
  private final PingRequester requester;
  private AtomicInteger tetheringProblemCounter = new AtomicInteger(0);

  public ConnectionController(Context paramContext)
  {
    this.context = paramContext;
    this.requester = new PingRequester(paramContext);
  }

  private void sendTetheringErrorMessage()
  {
    Log.v(TAG, "Send tethering error message to glass.");
    Proto.Error localError = Proto.Error.newBuilder().setType(Proto.Error.ErrorType.TETHERING_ERROR_ON_GLASS).build();
    HomeApplication.from(this.context).sendCompanionMessage(CompanionMessagingUtil.newEnvelopeBuilder().setError(localError).build());
  }

  public void check()
  {
    if ((50000L + this.lastCheckTime > System.currentTimeMillis()) || (this.isConnected))
      return;
    try
    {
      if ((50000L + this.lastCheckTime > System.currentTimeMillis()) || (this.isConnected))
        return;
    }
    finally
    {
    }
    this.lastCheckTime = System.currentTimeMillis();
    this.requester.ping(new BluetoothDeviceWrapper(this.lastConnectedDevice), PingRequester.PingDelay.AT_ONCE);
  }

  public void checkImmediate()
  {
    try
    {
      if (!this.isConnected)
      {
        this.lastCheckTime = System.currentTimeMillis();
        this.requester.ping(new BluetoothDeviceWrapper(this.lastConnectedDevice), PingRequester.PingDelay.AT_ONCE);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void init()
  {
    try
    {
      NetworkUtil.setNetworkChecker(this);
      AsyncTask.execute(new Runnable()
      {
        public void run()
        {
          String str = ConnectionController.this.context.getSharedPreferences(ConnectionController.TAG, 0).getString("LAST_CONNECTED_DEVICE_ADDRESS", null);
          synchronized (ConnectionController.this)
          {
            if ((ConnectionController.this.lastDeviceAddress == null) && (str != null))
            {
              ConnectionController.access$402(ConnectionController.this, str);
              ConnectionController.this.recover();
            }
            return;
          }
        }
      });
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public boolean isTetheringErrorDetected()
  {
    return this.tetheringProblemCounter.get() >= 5;
  }

  public void onCompanionConnected(BluetoothDevice paramBluetoothDevice)
  {
    try
    {
      if (!paramBluetoothDevice.getAddress().equals(this.lastDeviceAddress))
      {
        this.context.getSharedPreferences(TAG, 0).edit().putString("LAST_CONNECTED_DEVICE_ADDRESS", paramBluetoothDevice.getAddress()).commit();
        Log.v(TAG, "Saving last connected device address : " + paramBluetoothDevice.getAddress());
      }
      this.lastConnectedDevice = paramBluetoothDevice;
      this.lastDeviceAddress = this.lastConnectedDevice.getAddress();
      this.requester.stopPing();
      BluetoothHelper.tether(this.context, paramBluetoothDevice);
      this.isConnected = true;
      return;
    }
    finally
    {
    }
  }

  public void onCompanionDisconnected()
  {
    try
    {
      this.isConnected = false;
      this.tetheringProblemCounter.set(0);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void recover()
  {
    try
    {
      if ((this.lastDeviceAddress != null) && (this.lastConnectedDevice == null))
      {
        BluetoothAdapter localBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
        if ((localBluetoothAdapter != null) && (localBluetoothAdapter.isEnabled()))
        {
          Iterator localIterator = localBluetoothAdapter.getBondedDevices().iterator();
          while (localIterator.hasNext())
          {
            BluetoothDevice localBluetoothDevice = (BluetoothDevice)localIterator.next();
            if (localBluetoothDevice.getAddress().equals(this.lastDeviceAddress))
            {
              this.requester.ping(new BluetoothDeviceWrapper(localBluetoothDevice), PingRequester.PingDelay.AT_ONCE);
              this.lastConnectedDevice = localBluetoothDevice;
            }
          }
        }
      }
      return;
    }
    finally
    {
    }
  }

  public void reportError()
  {
    if ((50000L + this.lastReportErrorTime > System.currentTimeMillis()) || (!this.isConnected))
      return;
    try
    {
      if ((50000L + this.lastReportErrorTime > System.currentTimeMillis()) || (!this.isConnected) || (!NetworkUtil.hasTetheredConnectivity(this.context)))
        return;
    }
    finally
    {
    }
    this.lastReportErrorTime = System.currentTimeMillis();
    HomeApplication localHomeApplication = HomeApplication.from(this.context);
    long l = CompanionMessagingUtil.getNextUniqueReplyableId();
    Proto.CompanionInfo localCompanionInfo = Proto.CompanionInfo.newBuilder().setId(l).setRequestNetwork(true).build();
    localHomeApplication.registerCompanionHandler(l, this.companionMessageHandler);
    Log.v(TAG, "Requesting companion info, replyable id = " + l);
    if (!localHomeApplication.sendCompanionMessage(CompanionMessagingUtil.newEnvelopeBuilder().setCompanionInfo(localCompanionInfo).build()))
    {
      Log.v(TAG, "Failed to request companion info");
      localHomeApplication.registerCompanionHandler(l, null);
    }
  }

  public void reportOK()
  {
    this.tetheringProblemCounter.set(0);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.companion.ConnectionController
 * JD-Core Version:    0.6.2
 */