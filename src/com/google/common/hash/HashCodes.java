package com.google.common.hash;

final class HashCodes
{
  static HashCode fromBytes(byte[] paramArrayOfByte)
  {
    return new BytesHashCode(paramArrayOfByte);
  }

  static HashCode fromInt(int paramInt)
  {
    return new IntHashCode(paramInt);
  }

  static HashCode fromLong(long paramLong)
  {
    return new LongHashCode(paramLong);
  }

  private static class BytesHashCode extends HashCode
  {
    final byte[] bytes;

    BytesHashCode(byte[] paramArrayOfByte)
    {
      this.bytes = paramArrayOfByte;
    }

    public byte[] asBytes()
    {
      return (byte[])this.bytes.clone();
    }

    public int asInt()
    {
      return 0xFF & this.bytes[0] | (0xFF & this.bytes[1]) << 8 | (0xFF & this.bytes[2]) << 16 | (0xFF & this.bytes[3]) << 24;
    }

    public long asLong()
    {
      if (this.bytes.length < 8)
        throw new IllegalStateException("Not enough bytes");
      return 0xFF & this.bytes[0] | (0xFF & this.bytes[1]) << 8 | (0xFF & this.bytes[2]) << 16 | (0xFF & this.bytes[3]) << 24 | (0xFF & this.bytes[4]) << 32 | (0xFF & this.bytes[5]) << 40 | (0xFF & this.bytes[6]) << 48 | (0xFF & this.bytes[7]) << 56;
    }

    public int bits()
    {
      return 8 * this.bytes.length;
    }
  }

  private static class IntHashCode extends HashCode
  {
    final int hash;

    IntHashCode(int paramInt)
    {
      this.hash = paramInt;
    }

    public byte[] asBytes()
    {
      byte[] arrayOfByte = new byte[4];
      arrayOfByte[0] = ((byte)this.hash);
      arrayOfByte[1] = ((byte)(this.hash >> 8));
      arrayOfByte[2] = ((byte)(this.hash >> 16));
      arrayOfByte[3] = ((byte)(this.hash >> 24));
      return arrayOfByte;
    }

    public int asInt()
    {
      return this.hash;
    }

    public long asLong()
    {
      throw new IllegalStateException("this HashCode only has 32 bits; cannot create a long");
    }

    public int bits()
    {
      return 32;
    }
  }

  private static class LongHashCode extends HashCode
  {
    final long hash;

    LongHashCode(long paramLong)
    {
      this.hash = paramLong;
    }

    public byte[] asBytes()
    {
      byte[] arrayOfByte = new byte[8];
      arrayOfByte[0] = ((byte)(int)this.hash);
      arrayOfByte[1] = ((byte)(int)(this.hash >> 8));
      arrayOfByte[2] = ((byte)(int)(this.hash >> 16));
      arrayOfByte[3] = ((byte)(int)(this.hash >> 24));
      arrayOfByte[4] = ((byte)(int)(this.hash >> 32));
      arrayOfByte[5] = ((byte)(int)(this.hash >> 40));
      arrayOfByte[6] = ((byte)(int)(this.hash >> 48));
      arrayOfByte[7] = ((byte)(int)(this.hash >> 56));
      return arrayOfByte;
    }

    public int asInt()
    {
      return (int)this.hash;
    }

    public long asLong()
    {
      return this.hash;
    }

    public int bits()
    {
      return 64;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.hash.HashCodes
 * JD-Core Version:    0.6.2
 */