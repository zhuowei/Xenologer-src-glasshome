package com.google.glass.ongoing;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Process;
import android.os.RemoteException;
import android.util.Log;
import com.google.glass.util.Assert;
import java.util.HashMap;
import java.util.Map;

public class OngoingActivityManager
{
  static final int MSG_REGISTER = 1;
  static final int MSG_UPDATE = 2;
  static final ComponentName ONGOING_ACTIVITY_SERVICE = new ComponentName("com.google.glass.home", "com.google.glass.ongoing.OngoingActivityService");
  private static final String TAG = OngoingActivityManager.class.getSimpleName();
  private static OngoingActivityManager instance;
  private final ServiceConnection connection = new ServiceConnection()
  {
    public void onServiceConnected(ComponentName paramAnonymousComponentName, IBinder paramAnonymousIBinder)
    {
      OngoingActivityManager.this.handleConnection(paramAnonymousComponentName, paramAnonymousIBinder);
    }

    public void onServiceDisconnected(ComponentName paramAnonymousComponentName)
    {
      OngoingActivityManager.this.handleDisconnection();
    }
  };
  private final Object connectionLock = new Object();
  private ConnectionState connectionState = ConnectionState.DISCONNECTED;
  private final Context context;
  private final Messenger incoming = new Messenger(new Handler());
  private final MessengerFactory messengerFactory;
  private final Map<ActivityType, OngoingActivityMessage> ongoingActivities = new HashMap();
  private Messenger outgoing = null;

  private OngoingActivityManager(Context paramContext, MessengerFactory paramMessengerFactory)
  {
    this.context = paramContext;
    this.messengerFactory = paramMessengerFactory;
  }

  private void connectIfNecessary()
  {
    synchronized (this.connectionLock)
    {
      if (this.connectionState == ConnectionState.DISCONNECTED)
      {
        Log.i(TAG, "Opening connection to OngoingActivityService from: " + this.context.getPackageName());
        Intent localIntent = new Intent();
        localIntent.setComponent(ONGOING_ACTIVITY_SERVICE);
        if (this.context.bindService(localIntent, this.connection, 1))
          this.connectionState = ConnectionState.CONNECTING;
      }
      else
      {
        return;
      }
      Log.w(TAG, "bindService() failed.");
    }
  }

  static OngoingActivityManager createForTest(Context paramContext, MessengerFactory paramMessengerFactory)
  {
    Assert.assertIsTest();
    return new OngoingActivityManager(paramContext, paramMessengerFactory);
  }

  public static OngoingActivityManager getInstance(Context paramContext)
  {
    try
    {
      if (instance == null)
        instance = new OngoingActivityManager(paramContext.getApplicationContext(), new MessengerFactory()
        {
          public Messenger create(IBinder paramAnonymousIBinder)
          {
            return new Messenger(paramAnonymousIBinder);
          }
        });
      instance.connectIfNecessary();
      return instance;
    }
    finally
    {
    }
  }

  // ERROR //
  private void handleConnection(ComponentName paramComponentName, IBinder paramIBinder)
  {
    // Byte code:
    //   0: getstatic 41	com/google/glass/ongoing/OngoingActivityManager:TAG	Ljava/lang/String;
    //   3: new 106	java/lang/StringBuilder
    //   6: dup
    //   7: invokespecial 107	java/lang/StringBuilder:<init>	()V
    //   10: ldc 172
    //   12: invokevirtual 113	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   15: aload_1
    //   16: invokevirtual 175	android/content/ComponentName:getClassName	()Ljava/lang/String;
    //   19: invokevirtual 113	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   22: invokevirtual 121	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   25: invokestatic 127	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   28: pop
    //   29: aload_0
    //   30: getfield 77	com/google/glass/ongoing/OngoingActivityManager:connectionLock	Ljava/lang/Object;
    //   33: astore 4
    //   35: aload 4
    //   37: monitorenter
    //   38: aload_0
    //   39: aload_0
    //   40: getfield 93	com/google/glass/ongoing/OngoingActivityManager:messengerFactory	Lcom/google/glass/ongoing/OngoingActivityManager$MessengerFactory;
    //   43: aload_2
    //   44: invokeinterface 181 2 0
    //   49: putfield 65	com/google/glass/ongoing/OngoingActivityManager:outgoing	Landroid/os/Messenger;
    //   52: aload_0
    //   53: getstatic 184	com/google/glass/ongoing/OngoingActivityManager$ConnectionState:CONNECTED	Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;
    //   56: putfield 63	com/google/glass/ongoing/OngoingActivityManager:connectionState	Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;
    //   59: aconst_null
    //   60: iconst_1
    //   61: invokestatic 190	android/os/Message:obtain	(Landroid/os/Handler;I)Landroid/os/Message;
    //   64: astore 6
    //   66: aload 6
    //   68: aload_0
    //   69: getfield 75	com/google/glass/ongoing/OngoingActivityManager:incoming	Landroid/os/Messenger;
    //   72: putfield 193	android/os/Message:replyTo	Landroid/os/Messenger;
    //   75: getstatic 41	com/google/glass/ongoing/OngoingActivityManager:TAG	Ljava/lang/String;
    //   78: ldc 195
    //   80: invokestatic 198	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   83: pop
    //   84: aload_0
    //   85: aload 6
    //   87: invokespecial 202	com/google/glass/ongoing/OngoingActivityManager:sendMessage	(Landroid/os/Message;)V
    //   90: aload 4
    //   92: monitorexit
    //   93: aload_0
    //   94: getfield 89	com/google/glass/ongoing/OngoingActivityManager:ongoingActivities	Ljava/util/Map;
    //   97: astore 9
    //   99: aload 9
    //   101: monitorenter
    //   102: aload_0
    //   103: getfield 89	com/google/glass/ongoing/OngoingActivityManager:ongoingActivities	Ljava/util/Map;
    //   106: invokeinterface 208 1 0
    //   111: invokeinterface 214 1 0
    //   116: astore 11
    //   118: aload 11
    //   120: invokeinterface 220 1 0
    //   125: ifeq +26 -> 151
    //   128: aload 11
    //   130: invokeinterface 224 1 0
    //   135: checkcast 226	com/google/glass/ongoing/OngoingActivityMessage
    //   138: astore 12
    //   140: aload_0
    //   141: aload 12
    //   143: invokespecial 230	com/google/glass/ongoing/OngoingActivityManager:sendOngoingActivityMessage	(Lcom/google/glass/ongoing/OngoingActivityMessage;)V
    //   146: goto -28 -> 118
    //   149: astore 13
    //   151: aload 9
    //   153: monitorexit
    //   154: return
    //   155: astore 7
    //   157: getstatic 41	com/google/glass/ongoing/OngoingActivityManager:TAG	Ljava/lang/String;
    //   160: new 106	java/lang/StringBuilder
    //   163: dup
    //   164: invokespecial 107	java/lang/StringBuilder:<init>	()V
    //   167: ldc 232
    //   169: invokevirtual 113	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   172: aload 7
    //   174: invokevirtual 235	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   177: invokevirtual 121	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   180: invokestatic 238	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   183: pop
    //   184: goto -94 -> 90
    //   187: astore 5
    //   189: aload 4
    //   191: monitorexit
    //   192: aload 5
    //   194: athrow
    //   195: astore 10
    //   197: aload 9
    //   199: monitorexit
    //   200: aload 10
    //   202: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   140	146	149	android/os/RemoteException
    //   75	90	155	android/os/RemoteException
    //   38	75	187	finally
    //   75	90	187	finally
    //   90	93	187	finally
    //   157	184	187	finally
    //   189	192	187	finally
    //   102	118	195	finally
    //   118	140	195	finally
    //   140	146	195	finally
    //   151	154	195	finally
    //   197	200	195	finally
  }

