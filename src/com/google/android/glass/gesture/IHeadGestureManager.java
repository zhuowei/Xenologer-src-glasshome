package com.google.android.glass.gesture;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract interface IHeadGestureManager extends IInterface
{
  public abstract boolean register(int paramInt, IHeadGestureCallback paramIHeadGestureCallback)
    throws RemoteException;

  public abstract boolean registerOneShot(int paramInt, IHeadGestureCallback paramIHeadGestureCallback)
    throws RemoteException;

  public abstract boolean unregister(int paramInt, IHeadGestureCallback paramIHeadGestureCallback)
    throws RemoteException;

  public static abstract class Stub extends Binder
    implements IHeadGestureManager
  {
    private static final String DESCRIPTOR = "com.google.android.glass.gesture.IHeadGestureManager";
    static final int TRANSACTION_register = 1;
    static final int TRANSACTION_registerOneShot = 2;
    static final int TRANSACTION_unregister = 3;

    public Stub()
    {
      attachInterface(this, "com.google.android.glass.gesture.IHeadGestureManager");
    }

    public static IHeadGestureManager asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null)
        return null;
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.glass.gesture.IHeadGestureManager");
      if ((localIInterface != null) && ((localIInterface instanceof IHeadGestureManager)))
        return (IHeadGestureManager)localIInterface;
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
        paramParcel2.writeString("com.google.android.glass.gesture.IHeadGestureManager");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.android.glass.gesture.IHeadGestureManager");
        boolean bool3 = register(paramParcel1.readInt(), IHeadGestureCallback.Stub.asInterface(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        int k = 0;
        if (bool3)
          k = 1;
        paramParcel2.writeInt(k);
        return true;
      case 2:
        paramParcel1.enforceInterface("com.google.android.glass.gesture.IHeadGestureManager");
        boolean bool2 = registerOneShot(paramParcel1.readInt(), IHeadGestureCallback.Stub.asInterface(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        int j = 0;
        if (bool2)
          j = 1;
        paramParcel2.writeInt(j);
        return true;
      case 3:
      }
      paramParcel1.enforceInterface("com.google.android.glass.gesture.IHeadGestureManager");
      boolean bool1 = unregister(paramParcel1.readInt(), IHeadGestureCallback.Stub.asInterface(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      int i = 0;
      if (bool1)
        i = 1;
      paramParcel2.writeInt(i);
      return true;
    }

    private static class Proxy
      implements IHeadGestureManager
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
        return "com.google.android.glass.gesture.IHeadGestureManager";
      }

      public boolean register(int paramInt, IHeadGestureCallback paramIHeadGestureCallback)
        throws RemoteException
      {
        boolean bool = true;
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.glass.gesture.IHeadGestureManager");
          localParcel1.writeInt(paramInt);
          IBinder localIBinder;
          if (paramIHeadGestureCallback != null)
          {
            localIBinder = paramIHeadGestureCallback.asBinder();
            localParcel1.writeStrongBinder(localIBinder);
            this.mRemote.transact(1, localParcel1, localParcel2, 0);
            localParcel2.readException();
            int i = localParcel2.readInt();
            if (i == 0)
              break label95;
          }
          while (true)
          {
            return bool;
            localIBinder = null;
            break;
            label95: bool = false;
          }
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public boolean registerOneShot(int paramInt, IHeadGestureCallback paramIHeadGestureCallback)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.glass.gesture.IHeadGestureManager");
          localParcel1.writeInt(paramInt);
          if (paramIHeadGestureCallback != null);
          for (IBinder localIBinder = paramIHeadGestureCallback.asBinder(); ; localIBinder = null)
          {
            localParcel1.writeStrongBinder(localIBinder);
            this.mRemote.transact(2, localParcel1, localParcel2, 0);
            localParcel2.readException();
            int i = localParcel2.readInt();
            boolean bool = false;
            if (i != 0)
              bool = true;
            return bool;
          }
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public boolean unregister(int paramInt, IHeadGestureCallback paramIHeadGestureCallback)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.google.android.glass.gesture.IHeadGestureManager");
          localParcel1.writeInt(paramInt);
          if (paramIHeadGestureCallback != null);
          for (IBinder localIBinder = paramIHeadGestureCallback.asBinder(); ; localIBinder = null)
          {
            localParcel1.writeStrongBinder(localIBinder);
            this.mRemote.transact(3, localParcel1, localParcel2, 0);
            localParcel2.readException();
            int i = localParcel2.readInt();
            boolean bool = false;
            if (i != 0)
              bool = true;
            return bool;
          }
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
 * Qualified Name:     com.google.android.glass.gesture.IHeadGestureManager
 * JD-Core Version:    0.6.2
 */