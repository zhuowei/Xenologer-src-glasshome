package com.google.glass.logging;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.IBinder;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.google.common.logging.GlassUserEventProto;
import com.google.common.logging.GlassUserEventProto.Builder;
import com.google.glass.net.AndroidHttpRequestDispatcher;
import com.google.glass.net.ProtoRequestDispatcher;
import com.google.glass.net.ProtoResponseHandler;
import com.google.glass.net.ServerConstants.Action;
import com.google.glass.net.SimpleProtoResponseHandler;
import com.google.glass.util.Assert;
import com.google.glass.util.BatteryHelper;
import com.google.glass.util.HiddenApiHelper;
import com.google.glass.util.PriorityThreadFactory;
import com.google.googlex.glass.common.proto.GetSessionIdRequest;
import com.google.googlex.glass.common.proto.GetSessionIdRequest.Builder;
import com.google.googlex.glass.common.proto.GetSessionIdResponse;
import com.google.googlex.glass.common.proto.ReportUserEventRequest;
import com.google.googlex.glass.common.proto.ReportUserEventRequest.Builder;
import com.google.googlex.glass.common.proto.ReportUserEventResponse;
import com.google.googlex.glass.common.proto.ResponseWrapper.ErrorCode;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

public class UserEventService extends Service
{
  private static final int MAX_EVENTS = 10000;
  private static final long MAX_QUEUE_FILE_SIZE = 10240000L;
  private static final String QUEUE_FILE = "user_events_1";
  private static final String SESSION_KEY = "session";
  private static final String TAG = UserEventService.class.getSimpleName();
  private static final long TIME_BETWEEN_FLUSHES_MS = 0L;
  private static final String USER_EVENT_PREFS = "UserEventPrefs";
  private BatteryHelper battery;
  private int eventQueueFullCount;
  private List<GlassUserEventProto> events;
  private ExecutorService executor;
  private long lastFlushTime;
  private ProtoRequestDispatcher requestDispatcher;
  private String sessionId;

  private void addToQueue(GlassUserEventProto paramGlassUserEventProto)
  {
    long l = getQueueFileSize();
    if ((this.events.size() >= 10000) || (l >= 10240000L))
    {
      Log.w(TAG, "Throwing away log event because queue is full: " + this.events.size() + " events; file size: " + l + " bytes");
      if (!UserEventAction.USER_EVENT_QUEUE_FULL.action.equals(paramGlassUserEventProto.getEventType()))
        this.eventQueueFullCount = (1 + this.eventQueueFullCount);
      return;
    }
    this.events.add(paramGlassUserEventProto);
    saveEventToDisk(paramGlassUserEventProto);
  }

  private ExecutorService createThread(String paramString)
  {
    return Executors.newSingleThreadExecutor(new PriorityThreadFactory(1, paramString));
  }

  private void deleteEventsFromDisk()
  {
    Assert.assertNotUiThread();
    deleteFile("user_events_1");
  }

  private long getQueueFileSize()
  {
    Assert.assertNotUiThread();
    return getFileStreamPath("user_events_1").length();
  }