  private void handleDisconnection()
  {
    synchronized (this.connectionLock)
    {
      this.connectionState = ConnectionState.DISCONNECTED;
      this.outgoing = null;
      Log.i(TAG, "Disconnected from OngoingActivityService!");
      return;
    }
  }

  private void sendMessage(Message paramMessage)
    throws RemoteException
  {
    try
    {
      paramMessage.arg1 = Process.myPid();
      this.outgoing.send(paramMessage);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      handleDisconnection();
      throw localRemoteException;
    }
  }

  private void sendMessageOrConnect(OngoingActivityMessage paramOngoingActivityMessage)
  {
    synchronized (this.connectionLock)
    {
      ConnectionState localConnectionState1 = this.connectionState;
      ConnectionState localConnectionState2 = ConnectionState.CONNECTED;
      if (localConnectionState1 != localConnectionState2);
    }
    try
    {
      sendOngoingActivityMessage(paramOngoingActivityMessage);
      while (true)
      {
        label30: return;
        connectIfNecessary();
      }
      localObject2 = finally;
      throw localObject2;
    }
    catch (RemoteException localRemoteException)
    {
      break label30;
    }
  }

  private void sendOngoingActivityMessage(OngoingActivityMessage paramOngoingActivityMessage)
    throws RemoteException
  {
    Log.d(TAG, "Sending message: " + paramOngoingActivityMessage);
    Message localMessage = Message.obtain(null, 2);
    localMessage.setData(paramOngoingActivityMessage.toBundle());
    sendMessage(localMessage);
  }

  public void hideOngoingActivity(ActivityType paramActivityType)
  {
    OngoingActivityMessage localOngoingActivityMessage = new OngoingActivityMessage(paramActivityType, OngoingActivityMessage.Operation.HIDE, null);
    synchronized (this.ongoingActivities)
    {
      this.ongoingActivities.remove(paramActivityType);
      sendMessageOrConnect(localOngoingActivityMessage);
      return;
    }
  }

  public void showOngoingActivity(ActivityType paramActivityType, Bundle paramBundle)
  {
    OngoingActivityMessage localOngoingActivityMessage = new OngoingActivityMessage(paramActivityType, OngoingActivityMessage.Operation.SHOW, paramBundle);
    synchronized (this.ongoingActivities)
    {
      this.ongoingActivities.put(paramActivityType, localOngoingActivityMessage);
      sendMessageOrConnect(localOngoingActivityMessage);
      return;
    }
  }

  public static enum ActivityType
  {
    static
    {
      NAVIGATION = new ActivityType("NAVIGATION", 2);
      HANGOUT = new ActivityType("HANGOUT", 3);
      RELOGIN = new ActivityType("RELOGIN", 4);
      ActivityType[] arrayOfActivityType = new ActivityType[5];
      arrayOfActivityType[0] = HOME;
      arrayOfActivityType[1] = PHONE_CALL;
      arrayOfActivityType[2] = NAVIGATION;
      arrayOfActivityType[3] = HANGOUT;
      arrayOfActivityType[4] = RELOGIN;
    }
  }

  private static enum ConnectionState
  {
    static
    {
      CONNECTING = new ConnectionState("CONNECTING", 1);
      CONNECTED = new ConnectionState("CONNECTED", 2);
      ConnectionState[] arrayOfConnectionState = new ConnectionState[3];
      arrayOfConnectionState[0] = DISCONNECTED;
      arrayOfConnectionState[1] = CONNECTING;
      arrayOfConnectionState[2] = CONNECTED;
    }
  }

  static abstract interface MessengerFactory
  {
    public abstract Messenger create(IBinder paramIBinder);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.ongoing.OngoingActivityManager
 * JD-Core Version:    0.6.2
 */