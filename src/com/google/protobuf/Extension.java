package com.google.protobuf;

public abstract class Extension<ContainingType extends MessageLite, Type>
{
  protected abstract Object fromReflectionType(Object paramObject);

  public abstract Type getDefaultValue();

  public abstract Descriptors.FieldDescriptor getDescriptor();

  protected ExtensionType getExtensionType()
  {
    return ExtensionType.IMMUTABLE;
  }

  public abstract WireFormat.FieldType getLiteType();

  public abstract MessageLite getMessageDefaultInstance();

  public abstract int getNumber();

  public abstract boolean isRepeated();

  protected abstract Object singularFromReflectionType(Object paramObject);

  protected abstract Object singularToReflectionType(Object paramObject);

  protected abstract Object toReflectionType(Object paramObject);

  protected static enum ExtensionType
  {
    static
    {
      ExtensionType[] arrayOfExtensionType = new ExtensionType[3];
      arrayOfExtensionType[0] = IMMUTABLE;
      arrayOfExtensionType[1] = MUTABLE;
      arrayOfExtensionType[2] = PROTO1;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.protobuf.Extension
 * JD-Core Version:    0.6.2
 */