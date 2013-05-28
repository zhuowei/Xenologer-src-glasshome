package com.google.glass.home.companion;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothSocket;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.google.glass.companion.CompanionMessagingUtil;
import com.google.glass.companion.CompanionUtils;
import com.google.glass.companion.DebugConnectivityChecker;
import com.google.glass.companion.Proto.ApiRequest;
import com.google.glass.companion.Proto.ApiRequest.RequestType;
import com.google.glass.companion.Proto.Command;
import com.google.glass.companion.Proto.Command.CommandType;
import com.google.glass.companion.Proto.CompanionInfo;
import com.google.glass.companion.Proto.Envelope;
import com.google.glass.companion.Proto.Envelope.Builder;
import com.google.glass.companion.Proto.Error;
import com.google.glass.companion.Proto.Error.ErrorType;
import com.google.glass.companion.Proto.LocationMessage;
import com.google.glass.companion.Proto.NavigationRequest;
import com.google.glass.companion.Proto.ScreenShot;
import com.google.glass.companion.Proto.ScreenShot.Builder;
import com.google.glass.companion.Proto.TimelineItemResponse;
import com.google.glass.entity.EntityHelper;
import com.google.glass.hidden.HiddenBluetoothDevice;
import com.google.glass.home.R.string;
import com.google.glass.home.settings.WifiSettingsMenuActivity;
import com.google.glass.location.LocationDelivery;
import com.google.glass.logging.UserEventAction.TimelineItemInserted;
import com.google.glass.timeline.TimelineHelper;
import com.google.glass.util.BluetoothHelper;
import com.google.glass.util.FullScreenMessagingDialogHelper;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;
import com.google.glass.util.LogHelper;
import com.google.glass.util.SettingsSecure;
import com.google.glass.util.TimeZoneUtil;
import com.google.glass.util.WifiHelper;
import com.google.googlex.glass.common.proto.Entity;
import com.google.googlex.glass.common.proto.Entity.Builder;
import com.google.googlex.glass.common.proto.TimelineItem;
import com.google.googlex.glass.common.proto.TimelineItem.Builder;
import com.google.protobuf.ByteString;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;

