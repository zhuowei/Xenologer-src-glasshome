package com.google.protobuf;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public abstract class ByteString
  implements Iterable<Byte>
{
  static final int CONCATENATE_BY_COPY_SIZE = 128;
  public static final ByteString EMPTY;
  static final int MAX_READ_FROM_CHUNK_SIZE = 8192;
  static final int MIN_READ_FROM_CHUNK_SIZE = 256;

  static
  {
    if (!ByteString.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      EMPTY = new LiteralByteString(new byte[0]);
      return;
    }
  }

  private static ByteString balancedConcat(Iterator<ByteString> paramIterator, int paramInt)
  {
    assert (paramInt >= 1);
    if (paramInt == 1)
      return (ByteString)paramIterator.next();
    int i = paramInt >>> 1;
    return balancedConcat(paramIterator, i).concat(balancedConcat(paramIterator, paramInt - i));
  }

  public static ByteString copyFrom(Iterable<ByteString> paramIterable)
  {
    if (!(paramIterable instanceof Collection))
    {
      localObject = new ArrayList();
      Iterator localIterator = paramIterable.iterator();
      while (localIterator.hasNext())
        ((Collection)localObject).add((ByteString)localIterator.next());
    }
    Object localObject = (Collection)paramIterable;
    if (((Collection)localObject).isEmpty())
      return EMPTY;
    return balancedConcat(((Collection)localObject).iterator(), ((Collection)localObject).size());
  }

  public static ByteString copyFrom(String paramString1, String paramString2)
    throws UnsupportedEncodingException
  {
    return new LiteralByteString(paramString1.getBytes(paramString2));
  }

  public static ByteString copyFrom(ByteBuffer paramByteBuffer)
  {
    return copyFrom(paramByteBuffer, paramByteBuffer.remaining());
  }

  public static ByteString copyFrom(ByteBuffer paramByteBuffer, int paramInt)
  {
    byte[] arrayOfByte = new byte[paramInt];
    paramByteBuffer.get(arrayOfByte);
    return new LiteralByteString(arrayOfByte);
  }

  public static ByteString copyFrom(byte[] paramArrayOfByte)
  {
    return copyFrom(paramArrayOfByte, 0, paramArrayOfByte.length);
  }

  public static ByteString copyFrom(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = new byte[paramInt2];
    System.arraycopy(paramArrayOfByte, paramInt1, arrayOfByte, 0, paramInt2);
    return new LiteralByteString(arrayOfByte);
  }

  public static ByteString copyFromUtf8(String paramString)
  {
    try
    {
      LiteralByteString localLiteralByteString = new LiteralByteString(paramString.getBytes("UTF-8"));
      return localLiteralByteString;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new RuntimeException("UTF-8 not supported?", localUnsupportedEncodingException);
    }
  }

  static CodedBuilder newCodedBuilder(int paramInt)
  {
    return new CodedBuilder(paramInt, null);
  }

  public static Output newOutput()
  {
    return new Output(128);
  }

  public static Output newOutput(int paramInt)
  {
    return new Output(paramInt);
  }

  private static ByteString readChunk(InputStream paramInputStream, int paramInt)
    throws IOException
  {
    byte[] arrayOfByte = new byte[paramInt];
    int i = 0;
    while (true)
    {
      int j;
      if (i < paramInt)
      {
        j = paramInputStream.read(arrayOfByte, i, paramInt - i);
        if (j != -1);
      }
      else
      {
        if (i != 0)
          break;
        return null;
      }
      i += j;
    }
    return copyFrom(arrayOfByte, 0, i);
  }

  public static ByteString readFrom(InputStream paramInputStream)
    throws IOException
  {
    return readFrom(paramInputStream, 256, 8192);
  }

  public static ByteString readFrom(InputStream paramInputStream, int paramInt)
    throws IOException
  {
    return readFrom(paramInputStream, paramInt, paramInt);
  }

  public static ByteString readFrom(InputStream paramInputStream, int paramInt1, int paramInt2)
    throws IOException
  {
    ArrayList localArrayList = new ArrayList();
    for (int i = paramInt1; ; i = Math.min(i * 2, paramInt2))
    {
      ByteString localByteString = readChunk(paramInputStream, i);
      if (localByteString == null)
        return copyFrom(localArrayList);
      localArrayList.add(localByteString);
    }
  }

  public abstract ByteBuffer asReadOnlyByteBuffer();

  public abstract List<ByteBuffer> asReadOnlyByteBufferList();

  public abstract byte byteAt(int paramInt);

  public ByteString concat(ByteString paramByteString)
  {
    int i = size();
    int j = paramByteString.size();
    if (i + j >= 2147483647L)
      throw new IllegalArgumentException("ByteString would be too long: " + i + "+" + j);
    return RopeByteString.concatenate(this, paramByteString);
  }

  public abstract void copyTo(ByteBuffer paramByteBuffer);

  public void copyTo(byte[] paramArrayOfByte, int paramInt)
  {
    copyTo(paramArrayOfByte, 0, paramInt, size());
  }

  public void copyTo(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 < 0)
      throw new IndexOutOfBoundsException("Source offset < 0: " + paramInt1);
    if (paramInt2 < 0)
      throw new IndexOutOfBoundsException("Target offset < 0: " + paramInt2);
    if (paramInt3 < 0)
      throw new IndexOutOfBoundsException("Length < 0: " + paramInt3);
    if (paramInt1 + paramInt3 > size())
      throw new IndexOutOfBoundsException("Source end offset < 0: " + (paramInt1 + paramInt3));
    if (paramInt2 + paramInt3 > paramArrayOfByte.length)
      throw new IndexOutOfBoundsException("Target end offset < 0: " + (paramInt2 + paramInt3));
    if (paramInt3 > 0)
      copyToInternal(paramArrayOfByte, paramInt1, paramInt2, paramInt3);
  }

  protected abstract void copyToInternal(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3);

  public boolean endsWith(ByteString paramByteString)
  {
    return (size() >= paramByteString.size()) && (substring(size() - paramByteString.size()).equals(paramByteString));
  }

  public abstract boolean equals(Object paramObject);

  protected abstract int getTreeDepth();

  public abstract int hashCode();

  protected abstract boolean isBalanced();

  public boolean isEmpty()
  {
    return size() == 0;
  }

  public abstract boolean isValidUtf8();

  public abstract ByteIterator iterator();

  public abstract CodedInputStream newCodedInput();

  public abstract InputStream newInput();

  protected abstract int partialHash(int paramInt1, int paramInt2, int paramInt3);

  protected abstract int partialIsValidUtf8(int paramInt1, int paramInt2, int paramInt3);

  protected abstract int peekCachedHashCode();

  public abstract int size();

  public boolean startsWith(ByteString paramByteString)
  {
    int i = size();
    int j = paramByteString.size();
    boolean bool1 = false;
    if (i >= j)
    {
      boolean bool2 = substring(0, paramByteString.size()).equals(paramByteString);
      bool1 = false;
      if (bool2)
        bool1 = true;
    }
    return bool1;
  }

  public ByteString substring(int paramInt)
  {
    return substring(paramInt, size());
  }

  public abstract ByteString substring(int paramInt1, int paramInt2);

  public byte[] toByteArray()
  {
    int i = size();
    if (i == 0)
      return Internal.EMPTY_BYTE_ARRAY;
    byte[] arrayOfByte = new byte[i];
    copyToInternal(arrayOfByte, 0, 0, i);
    return arrayOfByte;
  }

  public String toString()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.toHexString(System.identityHashCode(this));
    arrayOfObject[1] = Integer.valueOf(size());
    return String.format("<ByteString@%s size=%d>", arrayOfObject);
  }

  public abstract String toString(String paramString)
    throws UnsupportedEncodingException;

  public String toStringUtf8()
  {
    try
    {
      String str = toString("UTF-8");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new RuntimeException("UTF-8 not supported?", localUnsupportedEncodingException);
    }
  }

  public abstract void writeTo(OutputStream paramOutputStream)
    throws IOException;

  public static abstract interface ByteIterator extends Iterator<Byte>
  {
    public abstract byte nextByte();
  }

  static final class CodedBuilder
  {
    private final byte[] buffer;
    private final CodedOutputStream output;

    private CodedBuilder(int paramInt)
    {
      this.buffer = new byte[paramInt];
      this.output = CodedOutputStream.newInstance(this.buffer);
    }

    public ByteString build()
    {
      this.output.checkNoSpaceLeft();
      return new LiteralByteString(this.buffer);
    }

    public CodedOutputStream getCodedOutput()
    {
      return this.output;
    }
  }

  public static final class Output extends OutputStream
  {
    private static final byte[] EMPTY_BYTE_ARRAY = new byte[0];
    private byte[] buffer;
    private int bufferPos;
    private final ArrayList<ByteString> flushedBuffers;
    private int flushedBuffersTotalBytes;
    private final int initialCapacity;

    Output(int paramInt)
    {
      if (paramInt < 0)
        throw new IllegalArgumentException("Buffer size < 0");
      this.initialCapacity = paramInt;
      this.flushedBuffers = new ArrayList();
      this.buffer = new byte[paramInt];
    }

    private void flushFullBuffer(int paramInt)
    {
      this.flushedBuffers.add(new LiteralByteString(this.buffer));
      this.flushedBuffersTotalBytes += this.buffer.length;
      this.buffer = new byte[Math.max(this.initialCapacity, Math.max(paramInt, this.flushedBuffersTotalBytes >>> 1))];
      this.bufferPos = 0;
    }

    private void flushLastBuffer()
    {
      if (this.bufferPos < this.buffer.length)
        if (this.bufferPos > 0)
        {
          byte[] arrayOfByte = Arrays.copyOf(this.buffer, this.bufferPos);
          this.flushedBuffers.add(new LiteralByteString(arrayOfByte));
        }
      while (true)
      {
        this.flushedBuffersTotalBytes += this.bufferPos;
        this.bufferPos = 0;
        return;
        this.flushedBuffers.add(new LiteralByteString(this.buffer));
        this.buffer = EMPTY_BYTE_ARRAY;
      }
    }

    public void reset()
    {
      try
      {
        this.flushedBuffers.clear();
        this.flushedBuffersTotalBytes = 0;
        this.bufferPos = 0;
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public int size()
    {
      try
      {
        int i = this.flushedBuffersTotalBytes;
        int j = this.bufferPos;
        int k = i + j;
        return k;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public ByteString toByteString()
    {
      try
      {
        flushLastBuffer();
        ByteString localByteString = ByteString.copyFrom(this.flushedBuffers);
        return localByteString;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public String toString()
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.toHexString(System.identityHashCode(this));
      arrayOfObject[1] = Integer.valueOf(size());
      return String.format("<ByteString.Output@%s size=%d>", arrayOfObject);
    }

    public void write(int paramInt)
    {
      try
      {
        if (this.bufferPos == this.buffer.length)
          flushFullBuffer(1);
        byte[] arrayOfByte = this.buffer;
        int i = this.bufferPos;
        this.bufferPos = (i + 1);
        arrayOfByte[i] = ((byte)paramInt);
        return;
      }
      finally
      {
      }
    }

    public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    {
      try
      {
        if (paramInt2 <= this.buffer.length - this.bufferPos)
          System.arraycopy(paramArrayOfByte, paramInt1, this.buffer, this.bufferPos, paramInt2);
        int k;
        for (this.bufferPos = (paramInt2 + this.bufferPos); ; this.bufferPos = k)
        {
          return;
          int i = this.buffer.length - this.bufferPos;
          System.arraycopy(paramArrayOfByte, paramInt1, this.buffer, this.bufferPos, i);
          int j = paramInt1 + i;
          k = paramInt2 - i;
          flushFullBuffer(k);
          System.arraycopy(paramArrayOfByte, j, this.buffer, 0, k);
        }
      }
      finally
      {
      }
    }

    public void writeTo(OutputStream paramOutputStream)
      throws IOException
    {
      byte[] arrayOfByte;
      int i;
      try
      {
        ByteString[] arrayOfByteString = (ByteString[])this.flushedBuffers.toArray(new ByteString[this.flushedBuffers.size()]);
        arrayOfByte = this.buffer;
        i = this.bufferPos;
        int j = arrayOfByteString.length;
        for (int k = 0; k < j; k++)
          arrayOfByteString[k].writeTo(paramOutputStream);
      }
      finally
      {
      }
      paramOutputStream.write(Arrays.copyOf(arrayOfByte, i));
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.protobuf.ByteString
 * JD-Core Version:    0.6.2
 */