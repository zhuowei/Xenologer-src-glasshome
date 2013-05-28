package com.google.protobuf;

import java.io.IOException;
import java.io.InputStream;

public abstract interface MutableMessageLite extends MessageLite, Cloneable
{
  public abstract MutableMessageLite clear();

  public abstract MutableMessageLite clone();

  public abstract int getCachedSize();

  public abstract MessageLite getDefaultInstanceForType();

  public abstract MessageLite immutableCopy();

  public abstract boolean mergeDelimitedFrom(InputStream paramInputStream);

  public abstract boolean mergeDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite);

  public abstract boolean mergeFrom(ByteString paramByteString);

  public abstract boolean mergeFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite);

  public abstract boolean mergeFrom(CodedInputStream paramCodedInputStream);

  public abstract boolean mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite);

  public abstract boolean mergeFrom(InputStream paramInputStream);

  public abstract boolean mergeFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite);

  public abstract boolean mergeFrom(byte[] paramArrayOfByte);

  public abstract boolean mergeFrom(byte[] paramArrayOfByte, int paramInt1, int paramInt2);

  public abstract boolean mergeFrom(byte[] paramArrayOfByte, int paramInt1, int paramInt2, ExtensionRegistryLite paramExtensionRegistryLite);

  public abstract boolean mergeFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite);

  public abstract boolean mergePartialFrom(CodedInputStream paramCodedInputStream);

  public abstract boolean mergePartialFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite);

  public abstract MutableMessageLite newMessageForType();

  public abstract boolean parseDelimitedFrom(InputStream paramInputStream);

  public abstract boolean parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite);

  public abstract boolean parseFrom(ByteString paramByteString);

  public abstract boolean parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite);

  public abstract boolean parseFrom(InputStream paramInputStream);

  public abstract boolean parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite);

  public abstract boolean parseFrom(byte[] paramArrayOfByte);

  public abstract boolean parseFrom(byte[] paramArrayOfByte, int paramInt1, int paramInt2);

  public abstract boolean parseFrom(byte[] paramArrayOfByte, int paramInt1, int paramInt2, ExtensionRegistryLite paramExtensionRegistryLite);

  public abstract boolean parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite);

  public abstract boolean parsePartialFrom(CodedInputStream paramCodedInputStream);

  public abstract boolean parsePartialFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite);

  public abstract void writeToWithCachedSizes(CodedOutputStream paramCodedOutputStream)
    throws IOException;
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.protobuf.MutableMessageLite
 * JD-Core Version:    0.6.2
 */