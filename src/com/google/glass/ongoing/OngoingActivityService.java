package com.google.glass.ongoing;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IBinder.DeathRecipient;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import com.google.glass.util.Assert;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class OngoingActivityService extends Service
{
  private static final String TAG = OngoingActivityService.class.getSimpleName();
  private static final List<ActivityChangeListener> listeners = new ArrayList();
  private static OngoingActivityService runningInstance;
  private final List<ActivityRecord> activities = new ArrayList();
  private final HashMap<Integer, IBinder> binders = new HashMap();
  private final Messenger incoming = new Messenger(new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      OngoingActivityService.this.handleIncomingMessage(paramAnonymousMessage);
    }
  });

  public static void addListener(ActivityChangeListener paramActivityChangeListener)
  {
    synchronized (listeners)
    {
      listeners.remove(paramActivityChangeListener);
      listeners.add(paramActivityChangeListener);
      Log.d(TAG, "Added listener " + paramActivityChangeListener.getClass().getSimpleName() + ", count=" + listeners.size());
      return;
    }
  }

  private int findActivityIndex(int paramInt, OngoingActivityManager.ActivityType paramActivityType)
  {
    for (int i = 0; i < this.activities.size(); i++)
    {
      ActivityRecord localActivityRecord = (ActivityRecord)this.activities.get(i);
      if ((localActivityRecord.pid == paramInt) && (localActivityRecord.type == paramActivityType))
        return i;
    }
    return -1;
  }

  private void fireActivityAdded(ActivityRecord paramActivityRecord)
  {
    ActivityChangeListener[] arrayOfActivityChangeListener = getListeners();
    int i = arrayOfActivityChangeListener.length;
    for (int j = 0; j < i; j++)
      arrayOfActivityChangeListener[j].onActivityAdded(paramActivityRecord);
  }

  private void fireActivityRemoved(ActivityRecord paramActivityRecord)
  {
    ActivityChangeListener[] arrayOfActivityChangeListener = getListeners();
    int i = arrayOfActivityChangeListener.length;
    for (int j = 0; j < i; j++)
      arrayOfActivityChangeListener[j].onActivityRemoved(paramActivityRecord);
  }

  private void fireActivityUpdated(ActivityRecord paramActivityRecord)
  {
    ActivityChangeListener[] arrayOfActivityChangeListener = getListeners();
    int i = arrayOfActivityChangeListener.length;
    for (int j = 0; j < i; j++)
      arrayOfActivityChangeListener[j].onActivityUpdated(paramActivityRecord);
  }

  private ActivityChangeListener[] getListeners()
  {
    synchronized (listeners)
    {
      ActivityChangeListener[] arrayOfActivityChangeListener = (ActivityChangeListener[])listeners.toArray(new ActivityChangeListener[listeners.size()]);
      return arrayOfActivityChangeListener;
    }
  }

  public static ActivityRecord[] getOngoingActivities()
  {
    Assert.assertUiThread();
    if (runningInstance != null)
      return (ActivityRecord[])runningInstance.activities.toArray(new ActivityRecord[0]);
    return new ActivityRecord[0];
  }

  private void handleConnectionLost(int paramInt)
  {
    Log.i(TAG, "Connection lost to client: " + paramInt);
    ArrayList localArrayList = new ArrayList();
    for (int i = -1 + this.activities.size(); i >= 0; i--)
      if (((ActivityRecord)this.activities.get(i)).pid == paramInt)
        localArrayList.add(this.activities.remove(i));
    this.binders.remove(Integer.valueOf(paramInt));
    Iterator localIterator = localArrayList.iterator();
    while (localIterator.hasNext())
      fireActivityRemoved((ActivityRecord)localIterator.next());
  }

  private void handleHideMessage(int paramInt, OngoingActivityMessage paramOngoingActivityMessage)
  {
    int i = findActivityIndex(paramInt, paramOngoingActivityMessage.getActivityType());
    if (i >= 0)
      fireActivityRemoved((ActivityRecord)this.activities.remove(i));
  }

  private void handleIncomingMessage(Message paramMessage)
  {
    Assert.assertUiThread();
    final int i = paramMessage.arg1;
    if (paramMessage.what == 1)
    {
      Log.i(TAG, "Registered client: " + i);
      IBinder localIBinder = paramMessage.replyTo.getBinder();
      this.binders.put(Integer.valueOf(i), localIBinder);
      try
      {
        localIBinder.linkToDeath(new IBinder.DeathRecipient()
        {
          public void binderDied()
          {
            OngoingActivityService.this.handleConnectionLost(i);
          }
        }
        , 0);
        return;
      }
      catch (RemoteException localRemoteException)
      {
        handleConnectionLost(i);
        return;
      }
    }
    if (paramMessage.what == 2)
    {
      OngoingActivityMessage localOngoingActivityMessage = OngoingActivityMessage.fromBundle(paramMessage.getData());
      if (localOngoingActivityMessage != null)
      {
        Log.v(TAG, "Handing update " + localOngoingActivityMessage + " for client: " + i);
        if (localOngoingActivityMessage.getOperation() == OngoingActivityMessage.Operation.SHOW)
        {
          handleShowMessage(i, localOngoingActivityMessage);
          return;
        }
        handleHideMessage(i, localOngoingActivityMessage);
        return;
      }
      Log.w(TAG, "Unable to parse update message");
      return;
    }
    Log.w(TAG, "Unknown message type: " + paramMessage.what);
  }

  private void handleShowMessage(int paramInt, OngoingActivityMessage paramOngoingActivityMessage)
  {
    int i = findActivityIndex(paramInt, paramOngoingActivityMessage.getActivityType());
    if (i >= 0)
    {
      ActivityRecord localActivityRecord2 = (ActivityRecord)this.activities.get(i);
      ActivityRecord.access$302(localActivityRecord2, paramOngoingActivityMessage.getParams());
      fireActivityUpdated(localActivityRecord2);
      return;
    }
    ActivityRecord localActivityRecord1 = new ActivityRecord(paramInt, paramOngoingActivityMessage.getActivityType(), paramOngoingActivityMessage.getParams(), null);
    this.activities.add(localActivityRecord1);
    fireActivityAdded(localActivityRecord1);
  }

  public static boolean isActivityOngoing(OngoingActivityManager.ActivityType paramActivityType)
  {
    Assert.assertUiThread();
    ActivityRecord[] arrayOfActivityRecord = getOngoingActivities();
    int i = arrayOfActivityRecord.length;
    for (int j = 0; j < i; j++)
      if (arrayOfActivityRecord[j].type.equals(paramActivityType))
        return true;
    return false;
  }

  public static void removeListener(ActivityChangeListener paramActivityChangeListener)
  {
    synchronized (listeners)
    {
      listeners.remove(paramActivityChangeListener);
      Log.d(TAG, "Removed listener " + paramActivityChangeListener.getClass().getSimpleName() + ", count=" + listeners.size());
      return;
    }
  }

  public IBinder onBind(Intent paramIntent)
  {
    Log.d(TAG, "onBind");
    return this.incoming.getBinder();
  }

  public void onCreate()
  {
    Log.d(TAG, "onCreate");
    runningInstance = this;
    super.onCreate();
  }

  public void onDestroy()
  {
    Log.d(TAG, "onDestroy");
    this.activities.clear();
    runningInstance = null;
    super.onDestroy();
  }

  public static abstract interface ActivityChangeListener
  {
    public abstract void onActivityAdded(OngoingActivityService.ActivityRecord paramActivityRecord);

    public abstract void onActivityRemoved(OngoingActivityService.ActivityRecord paramActivityRecord);

    public abstract void onActivityUpdated(OngoingActivityService.ActivityRecord paramActivityRecord);
  }

  public static class ActivityRecord
  {
    private Bundle params;
    private final int pid;
    private final OngoingActivityManager.ActivityType type;

    private ActivityRecord(int paramInt, OngoingActivityManager.ActivityType paramActivityType, Bundle paramBundle)
    {
      this.pid = paramInt;
      this.type = paramActivityType;
      this.params = paramBundle;
    }

    public OngoingActivityManager.ActivityType getActivityType()
    {
      return this.type;
    }

    public Bundle getParams()
    {
      return this.params;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.ongoing.OngoingActivityService
 * JD-Core Version:    0.6.2
 */