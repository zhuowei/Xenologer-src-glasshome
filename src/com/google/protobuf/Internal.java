package com.google.protobuf;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class Internal
{
  public static final byte[] EMPTY_BYTE_ARRAY = new byte[0];

  public static byte[] byteArrayDefaultValue(String paramString)
  {
    try
    {
      byte[] arrayOfByte = paramString.getBytes("ISO-8859-1");
      return arrayOfByte;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new IllegalStateException("Java VM does not support a standard character set.", localUnsupportedEncodingException);
    }
  }

  public static ByteString bytesDefaultValue(String paramString)
  {
    try
    {
      ByteString localByteString = ByteString.copyFrom(paramString.getBytes("ISO-8859-1"));
      return localByteString;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new IllegalStateException("Java VM does not support a standard character set.", localUnsupportedEncodingException);
    }
  }

  public static boolean equals(List<byte[]> paramList1, List<byte[]> paramList2)
  {
    if (paramList1.size() != paramList2.size())
      return false;
    for (int i = 0; i < paramList1.size(); i++)
      if (!Arrays.equals((byte[])paramList1.get(i), (byte[])paramList2.get(i)))
        return false;
    return true;
  }

  public static int hashBoolean(boolean paramBoolean)
  {
    if (paramBoolean)
      return 1231;
    return 1237;
  }

  public static int hashCode(List<byte[]> paramList)
  {
    int i = 1;
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      byte[] arrayOfByte = (byte[])localIterator.next();
      i = i * 31 + Arrays.hashCode(arrayOfByte);
    }
    return i;
  }

  public static int hashEnum(EnumLite paramEnumLite)
  {
    return paramEnumLite.getNumber();
  }

  public static int hashEnumList(List<? extends EnumLite> paramList)
  {
    int i = 1;
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      EnumLite localEnumLite = (EnumLite)localIterator.next();
      i = i * 31 + hashEnum(localEnumLite);
    }
    return i;
  }

  public static int hashLong(long paramLong)
  {
    return (int)(paramLong ^ paramLong >>> 32);
  }

  public static boolean isValidUtf8(ByteString paramByteString)
  {
    return paramByteString.isValidUtf8();
  }

  public static boolean isValidUtf8(byte[] paramArrayOfByte)
  {
    return Utf8.isValidUtf8(paramArrayOfByte);
  }

  public static <T extends MutableMessageLite> T mergeFrom(T paramT, CodedInputStream paramCodedInputStream)
    throws IOException
  {
    if (!paramT.mergeFrom(paramCodedInputStream))
      throw InvalidProtocolBufferException.parseFailure();
    return paramT;
  }

  public static <T extends MutableMessageLite> T mergeFrom(T paramT, CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    if (!paramT.mergeFrom(paramCodedInputStream, paramExtensionRegistryLite))
      throw InvalidProtocolBufferException.parseFailure();
    return paramT;
  }

  public static <T extends MutableMessageLite> T mergeFrom(T paramT, byte[] paramArrayOfByte)
    throws IOException
  {
    if (!paramT.mergeFrom(paramArrayOfByte))
      throw InvalidProtocolBufferException.parseFailure();
    return paramT;
  }

  public static String stringDefaultValue(String paramString)
  {
    try
    {
      String str = new String(paramString.getBytes("ISO-8859-1"), "UTF-8");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new IllegalStateException("Java VM does not support a standard character set.", localUnsupportedEncodingException);
    }
  }

  public static byte[] toByteArray(String paramString)
  {
    try
    {
      byte[] arrayOfByte = paramString.getBytes("UTF-8");
      return arrayOfByte;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new RuntimeException("UTF-8 not supported?", localUnsupportedEncodingException);
    }
  }

  public static String toStringUtf8(byte[] paramArrayOfByte)
  {
    try
    {
      String str = new String(paramArrayOfByte, "UTF-8");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new RuntimeException("UTF-8 not supported?", localUnsupportedEncodingException);
    }
  }

  public static abstract interface EnumLite
  {
    public abstract int getNumber();
  }

  public static abstract interface EnumLiteMap<T extends Internal.EnumLite>
  {
    public abstract T findValueByNumber(int paramInt);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.protobuf.Internal
 * JD-Core Version:    0.6.2
 */