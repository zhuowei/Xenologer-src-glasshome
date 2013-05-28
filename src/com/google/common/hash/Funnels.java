package com.google.common.hash;

import com.google.common.annotations.Beta;

@Beta
public final class Funnels
{
  public static Funnel<byte[]> byteArrayFunnel()
  {
    return ByteArrayFunnel.INSTANCE;
  }

  public static Funnel<CharSequence> stringFunnel()
  {
    return StringFunnel.INSTANCE;
  }

  private static enum ByteArrayFunnel
    implements Funnel<byte[]>
  {
    static
    {
      ByteArrayFunnel[] arrayOfByteArrayFunnel = new ByteArrayFunnel[1];
      arrayOfByteArrayFunnel[0] = INSTANCE;
    }

    public void funnel(byte[] paramArrayOfByte, Sink paramSink)
    {
      paramSink.putBytes(paramArrayOfByte);
    }

    public String toString()
    {
      return "Funnels.byteArrayFunnel()";
    }
  }

  private static enum StringFunnel
    implements Funnel<CharSequence>
  {
    static
    {
      StringFunnel[] arrayOfStringFunnel = new StringFunnel[1];
      arrayOfStringFunnel[0] = INSTANCE;
    }

    public void funnel(CharSequence paramCharSequence, Sink paramSink)
    {
      paramSink.putString(paramCharSequence);
    }

    public String toString()
    {
      return "Funnels.stringFunnel()";
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.hash.Funnels
 * JD-Core Version:    0.6.2
 */