  private static boolean isNetworkConnected(Context paramContext)
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    if (localNetworkInfo == null)
      return false;
    return localNetworkInfo.isConnected();
  }

  private void log(final GlassUserEventProto paramGlassUserEventProto)
  {
    this.executor.submit(new Runnable()
    {
      public void run()
      {
        UserEventService.this.addToQueue(paramGlassUserEventProto);
        UserEventService.this.logQueued();
      }
    });
  }

  private void logQueued()
  {
    Assert.assertNotUiThread();
    if (this.events.isEmpty());
    long l;
    do
    {
      return;
      if (!isNetworkConnected(getApplicationContext()))
      {
        Log.w(TAG, "Cannot send user events as there is no data connection.");
        return;
      }
      if (!this.battery.isPowered())
      {
        Log.w(TAG, "Cannot send user events as the device is not plugged in.");
        return;
      }
      if (TextUtils.isEmpty(this.sessionId))
      {
        this.sessionId = getApplicationContext().getSharedPreferences("UserEventPrefs", 0).getString("session", null);
        if (TextUtils.isEmpty(this.sessionId))
          sendBlockingGetSessionIdRequest();
        if (TextUtils.isEmpty(this.sessionId))
        {
          Log.w(TAG, "Cannot send user events as we have no session ID.");
          return;
        }
      }
      l = SystemClock.elapsedRealtime();
    }
    while (l - this.lastFlushTime <= TIME_BETWEEN_FLUSHES_MS);
    this.lastFlushTime = l;
    String str1 = HiddenApiHelper.getSystemProperty("ro.build.display.id", "unknown build version");
    String str2 = Integer.toString(new Util().getHardwareVersion().intValue());
    if (this.eventQueueFullCount > 0)
    {
      sendReportUserEventRequest(GlassUserEventProto.newBuilder().setEventType(UserEventAction.USER_EVENT_QUEUE_FULL.action).setEventData(Integer.toString(this.eventQueueFullCount)).setEventTimeMs(System.currentTimeMillis()).build(), str1, str2);
      this.eventQueueFullCount = 0;
    }
    Iterator localIterator = this.events.iterator();
    while (localIterator.hasNext())
      sendReportUserEventRequest((GlassUserEventProto)localIterator.next(), str1, str2);
    this.requestDispatcher.flush();
    this.events.clear();
    deleteEventsFromDisk();
  }

  private GlassUserEventProto readEvent(DataInputStream paramDataInputStream)
    throws IOException
  {
    int i = paramDataInputStream.readInt();
    byte[] arrayOfByte = new byte[i];
    paramDataInputStream.readFully(arrayOfByte, 0, i);
    return GlassUserEventProto.parseFrom(arrayOfByte);
  }

  private List<GlassUserEventProto> readEventsFromDisk(Context paramContext)
  {
    Assert.assertNotUiThread();
    FileInputStream localFileInputStream = null;
    try
    {
      localFileInputStream = paramContext.openFileInput("user_events_1");
      DataInputStream localDataInputStream = new DataInputStream(new BufferedInputStream(localFileInputStream));
      ArrayList localArrayList = new ArrayList();
      int i = 1;
      while (i != 0)
        try
        {
          localArrayList.add(readEvent(localDataInputStream));
        }
        catch (EOFException localEOFException)
        {
          i = 0;
        }
      Log.i(TAG, "Read " + localArrayList.size() + " persisted events.");
      if (localFileInputStream != null);
      try
      {
        localFileInputStream.close();
        return localArrayList;
      }
      catch (IOException localIOException4)
      {
        Log.w(TAG, "Could not close events file after read.", localIOException4);
        return localArrayList;
      }
    }
    catch (IOException localIOException2)
    {
      Log.w(TAG, "Could not read events.", localIOException2);
      if (localFileInputStream != null);
      try
      {
        localFileInputStream.close();
        deleteEventsFromDisk();
        return new ArrayList();
      }
      catch (IOException localIOException3)
      {
        while (true)
          Log.w(TAG, "Could not close events file after read.", localIOException3);
      }
    }
    finally
    {
      if (localFileInputStream == null);
    }
    try
    {
      localFileInputStream.close();
      throw localObject;
    }
    catch (IOException localIOException1)
    {
      while (true)
        Log.w(TAG, "Could not close events file after read.", localIOException1);
    }
  }

  private void saveEventToDisk(GlassUserEventProto paramGlassUserEventProto)
  {
    Assert.assertNotUiThread();
    FileOutputStream localFileOutputStream = null;
    try
    {
      localFileOutputStream = openFileOutput("user_events_1", 32768);
      BufferedOutputStream localBufferedOutputStream = new BufferedOutputStream(localFileOutputStream);
      writeEvent(paramGlassUserEventProto, new DataOutputStream(localBufferedOutputStream));
      localBufferedOutputStream.flush();
      if (localFileOutputStream != null);
      try
      {
        localFileOutputStream.close();
        return;
      }
      catch (IOException localIOException4)
      {
        Log.w(TAG, "Could not close events file after write.", localIOException4);
        return;
      }
    }
    catch (IOException localIOException2)
    {
      do
        Log.w(TAG, "Could not write events.", localIOException2);
      while (localFileOutputStream == null);
      try
      {
        localFileOutputStream.close();
        return;
      }
      catch (IOException localIOException3)
      {
        Log.w(TAG, "Could not close events file after write.", localIOException3);
        return;
      }
    }
    finally
    {
      if (localFileOutputStream == null);
    }
    try
    {
      localFileOutputStream.close();
      throw localObject;
    }
    catch (IOException localIOException1)
    {
      while (true)
        Log.w(TAG, "Could not close events file after write.", localIOException1);
    }
  }

  private void sendBlockingGetSessionIdRequest()
  {
    this.requestDispatcher.blockingDispatch(ServerConstants.Action.GET_SESSION_ID, GetSessionIdRequest.newBuilder().build(), GetSessionIdResponse.PARSER, new SimpleProtoResponseHandler()
    {
      public void onSuccess(GetSessionIdResponse paramAnonymousGetSessionIdResponse)
      {
        UserEventService.access$502(UserEventService.this, paramAnonymousGetSessionIdResponse.getSessionId());
        UserEventService.this.getApplicationContext().getSharedPreferences("UserEventPrefs", 0).edit().putString("session", UserEventService.this.sessionId).commit();
      }
    });
  }

  private void sendReportUserEventRequest(final GlassUserEventProto paramGlassUserEventProto, String paramString1, String paramString2)
  {
    ReportUserEventRequest.Builder localBuilder = ReportUserEventRequest.newBuilder();
    localBuilder.setAction(paramGlassUserEventProto.getEventType());
    if (paramGlassUserEventProto.hasEventData())
      localBuilder.setData(paramGlassUserEventProto.getEventData());
    localBuilder.setTimestamp(paramGlassUserEventProto.getEventTimeMs());
    localBuilder.setUserEventProto(paramGlassUserEventProto);
    localBuilder.setSessionId(this.sessionId);
    localBuilder.setSoftwareVersion(paramString1);
    localBuilder.setHardwareVersion(paramString2);
    if (!this.requestDispatcher.dispatch(ServerConstants.Action.REPORT_USER_EVENT, localBuilder.build(), false, ReportUserEventResponse.PARSER, new ProtoResponseHandler()
    {
      public void onCancel()
      {
        Log.w(UserEventService.TAG, "User event request cancelled. Will retry.");
        UserEventService.this.addToQueue(paramGlassUserEventProto);
      }

      public void onError(ResponseWrapper.ErrorCode paramAnonymousErrorCode)
      {
        UserEventService.this.addToQueue(paramGlassUserEventProto);
      }

      public void onSuccess(ReportUserEventResponse paramAnonymousReportUserEventResponse)
      {
      }
    }
    , false))
      addToQueue(paramGlassUserEventProto);
  }

  private void writeEvent(GlassUserEventProto paramGlassUserEventProto, DataOutputStream paramDataOutputStream)
    throws IOException
  {
    byte[] arrayOfByte = paramGlassUserEventProto.toByteArray();
    paramDataOutputStream.writeInt(arrayOfByte.length);
    paramDataOutputStream.write(arrayOfByte, 0, arrayOfByte.length);
  }

  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }

  public void onCreate()
  {
    super.onCreate();
    Log.d(TAG, "onCreate");
    this.battery = new BatteryHelper(getApplicationContext());
    this.executor = createThread("UserEventBackgroundThread");
    this.requestDispatcher = new ProtoRequestDispatcher(getApplicationContext(), new AndroidHttpRequestDispatcher(), true, this.executor);
    new Thread(this.requestDispatcher)
    {
    }
    .start();
    this.executor.submit(new Runnable()
    {
      public void run()
      {
        UserEventService.access$102(UserEventService.this, UserEventService.this.readEventsFromDisk(UserEventService.this.getApplicationContext()));
      }
    });
  }

  public void onDestroy()
  {
    super.onDestroy();
    Log.d(TAG, "onDestroy");
    this.requestDispatcher.exit();
    this.requestDispatcher = null;
    this.executor.shutdown();
    this.executor = null;
    this.events = null;
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    GlassUserEventProto localGlassUserEventProto;
    if (paramIntent != null)
    {
      if (!paramIntent.hasExtra("user_event"))
        break label60;
      localGlassUserEventProto = (GlassUserEventProto)paramIntent.getExtras().get("user_event");
      if (TextUtils.isEmpty(localGlassUserEventProto.getEventType()))
        Log.e(TAG, "User event logging requested with empty action.");
    }
    else
    {
      return 1;
    }
    log(localGlassUserEventProto);
    return 1;
    label60: Log.e(TAG, "User event logging contains no user event!  Your application is too old for your logging apk.");
    return 1;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.logging.UserEventService
 * JD-Core Version:    0.6.2
 */