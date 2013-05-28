package com.google.common.hash;

import com.google.common.primitives.UnsignedBytes;
import java.io.Serializable;
import java.nio.ByteBuffer;

final class Murmur3_32HashFunction extends AbstractStreamingHashFunction
  implements Serializable
{
  private static final long serialVersionUID;
  private final int seed;

  Murmur3_32HashFunction(int paramInt)
  {
    this.seed = paramInt;
  }

  public int bits()
  {
    return 32;
  }

  public Hasher newHasher()
  {
    return new Murmur3_32Hasher(this.seed);
  }

  private static final class Murmur3_32Hasher extends AbstractStreamingHashFunction.AbstractStreamingHasher
  {
    int c1 = -862048943;
    int c2 = 461845907;
    int h1;
    int len;

    Murmur3_32Hasher(int paramInt)
    {
      super();
      this.h1 = paramInt;
    }

    public HashCode makeHash()
    {
      this.h1 ^= this.len;
      this.h1 ^= this.h1 >>> 16;
      this.h1 = (-2048144789 * this.h1);
      this.h1 ^= this.h1 >>> 13;
      this.h1 = (-1028477387 * this.h1);
      this.h1 ^= this.h1 >>> 16;
      return HashCodes.fromInt(this.h1);
    }

    protected void process(ByteBuffer paramByteBuffer)
    {
      int i = paramByteBuffer.getInt();
      this.len = (4 + this.len);
      this.h1 = (Integer.rotateLeft(i * this.c1, 15) * this.c2 ^ this.h1);
      this.h1 = Integer.rotateLeft(this.h1, 13);
      this.h1 = (-430675100 + 5 * this.h1);
    }

    protected void processRemaining(ByteBuffer paramByteBuffer)
    {
      this.len += paramByteBuffer.remaining();
      int i = paramByteBuffer.remaining();
      int j = 0;
      switch (i)
      {
      default:
      case 3:
      case 2:
      case 1:
      }
      while (true)
      {
        this.h1 = (Integer.rotateLeft(j * this.c1, 15) * this.c2 ^ this.h1);
        return;
        j = 0x0 ^ UnsignedBytes.toInt(paramByteBuffer.get(2)) << 16;
        j ^= UnsignedBytes.toInt(paramByteBuffer.get(1)) << 8;
        j ^= UnsignedBytes.toInt(paramByteBuffer.get(0));
      }
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.hash.Murmur3_32HashFunction
 * JD-Core Version:    0.6.2
 */