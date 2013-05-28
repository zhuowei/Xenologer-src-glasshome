package com.google.common.hash;

import com.google.common.annotations.Beta;
import java.nio.charset.Charset;

@Beta
public abstract interface Sink
{
  public abstract Sink putBoolean(boolean paramBoolean);

  public abstract Sink putByte(byte paramByte);

  public abstract Sink putBytes(byte[] paramArrayOfByte);

  public abstract Sink putBytes(byte[] paramArrayOfByte, int paramInt1, int paramInt2);

  public abstract Sink putChar(char paramChar);

  public abstract Sink putDouble(double paramDouble);

  public abstract Sink putFloat(float paramFloat);

  public abstract Sink putInt(int paramInt);

  public abstract Sink putLong(long paramLong);

  public abstract Sink putShort(short paramShort);

  public abstract Sink putString(CharSequence paramCharSequence);

  public abstract Sink putString(CharSequence paramCharSequence, Charset paramCharset);
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.hash.Sink
 * JD-Core Version:    0.6.2
 */