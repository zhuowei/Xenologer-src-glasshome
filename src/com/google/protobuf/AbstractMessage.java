package com.google.protobuf;

import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public abstract class AbstractMessage extends AbstractMessageLite
  implements Message
{
  private int memoizedSize = -1;

  private static boolean compareBytes(Object paramObject1, Object paramObject2)
  {
    if (((paramObject1 instanceof byte[])) && ((paramObject2 instanceof byte[])))
      return Arrays.equals((byte[])paramObject1, (byte[])paramObject2);
    return toByteString(paramObject1).equals(toByteString(paramObject2));
  }

  static boolean compareFields(Map<Descriptors.FieldDescriptor, Object> paramMap1, Map<Descriptors.FieldDescriptor, Object> paramMap2)
  {
    if (paramMap1.size() != paramMap2.size())
      return false;
    Iterator localIterator = paramMap1.keySet().iterator();
    while (true)
      if (localIterator.hasNext())
      {
        Descriptors.FieldDescriptor localFieldDescriptor = (Descriptors.FieldDescriptor)localIterator.next();
        if (!paramMap2.containsKey(localFieldDescriptor))
          break;
        Object localObject1 = paramMap1.get(localFieldDescriptor);
        Object localObject2 = paramMap2.get(localFieldDescriptor);
        if (localFieldDescriptor.getType() == Descriptors.FieldDescriptor.Type.BYTES)
        {
          if (localFieldDescriptor.isRepeated())
          {
            List localList1 = (List)localObject1;
            List localList2 = (List)localObject2;
            if (localList1.size() != localList2.size())
              break;
            for (int i = 0; ; i++)
            {
              if (i >= localList1.size())
                break label167;
              if (!compareBytes(localList1.get(i), localList2.get(i)))
                break;
            }
            label167: continue;
          }
          if (compareBytes(localObject1, localObject2))
            continue;
          return false;
        }
        if (!localObject1.equals(localObject2))
          return false;
      }
    return true;
  }

  protected static int hashFields(int paramInt, Map<Descriptors.FieldDescriptor, Object> paramMap)
  {
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      Descriptors.FieldDescriptor localFieldDescriptor = (Descriptors.FieldDescriptor)localEntry.getKey();
      Object localObject = localEntry.getValue();
      int i = paramInt * 37 + localFieldDescriptor.getNumber();
      if (localFieldDescriptor.getType() != Descriptors.FieldDescriptor.Type.ENUM)
      {
        paramInt = i * 53 + localObject.hashCode();
      }
      else if (localFieldDescriptor.isRepeated())
      {
        List localList = (List)localObject;
        paramInt = i * 53 + Internal.hashEnumList(localList);
      }
      else
      {
        paramInt = i * 53 + Internal.hashEnum((Internal.EnumLite)localObject);
      }
    }
    return paramInt;
  }

  private static ByteString toByteString(Object paramObject)
  {
    if ((paramObject instanceof byte[]))
      return ByteString.copyFrom((byte[])paramObject);
    return (ByteString)paramObject;
  }

  public boolean equals(Object paramObject)
  {
    if (paramObject == this);
    Message localMessage;
    do
    {
      return true;
      if (!(paramObject instanceof Message))
        return false;
      localMessage = (Message)paramObject;
      if (getDescriptorForType() != localMessage.getDescriptorForType())
        return false;
    }
    while ((compareFields(getAllFields(), localMessage.getAllFields())) && (getUnknownFields().equals(localMessage.getUnknownFields())));
    return false;
  }

  public List<String> findInitializationErrors()
  {
    return MessageReflection.findMissingFields(this);
  }

  public String getInitializationErrorString()
  {
    return MessageReflection.delimitWithCommas(findInitializationErrors());
  }

  public int getSerializedSize()
  {
    int i = this.memoizedSize;
    if (i != -1)
      return i;
    this.memoizedSize = MessageReflection.getSerializedSize(this);
    return this.memoizedSize;
  }

  public int hashCode()
  {
    return 29 * hashFields(779 + getDescriptorForType().hashCode(), getAllFields()) + getUnknownFields().hashCode();
  }

  public boolean isInitialized()
  {
    return MessageReflection.isInitialized(this);
  }

  public MutableMessage mutableCopy()
  {
    throw new UnsupportedOperationException("mutableCopy() is not implemented.");
  }

  UninitializedMessageException newUninitializedMessageException()
  {
    return Builder.newUninitializedMessageException(this);
  }

  public final String toString()
  {
    return TextFormat.printToString(this);
  }

  public void writeTo(CodedOutputStream paramCodedOutputStream)
    throws IOException
  {
    MessageReflection.writeMessageTo(this, paramCodedOutputStream);
  }

  public static abstract class Builder<BuilderType extends Builder> extends AbstractMessageLite.Builder<BuilderType>
    implements Message.Builder
  {
    protected static UninitializedMessageException newUninitializedMessageException(Message paramMessage)
    {
      return new UninitializedMessageException(MessageReflection.findMissingFields(paramMessage));
    }

    public BuilderType clear()
    {
      Iterator localIterator = getAllFields().entrySet().iterator();
      while (localIterator.hasNext())
        clearField((Descriptors.FieldDescriptor)((Map.Entry)localIterator.next()).getKey());
      return this;
    }

    public abstract BuilderType clone();

    public List<String> findInitializationErrors()
    {
      return MessageReflection.findMissingFields(this);
    }

    public Message.Builder getFieldBuilder(Descriptors.FieldDescriptor paramFieldDescriptor)
    {
      throw new UnsupportedOperationException("getFieldBuilder() called on an unsupported message type.");
    }

    public String getInitializationErrorString()
    {
      return MessageReflection.delimitWithCommas(findInitializationErrors());
    }

    public boolean mergeDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return super.mergeDelimitedFrom(paramInputStream);
    }

    public boolean mergeDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return super.mergeDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }

    public BuilderType mergeFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (Builder)super.mergeFrom(paramByteString);
    }

    public BuilderType mergeFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (Builder)super.mergeFrom(paramByteString, paramExtensionRegistryLite);
    }

    public BuilderType mergeFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return mergeFrom(paramCodedInputStream, ExtensionRegistry.getEmptyRegistry());
    }

    public BuilderType mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      UnknownFieldSet.Builder localBuilder = UnknownFieldSet.newBuilder(getUnknownFields());
      int i = paramCodedInputStream.readTag();
      if (i == 0);
      while (true)
      {
        setUnknownFields(localBuilder.build());
        return this;
        MessageReflection.BuilderAdapter localBuilderAdapter = new MessageReflection.BuilderAdapter(this);
        if (MessageReflection.mergeFieldFrom(paramCodedInputStream, localBuilder, paramExtensionRegistryLite, getDescriptorForType(), localBuilderAdapter, i))
          break;
      }
    }

    public BuilderType mergeFrom(Message paramMessage)
    {
      if (paramMessage.getDescriptorForType() != getDescriptorForType())
        throw new IllegalArgumentException("mergeFrom(Message) can only merge messages of the same type.");
      Iterator localIterator1 = paramMessage.getAllFields().entrySet().iterator();
      while (localIterator1.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator1.next();
        Descriptors.FieldDescriptor localFieldDescriptor = (Descriptors.FieldDescriptor)localEntry.getKey();
        if (localFieldDescriptor.isRepeated())
        {
          Iterator localIterator2 = ((List)localEntry.getValue()).iterator();
          while (localIterator2.hasNext())
            addRepeatedField(localFieldDescriptor, localIterator2.next());
        }
        else if (localFieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE)
        {
          Message localMessage = (Message)getField(localFieldDescriptor);
          if (localMessage == localMessage.getDefaultInstanceForType())
            setField(localFieldDescriptor, localEntry.getValue());
          else
            setField(localFieldDescriptor, localMessage.newBuilderForType().mergeFrom(localMessage).mergeFrom((Message)localEntry.getValue()).build());
        }
        else
        {
          setField(localFieldDescriptor, localEntry.getValue());
        }
      }
      mergeUnknownFields(paramMessage.getUnknownFields());
      return this;
    }

    public BuilderType mergeFrom(InputStream paramInputStream)
      throws IOException
    {
      return (Builder)super.mergeFrom(paramInputStream);
    }

    public BuilderType mergeFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (Builder)super.mergeFrom(paramInputStream, paramExtensionRegistryLite);
    }

    public BuilderType mergeFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (Builder)super.mergeFrom(paramArrayOfByte);
    }

    public BuilderType mergeFrom(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
      throws InvalidProtocolBufferException
    {
      return (Builder)super.mergeFrom(paramArrayOfByte, paramInt1, paramInt2);
    }

    public BuilderType mergeFrom(byte[] paramArrayOfByte, int paramInt1, int paramInt2, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (Builder)super.mergeFrom(paramArrayOfByte, paramInt1, paramInt2, paramExtensionRegistryLite);
    }

    public BuilderType mergeFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (Builder)super.mergeFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }

    public BuilderType mergeUnknownFields(UnknownFieldSet paramUnknownFieldSet)
    {
      setUnknownFields(UnknownFieldSet.newBuilder(getUnknownFields()).mergeFrom(paramUnknownFieldSet).build());
      return this;
    }

    public String toString()
    {
      return TextFormat.printToString(this);
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.protobuf.AbstractMessage
 * JD-Core Version:    0.6.2
 */