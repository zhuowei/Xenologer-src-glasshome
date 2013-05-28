package com.google.protobuf;

import java.io.IOException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;

public abstract class GeneratedMutableMessageLite<MessageType extends GeneratedMutableMessageLite<MessageType>> extends AbstractMutableMessageLite<MessageType>
  implements Serializable
{
  private static final long serialVersionUID = 1L;

  static MessageLite.Builder internalCopyToBuilder(MutableMessageLite paramMutableMessageLite, MessageLite paramMessageLite)
  {
    MessageLite.Builder localBuilder = paramMessageLite.newBuilderForType();
    try
    {
      localBuilder.mergeFrom(paramMutableMessageLite.toByteArray());
      return localBuilder;
    }
    catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
    {
    }
    throw new RuntimeException("Failed to parse serialized bytes (should not happen)");
  }

  protected static MessageLite internalImmutableDefault(String paramString)
  {
    try
    {
      MessageLite localMessageLite = (MessageLite)GeneratedMessageLite.invokeOrDie(GeneratedMessageLite.getMethodOrDie(Class.forName(paramString), "getDefaultInstance", new Class[0]), null, new Object[0]);
      return localMessageLite;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
    }
    throw new UnsupportedOperationException("Cannot load the corresponding immutable class. Please add necessary dependencies.");
  }

  static <MessageType extends MutableMessageLite> boolean parseUnknownField(FieldSet<GeneratedMessageLite.ExtensionDescriptor> paramFieldSet, MessageType paramMessageType, CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite, int paramInt)
    throws IOException
  {
    int i = WireFormat.getTagWireType(paramInt);
    GeneratedMessageLite.GeneratedExtension localGeneratedExtension = paramExtensionRegistryLite.findLiteExtensionByNumber(paramMessageType, WireFormat.getTagFieldNumber(paramInt));
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
        Object localObject2 = FieldSet.readPrimitiveFieldForMutable(paramCodedInputStream, localGeneratedExtension.descriptor.getLiteType());
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
        localObject1 = FieldSet.readPrimitiveFieldForMutable(paramCodedInputStream, localGeneratedExtension.descriptor.getLiteType());
      case 1:
      case 2:
      }
      while (true)
        if (localGeneratedExtension.descriptor.isRepeated())
        {
          paramFieldSet.addRepeatedField(localGeneratedExtension.descriptor, localGeneratedExtension.singularToFieldSetType(localObject1));
          break;
          MutableMessageLite localMutableMessageLite = ((MutableMessageLite)localGeneratedExtension.messageDefaultInstance).newMessageForType();
          if (localGeneratedExtension.descriptor.getLiteType() == WireFormat.FieldType.GROUP)
            paramCodedInputStream.readGroup(localGeneratedExtension.getNumber(), localMutableMessageLite, paramExtensionRegistryLite);
          while (true)
          {
            localObject1 = localMutableMessageLite;
            break;
            paramCodedInputStream.readMessage(localMutableMessageLite, paramExtensionRegistryLite);
          }
          int m = paramCodedInputStream.readEnum();
          localObject1 = localGeneratedExtension.descriptor.getEnumType().findValueByNumber(m);
          if (localObject1 == null)
            return true;
        }
      paramFieldSet.setField(localGeneratedExtension.descriptor, localGeneratedExtension.singularToFieldSetType(localObject1));
    }
  }

  public MessageType clear()
  {
    assertMutable();
    return this;
  }

  public abstract MessageType getDefaultInstanceForType();

  public Parser<MessageType> getParserForType()
  {
    throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
  }

  public MessageLite immutableCopy()
  {
    MessageLite localMessageLite = internalImmutableDefault();
    if (this == getDefaultInstanceForType())
      return localMessageLite;
    return internalCopyToBuilder(this, localMessageLite).buildPartial();
  }

  protected abstract MessageLite internalImmutableDefault();

  public abstract MessageType mergeFrom(MessageType paramMessageType);

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

  public static abstract class ExtendableMutableMessage<MessageType extends ExtendableMutableMessage<MessageType>> extends GeneratedMutableMessageLite<MessageType>
  {
    private FieldSet<GeneratedMessageLite.ExtensionDescriptor> extensions = FieldSet.emptySet();

    private void ensureExtensionsIsMutable()
    {
      if (this.extensions.isImmutable())
        this.extensions = this.extensions.clone();
    }

    private void verifyExtensionContainingType(GeneratedMessageLite.GeneratedExtension<MessageType, ?> paramGeneratedExtension)
    {
      if (paramGeneratedExtension.getContainingTypeDefaultInstance() != getDefaultInstanceForType())
        throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
    }

    public final <Type> MessageType addExtension(GeneratedMessageLite.GeneratedExtension<MessageType, List<Type>> paramGeneratedExtension, Type paramType)
    {
      assertMutable();
      verifyExtensionContainingType(paramGeneratedExtension);
      ensureExtensionsIsMutable();
      this.extensions.addRepeatedField(paramGeneratedExtension.descriptor, paramGeneratedExtension.singularToFieldSetType(paramType));
      return this;
    }

    public MessageType clear()
    {
      assertMutable();
      this.extensions = FieldSet.emptySet();
      return (ExtendableMutableMessage)super.clear();
    }

    public final <Type> MessageType clearExtension(GeneratedMessageLite.GeneratedExtension<MessageType, ?> paramGeneratedExtension)
    {
      assertMutable();
      verifyExtensionContainingType(paramGeneratedExtension);
      ensureExtensionsIsMutable();
      this.extensions.clearField(paramGeneratedExtension.descriptor);
      return this;
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
      if (paramGeneratedExtension.descriptor.isRepeated)
        return Collections.unmodifiableList((List)paramGeneratedExtension.fromFieldSetType(localObject));
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

    public final <Type extends MutableMessageLite> Type getMutableExtension(GeneratedMessageLite.GeneratedExtension<MessageType, Type> paramGeneratedExtension)
    {
      assertMutable();
      verifyExtensionContainingType(paramGeneratedExtension);
      ensureExtensionsIsMutable();
      GeneratedMessageLite.ExtensionDescriptor localExtensionDescriptor = paramGeneratedExtension.descriptor;
      if (localExtensionDescriptor.getLiteJavaType() != WireFormat.JavaType.MESSAGE)
        throw new UnsupportedOperationException("getMutableExtension() called on a non-Message type.");
      if (localExtensionDescriptor.isRepeated())
        throw new UnsupportedOperationException("getMutableExtension() called on a repeated type.");
      Object localObject = this.extensions.getField(paramGeneratedExtension.descriptor);
      if (localObject == null)
      {
        MutableMessageLite localMutableMessageLite = ((MutableMessageLite)paramGeneratedExtension.defaultValue).newMessageForType();
        this.extensions.setField(paramGeneratedExtension.descriptor, localMutableMessageLite);
        return localMutableMessageLite;
      }
      return (MutableMessageLite)localObject;
    }

    public final <Type> boolean hasExtension(GeneratedMessageLite.GeneratedExtension<MessageType, Type> paramGeneratedExtension)
    {
      verifyExtensionContainingType(paramGeneratedExtension);
      return this.extensions.hasField(paramGeneratedExtension.descriptor);
    }

    public MessageLite immutableCopy()
    {
      GeneratedMessageLite.ExtendableBuilder localExtendableBuilder = (GeneratedMessageLite.ExtendableBuilder)internalCopyToBuilder(this, internalImmutableDefault());
      localExtendableBuilder.internalSetExtensionSet(this.extensions.cloneWithAllFieldsToImmutable());
      return localExtendableBuilder.buildPartial();
    }

    void internalSetExtensionSet(FieldSet<GeneratedMessageLite.ExtensionDescriptor> paramFieldSet)
    {
      this.extensions = paramFieldSet;
    }

    protected final void mergeExtensionFields(MessageType paramMessageType)
    {
      ensureExtensionsIsMutable();
      this.extensions.mergeFrom(paramMessageType.extensions);
    }

    protected ExtendableMutableMessage<MessageType>.ExtensionWriter newExtensionWriter()
    {
      return new ExtensionWriter(false, null);
    }

    protected ExtendableMutableMessage<MessageType>.ExtensionWriter newMessageSetExtensionWriter()
    {
      return new ExtensionWriter(true, null);
    }

    protected boolean parseUnknownField(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite, int paramInt)
      throws IOException
    {
      ensureExtensionsIsMutable();
      return GeneratedMutableMessageLite.parseUnknownField(this.extensions, getDefaultInstanceForType(), paramCodedInputStream, paramExtensionRegistryLite, paramInt);
    }

    public final <Type> MessageType setExtension(GeneratedMessageLite.GeneratedExtension<MessageType, List<Type>> paramGeneratedExtension, int paramInt, Type paramType)
    {
      assertMutable();
      verifyExtensionContainingType(paramGeneratedExtension);
      ensureExtensionsIsMutable();
      this.extensions.setRepeatedField(paramGeneratedExtension.descriptor, paramInt, paramGeneratedExtension.singularToFieldSetType(paramType));
      return this;
    }

    public final <Type> MessageType setExtension(GeneratedMessageLite.GeneratedExtension<MessageType, Type> paramGeneratedExtension, Type paramType)
    {
      assertMutable();
      verifyExtensionContainingType(paramGeneratedExtension);
      ensureExtensionsIsMutable();
      this.extensions.setField(paramGeneratedExtension.descriptor, paramGeneratedExtension.toFieldSetType(paramType));
      return this;
    }

    protected class ExtensionWriter
    {
      private final Iterator<Map.Entry<GeneratedMessageLite.ExtensionDescriptor, Object>> iter = GeneratedMutableMessageLite.ExtendableMutableMessage.this.extensions.iterator();
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

  static final class SerializedForm
    implements Serializable
  {
    private static final long serialVersionUID;
    private byte[] asBytes;
    private String messageClassName;

    SerializedForm(MutableMessageLite paramMutableMessageLite)
    {
      this.messageClassName = paramMutableMessageLite.getClass().getName();
      this.asBytes = paramMutableMessageLite.toByteArray();
    }

    protected Object readResolve()
      throws ObjectStreamException
    {
      MutableMessageLite localMutableMessageLite;
      try
      {
        localMutableMessageLite = (MutableMessageLite)Class.forName(this.messageClassName).getMethod("newMessage", new Class[0]).invoke(null, new Object[0]);
        if (!localMutableMessageLite.mergePartialFrom(CodedInputStream.newInstance(this.asBytes)))
          throw new RuntimeException("Unable to understand proto buffer");
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        throw new RuntimeException("Unable to find proto buffer class", localClassNotFoundException);
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        throw new RuntimeException("Unable to find newMessage method", localNoSuchMethodException);
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        throw new RuntimeException("Unable to call newMessage method", localIllegalAccessException);
      }
      catch (InvocationTargetException localInvocationTargetException)
      {
        throw new RuntimeException("Error calling newMessage", localInvocationTargetException.getCause());
      }
      return localMutableMessageLite;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.protobuf.GeneratedMutableMessageLite
 * JD-Core Version:    0.6.2
 */