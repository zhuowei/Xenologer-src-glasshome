package com.google.glass.voice;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public class InterleavingInputStream extends InputStream
{
  private static final String TAG = InterleavingInputStream.class.getSimpleName();
  private final InputStream delegate;
  private ByteBuffer leaf;

  public InterleavingInputStream(InputStream paramInputStream)
  {
    this.delegate = paramInputStream;
  }

  private int readFromDelegate(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
    throws IOException
  {
    return this.delegate.read(paramArrayOfByte, paramInt1 + paramInt3, paramInt2 - paramInt3);
  }

  private void readFromLeaf(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.leaf.get(paramArrayOfByte, paramInt1, paramInt2);
  }

  public void close()
    throws IOException
  {
    this.delegate.close();
    super.close();
  }

  public void interleave(ByteBuffer paramByteBuffer)
  {
    this.leaf = paramByteBuffer;
  }

  public int read()
    throws IOException
  {
    throw new IOException("Not implemented");
  }

  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    ByteBuffer localByteBuffer = this.leaf;
    int i = 0;
    if (localByteBuffer != null)
    {
      if (this.leaf.remaining() >= paramInt2)
      {
        readFromLeaf(paramArrayOfByte, paramInt1, paramInt2);
        return paramInt2;
      }
      int j = this.leaf.remaining();
      readFromLeaf(paramArrayOfByte, paramInt1, j);
      this.leaf = null;
      i = j;
    }
    return i + readFromDelegate(paramArrayOfByte, paramInt1, paramInt2, i);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.InterleavingInputStream
 * JD-Core Version:    0.6.2
 */