package com.google.protobuf;

import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public abstract class AbstractMutableMessage<MessageType extends AbstractMutableMessage<MessageType>> extends AbstractMutableMessageLite<MessageType>
  implements MutableMessage
{
  protected static int hashFields(int paramInt, Map<Descriptors.FieldDescriptor, Object> paramMap)
  {
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      Descriptors.FieldDescriptor localFieldDescriptor = (Descriptors.FieldDescriptor)localEntry.getKey();
      Object localObject = localEntry.getValue();
      int i = paramInt * 37 + localFieldDescriptor.getNumber();
      if (localFieldDescriptor.getType() == Descriptors.FieldDescriptor.Type.BYTES)
      {
        if (localFieldDescriptor.isRepeated())
          paramInt = i * 53 + Internal.hashCode((List)localObject);
        else
          paramInt = i * 53 + Arrays.hashCode((byte[])localObject);
      }
      else if (localFieldDescriptor.getType() != Descriptors.FieldDescriptor.Type.ENUM)
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

  public MessageType clone()
  {
    return (AbstractMutableMessage)newMessageForType().mergeFrom(this);
  }

  public final MessageType copyFrom(MutableMessage paramMutableMessage)
  {
    assertMutable();
    clear();
    return mergeFrom(paramMutableMessage);
  }

  public boolean equals(Object paramObject)
  {
    if (paramObject == this);
    MutableMessage localMutableMessage;
    do
    {
      return true;
      if (!(paramObject instanceof MutableMessage))
        return false;
      localMutableMessage = (MutableMessage)paramObject;
      if (getDescriptorForType() != localMutableMessage.getDescriptorForType())
        return false;
    }
    while ((AbstractMessage.compareFields(getAllFields(), localMutableMessage.getAllFields())) && (getUnknownFields().equals(localMutableMessage.getUnknownFields())));
    return false;
  }

  public List<String> findInitializationErrors()
  {
    return MessageReflection.findMissingFields(this);
  }

  public abstract MutableMessage getDefaultInstanceForType();

  public String getInitializationErrorString()
  {
    return MessageReflection.delimitWithCommas(findInitializationErrors());
  }

  public int getSerializedSize()
  {
    this.cachedSize = MessageReflection.getSerializedSize(this);
    return this.cachedSize;
  }

  public int hashCode()
  {
    return 29 * hashFields(779 + getDescriptorForType().hashCode(), getAllFields()) + getUnknownFields().hashCode();
  }

  public boolean isInitialized()
  {
    return MessageReflection.isInitialized(this);
  }

  public MessageType mergeFrom(MutableMessage paramMutableMessage)
  {
    assertMutable();
    if (paramMutableMessage.getDescriptorForType() != getDescriptorForType())
      throw new IllegalArgumentException("mergeFrom(Message) can only merge messages of the same type.");
    Iterator localIterator1 = paramMutableMessage.getAllFields().entrySet().iterator();
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
        MutableMessage localMutableMessage = (MutableMessage)getField(localFieldDescriptor);
        if (localMutableMessage == localMutableMessage.getDefaultInstanceForType())
          setField(localFieldDescriptor, localEntry.getValue());
        else
          setField(localFieldDescriptor, localMutableMessage.newMessageForType().mergeFrom(localMutableMessage).mergeFrom((MutableMessage)localEntry.getValue()));
      }
      else
      {
        setField(localFieldDescriptor, localEntry.getValue());
      }
    }
    mergeUnknownFields(paramMutableMessage.getUnknownFields());
    return this;
  }

  public boolean mergePartialFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
  {
    assertMutable();
    try
    {
      UnknownFieldSet.Builder localBuilder = UnknownFieldSet.newBuilder(getUnknownFields());
      int i = paramCodedInputStream.readTag();
      if (i == 0);
      while (true)
      {
        setUnknownFields(localBuilder.build());
        return true;
        boolean bool = MessageReflection.mergeFieldFrom(paramCodedInputStream, localBuilder, paramExtensionRegistryLite, getDescriptorForType(), new MessageReflection.MutableMessageAdapter(this), i);
        if (bool)
          break;
      }
    }
    catch (IOException localIOException)
    {
    }
    return false;
  }

  public MessageType mergeUnknownFields(UnknownFieldSet paramUnknownFieldSet)
  {
    assertMutable();
    setUnknownFields(UnknownFieldSet.newBuilder(getUnknownFields()).mergeFrom(paramUnknownFieldSet).build());
    return this;
  }

  public MutableMessage mutableCopy()
  {
    throw new UnsupportedOperationException("mutableCopy() is not supported in mutable messages. Use clone() if you need to make a copy of the mutable message.");
  }

  public Message.Builder newBuilderForType()
  {
    throw new UnsupportedOperationException("newBuilderForType() is not supported in mutable messages.");
  }

  protected UninitializedMessageException newUninitializedMessageException()
  {
    return new UninitializedMessageException(MessageReflection.findMissingFields(this));
  }

  public Message.Builder toBuilder()
  {
    throw new UnsupportedOperationException("toBuilder() is not supported in mutable messages.");
  }

  public String toString()
  {
    return TextFormat.printToString(this);
  }

  public void writeToWithCachedSizes(CodedOutputStream paramCodedOutputStream)
    throws IOException
  {
    MessageReflection.writeMessageTo(this, paramCodedOutputStream);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.protobuf.AbstractMutableMessage
 * JD-Core Version:    0.6.2
 */