package com.google.glass.sound;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.util.Assert;

public class SoundManager
{
  public static final int FAILED_TO_PLAY_SOUND;

  @VisibleForTesting
  static final ComponentName SOUND_MANAGER_SERVICE = new ComponentName("com.google.glass.sound", "com.google.glass.sound.SoundManagerService");
  private static final String TAG = SoundManager.class.getSimpleName();

  @VisibleForTesting
  final ServiceConnection connection = new ServiceConnection()
  {
    public void onServiceConnected(ComponentName paramAnonymousComponentName, IBinder paramAnonymousIBinder)
    {
      SoundManager.this.connectionState = SoundManager.ConnectionState.CONNECTED;
      Log.d(SoundManager.TAG, "Service connected, connection state is: " + SoundManager.this.connectionState);
      SoundManager.access$102(SoundManager.this, ISoundManagerService.Stub.asInterface(paramAnonymousIBinder));
    }

    public void onServiceDisconnected(ComponentName paramAnonymousComponentName)
    {
      SoundManager.this.connectionState = SoundManager.ConnectionState.DISCONNECTED;
      Log.d(SoundManager.TAG, "Service disconnected, connection state is: " + SoundManager.this.connectionState);
      SoundManager.access$102(SoundManager.this, null);
    }
  };

  @VisibleForTesting
  ConnectionState connectionState;
  private final Context context;
  private final Handler handler;
  private SoundId lastSoundIdRequested;
  private ISoundManagerService soundManagerService;

  public SoundManager(Context paramContext)
  {
    this.context = paramContext;
    this.handler = new Handler();
    this.connectionState = ConnectionState.DISCONNECTED;
    bindSoundManagerServiceIfNecessary();
  }

  @VisibleForTesting
  void bindSoundManagerServiceIfNecessary()
  {
    if (this.connectionState != ConnectionState.DISCONNECTED)
    {
      Log.d(TAG, "We are currently " + this.connectionState + " and don't need to reconnect.");
      return;
    }
    Intent localIntent = new Intent();
    localIntent.setComponent(SOUND_MANAGER_SERVICE);
    if (this.context.bindService(localIntent, this.connection, 1))
    {
      this.connectionState = ConnectionState.CONNECTING;
      Log.d(TAG, "Binding to service, connection state is " + this.connectionState);
      return;
    }
    this.connectionState = ConnectionState.DISCONNECTED;
    Log.e(TAG, "Binding to service failed, connection state is " + this.connectionState);
  }

  @VisibleForTesting
  public SoundId getLastSoundIdRequested()
  {
    Assert.isTest();
    return this.lastSoundIdRequested;
  }

  public boolean isMuted()
  {
    if (this.connectionState != ConnectionState.CONNECTED)
    {
      Log.w(TAG, "SoundManagerService is not connected, returning default, unmuted.");
      return false;
    }
    try
    {
      boolean bool = this.soundManagerService.isMuted();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
    }
    return false;
  }

  public int playSound(SoundId paramSoundId)
  {
    return playSound(paramSoundId, null);
  }

  public int playSound(final SoundId paramSoundId, final OnSoundDoneListener paramOnSoundDoneListener)
  {
    this.lastSoundIdRequested = paramSoundId;
    if (this.connectionState != ConnectionState.CONNECTED)
    {
      Log.w(TAG, "SoundManagerService is not connected, not playing sound: " + paramSoundId);
      bindSoundManagerServiceIfNecessary();
      return 0;
    }
    try
    {
      int j = this.soundManagerService.playSound(paramSoundId.name());
      i = j;
      if ((paramOnSoundDoneListener != null) && (i != 0))
        this.handler.postDelayed(new Runnable()
        {
          public void run()
          {
            paramOnSoundDoneListener.onSoundDone(paramSoundId);
          }
        }
        , paramSoundId.durationMs);
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
        int i = 0;
    }
  }

