package com.google.protobuf;

import java.io.IOException;
import java.io.InputStream;

public abstract class AbstractParser<MessageType extends MessageLite>
  implements Parser<MessageType>
{
  private static final ExtensionRegistryLite EMPTY_REGISTRY = ExtensionRegistryLite.getEmptyRegistry();

  private MessageType checkMessageInitialized(MessageType paramMessageType)
    throws InvalidProtocolBufferException
  {
    if ((paramMessageType != null) && (!paramMessageType.isInitialized()))
      throw newUninitializedMessageException(paramMessageType).asInvalidProtocolBufferException().setUnfinishedMessage(paramMessageType);
    return paramMessageType;
  }

  private UninitializedMessageException newUninitializedMessageException(MessageType paramMessageType)
  {
    if ((paramMessageType instanceof AbstractMessageLite))
      return ((AbstractMessageLite)paramMessageType).newUninitializedMessageException();
    if ((paramMessageType instanceof AbstractMutableMessageLite))
      return ((AbstractMutableMessageLite)paramMessageType).newUninitializedMessageException();
    return new UninitializedMessageException(paramMessageType);
  }

  public MessageType parseDelimitedFrom(InputStream paramInputStream)
    throws InvalidProtocolBufferException
  {
    return parseDelimitedFrom(paramInputStream, EMPTY_REGISTRY);
  }

  public MessageType parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return checkMessageInitialized(parsePartialDelimitedFrom(paramInputStream, paramExtensionRegistryLite));
  }

  public MessageType parseFrom(ByteString paramByteString)
    throws InvalidProtocolBufferException
  {
    return parseFrom(paramByteString, EMPTY_REGISTRY);
  }

  public MessageType parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return checkMessageInitialized(parsePartialFrom(paramByteString, paramExtensionRegistryLite));
  }

  public MessageType parseFrom(CodedInputStream paramCodedInputStream)
    throws InvalidProtocolBufferException
  {
    return parseFrom(paramCodedInputStream, EMPTY_REGISTRY);
  }

  public MessageType parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return checkMessageInitialized((MessageLite)parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite));
  }

  public MessageType parseFrom(InputStream paramInputStream)
    throws InvalidProtocolBufferException
  {
    return parseFrom(paramInputStream, EMPTY_REGISTRY);
  }

  public MessageType parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return checkMessageInitialized(parsePartialFrom(paramInputStream, paramExtensionRegistryLite));
  }

  public MessageType parseFrom(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    return parseFrom(paramArrayOfByte, EMPTY_REGISTRY);
  }

  public MessageType parseFrom(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws InvalidProtocolBufferException
  {
    return parseFrom(paramArrayOfByte, paramInt1, paramInt2, EMPTY_REGISTRY);
  }

  public MessageType parseFrom(byte[] paramArrayOfByte, int paramInt1, int paramInt2, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return checkMessageInitialized(parsePartialFrom(paramArrayOfByte, paramInt1, paramInt2, paramExtensionRegistryLite));
  }

  public MessageType parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return parseFrom(paramArrayOfByte, 0, paramArrayOfByte.length, paramExtensionRegistryLite);
  }

  public MessageType parsePartialDelimitedFrom(InputStream paramInputStream)
    throws InvalidProtocolBufferException
  {
    return parsePartialDelimitedFrom(paramInputStream, EMPTY_REGISTRY);
  }

  public MessageType parsePartialDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    try
    {
      int i = paramInputStream.read();
      if (i == -1)
        return null;
      int j = CodedInputStream.readRawVarint32(i, paramInputStream);
      return parsePartialFrom(new AbstractMessageLite.Builder.LimitedInputStream(paramInputStream, j), paramExtensionRegistryLite);
    }
    catch (IOException localIOException)
    {
      throw new InvalidProtocolBufferException(localIOException.getMessage());
    }
  }

  public MessageType parsePartialFrom(ByteString paramByteString)
    throws InvalidProtocolBufferException
  {
    return parsePartialFrom(paramByteString, EMPTY_REGISTRY);
  }

  public MessageType parsePartialFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    try
    {
      CodedInputStream localCodedInputStream = paramByteString.newCodedInput();
      MessageLite localMessageLite = (MessageLite)parsePartialFrom(localCodedInputStream, paramExtensionRegistryLite);
      try
      {
        localCodedInputStream.checkLastTagWas(0);
        return localMessageLite;
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException2)
      {
        throw localInvalidProtocolBufferException2.setUnfinishedMessage(localMessageLite);
      }
    }
    catch (InvalidProtocolBufferException localInvalidProtocolBufferException1)
    {
      throw localInvalidProtocolBufferException1;
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException("Reading from a ByteString threw an IOException (should never happen).", localIOException);
    }
  }

  public MessageType parsePartialFrom(CodedInputStream paramCodedInputStream)
    throws InvalidProtocolBufferException
  {
    return (MessageLite)parsePartialFrom(paramCodedInputStream, EMPTY_REGISTRY);
  }

  public MessageType parsePartialFrom(InputStream paramInputStream)
    throws InvalidProtocolBufferException
  {
    return parsePartialFrom(paramInputStream, EMPTY_REGISTRY);
  }

  public MessageType parsePartialFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    CodedInputStream localCodedInputStream = CodedInputStream.newInstance(paramInputStream);
    MessageLite localMessageLite = (MessageLite)parsePartialFrom(localCodedInputStream, paramExtensionRegistryLite);
    try
    {
      localCodedInputStream.checkLastTagWas(0);
      return localMessageLite;
    }
    catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
    {
      throw localInvalidProtocolBufferException.setUnfinishedMessage(localMessageLite);
    }
  }

  public MessageType parsePartialFrom(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    return parsePartialFrom(paramArrayOfByte, 0, paramArrayOfByte.length, EMPTY_REGISTRY);
  }

  public MessageType parsePartialFrom(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws InvalidProtocolBufferException
  {
    return parsePartialFrom(paramArrayOfByte, paramInt1, paramInt2, EMPTY_REGISTRY);
  }

  public MessageType parsePartialFrom(byte[] paramArrayOfByte, int paramInt1, int paramInt2, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    try
    {
      CodedInputStream localCodedInputStream = CodedInputStream.newInstance(paramArrayOfByte, paramInt1, paramInt2);
      MessageLite localMessageLite = (MessageLite)parsePartialFrom(localCodedInputStream, paramExtensionRegistryLite);
      try
      {
        localCodedInputStream.checkLastTagWas(0);
        return localMessageLite;
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException2)
      {
        throw localInvalidProtocolBufferException2.setUnfinishedMessage(localMessageLite);
      }
    }
    catch (InvalidProtocolBufferException localInvalidProtocolBufferException1)
    {
      throw localInvalidProtocolBufferException1;
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).", localIOException);
    }
  }

  public MessageType parsePartialFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return parsePartialFrom(paramArrayOfByte, 0, paramArrayOfByte.length, paramExtensionRegistryLite);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.protobuf.AbstractParser
 * JD-Core Version:    0.6.2
 */