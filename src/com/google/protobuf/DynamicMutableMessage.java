package com.google.protobuf;

import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public class DynamicMutableMessage extends AbstractMutableMessage<DynamicMutableMessage>
{
  private final FieldSet<Descriptors.FieldDescriptor> fields;
  private final Descriptors.Descriptor type;
  private UnknownFieldSet unknownFields;

  private DynamicMutableMessage(Descriptors.Descriptor paramDescriptor)
  {
    this.type = paramDescriptor;
    this.fields = FieldSet.newFieldSet();
    this.unknownFields = UnknownFieldSet.getDefaultInstance();
  }

  DynamicMutableMessage(Descriptors.Descriptor paramDescriptor, FieldSet<Descriptors.FieldDescriptor> paramFieldSet, UnknownFieldSet paramUnknownFieldSet)
  {
    this.type = paramDescriptor;
    this.fields = paramFieldSet;
    this.unknownFields = paramUnknownFieldSet;
  }

  private DynamicMutableMessage(Descriptors.Descriptor paramDescriptor, boolean paramBoolean)
  {
    this.type = paramDescriptor;
    this.fields = FieldSet.emptySet();
    this.unknownFields = UnknownFieldSet.getDefaultInstance();
    super.makeImmutable();
  }

  public static DynamicMutableMessage getDefaultInstance(Descriptors.Descriptor paramDescriptor)
  {
    return new DynamicMutableMessage(paramDescriptor, true);
  }

  public static DynamicMutableMessage newMessage(Descriptors.Descriptor paramDescriptor)
  {
    return new DynamicMutableMessage(paramDescriptor);
  }

  public static DynamicMutableMessage parseFrom(Descriptors.Descriptor paramDescriptor, ByteString paramByteString)
    throws InvalidProtocolBufferException
  {
    DynamicMutableMessage localDynamicMutableMessage = newMessage(paramDescriptor);
    if (!localDynamicMutableMessage.mergeFrom(paramByteString))
      throw InvalidProtocolBufferException.parseFailure();
    return localDynamicMutableMessage;
  }

  public static DynamicMutableMessage parseFrom(Descriptors.Descriptor paramDescriptor, ByteString paramByteString, ExtensionRegistry paramExtensionRegistry)
    throws InvalidProtocolBufferException
  {
    DynamicMutableMessage localDynamicMutableMessage = newMessage(paramDescriptor);
    if (!localDynamicMutableMessage.mergeFrom(paramByteString, paramExtensionRegistry))
      throw InvalidProtocolBufferException.parseFailure();
    return localDynamicMutableMessage;
  }

  public static DynamicMutableMessage parseFrom(Descriptors.Descriptor paramDescriptor, CodedInputStream paramCodedInputStream)
    throws IOException
  {
    DynamicMutableMessage localDynamicMutableMessage = newMessage(paramDescriptor);
    if (!localDynamicMutableMessage.mergeFrom(paramCodedInputStream))
      throw InvalidProtocolBufferException.parseFailure();
    return localDynamicMutableMessage;
  }

  public static DynamicMutableMessage parseFrom(Descriptors.Descriptor paramDescriptor, CodedInputStream paramCodedInputStream, ExtensionRegistry paramExtensionRegistry)
    throws IOException
  {
    DynamicMutableMessage localDynamicMutableMessage = newMessage(paramDescriptor);
    if (!localDynamicMutableMessage.mergeFrom(paramCodedInputStream, paramExtensionRegistry))
      throw InvalidProtocolBufferException.parseFailure();
    return localDynamicMutableMessage;
  }

  public static DynamicMutableMessage parseFrom(Descriptors.Descriptor paramDescriptor, InputStream paramInputStream)
    throws IOException
  {
    DynamicMutableMessage localDynamicMutableMessage = newMessage(paramDescriptor);
    if (!localDynamicMutableMessage.mergeFrom(paramInputStream))
      throw InvalidProtocolBufferException.parseFailure();
    return localDynamicMutableMessage;
  }

  public static DynamicMutableMessage parseFrom(Descriptors.Descriptor paramDescriptor, InputStream paramInputStream, ExtensionRegistry paramExtensionRegistry)
    throws IOException
  {
    DynamicMutableMessage localDynamicMutableMessage = newMessage(paramDescriptor);
    if (!localDynamicMutableMessage.mergeFrom(paramInputStream, paramExtensionRegistry))
      throw InvalidProtocolBufferException.parseFailure();
    return localDynamicMutableMessage;
  }

  public static DynamicMutableMessage parseFrom(Descriptors.Descriptor paramDescriptor, byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    DynamicMutableMessage localDynamicMutableMessage = newMessage(paramDescriptor);
    if (!localDynamicMutableMessage.mergeFrom(paramArrayOfByte))
      throw InvalidProtocolBufferException.parseFailure();
    return localDynamicMutableMessage;
  }

  public static DynamicMutableMessage parseFrom(Descriptors.Descriptor paramDescriptor, byte[] paramArrayOfByte, ExtensionRegistry paramExtensionRegistry)
    throws InvalidProtocolBufferException
  {
    DynamicMutableMessage localDynamicMutableMessage = newMessage(paramDescriptor);
    if (!localDynamicMutableMessage.mergeFrom(paramArrayOfByte, paramExtensionRegistry))
      throw InvalidProtocolBufferException.parseFailure();
    return localDynamicMutableMessage;
  }

  private void verifyContainingType(Descriptors.FieldDescriptor paramFieldDescriptor)
  {
    if (paramFieldDescriptor.getContainingType() != this.type)
      throw new IllegalArgumentException("FieldDescriptor does not match message type.");
  }

  public DynamicMutableMessage addRepeatedField(Descriptors.FieldDescriptor paramFieldDescriptor, Object paramObject)
  {
    assertMutable();
    verifyContainingType(paramFieldDescriptor);
    this.fields.addRepeatedField(paramFieldDescriptor, paramObject);
    return this;
  }

  public DynamicMutableMessage clear()
  {
    assertMutable();
    this.fields.clear();
    this.unknownFields = UnknownFieldSet.getDefaultInstance();
    return this;
  }

  public DynamicMutableMessage clearField(Descriptors.FieldDescriptor paramFieldDescriptor)
  {
    assertMutable();
    verifyContainingType(paramFieldDescriptor);
    this.fields.clearField(paramFieldDescriptor);
    return this;
  }

  public DynamicMutableMessage clone()
  {
    DynamicMutableMessage localDynamicMutableMessage = newMessage(this.type);
    localDynamicMutableMessage.fields.mergeFrom(this.fields);
    localDynamicMutableMessage.mergeUnknownFields(this.unknownFields);
    return localDynamicMutableMessage;
  }

  public Map<Descriptors.FieldDescriptor, Object> getAllFields()
  {
    return this.fields.getAllFields();
  }

  public DynamicMutableMessage getDefaultInstanceForType()
  {
    return getDefaultInstance(this.type);
  }

  public Descriptors.Descriptor getDescriptorForType()
  {
    return this.type;
  }

  public Object getField(Descriptors.FieldDescriptor paramFieldDescriptor)
  {
    verifyContainingType(paramFieldDescriptor);
    Object localObject = this.fields.getField(paramFieldDescriptor);
    if (localObject == null)
    {
      if (!paramFieldDescriptor.isRepeated())
        break label46;
      localObject = Collections.emptyList();
    }
    while (true)
    {
      if ((localObject instanceof List))
        localObject = Collections.unmodifiableList((List)localObject);
      return localObject;
      label46: if (paramFieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE)
        localObject = getDefaultInstance(paramFieldDescriptor.getMessageType());
      else if (paramFieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.BYTE_STRING)
        localObject = ((ByteString)paramFieldDescriptor.getDefaultValue()).toByteArray();
      else
        localObject = paramFieldDescriptor.getDefaultValue();
    }
  }

  public Object getMutableField(Descriptors.FieldDescriptor paramFieldDescriptor)
  {
    assertMutable();
    verifyContainingType(paramFieldDescriptor);
    if (paramFieldDescriptor.getJavaType() != Descriptors.FieldDescriptor.JavaType.MESSAGE)
      throw new UnsupportedOperationException("getMutable() called on a non-Message type.");
    if (paramFieldDescriptor.isRepeated())
      throw new UnsupportedOperationException("getMutable() called on a repeated type.");
    Object localObject = this.fields.getField(paramFieldDescriptor);
    if (localObject == null)
    {
      localObject = newMessage(paramFieldDescriptor.getMessageType());
      setField(paramFieldDescriptor, localObject);
    }
    return localObject;
  }

  public Parser<DynamicMutableMessage> getParserForType()
  {
    return internalNewParserForType(getDefaultInstance(this.type));
  }

  public Object getRepeatedField(Descriptors.FieldDescriptor paramFieldDescriptor, int paramInt)
  {
    verifyContainingType(paramFieldDescriptor);
    return this.fields.getRepeatedField(paramFieldDescriptor, paramInt);
  }

  public int getRepeatedFieldCount(Descriptors.FieldDescriptor paramFieldDescriptor)
  {
    verifyContainingType(paramFieldDescriptor);
    return this.fields.getRepeatedFieldCount(paramFieldDescriptor);
  }

  public int getSerializedSize()
  {
    if (this.type.getOptions().getMessageSetWireFormat())
      return this.fields.getMessageSetSerializedSize() + this.unknownFields.getSerializedSizeAsMessageSet();
    return this.fields.getSerializedSize() + this.unknownFields.getSerializedSize();
  }

  public UnknownFieldSet getUnknownFields()
  {
    return this.unknownFields;
  }

  public boolean hasField(Descriptors.FieldDescriptor paramFieldDescriptor)
  {
    verifyContainingType(paramFieldDescriptor);
    return this.fields.hasField(paramFieldDescriptor);
  }

  public DynamicMessage immutableCopy()
  {
    return new DynamicMessage(this.type, this.fields.cloneWithAllFieldsToImmutable(), this.unknownFields);
  }

  public boolean isInitialized()
  {
    return DynamicMessage.isInitialized(this.type, this.fields);
  }

  public DynamicMutableMessage newMessageForField(Descriptors.FieldDescriptor paramFieldDescriptor)
  {
    verifyContainingType(paramFieldDescriptor);
    if (paramFieldDescriptor.getJavaType() != Descriptors.FieldDescriptor.JavaType.MESSAGE)
      throw new IllegalArgumentException("newMessageForField is only valid for fields with message type.");
    return new DynamicMutableMessage(paramFieldDescriptor.getMessageType());
  }

  public DynamicMutableMessage newMessageForType()
  {
    return newMessage(this.type);
  }

  public DynamicMutableMessage setField(Descriptors.FieldDescriptor paramFieldDescriptor, Object paramObject)
  {
    assertMutable();
    verifyContainingType(paramFieldDescriptor);
    this.fields.setField(paramFieldDescriptor, paramObject);
    return this;
  }

  public DynamicMutableMessage setRepeatedField(Descriptors.FieldDescriptor paramFieldDescriptor, int paramInt, Object paramObject)
  {
    assertMutable();
    verifyContainingType(paramFieldDescriptor);
    this.fields.setRepeatedField(paramFieldDescriptor, paramInt, paramObject);
    return this;
  }

  public DynamicMutableMessage setUnknownFields(UnknownFieldSet paramUnknownFieldSet)
  {
    assertMutable();
    this.unknownFields = paramUnknownFieldSet;
    return this;
  }

  public void writeTo(CodedOutputStream paramCodedOutputStream)
    throws IOException
  {
    if (this.type.getOptions().getMessageSetWireFormat())
    {
      this.fields.writeMessageSetTo(paramCodedOutputStream);
      this.unknownFields.writeAsMessageSetTo(paramCodedOutputStream);
      return;
    }
    this.fields.writeTo(paramCodedOutputStream);
    this.unknownFields.writeTo(paramCodedOutputStream);
  }

  public void writeToWithCachedSizes(CodedOutputStream paramCodedOutputStream)
    throws IOException
  {
    writeTo(paramCodedOutputStream);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.protobuf.DynamicMutableMessage
 * JD-Core Version:    0.6.2
 */