public class CompanionConnection
  implements StreamingThread.ScreenShotListener
{
  private static final int OUTPUT_BUFFER_SIZE_BYTES = 65536;
  private static final String TAG = CompanionConnection.class.getSimpleName();
  private static final int WHAT_HANDLE_COMPANION_INFO = 17;
  private static final int WHAT_HANDLE_LOCATION_FROM_COMPANION = 13;
  private static final int WHAT_HANDLE_TIMELINEITEM_FROM_COMPANION = 11;
  private static final int WHAT_HANDLE_TIMELINEITEM_RESPONSE = 12;
  private static final int WHAT_SETUP_GLASS_WIFI = 16;
  private static final int WHAT_SHOW_MESSAGE = 14;
  private static final int WHAT_START_NAVIGATION = 15;
  private final EnvelopeSender envelopeSender;
  private final InputStream inStream;
  private final CompanionConnectionHandler incomingMessageHandler;
  private volatile boolean isRunning;
  private final OutputStream outStream;
  private final CompanionService service;
  private BluetoothSocket socket;
  private StreamingThread streamingThread;
  private final Object streamingThreadLock = new Object();
  private final TimelineHelper timelineHelper = new TimelineHelper();

  public CompanionConnection(CompanionService paramCompanionService, BluetoothSocket paramBluetoothSocket, WifiHelper paramWifiHelper)
  {
    InputStream localInputStream = null;
    this.socket = paramBluetoothSocket;
    try
    {
      localInputStream = this.socket.getInputStream();
      OutputStream localOutputStream2 = this.socket.getOutputStream();
      localOutputStream1 = localOutputStream2;
      this.inStream = localInputStream;
      this.outStream = new BufferedOutputStream(localOutputStream1, 65536);
      this.incomingMessageHandler = new CompanionConnectionHandler(paramCompanionService, paramWifiHelper);
      this.envelopeSender = new EnvelopeSender(this.outStream);
      this.service = paramCompanionService;
      try
      {
        Log.v(TAG, "Handshaking (version 6) with client..");
        CompanionMessagingUtil.newEnvelopeBuilder().build().writeDelimitedTo(this.outStream);
        this.outStream.flush();
        localEnvelope = Proto.Envelope.parseDelimitedFrom(this.inStream);
        if (localEnvelope == null)
          throw new IOException("Failed to parse handshake envelope.");
      }
      catch (IOException localIOException2)
      {
        Log.e(TAG, "Failed to handshake: ", localIOException2);
        return;
      }
    }
    catch (IOException localIOException1)
    {
      Proto.Envelope localEnvelope;
      while (true)
      {
        Log.e(TAG, "Unable to get BluetoothSocket input/output streams.");
        OutputStream localOutputStream1 = null;
      }
      paramCompanionService.setRemoteVersion(localEnvelope.getVersion());
      if (localEnvelope.getVersion() != 6)
        paramCompanionService.notifyCompanionVersionMismatch(6, localEnvelope.getVersion());
      if (localEnvelope.hasTimezoneC2G())
      {
        String str = localEnvelope.getTimezoneC2G();
        Log.d(TAG, "Companion gave us timezone: " + str);
        TimeZoneUtil.updateTimeZone(paramCompanionService, str, 100);
      }
      Log.v(TAG, "Client is running version " + localEnvelope.getVersion());
    }
  }

  private void processTimelineItemReponse(Proto.Envelope paramEnvelope)
  {
    Iterator localIterator = paramEnvelope.getTimelineItemResponseC2GList().iterator();
    while (localIterator.hasNext())
    {
      Proto.TimelineItemResponse localTimelineItemResponse = (Proto.TimelineItemResponse)localIterator.next();
      Message.obtain(this.incomingMessageHandler, 12, 0, 0, localTimelineItemResponse).sendToTarget();
    }
  }

  private void processTimelineItems(Proto.Envelope paramEnvelope)
  {
    Iterator localIterator = paramEnvelope.getTimelineItemList().iterator();
    while (localIterator.hasNext())
    {
      TimelineItem localTimelineItem = (TimelineItem)localIterator.next();
      Message.obtain(this.incomingMessageHandler, 11, 0, 0, localTimelineItem).sendToTarget();
    }
  }

  public void close()
  {
    this.isRunning = false;
    this.envelopeSender.close();
    handleScreenshotRequest(false);
    try
    {
      this.inStream.close();
      this.outStream.close();
      return;
    }
    catch (IOException localIOException)
    {
      Log.e(TAG, "Failed to close input/output streams.", localIOException);
    }
  }

  public BluetoothDevice getConnectedDevice()
  {
    if (this.socket != null)
      return this.socket.getRemoteDevice();
    return null;
  }

  public EnvelopeSender getEnvelopeSender()
  {
    return this.envelopeSender;
  }

  public void handleApiRequest(final Proto.ApiRequest paramApiRequest)
  {
    AsyncTask.execute(new Runnable()
    {
      public void run()
      {
        if (!Labs.isEnabled(Labs.Feature.COMPANION_API))
          Log.w(CompanionConnection.TAG, "Companion api is not enabled.");
        TimelineItem localTimelineItem;
        do
        {
          return;
          if (paramApiRequest.getType() != Proto.ApiRequest.RequestType.INSERT_OR_UPDATE_TIMELINE_ITEM)
            break;
          localTimelineItem = CompanionHelper.getItem(paramApiRequest);
        }
        while (localTimelineItem == null);
        CompanionConnection.this.service.insertTimelineItem(localTimelineItem, UserEventAction.TimelineItemInserted.COMPANION_API);
        return;
        if (paramApiRequest.getType() == Proto.ApiRequest.RequestType.DELETE_TIMELINE_ITEM)
        {
          if (!paramApiRequest.hasTimelineItem())
          {
            Log.w(CompanionConnection.TAG, "No timeline item specified to delete");
            return;
          }
          CompanionConnection.this.timelineHelper.deleteTimelineItem(CompanionConnection.this.service, paramApiRequest.getTimelineItem());
          return;
        }
        Log.w(CompanionConnection.TAG, "Unknown request type " + paramApiRequest.getType());
      }
    });
  }

  public void handleCommand(Proto.Command.CommandType paramCommandType)
  {
    if (paramCommandType.equals(Proto.Command.CommandType.UNPAIR))
    {
      BluetoothDevice localBluetoothDevice = this.socket.getRemoteDevice();
      Log.d(TAG, "Unpairing from Companion device: " + BluetoothHelper.loggableDevice(localBluetoothDevice));
      HiddenBluetoothDevice.removeBond(localBluetoothDevice);
    }
    do
    {
      return;
      if (paramCommandType.equals(Proto.Command.CommandType.START_DEBUG))
      {
        DebugConnectivityChecker.start(this.service);
        return;
      }
    }
    while (!paramCommandType.equals(Proto.Command.CommandType.STOP_DEBUG));
    DebugConnectivityChecker.stop(this.service);
  }

  public void handleError(Proto.Error.ErrorType paramErrorType)
  {
    int i;
    switch (2.$SwitchMap$com$google$glass$companion$Proto$Error$ErrorType[paramErrorType.ordinal()])
    {
    default:
      Log.d(TAG, "Not handling error: " + paramErrorType);
      return;
    case 1:
      i = R.string.error_google_voice_out_of_date;
    case 2:
    }
    for (int j = R.string.error_google_voice_out_of_date_tip; ; j = R.string.error_google_voice_not_installed_tip)
    {
      String str1 = this.service.getString(i);
      String str2 = this.service.getString(j);
      new FullScreenMessagingDialogHelper(this.service).showFullScreenMessage(str1, str2);
      return;
      i = R.string.error_google_voice_not_installed;
    }
  }

  public void handleScreenshotRequest(boolean paramBoolean)
  {
    synchronized (this.streamingThreadLock)
    {
      if ((!this.isRunning) && (paramBoolean))
      {
        Log.w(TAG, "Can't start screenshot since the connection is not running.");
        return;
      }
      if (this.streamingThread == null)
        break label82;
      if (paramBoolean)
      {
        Log.v(TAG, "streamingThread is already running.");
        return;
      }
    }
    this.streamingThread.close();
    this.streamingThread = null;
    this.service.stopScreencastAndRestorePairing();
    while (true)
    {
      return;
      label82: if (!paramBoolean)
      {
        Log.v(TAG, "streamingThread is already stopped.");
        return;
      }
      this.streamingThread = new StreamingThread(this.service, this);
    }
  }

  public void onNewScreenShot(ByteString paramByteString)
  {
    if (paramByteString == null)
      Log.w(TAG, "streamingThread provide null data");
    Proto.ScreenShot localScreenShot = Proto.ScreenShot.newBuilder().setScreenshotBytesG2CBytes(paramByteString).build();
    Proto.Envelope localEnvelope = CompanionMessagingUtil.newEnvelopeBuilder().setScreenshot(localScreenShot).build();
    getEnvelopeSender().sendOrUpdateEnvelopeAsync(1, localEnvelope);
  }

  public void run()
  {
    this.isRunning = true;
    while (true)
    {
      Proto.Envelope localEnvelope;
      if (this.isRunning)
        try
        {
          localEnvelope = Proto.Envelope.parseDelimitedFrom(this.inStream);
          if (localEnvelope != null)
            break label48;
          throw new IOException("Parse envelope");
        }
        catch (IOException localIOException)
        {
          Log.e(TAG, "Error parsing Companion envelope", localIOException);
        }
      else
        return;
      label48: String str1 = "Envelope received";
      if (localEnvelope.getTimelineItemCount() > 0)
      {
        str1 = str1 + ", Has TimelineItem";
        processTimelineItems(localEnvelope);
      }
      if (localEnvelope.getTimelineItemResponseC2GCount() > 0)
      {
        str1 = str1 + ", Has TimelineItemResponse";
        processTimelineItemReponse(localEnvelope);
      }
      if (localEnvelope.hasLocationMessageC2G())
      {
        str1 = str1 + ", Has Location";
        Message.obtain(this.incomingMessageHandler, 13, 0, 0, localEnvelope.getLocationMessageC2G()).sendToTarget();
      }
      if (localEnvelope.hasMessageC2G())
        Message.obtain(this.incomingMessageHandler, 14, localEnvelope.getMessageC2G()).sendToTarget();
      if (localEnvelope.hasTimezoneC2G())
      {
        String str2 = localEnvelope.getTimezoneC2G();
        Log.d(TAG, "Companion changed timezone: " + str2);
        TimeZoneUtil.updateTimeZone(this.service, str2, 100);
      }
      if (localEnvelope.hasNavigationRequestC2G())
      {
        str1 = str1 + ", Has Navigation Request";
        Message.obtain(this.incomingMessageHandler, 15, localEnvelope.getNavigationRequestC2G()).sendToTarget();
      }
      if (localEnvelope.hasSetupWifiC2G())
      {
        str1 = str1 + ", Has SetupWifi Request";
        Message.obtain(this.incomingMessageHandler, 16, localEnvelope.getSetupWifiC2G()).sendToTarget();
      }
      if (localEnvelope.hasCompanionInfo())
      {
        str1 = str1 + ", Has companion info Request";
        Message.obtain(this.incomingMessageHandler, 17, localEnvelope).sendToTarget();
      }
      if (localEnvelope.hasScreenshot())
      {
        Proto.ScreenShot localScreenShot = localEnvelope.getScreenshot();
        if (localScreenShot.hasStartScreenshotRequestC2G())
        {
          str1 = str1 + ", Has start screencast Request";
          handleScreenshotRequest(true);
        }
        if (localScreenShot.getStopScreenshotRequestC2G())
        {
          str1 = str1 + ", Has stop screencast Request";
          handleScreenshotRequest(false);
        }
      }
      if (localEnvelope.hasCommand())
      {
        Proto.Command localCommand = localEnvelope.getCommand();
        str1 = str1 + ", Has command [" + localCommand.getCommand().name() + "]";
        handleCommand(localCommand.getCommand());
      }
      if (localEnvelope.hasError())
      {
        Proto.Error.ErrorType localErrorType = localEnvelope.getError().getType();
        str1 = str1 + ", Has error [" + localErrorType.name() + "]";
        handleError(localErrorType);
      }
      if (localEnvelope.hasApiRequestC2G())
      {
        Proto.ApiRequest localApiRequest = localEnvelope.getApiRequestC2G();
        str1 = str1 + ", Has api request of type" + localApiRequest.getType();
        handleApiRequest(localApiRequest);
      }
      Log.d(TAG, str1);
    }
  }

  private static class CompanionConnectionHandler extends Handler
  {
    private final CompanionService service;
    private final WifiHelper wifiHelper;

    CompanionConnectionHandler(CompanionService paramCompanionService, WifiHelper paramWifiHelper)
    {
      super();
      this.service = paramCompanionService;
      this.wifiHelper = paramWifiHelper;
    }

    private void handleLocationFromCompanion(Proto.LocationMessage paramLocationMessage)
    {
      LocationDelivery.deliver(paramLocationMessage, this.service.getLocationListener());
    }

    private void handleTimelineItemFromCompanion(final TimelineItem paramTimelineItem, final UserEventAction.TimelineItemInserted paramTimelineItemInserted)
    {
      AsyncTask.execute(new Runnable()
      {
        public void run()
        {
          TimelineItem localTimelineItem1 = paramTimelineItem;
          TimelineItem.Builder localBuilder;
          if (TimelineHelper.isCompanionSms(localTimelineItem1))
          {
            TimelineItem localTimelineItem2 = CompanionHelper.stripGlassSmsSignature(CompanionConnection.CompanionConnectionHandler.this.service, localTimelineItem1);
            localBuilder = TimelineItem.newBuilder(localTimelineItem2);
            if (localTimelineItem2.getCreator() == null)
              break label161;
            String str = CompanionUtils.getSmsBundleId(localTimelineItem2.getCreator().getPhoneNumber());
            localBuilder.setBundleId(str);
            LogHelper.logPii(3, CompanionConnection.TAG, "set the bundle id to " + str);
          }
          while (true)
          {
            Entity localEntity = EntityHelper.getSharedInstance().getFirstEntityForUser(CompanionConnection.CompanionConnectionHandler.this.service, false);
            if (localEntity != null)
            {
              SettingsSecure localSettingsSecure = new SettingsSecure(CompanionConnection.CompanionConnectionHandler.this.service.getContentResolver());
              localBuilder.addShareTarget(Entity.newBuilder(localEntity).setSource(TimelineHelper.getLocalTimelineItemSource(localSettingsSecure)));
            }
            localTimelineItem1 = localBuilder.build();
            CompanionConnection.CompanionConnectionHandler.this.service.insertTimelineItem(localTimelineItem1, paramTimelineItemInserted);
            return;
            label161: Log.w(CompanionConnection.TAG, "Sms from companion should have creator specified");
          }
        }
      });
    }

    private void handleTimelineItemResponse(Proto.TimelineItemResponse paramTimelineItemResponse)
    {
      if ((paramTimelineItemResponse.hasId()) && (paramTimelineItemResponse.hasSyncStatus()))
        CompanionHelper.updateCompanionSyncStatus(this.service, paramTimelineItemResponse.getId(), paramTimelineItemResponse.getSyncStatus(), true);
    }

    private void setupGlassWifi(String paramString)
    {
      this.service.wakeupScreen();
      Intent localIntent = new Intent(this.service, WifiSettingsMenuActivity.class);
      if (!this.wifiHelper.isConnected())
        localIntent.putExtra("join", true);
      localIntent.putExtra("wifi_setup_string", paramString);
      localIntent.setFlags(268435456);
      this.service.startActivity(localIntent);
    }

    private void showMessageFromCompanion(String paramString)
    {
      Log.d(CompanionConnection.TAG, "Companion gave us a message to show: " + paramString);
      new FullScreenMessagingDialogHelper(this.service).showFullScreenMessage(paramString);
    }

    private void startNavigationFromCompanion(Proto.NavigationRequest paramNavigationRequest)
    {
      Log.d(CompanionConnection.TAG, "Companion is starting navigation to: " + paramNavigationRequest.getUri());
      this.service.wakeupScreen();
      Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(paramNavigationRequest.getUri()));
      localIntent.setFlags(268435456);
      this.service.startActivity(localIntent);
    }

    public void handleMessage(Message paramMessage)
    {
      switch (paramMessage.what)
      {
      default:
        Log.e(CompanionConnection.TAG, "Unhandled companion message: " + paramMessage);
        return;
      case 11:
        handleTimelineItemFromCompanion((TimelineItem)paramMessage.obj, UserEventAction.TimelineItemInserted.SMS_RECEIVED);
        return;
      case 12:
        handleTimelineItemResponse((Proto.TimelineItemResponse)paramMessage.obj);
        return;
      case 13:
        handleLocationFromCompanion((Proto.LocationMessage)paramMessage.obj);
        return;
      case 14:
        showMessageFromCompanion((String)paramMessage.obj);
        return;
      case 15:
        startNavigationFromCompanion((Proto.NavigationRequest)paramMessage.obj);
        return;
      case 16:
        setupGlassWifi((String)paramMessage.obj);
        return;
      case 17:
      }
      Proto.Envelope localEnvelope = (Proto.Envelope)paramMessage.obj;
      this.service.handle(localEnvelope, localEnvelope.getCompanionInfo().getId());
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.companion.CompanionConnection
 * JD-Core Version:    0.6.2
 */