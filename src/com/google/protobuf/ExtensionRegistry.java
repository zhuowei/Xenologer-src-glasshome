package com.google.protobuf;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class ExtensionRegistry extends ExtensionRegistryLite
{
  private static final ExtensionRegistry EMPTY = new ExtensionRegistry(true);
  private final Map<String, ExtensionInfo> immutableExtensionsByName;
  private final Map<DescriptorIntPair, ExtensionInfo> immutableExtensionsByNumber;
  private final Map<String, ExtensionInfo> mutableExtensionsByName;
  private final Map<DescriptorIntPair, ExtensionInfo> mutableExtensionsByNumber;

  private ExtensionRegistry()
  {
    this.immutableExtensionsByName = new HashMap();
    this.mutableExtensionsByName = new HashMap();
    this.immutableExtensionsByNumber = new HashMap();
    this.mutableExtensionsByNumber = new HashMap();
  }

  private ExtensionRegistry(ExtensionRegistry paramExtensionRegistry)
  {
    super(paramExtensionRegistry);
    this.immutableExtensionsByName = Collections.unmodifiableMap(paramExtensionRegistry.immutableExtensionsByName);
    this.mutableExtensionsByName = Collections.unmodifiableMap(paramExtensionRegistry.mutableExtensionsByName);
    this.immutableExtensionsByNumber = Collections.unmodifiableMap(paramExtensionRegistry.immutableExtensionsByNumber);
    this.mutableExtensionsByNumber = Collections.unmodifiableMap(paramExtensionRegistry.mutableExtensionsByNumber);
  }

  private ExtensionRegistry(boolean paramBoolean)
  {
    super(ExtensionRegistryLite.getEmptyRegistry());
    this.immutableExtensionsByName = Collections.emptyMap();
    this.mutableExtensionsByName = Collections.emptyMap();
    this.immutableExtensionsByNumber = Collections.emptyMap();
    this.mutableExtensionsByNumber = Collections.emptyMap();
  }

  private void add(ExtensionInfo paramExtensionInfo, Extension.ExtensionType paramExtensionType)
  {
    if (!paramExtensionInfo.descriptor.isExtension())
      throw new IllegalArgumentException("ExtensionRegistry.add() was given a FieldDescriptor for a regular (non-extension) field.");
    Map localMap1;
    switch (1.$SwitchMap$com$google$protobuf$Extension$ExtensionType[paramExtensionType.ordinal()])
    {
    default:
      return;
    case 1:
      localMap1 = this.immutableExtensionsByName;
    case 2:
    }
    for (Map localMap2 = this.immutableExtensionsByNumber; ; localMap2 = this.mutableExtensionsByNumber)
    {
      localMap1.put(paramExtensionInfo.descriptor.getFullName(), paramExtensionInfo);
      localMap2.put(new DescriptorIntPair(paramExtensionInfo.descriptor.getContainingType(), paramExtensionInfo.descriptor.getNumber()), paramExtensionInfo);
      Descriptors.FieldDescriptor localFieldDescriptor = paramExtensionInfo.descriptor;
      if ((!localFieldDescriptor.getContainingType().getOptions().getMessageSetWireFormat()) || (localFieldDescriptor.getType() != Descriptors.FieldDescriptor.Type.MESSAGE) || (!localFieldDescriptor.isOptional()) || (localFieldDescriptor.getExtensionScope() != localFieldDescriptor.getMessageType()))
        break;
      localMap1.put(localFieldDescriptor.getMessageType().getFullName(), paramExtensionInfo);
      return;
      localMap1 = this.mutableExtensionsByName;
    }
  }

  public static ExtensionRegistry getEmptyRegistry()
  {
    return EMPTY;
  }

  public static ExtensionRegistry newInstance()
  {
    return new ExtensionRegistry();
  }

  public void add(Descriptors.FieldDescriptor paramFieldDescriptor)
  {
    if (paramFieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE)
      throw new IllegalArgumentException("ExtensionRegistry.add() must be provided a default instance when adding an embedded message extension.");
    ExtensionInfo localExtensionInfo = new ExtensionInfo(paramFieldDescriptor, null, null);
    add(localExtensionInfo, Extension.ExtensionType.IMMUTABLE);
    add(localExtensionInfo, Extension.ExtensionType.MUTABLE);
  }

  public void add(Descriptors.FieldDescriptor paramFieldDescriptor, Message paramMessage)
  {
    if (paramFieldDescriptor.getJavaType() != Descriptors.FieldDescriptor.JavaType.MESSAGE)
      throw new IllegalArgumentException("ExtensionRegistry.add() provided a default instance for a non-message extension.");
    if ((paramMessage instanceof MutableMessage))
    {
      add(new ExtensionInfo(paramFieldDescriptor, paramMessage, null), Extension.ExtensionType.MUTABLE);
      return;
    }
    add(new ExtensionInfo(paramFieldDescriptor, paramMessage, null), Extension.ExtensionType.IMMUTABLE);
  }

  public void add(Extension<?, ?> paramExtension)
  {
    if ((paramExtension.getExtensionType() != Extension.ExtensionType.IMMUTABLE) && (paramExtension.getExtensionType() != Extension.ExtensionType.MUTABLE))
      return;
    if (paramExtension.getDescriptor().getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE)
    {
      if (paramExtension.getMessageDefaultInstance() == null)
        throw new IllegalStateException("Registered message-type extension had null default instance: " + paramExtension.getDescriptor().getFullName());
      add(new ExtensionInfo(paramExtension.getDescriptor(), (Message)paramExtension.getMessageDefaultInstance(), null), paramExtension.getExtensionType());
      return;
    }
    add(new ExtensionInfo(paramExtension.getDescriptor(), null, null), paramExtension.getExtensionType());
  }

  public ExtensionInfo findExtensionByName(String paramString)
  {
    return findImmutableExtensionByName(paramString);
  }

  public ExtensionInfo findExtensionByNumber(Descriptors.Descriptor paramDescriptor, int paramInt)
  {
    return findImmutableExtensionByNumber(paramDescriptor, paramInt);
  }

  public ExtensionInfo findImmutableExtensionByName(String paramString)
  {
    return (ExtensionInfo)this.immutableExtensionsByName.get(paramString);
  }

  public ExtensionInfo findImmutableExtensionByNumber(Descriptors.Descriptor paramDescriptor, int paramInt)
  {
    return (ExtensionInfo)this.immutableExtensionsByNumber.get(new DescriptorIntPair(paramDescriptor, paramInt));
  }

  public ExtensionInfo findMutableExtensionByName(String paramString)
  {
    return (ExtensionInfo)this.mutableExtensionsByName.get(paramString);
  }

  public ExtensionInfo findMutableExtensionByNumber(Descriptors.Descriptor paramDescriptor, int paramInt)
  {
    return (ExtensionInfo)this.mutableExtensionsByNumber.get(new DescriptorIntPair(paramDescriptor, paramInt));
  }

  public ExtensionRegistry getUnmodifiable()
  {
    return new ExtensionRegistry(this);
  }

  private static final class DescriptorIntPair
  {
    private final Descriptors.Descriptor descriptor;
    private final int number;

    DescriptorIntPair(Descriptors.Descriptor paramDescriptor, int paramInt)
    {
      this.descriptor = paramDescriptor;
      this.number = paramInt;
    }

    public boolean equals(Object paramObject)
    {
      if (!(paramObject instanceof DescriptorIntPair));
      DescriptorIntPair localDescriptorIntPair;
      do
      {
        return false;
        localDescriptorIntPair = (DescriptorIntPair)paramObject;
      }
      while ((this.descriptor != localDescriptorIntPair.descriptor) || (this.number != localDescriptorIntPair.number));
      return true;
    }

    public int hashCode()
    {
      return 65535 * this.descriptor.hashCode() + this.number;
    }
  }

  public static final class ExtensionInfo
  {
    public final Message defaultInstance;
    public final Descriptors.FieldDescriptor descriptor;

    private ExtensionInfo(Descriptors.FieldDescriptor paramFieldDescriptor)
    {
      this.descriptor = paramFieldDescriptor;
      this.defaultInstance = null;
    }

    private ExtensionInfo(Descriptors.FieldDescriptor paramFieldDescriptor, Message paramMessage)
    {
      this.descriptor = paramFieldDescriptor;
      this.defaultInstance = paramMessage;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.protobuf.ExtensionRegistry
 * JD-Core Version:    0.6.2
 */