  public void setMuted(boolean paramBoolean)
  {
    if (this.connectionState != ConnectionState.CONNECTED)
    {
      Log.w(TAG, "SoundManagerService is not connected, not setting mute to: " + paramBoolean);
      bindSoundManagerServiceIfNecessary();
      return;
    }
    try
    {
      this.soundManagerService.setMuted(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
  }

  public void stopSound(int paramInt)
  {
    if (this.connectionState != ConnectionState.CONNECTED)
    {
      Log.w(TAG, "SoundManagerService is not connected, not stopping sound: " + paramInt);
      bindSoundManagerServiceIfNecessary();
      return;
    }
    try
    {
      this.soundManagerService.stopSound(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
  }

  @VisibleForTesting
  static enum ConnectionState
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

  public static abstract interface OnSoundDoneListener
  {
    public abstract void onSoundDone(SoundManager.SoundId paramSoundId);
  }

  public static enum SoundId
  {
    private static final int PRIORITY_ACTION = 10;
    private static final int PRIORITY_INCIDENTAL = 0;
    private static final int PRIORITY_NOTIFICATION = 20;
    private final int durationMs;
    private final int priority;

    static
    {
      FOCUS = new SoundId("FOCUS", 1, 10, 10);
      DISMISS = new SoundId("DISMISS", 2, 10, 750);
      SUCCESS = new SoundId("SUCCESS", 3, 10, 650);
      ERROR = new SoundId("ERROR", 4, 10, 350);
      DISALLOWED_ACTION = new SoundId("DISALLOWED_ACTION", 5, 10, 280);
      DON = new SoundId("DON", 6, 10, 780);
      DOFF = new SoundId("DOFF", 7, 10, 850);
      NOTIFICATION = new SoundId("NOTIFICATION", 8, 20, 500);
      NOTIFICATION_MULTIPLE = new SoundId("NOTIFICATION_MULTIPLE", 9, 20, 890);
      NOTIFICATION_NAVIGATION = new SoundId("NOTIFICATION_NAVIGATION", 10, 20, 450);
      VOICE_PENDING = new SoundId("VOICE_PENDING", 11, 10, 195);
      VOICE_COMPLETED = new SoundId("VOICE_COMPLETED", 12, 10, 300);
      PHOTO_READY = new SoundId("PHOTO_READY", 13, 10, 360);
      PHOTO_SHUTTER = new SoundId("PHOTO_SHUTTER", 14, 10, 650);
      VIDEO_START = new SoundId("VIDEO_START", 15, 10, 490);
      VIDEO_STOP = new SoundId("VIDEO_STOP", 16, 10, 680);
      HANGOUT_INCOMING_RING = new SoundId("HANGOUT_INCOMING_RING", 17, 10, 1400);
      HANGOUT_PARTICIPANT_JOIN = new SoundId("HANGOUT_PARTICIPANT_JOIN", 18, 10, 500);
      HANGOUT_PARTICIPANT_LEAVE = new SoundId("HANGOUT_PARTICIPANT_LEAVE", 19, 10, 500);
      HANGOUT_CHAT_MESSAGE = new SoundId("HANGOUT_CHAT_MESSAGE", 20, 10, 250);
      CALL_INCOMING_RING = new SoundId("CALL_INCOMING_RING", 21, 10, 1000);
      CALL_START = new SoundId("CALL_START", 22, 10, 450);
      CALL_STOP = new SoundId("CALL_STOP", 23, 10, 530);
      ADD_CARD = new SoundId("ADD_CARD", 24, 10, 0);
      REMOVE_CARD = new SoundId("REMOVE_CARD", 25, 10, 0);
      POWER_CONNECTED = new SoundId("POWER_CONNECTED", 26, 10, 460);
      SHUT_DOWN = new SoundId("SHUT_DOWN", 27, 10, 550);
      VOLUME_CHANGE = new SoundId("VOLUME_CHANGE", 28, 10, 195);
      SCALE1 = new SoundId("SCALE1", 29, 10, 240);
      SCALE2 = new SoundId("SCALE2", 30, 10, 240);
      SCALE3 = new SoundId("SCALE3", 31, 10, 240);
      SCALE4 = new SoundId("SCALE4", 32, 10, 240);
      SCALE5 = new SoundId("SCALE5", 33, 10, 240);
      SCALE6 = new SoundId("SCALE6", 34, 10, 240);
      SCALE7 = new SoundId("SCALE7", 35, 10, 240);
      SCALE8 = new SoundId("SCALE8", 36, 10, 240);
      SCALE_RESOLVE = new SoundId("SCALE_RESOLVE", 37, 10, 600);
      SoundId[] arrayOfSoundId = new SoundId[38];
      arrayOfSoundId[0] = TAP;
      arrayOfSoundId[1] = FOCUS;
      arrayOfSoundId[2] = DISMISS;
      arrayOfSoundId[3] = SUCCESS;
      arrayOfSoundId[4] = ERROR;
      arrayOfSoundId[5] = DISALLOWED_ACTION;
      arrayOfSoundId[6] = DON;
      arrayOfSoundId[7] = DOFF;
      arrayOfSoundId[8] = NOTIFICATION;
      arrayOfSoundId[9] = NOTIFICATION_MULTIPLE;
      arrayOfSoundId[10] = NOTIFICATION_NAVIGATION;
      arrayOfSoundId[11] = VOICE_PENDING;
      arrayOfSoundId[12] = VOICE_COMPLETED;
      arrayOfSoundId[13] = PHOTO_READY;
      arrayOfSoundId[14] = PHOTO_SHUTTER;
      arrayOfSoundId[15] = VIDEO_START;
      arrayOfSoundId[16] = VIDEO_STOP;
      arrayOfSoundId[17] = HANGOUT_INCOMING_RING;
      arrayOfSoundId[18] = HANGOUT_PARTICIPANT_JOIN;
      arrayOfSoundId[19] = HANGOUT_PARTICIPANT_LEAVE;
      arrayOfSoundId[20] = HANGOUT_CHAT_MESSAGE;
      arrayOfSoundId[21] = CALL_INCOMING_RING;
      arrayOfSoundId[22] = CALL_START;
      arrayOfSoundId[23] = CALL_STOP;
      arrayOfSoundId[24] = ADD_CARD;
      arrayOfSoundId[25] = REMOVE_CARD;
      arrayOfSoundId[26] = POWER_CONNECTED;
      arrayOfSoundId[27] = SHUT_DOWN;
      arrayOfSoundId[28] = VOLUME_CHANGE;
      arrayOfSoundId[29] = SCALE1;
      arrayOfSoundId[30] = SCALE2;
      arrayOfSoundId[31] = SCALE3;
      arrayOfSoundId[32] = SCALE4;
      arrayOfSoundId[33] = SCALE5;
      arrayOfSoundId[34] = SCALE6;
      arrayOfSoundId[35] = SCALE7;
      arrayOfSoundId[36] = SCALE8;
      arrayOfSoundId[37] = SCALE_RESOLVE;
    }

    private SoundId(int paramInt1, int paramInt2)
    {
      this.priority = paramInt1;
      this.durationMs = paramInt2;
    }

    @VisibleForTesting
    int getDuration()
    {
      return this.durationMs;
    }

    public int getPriority()
    {
      return this.priority;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.sound.SoundManager
 * JD-Core Version:    0.6.2
 */