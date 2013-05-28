package com.google.common.hash;

import com.google.common.base.Preconditions;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;

abstract class AbstractStreamingHashFunction
  implements HashFunction
{
  public HashCode hashBytes(byte[] paramArrayOfByte)
  {
    return newHasher().putBytes(paramArrayOfByte).hash();
  }

  public HashCode hashBytes(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return newHasher().putBytes(paramArrayOfByte, paramInt1, paramInt2).hash();
  }

  public HashCode hashLong(long paramLong)
  {
    return newHasher().putLong(paramLong).hash();
  }

  public HashCode hashString(CharSequence paramCharSequence)
  {
    return newHasher().putString(paramCharSequence).hash();
  }

  public HashCode hashString(CharSequence paramCharSequence, Charset paramCharset)
  {
    return newHasher().putString(paramCharSequence, paramCharset).hash();
  }

  public Hasher newHasher(int paramInt)
  {
    if (paramInt >= 0);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool);
      return newHasher();
    }
  }

  protected static abstract class AbstractStreamingHasher extends AbstractHasher
  {
    private final ByteBuffer buffer;
    private final int bufferSize;
    private final int chunkSize;

    protected AbstractStreamingHasher(int paramInt)
    {
      this(paramInt, paramInt);
    }

    protected AbstractStreamingHasher(int paramInt1, int paramInt2)
    {
      if (paramInt2 % paramInt1 == 0);
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkArgument(bool);
        this.buffer = ByteBuffer.allocate(paramInt2 + 7).order(ByteOrder.LITTLE_ENDIAN);
        this.bufferSize = paramInt2;
        this.chunkSize = paramInt1;
        return;
      }
    }

    private void munch()
    {
      this.buffer.flip();
      while (this.buffer.remaining() >= this.chunkSize)
        process(this.buffer);
      this.buffer.compact();
    }

    private void munchIfFull()
    {
      if (this.buffer.remaining() < 8)
        munch();
    }

    private final Hasher putBytes(ByteBuffer paramByteBuffer)
    {
      if (paramByteBuffer.remaining() <= this.buffer.remaining())
      {
        this.buffer.put(paramByteBuffer);
        munchIfFull();
        return this;
      }
      int i = this.bufferSize - this.buffer.position();
      for (int j = 0; j < i; j++)
        this.buffer.put(paramByteBuffer.get());
      munch();
      while (paramByteBuffer.remaining() >= this.chunkSize)
        process(paramByteBuffer);
      this.buffer.put(paramByteBuffer);
      return this;
    }

    public final HashCode hash()
    {
      munch();
      this.buffer.flip();
      if (this.buffer.remaining() > 0)
        processRemaining(this.buffer);
      return makeHash();
    }

    abstract HashCode makeHash();

    protected abstract void process(ByteBuffer paramByteBuffer);

    protected void processRemaining(ByteBuffer paramByteBuffer)
    {
      paramByteBuffer.position(paramByteBuffer.limit());
      paramByteBuffer.limit(7 + this.chunkSize);
      while (paramByteBuffer.position() < this.chunkSize)
        paramByteBuffer.putLong(0L);
      paramByteBuffer.limit(this.chunkSize);
      paramByteBuffer.flip();
      process(paramByteBuffer);
    }

    public final Hasher putByte(byte paramByte)
    {
      this.buffer.put(paramByte);
      munchIfFull();
      return this;
    }

    public final Hasher putBytes(byte[] paramArrayOfByte)
    {
      return putBytes(paramArrayOfByte, 0, paramArrayOfByte.length);
    }

    public final Hasher putBytes(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    {
      return putBytes(ByteBuffer.wrap(paramArrayOfByte, paramInt1, paramInt2).order(ByteOrder.LITTLE_ENDIAN));
    }

    public final Hasher putChar(char paramChar)
    {
      this.buffer.putChar(paramChar);
      munchIfFull();
      return this;
    }

    public final Hasher putInt(int paramInt)
    {
      this.buffer.putInt(paramInt);
      munchIfFull();
      return this;
    }

    public final Hasher putLong(long paramLong)
    {
      this.buffer.putLong(paramLong);
      munchIfFull();
      return this;
    }

    public final <T> Hasher putObject(T paramT, Funnel<? super T> paramFunnel)
    {
      paramFunnel.funnel(paramT, this);
      return this;
    }

    public final Hasher putShort(short paramShort)
    {
      this.buffer.putShort(paramShort);
      munchIfFull();
      return this;
    }

    public final Hasher putString(CharSequence paramCharSequence)
    {
      for (int i = 0; i < paramCharSequence.length(); i++)
        putChar(paramCharSequence.charAt(i));
      return this;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.hash.AbstractStreamingHashFunction
 * JD-Core Version:    0.6.2
 */