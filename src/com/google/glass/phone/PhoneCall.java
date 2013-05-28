package com.google.glass.phone;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.util.Assert;
import com.google.glass.util.BuildHelper;
import com.google.googlex.glass.common.proto.Entity;
import com.google.googlex.glass.common.proto.Entity.Builder;

public final class PhoneCall
  implements Parcelable
{
  public static final Parcelable.Creator<PhoneCall> CREATOR = new Parcelable.Creator()
  {
    public PhoneCall createFromParcel(Parcel paramAnonymousParcel)
    {
      return new PhoneCall(paramAnonymousParcel);
    }

    public PhoneCall[] newArray(int paramAnonymousInt)
    {
      if (paramAnonymousInt >= 0);
      for (boolean bool = true; ; bool = false)
      {
        Assert.assertTrue(bool);
        return new PhoneCall[paramAnonymousInt];
      }
    }
  };
  public static final String EXTRA_PHONE_CALL = "phone_call";
  private static final int NO_CALL_END_TIME = -1;
  private static final int PARCEL_FALSE = 0;
  private static final int PARCEL_TRUE = 1;
  private static final String TAG = PhoneCall.class.getSimpleName();
  private boolean accepted;
  private Entity callerId;
  private CallDirection direction;
  private long endTime = -1L;
  private int errorCode = -1;
  private boolean missed;
  private int numberOfRings;
  private String phoneNumber;
  private long startTime;

  public PhoneCall()
  {
  }

  public PhoneCall(Parcel paramParcel)
  {
    this();
    this.phoneNumber = paramParcel.readString();
    this.callerId = ((Entity)paramParcel.readSerializable());
    this.startTime = paramParcel.readLong();
    this.endTime = paramParcel.readLong();
    this.direction = ((CallDirection)paramParcel.readSerializable());
    int j;
    if (paramParcel.readInt() == i)
    {
      j = i;
      this.accepted = j;
      this.numberOfRings = paramParcel.readInt();
      if (paramParcel.readInt() != i)
        break label102;
    }
    while (true)
    {
      this.missed = i;
      this.errorCode = paramParcel.readInt();
      return;
      j = 0;
      break;
      label102: i = 0;
    }
  }

  public PhoneCall(PhoneCall paramPhoneCall)
  {
    this();
    this.phoneNumber = paramPhoneCall.phoneNumber;
    this.callerId = paramPhoneCall.callerId;
    this.startTime = paramPhoneCall.startTime;
    this.endTime = paramPhoneCall.endTime;
    this.direction = paramPhoneCall.direction;
    this.accepted = paramPhoneCall.accepted;
    this.numberOfRings = paramPhoneCall.numberOfRings;
    this.missed = paramPhoneCall.missed;
    this.errorCode = paramPhoneCall.errorCode;
  }

  public static PhoneCall fromBundle(Bundle paramBundle)
  {
    paramBundle.setClassLoader(PhoneCall.class.getClassLoader());
    return (PhoneCall)paramBundle.getParcelable("phone_call");
  }

  public int describeContents()
  {
    return 0;
  }

  protected void endCallTimer()
  {
    if (this.endTime != -1L)
    {
      Log.w(TAG, "Call already ended, not setting a new time.");
      return;
    }
    this.endTime = SystemClock.uptimeMillis();
    Log.d(TAG, "Call ended at " + this.endTime);
  }

  public long getCallRunTime()
  {
    if (!wasAccepted())
      return 0L;
    if (this.endTime == -1L)
      return SystemClock.uptimeMillis() - this.startTime;
    return this.endTime - this.startTime;
  }

  public long getCallStartTime()
  {
    return this.startTime;
  }

  public Entity getCallerId()
  {
    if ((this.callerId == null) && (!TextUtils.isEmpty(this.phoneNumber)))
    {
      Log.i(TAG, "Caller id is null, returning an entity with just a phone number.");
      return Entity.newBuilder().setPhoneNumber(this.phoneNumber).build();
    }
    return this.callerId;
  }

  public int getError()
  {
    return this.errorCode;
  }

  @VisibleForTesting
  String getLoggablePhoneNumber()
  {
    if (BuildHelper.isUser())
      return "[phone number redacted]";
    if (!TextUtils.isEmpty(this.phoneNumber))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      String str = String.valueOf(this.phoneNumber);
      int i = str.length() / 3;
      localStringBuilder.append(str.substring(0, i));
      for (int j = i; j < -1 + str.length(); j++)
        localStringBuilder.append("*");
      localStringBuilder.append(str.charAt(-1 + str.length()));
      return localStringBuilder.toString();
    }
    return this.phoneNumber;
  }

  public String getPhoneNumber()
  {
    return this.phoneNumber;
  }

  public boolean hasError()
  {
    return this.errorCode != -1;
  }

  public void incrementRing()
  {
    this.numberOfRings = (1 + this.numberOfRings);
  }

  public boolean isIncomingCall()
  {
    return CallDirection.INCOMING.equals(this.direction);
  }

  public boolean isMissedCall()
  {
    return this.missed;
  }

  public void setCallAccepted(boolean paramBoolean)
  {
    this.accepted = paramBoolean;
  }

  protected void setCallDirection(CallDirection paramCallDirection)
  {
    switch (2.$SwitchMap$com$google$glass$phone$PhoneCall$CallDirection[paramCallDirection.ordinal()])
    {
    default:
      Log.w(TAG, "Unknown call incoming or outgoing passed, taking no action: " + paramCallDirection);
      return;
    case 1:
    case 2:
    }
    this.direction = paramCallDirection;
  }

  public void setCallerId(Entity paramEntity)
  {
    this.callerId = paramEntity;
  }

  public void setError(int paramInt)
  {
    this.errorCode = paramInt;
  }

  public void setMissed(boolean paramBoolean)
  {
    Assert.assertTrue(isIncomingCall());
    this.missed = paramBoolean;
  }

  public boolean setPhoneNumber(String paramString)
  {
    if (TextUtils.isEmpty(this.phoneNumber))
    {
      this.phoneNumber = paramString;
      return true;
    }
    return false;
  }

  protected void startCallTimer()
  {
    this.startTime = SystemClock.uptimeMillis();
    this.endTime = -1L;
    Log.d(TAG, "Call started at " + this.startTime);
  }

  public String toString()
  {
    return "PhoneCall [startTime=" + this.startTime + ", endTime=" + this.endTime + ", direction=" + this.direction + ", accepted=" + this.accepted + ", numberOfRings=" + this.numberOfRings + ", missed=" + this.missed + ", error=" + this.errorCode + ", getPrintablePhoneNumber()=" + getLoggablePhoneNumber() + ", getCallRunTime()=" + getCallRunTime() + "]";
  }

  public boolean wasAccepted()
  {
    return this.accepted;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = 1;
    paramParcel.writeString(this.phoneNumber);
    paramParcel.writeSerializable(this.callerId);
    paramParcel.writeLong(this.startTime);
    paramParcel.writeLong(this.endTime);
    paramParcel.writeSerializable(this.direction);
    int j;
    if (this.accepted)
    {
      j = i;
      paramParcel.writeInt(j);
      paramParcel.writeInt(this.numberOfRings);
      if (!this.missed)
        break label93;
    }
    while (true)
    {
      paramParcel.writeInt(i);
      paramParcel.writeInt(this.errorCode);
      return;
      j = 0;
      break;
      label93: i = 0;
    }
  }

  protected static enum CallDirection
  {
    static
    {
      CallDirection[] arrayOfCallDirection = new CallDirection[2];
      arrayOfCallDirection[0] = INCOMING;
      arrayOfCallDirection[1] = OUTGOING;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.phone.PhoneCall
 * JD-Core Version:    0.6.2
 */