package com.google.android.glass.gesture;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract interface IHeadGestureCallback extends IInterface
{
  public abstract void onGestureDetected(int paramInt)
    throws RemoteException;

  public static abstract class Stub extends Binder
    implements IHeadGestureCallback
  {
    private static final String DESCRIPTOR = "com.google.android.glass.gesture.IHeadGestureCallback";
    static final int TRANSACTION_onGestureDetected = 1;

    public Stub()
    {
      attachInterface(this, "com.google.android.glass.gesture.IHeadGestureCallback");
    }

    public static IHeadGestureCallback asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null)
        return null;
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.glass.gesture.IHeadGestureCallback");
      if ((localIInterface != null) && ((localIInterface instanceof IHeadGestureCallback)))
        return (IHeadGestureCallback)localIInterface;
      return new Proxy(paramIBinder);
    }

    public IBinder asBinder()
    {
      return this;
    }

    public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
      throws RemoteException
    {
      switch (paramInt1)
      {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.glass.gesture.IHeadGestureCallback");
        return true;
      case 1:
      }
      paramParcel1.enforceInterface("com.google.android.glass.gesture.IHeadGestureCallback");
      onGestureDetected(paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    }

    private static class Proxy
      implements IHeadGestureCallback
    {
      private IBinder mRemote;

      Proxy(IBinder paramIBinder)
      {
        this.mRemote = paramIBinder;
      }

      public IBinder asBinder()
      {
        return this.mRemote;
      }

      public String getInterfaceDescriptor()
      {
        return "com.google.android.glass.gesture.IHeadGestureCallback";
      }

      public void onGestureDetected(int paramInt)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.glass.gesture.IHeadGestureCallback");
          localParcel1.writeInt(paramInt);
          this.mRemote.transact(1, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.android.glass.gesture.IHeadGestureCallback
 * JD-Core Version:    0.6.2
 */