package com.google.protobuf;

public abstract interface MutableMessage extends Message, MutableMessageLite
{
  public abstract MutableMessage addRepeatedField(Descriptors.FieldDescriptor paramFieldDescriptor, Object paramObject);

  public abstract MutableMessage clear();

  public abstract MutableMessage clearField(Descriptors.FieldDescriptor paramFieldDescriptor);

  public abstract MutableMessage clone();

  public abstract MutableMessage copyFrom(MutableMessage paramMutableMessage);

  public abstract MutableMessage getDefaultInstanceForType();

  public abstract Object getMutableField(Descriptors.FieldDescriptor paramFieldDescriptor);

  public abstract Parser<? extends MutableMessage> getParserForType();

  public abstract Message immutableCopy();

  public abstract MutableMessage mergeFrom(MutableMessage paramMutableMessage);

  public abstract MutableMessage mergeUnknownFields(UnknownFieldSet paramUnknownFieldSet);

  public abstract MutableMessage newMessageForField(Descriptors.FieldDescriptor paramFieldDescriptor);

  public abstract MutableMessage newMessageForType();

  public abstract MutableMessage setField(Descriptors.FieldDescriptor paramFieldDescriptor, Object paramObject);

  public abstract MutableMessage setRepeatedField(Descriptors.FieldDescriptor paramFieldDescriptor, int paramInt, Object paramObject);

  public abstract MutableMessage setUnknownFields(UnknownFieldSet paramUnknownFieldSet);
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.protobuf.MutableMessage
 * JD-Core Version:    0.6.2
 */