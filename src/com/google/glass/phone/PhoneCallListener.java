package com.google.glass.phone;

import com.google.googlex.glass.common.proto.Entity;

public abstract interface PhoneCallListener
{
  public abstract void onCallConnected(PhoneCall paramPhoneCall);

  public abstract void onCallConnecting(PhoneCall paramPhoneCall);

  public abstract void onCallDisconnected(PhoneCall paramPhoneCall);

  public abstract void onCallDisconnecting(PhoneCall paramPhoneCall);

  public abstract void onCallError(PhoneCall paramPhoneCall);

  public abstract void onCallerIdentified(Entity paramEntity);

  public abstract void onIncomingCallInitiated(PhoneCall paramPhoneCall, boolean paramBoolean);

  public abstract void onListenerAdded(PhoneCall paramPhoneCall);

  public abstract void onOutgoingCallInitiated(PhoneCall paramPhoneCall);

  public abstract void onPhoneNumberSet(String paramString);

  public static class SimplePhoneCallListener
    implements PhoneCallListener
  {
    public void onCallConnected(PhoneCall paramPhoneCall)
    {
    }

    public void onCallConnecting(PhoneCall paramPhoneCall)
    {
    }

    public void onCallDisconnected(PhoneCall paramPhoneCall)
    {
    }

    public void onCallDisconnecting(PhoneCall paramPhoneCall)
    {
    }

    public void onCallError(PhoneCall paramPhoneCall)
    {
    }

    public void onCallerIdentified(Entity paramEntity)
    {
    }

    public void onIncomingCallInitiated(PhoneCall paramPhoneCall, boolean paramBoolean)
    {
    }

    public void onListenerAdded(PhoneCall paramPhoneCall)
    {
    }

    public void onOutgoingCallInitiated(PhoneCall paramPhoneCall)
    {
    }

    public void onPhoneNumberSet(String paramString)
    {
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.phone.PhoneCallListener
 * JD-Core Version:    0.6.2
 */