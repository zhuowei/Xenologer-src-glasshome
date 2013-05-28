package com.google.common.hash;

import com.google.common.annotations.Beta;
import java.nio.charset.Charset;

@Beta
public abstract interface HashFunction
{
  public abstract int bits();

  public abstract HashCode hashBytes(byte[] paramArrayOfByte);

  public abstract HashCode hashBytes(byte[] paramArrayOfByte, int paramInt1, int paramInt2);

  public abstract HashCode hashLong(long paramLong);

  public abstract HashCode hashString(CharSequence paramCharSequence);

  public abstract HashCode hashString(CharSequence paramCharSequence, Charset paramCharset);

  public abstract Hasher newHasher();

  public abstract Hasher newHasher(int paramInt);
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.hash.HashFunction
 * JD-Core Version:    0.6.2
 */