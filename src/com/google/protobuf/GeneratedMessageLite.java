package com.google.protobuf;

import java.io.IOException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;

public abstract class GeneratedMessageLite extends AbstractMessageLite
  implements Serializable
{
  private static final long serialVersionUID = 1L;

  protected GeneratedMessageLite()
  {
  }

  protected GeneratedMessageLite(Builder paramBuilder)
  {
  }

  static Method getMethodOrDie(Class paramClass, String paramString, Class[] paramArrayOfClass)
  {
    try
    {
      Method localMethod = paramClass.getMethod(paramString, paramArrayOfClass);
      return localMethod;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      throw new RuntimeException("Generated message class \"" + paramClass.getName() + "\" missing method \"" + paramString + "\".", localNoSuchMethodException);
    }
  }

  protected static MutableMessageLite internalMutableDefault(String paramString)
  {
    try
    {
      MutableMessageLite localMutableMessageLite = (MutableMessageLite)invokeOrDie(getMethodOrDie(Class.forName(paramString), "getDefaultInstance", new Class[0]), null, new Object[0]);
      return localMutableMessageLite;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
    }
    throw new UnsupportedOperationException("Cannot load the corresponding mutable class. Please add necessary dependencies.");
  }

  static Object invokeOrDie(Method paramMethod, Object paramObject, Object[] paramArrayOfObject)
  {
    try
    {
      Object localObject = paramMethod.invoke(paramObject, paramArrayOfObject);
      return localObject;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", localIllegalAccessException);
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      Throwable localThrowable = localInvocationTargetException.getCause();
      if ((localThrowable instanceof RuntimeException))
        throw ((RuntimeException)localThrowable);
      if ((localThrowable instanceof Error))
        throw ((Error)localThrowable);
      throw new RuntimeException("Unexpected exception thrown by generated accessor method.", localThrowable);
    }
  }

  public static <ContainingType extends MessageLite, Type> GeneratedExtension<ContainingType, Type> newRepeatedGeneratedExtension(ContainingType paramContainingType, MessageLite paramMessageLite, Internal.EnumLiteMap<?> paramEnumLiteMap, int paramInt, WireFormat.FieldType paramFieldType, boolean paramBoolean, Class paramClass)
  {
    List localList = Collections.emptyList();
    GeneratedExtension localGeneratedExtension = new GeneratedExtension(paramContainingType, localList, paramMessageLite, new ExtensionDescriptor(paramEnumLiteMap, paramInt, paramFieldType, true, paramBoolean), paramClass);
    return localGeneratedExtension;
  }

  public static <ContainingType extends MessageLite, Type> GeneratedExtension<ContainingType, Type> newSingularGeneratedExtension(ContainingType paramContainingType, Type paramType, MessageLite paramMessageLite, Internal.EnumLiteMap<?> paramEnumLiteMap, int paramInt, WireFormat.FieldType paramFieldType, Class paramClass)
  {
    GeneratedExtension localGeneratedExtension = new GeneratedExtension(paramContainingType, paramType, paramMessageLite, new ExtensionDescriptor(paramEnumLiteMap, paramInt, paramFieldType, false, false), paramClass);
    return localGeneratedExtension;
  }

  private static <MessageType extends MessageLite> boolean parseUnknownField(FieldSet<ExtensionDescriptor> paramFieldSet, MessageType paramMessageType, CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite, int paramInt)
    throws IOException
  {
    int i = WireFormat.getTagWireType(paramInt);
    GeneratedExtension localGeneratedExtension = paramExtensionRegistryLite.findLiteExtensionByNumber(paramMessageType, WireFormat.getTagFieldNumber(paramInt));
    int j = 0;
    int k;
    if (localGeneratedExtension == null)
      k = 1;
    while (k != 0)
    {
      return paramCodedInputStream.skipField(paramInt);
      if (i == FieldSet.getWireFormatForFieldType(localGeneratedExtension.descriptor.getLiteType(), false))
      {
        j = 0;
        k = 0;
      }
      else if ((localGeneratedExtension.descriptor.isRepeated) && (localGeneratedExtension.descriptor.type.isPackable()) && (i == FieldSet.getWireFormatForFieldType(localGeneratedExtension.descriptor.getLiteType(), true)))
      {
        j = 1;
        k = 0;
      }
      else
      {
        k = 1;
        j = 0;
      }
    }
    if (j != 0)
    {
      int n = paramCodedInputStream.pushLimit(paramCodedInputStream.readRawVarint32());
      if (localGeneratedExtension.descriptor.getLiteType() == WireFormat.FieldType.ENUM)
        while (paramCodedInputStream.getBytesUntilLimit() > 0)
        {
          int i1 = paramCodedInputStream.readEnum();
          Internal.EnumLite localEnumLite = localGeneratedExtension.descriptor.getEnumType().findValueByNumber(i1);
          if (localEnumLite == null)
            return true;
          paramFieldSet.addRepeatedField(localGeneratedExtension.descriptor, localGeneratedExtension.singularToFieldSetType(localEnumLite));
        }
      while (paramCodedInputStream.getBytesUntilLimit() > 0)
      {
        Object localObject2 = FieldSet.readPrimitiveField(paramCodedInputStream, localGeneratedExtension.descriptor.getLiteType());
        paramFieldSet.addRepeatedField(localGeneratedExtension.descriptor, localObject2);
      }
      paramCodedInputStream.popLimit(n);
    }
    while (true)
    {
      return true;
      Object localObject1;
      switch (1.$SwitchMap$com$google$protobuf$WireFormat$JavaType[localGeneratedExtension.descriptor.getLiteJavaType().ordinal()])
      {
      default:
        localObject1 = FieldSet.readPrimitiveField(paramCodedInputStream, localGeneratedExtension.descriptor.getLiteType());
      case 1:
      case 2:
      }
      while (true)
        if (localGeneratedExtension.descriptor.isRepeated())
        {
          paramFieldSet.addRepeatedField(localGeneratedExtension.descriptor, localGeneratedExtension.singularToFieldSetType(localObject1));
          break;
          boolean bool = localGeneratedExtension.descriptor.isRepeated();
          MessageLite.Builder localBuilder = null;
          if (!bool)
          {
            MessageLite localMessageLite = (MessageLite)paramFieldSet.getField(localGeneratedExtension.descriptor);
            localBuilder = null;
            if (localMessageLite != null)
              localBuilder = localMessageLite.toBuilder();
          }
          if (localBuilder == null)
            localBuilder = localGeneratedExtension.getMessageDefaultInstance().newBuilderForType();
          if (localGeneratedExtension.descriptor.getLiteType() == WireFormat.FieldType.GROUP)
            paramCodedInputStream.readGroup(localGeneratedExtension.getNumber(), localBuilder, paramExtensionRegistryLite);
          while (true)
          {
            localObject1 = localBuilder.build();
            break;
            paramCodedInputStream.readMessage(localBuilder, paramExtensionRegistryLite);
          }
          int m = paramCodedInputStream.readEnum();
          localObject1 = localGeneratedExtension.descriptor.getEnumType().findValueByNumber(m);
          if (localObject1 == null)
            return true;
        }
      paramFieldSet.setField(localGeneratedExtension.descriptor, localGeneratedExtension.singularToFieldSetType(localObject1));
    }
  }

  public Parser<? extends MessageLite> getParserForType()
  {
    throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
  }

  protected MutableMessageLite internalMutableDefault()
  {
    throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
  }

  protected void makeExtensionsImmutable()
  {
  }

  public MutableMessageLite mutableCopy()
  {
    MutableMessageLite localMutableMessageLite = internalMutableDefault().newMessageForType();
    if (this == getDefaultInstanceForType())
      return localMutableMessageLite;
    localMutableMessageLite.mergePartialFrom(CodedInputStream.newInstance(toByteArray()));
    return localMutableMessageLite;
  }

  protected boolean parseUnknownField(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite, int paramInt)
    throws IOException
  {
    return paramCodedInputStream.skipField(paramInt);
  }

  protected Object writeReplace()
    throws ObjectStreamException
  {
    return new SerializedForm(this);
  }

  public static abstract class Builder<MessageType extends GeneratedMessageLite, BuilderType extends Builder> extends AbstractMessageLite.Builder<BuilderType>
  {
    public BuilderType clear()
    {
      return this;
    }

    public BuilderType clone()
    {
      throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
    }

    public abstract MessageType getDefaultInstanceForType();

    public abstract BuilderType mergeFrom(MessageType paramMessageType);

    protected boolean parseUnknownField(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite, int paramInt)
      throws IOException
    {
      return paramCodedInputStream.skipField(paramInt);
    }
  }

  public static abstract class ExtendableBuilder<MessageType extends GeneratedMessageLite.ExtendableMessage<MessageType>, BuilderType extends ExtendableBuilder<MessageType, BuilderType>> extends GeneratedMessageLite.Builder<MessageType, BuilderType>
    implements GeneratedMessageLite.ExtendableMessageOrBuilder<MessageType>
  {
    private FieldSet<GeneratedMessageLite.ExtensionDescriptor> extensions = FieldSet.emptySet();
    private boolean extensionsIsMutable;

    private FieldSet<GeneratedMessageLite.ExtensionDescriptor> buildExtensions()
    {
      this.extensions.makeImmutable();
      this.extensionsIsMutable = false;
      return this.extensions;
    }

    private void ensureExtensionsIsMutable()
    {
      if (!this.extensionsIsMutable)
      {
        this.extensions = this.extensions.clone();
        this.extensionsIsMutable = true;
      }
    }

    private void verifyExtensionContainingType(GeneratedMessageLite.GeneratedExtension<MessageType, ?> paramGeneratedExtension)
    {
      if (paramGeneratedExtension.getContainingTypeDefaultInstance() != getDefaultInstanceForType())
        throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
    }

    public final <Type> BuilderType addExtension(GeneratedMessageLite.GeneratedExtension<MessageType, List<Type>> paramGeneratedExtension, Type paramType)
    {
      verifyExtensionContainingType(paramGeneratedExtension);
      ensureExtensionsIsMutable();
      this.extensions.addRepeatedField(paramGeneratedExtension.descriptor, paramGeneratedExtension.singularToFieldSetType(paramType));
      return this;
    }

    public BuilderType clear()
    {
      this.extensions.clear();
      this.extensionsIsMutable = false;
      return (ExtendableBuilder)super.clear();
    }

    public final <Type> BuilderType clearExtension(GeneratedMessageLite.GeneratedExtension<MessageType, ?> paramGeneratedExtension)
    {
      verifyExtensionContainingType(paramGeneratedExtension);
      ensureExtensionsIsMutable();
      this.extensions.clearField(paramGeneratedExtension.descriptor);
      return this;
    }

    public BuilderType clone()
    {
      throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
    }

    protected boolean extensionsAreInitialized()
    {
      return this.extensions.isInitialized();
    }

    public final <Type> Type getExtension(GeneratedMessageLite.GeneratedExtension<MessageType, Type> paramGeneratedExtension)
    {
      verifyExtensionContainingType(paramGeneratedExtension);
      Object localObject = this.extensions.getField(paramGeneratedExtension.descriptor);
      if (localObject == null)
        return paramGeneratedExtension.defaultValue;
      return paramGeneratedExtension.fromFieldSetType(localObject);
    }

    public final <Type> Type getExtension(GeneratedMessageLite.GeneratedExtension<MessageType, List<Type>> paramGeneratedExtension, int paramInt)
    {
      verifyExtensionContainingType(paramGeneratedExtension);
      return paramGeneratedExtension.singularFromFieldSetType(this.extensions.getRepeatedField(paramGeneratedExtension.descriptor, paramInt));
    }

    public final <Type> int getExtensionCount(GeneratedMessageLite.GeneratedExtension<MessageType, List<Type>> paramGeneratedExtension)
    {
      verifyExtensionContainingType(paramGeneratedExtension);
      return this.extensions.getRepeatedFieldCount(paramGeneratedExtension.descriptor);
    }

    public final <Type> boolean hasExtension(GeneratedMessageLite.GeneratedExtension<MessageType, Type> paramGeneratedExtension)
    {
      verifyExtensionContainingType(paramGeneratedExtension);
      return this.extensions.hasField(paramGeneratedExtension.descriptor);
    }

    void internalSetExtensionSet(FieldSet<GeneratedMessageLite.ExtensionDescriptor> paramFieldSet)
    {
      this.extensions = paramFieldSet;
    }

    protected final void mergeExtensionFields(MessageType paramMessageType)
    {
      ensureExtensionsIsMutable();
      this.extensions.mergeFrom(GeneratedMessageLite.ExtendableMessage.access$200(paramMessageType));
    }

    protected boolean parseUnknownField(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite, int paramInt)
      throws IOException
    {
      ensureExtensionsIsMutable();
      return GeneratedMessageLite.parseUnknownField(this.extensions, getDefaultInstanceForType(), paramCodedInputStream, paramExtensionRegistryLite, paramInt);
    }

    public final <Type> BuilderType setExtension(GeneratedMessageLite.GeneratedExtension<MessageType, List<Type>> paramGeneratedExtension, int paramInt, Type paramType)
    {
      verifyExtensionContainingType(paramGeneratedExtension);
      ensureExtensionsIsMutable();
      this.extensions.setRepeatedField(paramGeneratedExtension.descriptor, paramInt, paramGeneratedExtension.singularToFieldSetType(paramType));
      return this;
    }

    public final <Type> BuilderType setExtension(GeneratedMessageLite.GeneratedExtension<MessageType, Type> paramGeneratedExtension, Type paramType)
    {
      verifyExtensionContainingType(paramGeneratedExtension);
      ensureExtensionsIsMutable();
      this.extensions.setField(paramGeneratedExtension.descriptor, paramGeneratedExtension.toFieldSetType(paramType));
      return this;
    }
  }

  public static abstract class ExtendableMessage<MessageType extends ExtendableMessage<MessageType>> extends GeneratedMessageLite
    implements GeneratedMessageLite.ExtendableMessageOrBuilder<MessageType>
  {
    private final FieldSet<GeneratedMessageLite.ExtensionDescriptor> extensions;

    protected ExtendableMessage()
    {
      this.extensions = FieldSet.newFieldSet();
    }

    protected ExtendableMessage(GeneratedMessageLite.ExtendableBuilder<MessageType, ?> paramExtendableBuilder)
    {
      this.extensions = paramExtendableBuilder.buildExtensions();
    }

    private void verifyExtensionContainingType(GeneratedMessageLite.GeneratedExtension<MessageType, ?> paramGeneratedExtension)
    {
      if (paramGeneratedExtension.getContainingTypeDefaultInstance() != getDefaultInstanceForType())
        throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
    }

    protected boolean extensionsAreInitialized()
    {
      return this.extensions.isInitialized();
    }

    protected int extensionsSerializedSize()
    {
      return this.extensions.getSerializedSize();
    }

    protected int extensionsSerializedSizeAsMessageSet()
    {
      return this.extensions.getMessageSetSerializedSize();
    }

    public final <Type> Type getExtension(GeneratedMessageLite.GeneratedExtension<MessageType, Type> paramGeneratedExtension)
    {
      verifyExtensionContainingType(paramGeneratedExtension);
      Object localObject = this.extensions.getField(paramGeneratedExtension.descriptor);
      if (localObject == null)
        return paramGeneratedExtension.defaultValue;
      return paramGeneratedExtension.fromFieldSetType(localObject);
    }

    public final <Type> Type getExtension(GeneratedMessageLite.GeneratedExtension<MessageType, List<Type>> paramGeneratedExtension, int paramInt)
    {
      verifyExtensionContainingType(paramGeneratedExtension);
      return paramGeneratedExtension.singularFromFieldSetType(this.extensions.getRepeatedField(paramGeneratedExtension.descriptor, paramInt));
    }

    public final <Type> int getExtensionCount(GeneratedMessageLite.GeneratedExtension<MessageType, List<Type>> paramGeneratedExtension)
    {
      verifyExtensionContainingType(paramGeneratedExtension);
      return this.extensions.getRepeatedFieldCount(paramGeneratedExtension.descriptor);
    }

    public final <Type> boolean hasExtension(GeneratedMessageLite.GeneratedExtension<MessageType, Type> paramGeneratedExtension)
    {
      verifyExtensionContainingType(paramGeneratedExtension);
      return this.extensions.hasField(paramGeneratedExtension.descriptor);
    }

    protected void makeExtensionsImmutable()
    {
      this.extensions.makeImmutable();
    }

    public MutableMessageLite mutableCopy()
    {
      GeneratedMutableMessageLite.ExtendableMutableMessage localExtendableMutableMessage = (GeneratedMutableMessageLite.ExtendableMutableMessage)super.mutableCopy();
      localExtendableMutableMessage.internalSetExtensionSet(this.extensions.cloneWithAllFieldsToMutable());
      return localExtendableMutableMessage;
    }

    protected ExtendableMessage<MessageType>.ExtensionWriter newExtensionWriter()
    {
      return new ExtensionWriter(false, null);
    }

    protected ExtendableMessage<MessageType>.ExtensionWriter newMessageSetExtensionWriter()
    {
      return new ExtensionWriter(true, null);
    }

    protected boolean parseUnknownField(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite, int paramInt)
      throws IOException
    {
      return GeneratedMessageLite.parseUnknownField(this.extensions, getDefaultInstanceForType(), paramCodedInputStream, paramExtensionRegistryLite, paramInt);
    }

    protected class ExtensionWriter
    {
      private final Iterator<Map.Entry<GeneratedMessageLite.ExtensionDescriptor, Object>> iter = GeneratedMessageLite.ExtendableMessage.this.extensions.iterator();
      private final boolean messageSetWireFormat;
      private Map.Entry<GeneratedMessageLite.ExtensionDescriptor, Object> next;

      private ExtensionWriter(boolean arg2)
      {
        if (this.iter.hasNext())
          this.next = ((Map.Entry)this.iter.next());
        boolean bool;
        this.messageSetWireFormat = bool;
      }

      public void writeUntil(int paramInt, CodedOutputStream paramCodedOutputStream)
        throws IOException
      {
        while ((this.next != null) && (((GeneratedMessageLite.ExtensionDescriptor)this.next.getKey()).getNumber() < paramInt))
        {
          GeneratedMessageLite.ExtensionDescriptor localExtensionDescriptor = (GeneratedMessageLite.ExtensionDescriptor)this.next.getKey();
          if ((this.messageSetWireFormat) && (localExtensionDescriptor.getLiteJavaType() == WireFormat.JavaType.MESSAGE) && (!localExtensionDescriptor.isRepeated()))
            paramCodedOutputStream.writeMessageSetExtension(localExtensionDescriptor.getNumber(), (MessageLite)this.next.getValue());
          while (true)
          {
            if (!this.iter.hasNext())
              break label131;
            this.next = ((Map.Entry)this.iter.next());
            break;
            FieldSet.writeField(localExtensionDescriptor, this.next.getValue(), paramCodedOutputStream);
          }
          label131: this.next = null;
        }
      }
    }
  }

  public static abstract interface ExtendableMessageOrBuilder<MessageType extends GeneratedMessageLite.ExtendableMessage> extends MessageLiteOrBuilder
  {
    public abstract <Type> Type getExtension(GeneratedMessageLite.GeneratedExtension<MessageType, Type> paramGeneratedExtension);

    public abstract <Type> Type getExtension(GeneratedMessageLite.GeneratedExtension<MessageType, List<Type>> paramGeneratedExtension, int paramInt);

    public abstract <Type> int getExtensionCount(GeneratedMessageLite.GeneratedExtension<MessageType, List<Type>> paramGeneratedExtension);

    public abstract <Type> boolean hasExtension(GeneratedMessageLite.GeneratedExtension<MessageType, Type> paramGeneratedExtension);
  }

  static final class ExtensionDescriptor
    implements FieldSet.FieldDescriptorLite<ExtensionDescriptor>
  {
    final Internal.EnumLiteMap<?> enumTypeMap;
    final boolean isPacked;
    final boolean isRepeated;
    final int number;
    final WireFormat.FieldType type;

    ExtensionDescriptor(Internal.EnumLiteMap<?> paramEnumLiteMap, int paramInt, WireFormat.FieldType paramFieldType, boolean paramBoolean1, boolean paramBoolean2)
    {
      this.enumTypeMap = paramEnumLiteMap;
      this.number = paramInt;
      this.type = paramFieldType;
      this.isRepeated = paramBoolean1;
      this.isPacked = paramBoolean2;
    }

    public int compareTo(ExtensionDescriptor paramExtensionDescriptor)
    {
      return this.number - paramExtensionDescriptor.number;
    }

    public Internal.EnumLiteMap<?> getEnumType()
    {
      return this.enumTypeMap;
    }

    public WireFormat.JavaType getLiteJavaType()
    {
      return this.type.getJavaType();
    }

    public WireFormat.FieldType getLiteType()
    {
      return this.type;
    }

    public int getNumber()
    {
      return this.number;
    }

    public MessageLite.Builder internalMergeFrom(MessageLite.Builder paramBuilder, MessageLite paramMessageLite)
    {
      return ((GeneratedMessageLite.Builder)paramBuilder).mergeFrom((GeneratedMessageLite)paramMessageLite);
    }

    public MutableMessageLite internalMergeFrom(MutableMessageLite paramMutableMessageLite1, MutableMessageLite paramMutableMessageLite2)
    {
      return ((GeneratedMutableMessageLite)paramMutableMessageLite1).mergeFrom((GeneratedMutableMessageLite)paramMutableMessageLite2);
    }

    public boolean isPacked()
    {
      return this.isPacked;
    }

    public boolean isRepeated()
    {
      return this.isRepeated;
    }
  }

  public static class GeneratedExtension<ContainingType extends MessageLite, Type>
  {
    final ContainingType containingTypeDefaultInstance;
    final Type defaultValue;
    final GeneratedMessageLite.ExtensionDescriptor descriptor;
    final Method enumValueOf;
    final MessageLite messageDefaultInstance;
    final Class singularType;

    GeneratedExtension(ContainingType paramContainingType, Type paramType, MessageLite paramMessageLite, GeneratedMessageLite.ExtensionDescriptor paramExtensionDescriptor, Class paramClass)
    {
      if (paramContainingType == null)
        throw new IllegalArgumentException("Null containingTypeDefaultInstance");
      if ((paramExtensionDescriptor.getLiteType() == WireFormat.FieldType.MESSAGE) && (paramMessageLite == null))
        throw new IllegalArgumentException("Null messageDefaultInstance");
      this.containingTypeDefaultInstance = paramContainingType;
      this.defaultValue = paramType;
      this.messageDefaultInstance = paramMessageLite;
      this.descriptor = paramExtensionDescriptor;
      this.singularType = paramClass;
      if (Internal.EnumLite.class.isAssignableFrom(paramClass))
      {
        Class[] arrayOfClass = new Class[1];
        arrayOfClass[0] = Integer.TYPE;
        this.enumValueOf = GeneratedMessageLite.getMethodOrDie(paramClass, "valueOf", arrayOfClass);
        return;
      }
      this.enumValueOf = null;
    }

    Object fromFieldSetType(Object paramObject)
    {
      if (this.descriptor.isRepeated())
      {
        if (this.descriptor.getLiteJavaType() == WireFormat.JavaType.ENUM)
        {
          localObject = new ArrayList();
          Iterator localIterator = ((List)paramObject).iterator();
          while (localIterator.hasNext())
            ((List)localObject).add(singularFromFieldSetType(localIterator.next()));
        }
        Object localObject = paramObject;
        return localObject;
      }
      return singularFromFieldSetType(paramObject);
    }

    public ContainingType getContainingTypeDefaultInstance()
    {
      return this.containingTypeDefaultInstance;
    }

    public MessageLite getMessageDefaultInstance()
    {
      return this.messageDefaultInstance;
    }

    public int getNumber()
    {
      return this.descriptor.getNumber();
    }

    Object singularFromFieldSetType(Object paramObject)
    {
      if (this.descriptor.getLiteJavaType() == WireFormat.JavaType.ENUM)
      {
        Method localMethod = this.enumValueOf;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = ((Integer)paramObject);
        paramObject = GeneratedMessageLite.invokeOrDie(localMethod, null, arrayOfObject);
      }
      return paramObject;
    }

    Object singularToFieldSetType(Object paramObject)
    {
      if (this.descriptor.getLiteJavaType() == WireFormat.JavaType.ENUM)
        paramObject = Integer.valueOf(((Internal.EnumLite)paramObject).getNumber());
      return paramObject;
    }

    Object toFieldSetType(Object paramObject)
    {
      if (this.descriptor.isRepeated())
      {
        if (this.descriptor.getLiteJavaType() == WireFormat.JavaType.ENUM)
        {
          localObject = new ArrayList();
          Iterator localIterator = ((List)paramObject).iterator();
          while (localIterator.hasNext())
            ((List)localObject).add(singularToFieldSetType(localIterator.next()));
        }
        Object localObject = paramObject;
        return localObject;
      }
      return singularToFieldSetType(paramObject);
    }
  }

  static final class SerializedForm
    implements Serializable
  {
    private static final long serialVersionUID;
    private byte[] asBytes;
    private String messageClassName;

    SerializedForm(MessageLite paramMessageLite)
    {
      this.messageClassName = paramMessageLite.getClass().getName();
      this.asBytes = paramMessageLite.toByteArray();
    }

    protected Object readResolve()
      throws ObjectStreamException
    {
      try
      {
        MessageLite.Builder localBuilder = (MessageLite.Builder)Class.forName(this.messageClassName).getMethod("newBuilder", new Class[0]).invoke(null, new Object[0]);
        localBuilder.mergeFrom(this.asBytes);
        MessageLite localMessageLite = localBuilder.buildPartial();
        return localMessageLite;
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        throw new RuntimeException("Unable to find proto buffer class", localClassNotFoundException);
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        throw new RuntimeException("Unable to find newBuilder method", localNoSuchMethodException);
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        throw new RuntimeException("Unable to call newBuilder method", localIllegalAccessException);
      }
      catch (InvocationTargetException localInvocationTargetException)
      {
        throw new RuntimeException("Error calling newBuilder", localInvocationTargetException.getCause());
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        throw new RuntimeException("Unable to understand proto buffer", localInvalidProtocolBufferException);
      }
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.protobuf.GeneratedMessageLite
 * JD-Core Version:    0.6.2
 */