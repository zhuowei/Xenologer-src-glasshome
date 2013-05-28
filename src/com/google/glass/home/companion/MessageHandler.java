package com.google.glass.home.companion;

import com.google.glass.companion.Proto.Envelope;

public abstract interface MessageHandler
{
  public abstract void handle(Proto.Envelope paramEnvelope);
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.companion.MessageHandler
 * JD-Core Version:    0.6.2
 */