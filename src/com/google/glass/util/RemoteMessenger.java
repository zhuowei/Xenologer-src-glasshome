package com.google.glass.util;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.util.LruCache;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class RemoteMessenger
{
  private static final int MAX_PENDING_MESSAGES = 20;
  private static final String TAG = RemoteMessenger.class.getSimpleName();
  private final Intent bindIntent;
  private boolean closed = false;
  private final ServiceConnection connection = new ServiceConnection()
  {
    public void onServiceConnected(ComponentName paramAnonymousComponentName, IBinder paramAnonymousIBinder)
    {
      RemoteMessenger.access$002(RemoteMessenger.this, new Messenger(paramAnonymousIBinder));
      RemoteMessenger.this.sendPendingMessages();
    }

    public void onServiceDisconnected(ComponentName paramAnonymousComponentName)
    {
      RemoteMessenger.access$002(RemoteMessenger.this, null);
      RemoteMessenger.this.pendingMessages.evictAll();
    }
  };
  private final Context context;
  private Messenger messenger = null;
  private LruCache<Message, Message> pendingMessages = new LruCache(20)
  {
    protected void entryRemoved(boolean paramAnonymousBoolean, Message paramAnonymousMessage1, Message paramAnonymousMessage2, Message paramAnonymousMessage3)
    {
      if (paramAnonymousBoolean)
      {
        RemoteMessenger.this.issueFailure(paramAnonymousMessage2);
        return;
      }
      Log.v(RemoteMessenger.TAG, "Ejecting message " + paramAnonymousMessage2);
    }
  };

  public RemoteMessenger(Context paramContext, Intent paramIntent)
  {
    this.context = paramContext;
    this.bindIntent = paramIntent;
    bindServiceIfNeeded();
  }

  private boolean bindServiceIfNeeded()
  {
    if (this.closed)
      throw new RuntimeException("RemoteMessenger was closed");
    if (this.messenger == null)
    {
      this.context.bindService(this.bindIntent, this.connection, 1);
      return true;
    }
    return false;
  }

  private void issueFailure(Message paramMessage)
  {
    if ((paramMessage.replyTo != null) && (paramMessage.replyTo.getBinder().isBinderAlive()));
    try
    {
      paramMessage.replyTo.send(Message.obtain());
      return;
    }
    catch (RemoteException localRemoteException)
    {
      Log.w(TAG, "Remote exception", localRemoteException);
    }
  }

  private void sendPendingMessages()
  {
    Iterator localIterator = this.pendingMessages.snapshot().keySet().iterator();
    while (true)
      if (localIterator.hasNext())
      {
        Message localMessage = (Message)localIterator.next();
        try
        {
          this.messenger.send(localMessage);
          this.pendingMessages.remove(localMessage);
        }
        catch (RemoteException localRemoteException)
        {
          while (true)
            Log.w(TAG, "Remote exception", localRemoteException);
        }
      }
  }

  public void close()
  {
    this.closed = true;
    if (this.messenger != null)
      this.context.unbindService(this.connection);
  }

  public void sendMessage(Message paramMessage)
  {
    if (bindServiceIfNeeded())
    {
      this.pendingMessages.put(paramMessage, paramMessage);
      return;
    }
    try
    {
      this.messenger.send(paramMessage);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      Log.w(TAG, "Remote exception while sending message", localRemoteException);
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.util.RemoteMessenger
 * JD-Core Version:    0.6.2
 */