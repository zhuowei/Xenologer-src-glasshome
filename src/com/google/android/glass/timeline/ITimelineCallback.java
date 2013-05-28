package com.google.android.glass.timeline;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract interface ITimelineCallback extends IInterface
{
  public static abstract class Stub extends Binder
    implements ITimelineCallback
  {
    private static final String DESCRIPTOR = "com.google.android.glass.timeline.ITimelineCallback";

    public Stub()
    {
      attachInterface(this, "com.google.android.glass.timeline.ITimelineCallback");
    }

    public static ITimelineCallback asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null)
        return null;
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.glass.timeline.ITimelineCallback");
      if ((localIInterface != null) && ((localIInterface instanceof ITimelineCallback)))
        return (ITimelineCallback)localIInterface;
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
      }
      paramParcel2.writeString("com.google.android.glass.timeline.ITimelineCallback");
      return true;
    }

    private static class Proxy
      implements ITimelineCallback
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
        return "com.google.android.glass.timeline.ITimelineCallback";
      }
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.android.glass.timeline.ITimelineCallback
 * JD-Core Version:    0.6.2
 */