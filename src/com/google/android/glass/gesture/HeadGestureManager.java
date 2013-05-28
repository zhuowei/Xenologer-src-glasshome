package com.google.android.glass.gesture;

import android.content.Context;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;

public final class HeadGestureManager
{
  public static final String SERVICE_NAME = "head_gesture";
  private static String TAG = "HeadGestureManager";
  private static HeadGestureManager sInstance;
  private final IHeadGestureManager mService;

  private HeadGestureManager(IHeadGestureManager paramIHeadGestureManager)
  {
    this.mService = paramIHeadGestureManager;
  }

  public static HeadGestureManager from(Context paramContext)
  {
    if (sInstance == null)
      sInstance = new HeadGestureManager(IHeadGestureManager.Stub.asInterface(ServiceManager.getService("head_gesture")));
    return sInstance;
  }

  boolean register(int paramInt, IHeadGestureCallback paramIHeadGestureCallback)
  {
    try
    {
      boolean bool = this.mService.register(paramInt, paramIHeadGestureCallback);
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      Log.e(TAG, "", localRemoteException);
    }
    return false;
  }

  boolean registerOneShot(int paramInt, IHeadGestureCallback paramIHeadGestureCallback)
  {
    try
    {
      boolean bool = this.mService.registerOneShot(paramInt, paramIHeadGestureCallback);
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      Log.e(TAG, "", localRemoteException);
    }
    return false;
  }

  boolean unregister(int paramInt, IHeadGestureCallback paramIHeadGestureCallback)
  {
    try
    {
      boolean bool = this.mService.unregister(paramInt, paramIHeadGestureCallback);
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      Log.e(TAG, "", localRemoteException);
    }
    return false;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.android.glass.gesture.HeadGestureManager
 * JD-Core Version:    0.6.2
 */