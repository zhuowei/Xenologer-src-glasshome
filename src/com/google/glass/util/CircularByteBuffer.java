package com.google.glass.util;

import java.nio.ByteBuffer;

public class CircularByteBuffer
{
  private final ByteBuffer buffer;
  private int byteCount = 0;
  private int nextWriteIndex = 0;

  public CircularByteBuffer(ByteBuffer paramByteBuffer)
  {
    this.buffer = paramByteBuffer;
    paramByteBuffer.clear();
  }

  private void fillFromPosition(ByteBuffer paramByteBuffer, int paramInt)
  {
    if (paramInt < 0)
    {
      int i = paramInt + this.buffer.capacity();
      this.buffer.position(i);
      this.buffer.limit(this.buffer.capacity());
      paramByteBuffer.put(this.buffer);
      paramInt = 0;
    }
    this.buffer.position(paramInt);
    this.buffer.limit(this.nextWriteIndex);
    paramByteBuffer.put(this.buffer);
    this.buffer.limit(this.buffer.capacity());
  }

  public int capacity()
  {
    return this.buffer.capacity();
  }

  public void clear()
  {
    this.buffer.clear();
    this.nextWriteIndex = 0;
    this.byteCount = 0;
  }

  public void get(ByteBuffer paramByteBuffer)
  {
    fillFromPosition(paramByteBuffer, this.nextWriteIndex - this.byteCount);
  }

  public void getLast(ByteBuffer paramByteBuffer, int paramInt)
  {
    int i = this.nextWriteIndex - this.byteCount;
    if (paramInt < this.byteCount)
      i += this.byteCount - paramInt;
    fillFromPosition(paramByteBuffer, i);
  }

  public void put(ByteBuffer paramByteBuffer)
  {
    int i = paramByteBuffer.limit();
    paramByteBuffer.position(Math.max(0, paramByteBuffer.limit() - this.buffer.capacity()));
    int j = paramByteBuffer.remaining();
    this.buffer.position(this.nextWriteIndex);
    paramByteBuffer.limit(Math.min(this.buffer.remaining(), paramByteBuffer.remaining()) + paramByteBuffer.position());
    this.buffer.put(paramByteBuffer);
    paramByteBuffer.limit(i);
    if (paramByteBuffer.hasRemaining())
    {
      this.buffer.position(0);
      this.buffer.put(paramByteBuffer);
    }
    this.nextWriteIndex = ((j + this.nextWriteIndex) % this.buffer.capacity());
    this.byteCount = Math.min(this.buffer.capacity(), j + this.byteCount);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.util.CircularByteBuffer
 * JD-Core Version:    0.6.2
 */