package com.google.protobuf;

public abstract interface ProtocolMessageEnum extends Internal.EnumLite
{
  public abstract Descriptors.EnumDescriptor getDescriptorForType();

  public abstract int getNumber();

  public abstract Descriptors.EnumValueDescriptor getValueDescriptor();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.protobuf.ProtocolMessageEnum
 * JD-Core Version:    0.6.2
 */