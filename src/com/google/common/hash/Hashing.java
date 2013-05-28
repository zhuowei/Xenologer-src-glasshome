package com.google.common.hash;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import com.google.common.primitives.UnsignedInts;
import java.nio.ByteBuffer;
import java.util.Iterator;

@Beta
public final class Hashing
{
  private static final HashFunction MD5 = new MessageDigestHashFunction("MD5");
  private static final Murmur3_128HashFunction MURMUR3_128;
  private static final Murmur3_32HashFunction MURMUR3_32 = new Murmur3_32HashFunction(0);
  private static final HashFunction SHA_1 = new MessageDigestHashFunction("SHA-1");
  private static final HashFunction SHA_256 = new MessageDigestHashFunction("SHA-256");
  private static final HashFunction SHA_512 = new MessageDigestHashFunction("SHA-512");

  static
  {
    MURMUR3_128 = new Murmur3_128HashFunction(0);
  }

  static int checkPositiveAndMakeMultipleOf32(int paramInt)
  {
    if (paramInt > 0);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool, "Number of bits must be positive");
      return 0xFFFFFFE0 & paramInt + 31;
    }
  }

  public static HashCode combineOrdered(Iterable<HashCode> paramIterable)
  {
    Iterator localIterator1 = paramIterable.iterator();
    Preconditions.checkArgument(localIterator1.hasNext(), "Must be at least 1 hash code to combine.");
    byte[] arrayOfByte1 = new byte[((HashCode)localIterator1.next()).bits() / 8];
    Iterator localIterator2 = paramIterable.iterator();
    if (localIterator2.hasNext())
    {
      byte[] arrayOfByte2 = ((HashCode)localIterator2.next()).asBytes();
      if (arrayOfByte2.length == arrayOfByte1.length);
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkArgument(bool, "All hashcodes must have the same bit length.");
        for (int i = 0; i < arrayOfByte2.length; i++)
          arrayOfByte1[i] = ((byte)(37 * arrayOfByte1[i] ^ arrayOfByte2[i]));
        break;
      }
    }
    return HashCodes.fromBytes(arrayOfByte1);
  }

  public static HashCode combineUnordered(Iterable<HashCode> paramIterable)
  {
    Iterator localIterator1 = paramIterable.iterator();
    Preconditions.checkArgument(localIterator1.hasNext(), "Must be at least 1 hash code to combine.");
    byte[] arrayOfByte1 = new byte[((HashCode)localIterator1.next()).bits() / 8];
    Iterator localIterator2 = paramIterable.iterator();
    if (localIterator2.hasNext())
    {
      byte[] arrayOfByte2 = ((HashCode)localIterator2.next()).asBytes();
      if (arrayOfByte2.length == arrayOfByte1.length);
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkArgument(bool, "All hashcodes must have the same bit length.");
        for (int i = 0; i < arrayOfByte2.length; i++)
          arrayOfByte1[i] = ((byte)(arrayOfByte1[i] + arrayOfByte2[i]));
        break;
      }
    }
    return HashCodes.fromBytes(arrayOfByte1);
  }

  public static int consistentHash(long paramLong, int paramInt)
  {
    if (paramInt > 0);
    int i;
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(paramInt);
      Preconditions.checkArgument(bool, "buckets must be positive: %s", arrayOfObject);
      long l = paramLong;
      int j;
      for (i = 0; ; i = j)
      {
        l = 1L + 2862933555777941757L * l;
        j = (int)(2147483648.0D / (1 + (int)(l >>> 33)) * (i + 1));
        if ((j < 0) || (j >= paramInt))
          break;
      }
    }
    return i;
  }

  public static int consistentHash(HashCode paramHashCode, int paramInt)
  {
    return consistentHash(padToLong(paramHashCode), paramInt);
  }

  public static HashFunction goodFastHash(int paramInt)
  {
    int i = checkPositiveAndMakeMultipleOf32(paramInt);
    if (i == 32)
      return murmur3_32();
    if (i <= 128)
      return murmur3_128();
    int j = (i + 127) / 128;
    HashFunction[] arrayOfHashFunction = new HashFunction[j];
    for (int k = 0; k < j; k++)
      arrayOfHashFunction[k] = murmur3_128(1500450271 * k);
    return new ConcatenatedHashFunction(arrayOfHashFunction);
  }

  public static HashFunction md5()
  {
    return MD5;
  }

  public static HashFunction murmur3_128()
  {
    return MURMUR3_128;
  }

  public static HashFunction murmur3_128(int paramInt)
  {
    return new Murmur3_128HashFunction(paramInt);
  }

  public static HashFunction murmur3_32()
  {
    return MURMUR3_32;
  }

  public static HashFunction murmur3_32(int paramInt)
  {
    return new Murmur3_32HashFunction(paramInt);
  }

  public static long padToLong(HashCode paramHashCode)
  {
    if (paramHashCode.bits() < 64)
      return UnsignedInts.toLong(paramHashCode.asInt());
    return paramHashCode.asLong();
  }

  public static HashFunction sha1()
  {
    return SHA_1;
  }

  public static HashFunction sha256()
  {
    return SHA_256;
  }

  public static HashFunction sha512()
  {
    return SHA_512;
  }

  private static class ConcatenatedHashFunction extends AbstractCompositeHashFunction
  {
    final int bits;

    ConcatenatedHashFunction(HashFunction[] paramArrayOfHashFunction)
    {
      super();
      int i = 0;
      HashFunction[] arrayOfHashFunction = this.functions;
      int j = arrayOfHashFunction.length;
      for (int k = 0; k < j; k++)
        i += arrayOfHashFunction[k].bits();
      this.bits = i;
    }

    public int bits()
    {
      return this.bits;
    }

    HashCode makeHash(Hasher[] paramArrayOfHasher)
    {
      byte[] arrayOfByte = new byte[this.bits / 8];
      ByteBuffer localByteBuffer = ByteBuffer.wrap(arrayOfByte);
      int i = paramArrayOfHasher.length;
      for (int j = 0; j < i; j++)
        localByteBuffer.put(paramArrayOfHasher[j].hash().asBytes());
      return HashCodes.fromBytes(arrayOfByte);
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.hash.Hashing
 * JD-Core Version:    0.6.2
 */