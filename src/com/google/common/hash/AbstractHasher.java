package com.google.common.hash;

import com.google.common.base.Charsets;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

abstract class AbstractHasher
  implements Hasher
{
  public final Hasher putBoolean(boolean paramBoolean)
  {
    if (paramBoolean);
    for (byte b = 1; ; b = 0)
      return putByte(b);
  }

  public final Hasher putDouble(double paramDouble)
  {
    return putLong(Double.doubleToRawLongBits(paramDouble));
  }

  public final Hasher putFloat(float paramFloat)
  {
    return putInt(Float.floatToRawIntBits(paramFloat));
  }

  public Hasher putString(CharSequence paramCharSequence)
  {
    return putString(paramCharSequence, Charsets.UTF_16LE);
  }

  public Hasher putString(CharSequence paramCharSequence, Charset paramCharset)
  {
    try
    {
      Hasher localHasher = putBytes(paramCharSequence.toString().getBytes(paramCharset.name()));
      return localHasher;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new AssertionError(localUnsupportedEncodingException);
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.hash.AbstractHasher
 * JD-Core Version:    0.6.2
 */