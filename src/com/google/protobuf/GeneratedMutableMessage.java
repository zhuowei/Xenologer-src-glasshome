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
import java.util.Map;
import java.util.Map.Entry;
import java.util.TreeMap;

public abstract class GeneratedMutableMessage<MessageType extends GeneratedMutableMessage<MessageType>> extends AbstractMutableMessage<MessageType>
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  private UnknownFieldSet unknownFields = UnknownFieldSet.getDefaultInstance();

  private Map<Descriptors.FieldDescriptor, Object> getAllFieldsMutable()
  {
    TreeMap localTreeMap = new TreeMap();
    Iterator localIterator = internalGetFieldAccessorTable().descriptor.getFields().iterator();
    while (localIterator.hasNext())
    {
      Descriptors.FieldDescriptor localFieldDescriptor = (Descriptors.FieldDescriptor)localIterator.next();
      if (localFieldDescriptor.isRepeated())
      {
        List localList = (List)getField(localFieldDescriptor);
        if (!localList.isEmpty())
          localTreeMap.put(localFieldDescriptor, localList);
      }
      else if (hasField(localFieldDescriptor))
      {
        localTreeMap.put(localFieldDescriptor, getField(localFieldDescriptor));
      }
    }
    return localTreeMap;
  }

  private static Method getMethodOrDie(Class paramClass, String paramString, Class[] paramArrayOfClass)
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

  protected static Message internalImmutableDefault(String paramString)
  {
    return (Message)GeneratedMutableMessageLite.internalImmutableDefault(paramString);
  }

  private static Object invokeOrDie(Method paramMethod, Object paramObject, Object[] paramArrayOfObject)
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

  public static <ContainingType extends Message, Type> GeneratedMessage.GeneratedExtension<ContainingType, Type> newFileScopedGeneratedExtension(Class paramClass, Message paramMessage)
  {
    return new GeneratedMessage.GeneratedExtension(null, paramClass, paramMessage, Extension.ExtensionType.MUTABLE);
  }

  public static <ContainingType extends Message, Type> GeneratedMessage.GeneratedExtension<ContainingType, Type> newMessageScopedGeneratedExtension(Message paramMessage1, final int paramInt, Class paramClass, Message paramMessage2)
  {
    return new GeneratedMessage.GeneratedExtension(new GeneratedMessage.ExtensionDescriptorRetriever()
    {
      public Descriptors.FieldDescriptor getDescriptor()
      {
        return (Descriptors.FieldDescriptor)this.val$scope.getDescriptorForType().getExtensions().get(paramInt);
      }
    }
    , paramClass, paramMessage2, Extension.ExtensionType.MUTABLE);
  }

  public MessageType addRepeatedField(Descriptors.FieldDescriptor paramFieldDescriptor, Object paramObject)
  {
    assertMutable();
    internalGetFieldAccessorTable().getField(paramFieldDescriptor).addRepeated(this, paramObject);
    return this;
  }

  public MessageType clear()
  {
    assertMutable();
    this.unknownFields = UnknownFieldSet.getDefaultInstance();
    return this;
  }

  public MessageType clearField(Descriptors.FieldDescriptor paramFieldDescriptor)
  {
    assertMutable();
    internalGetFieldAccessorTable().getField(paramFieldDescriptor).clear(this);
    return this;
  }

  public Map<Descriptors.FieldDescriptor, Object> getAllFields()
  {
    return Collections.unmodifiableMap(getAllFieldsMutable());
  }

  public Descriptors.Descriptor getDescriptorForType()
  {
    return internalGetFieldAccessorTable().descriptor;
  }

  public Object getField(Descriptors.FieldDescriptor paramFieldDescriptor)
  {
    return internalGetFieldAccessorTable().getField(paramFieldDescriptor).get(this);
  }

  public Object getMutableField(Descriptors.FieldDescriptor paramFieldDescriptor)
  {
    assertMutable();
    return internalGetFieldAccessorTable().getField(paramFieldDescriptor).getMutable(this);
  }

  public Parser<MessageType> getParserForType()
  {
    throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
  }

  public Object getRepeatedField(Descriptors.FieldDescriptor paramFieldDescriptor, int paramInt)
  {
    return internalGetFieldAccessorTable().getField(paramFieldDescriptor).getRepeated(this, paramInt);
  }

  public int getRepeatedFieldCount(Descriptors.FieldDescriptor paramFieldDescriptor)
  {
    return internalGetFieldAccessorTable().getField(paramFieldDescriptor).getRepeatedCount(this);
  }

  public final UnknownFieldSet getUnknownFields()
  {
    return this.unknownFields;
  }

  public boolean hasField(Descriptors.FieldDescriptor paramFieldDescriptor)
  {
    return internalGetFieldAccessorTable().getField(paramFieldDescriptor).has(this);
  }

  public Message immutableCopy()
  {
    Message localMessage = internalImmutableDefault();
    if (this == getDefaultInstanceForType())
      return localMessage;
    return (Message)GeneratedMutableMessageLite.internalCopyToBuilder(this, localMessage).buildPartial();
  }

  protected abstract FieldAccessorTable internalGetFieldAccessorTable();

  protected abstract Message internalImmutableDefault();

  public MutableMessage newMessageForField(Descriptors.FieldDescriptor paramFieldDescriptor)
  {
    return internalGetFieldAccessorTable().getField(paramFieldDescriptor).newMessage();
  }

  protected boolean parseUnknownField(CodedInputStream paramCodedInputStream, UnknownFieldSet.Builder paramBuilder, ExtensionRegistryLite paramExtensionRegistryLite, int paramInt)
    throws IOException
  {
    return paramBuilder.mergeFieldFrom(paramInt, paramCodedInputStream);
  }

  public MessageType setField(Descriptors.FieldDescriptor paramFieldDescriptor, Object paramObject)
  {
    assertMutable();
    internalGetFieldAccessorTable().getField(paramFieldDescriptor).set(this, paramObject);
    return this;
  }

  public MessageType setRepeatedField(Descriptors.FieldDescriptor paramFieldDescriptor, int paramInt, Object paramObject)
  {
    assertMutable();
    internalGetFieldAccessorTable().getField(paramFieldDescriptor).setRepeated(this, paramInt, paramObject);
    return this;
  }

  public final MessageType setUnknownFields(UnknownFieldSet paramUnknownFieldSet)
  {
    assertMutable();
    this.unknownFields = paramUnknownFieldSet;
    return this;
  }

  protected Object writeReplace()
    throws ObjectStreamException
  {
    return new GeneratedMutableMessageLite.SerializedForm(this);
  }

  public static abstract class ExtendableMutableMessage<MessageType extends ExtendableMutableMessage<MessageType>> extends GeneratedMutableMessage<MessageType>
  {
    private FieldSet<Descriptors.FieldDescriptor> extensions = FieldSet.emptySet();

    private void ensureExtensionsIsMutable()
    {
      if (this.extensions.isImmutable())
        this.extensions = this.extensions.clone();
    }

    private void verifyContainingType(Descriptors.FieldDescriptor paramFieldDescriptor)
    {
      if (paramFieldDescriptor.getContainingType() != getDescriptorForType())
        throw new IllegalArgumentException("FieldDescriptor does not match message type.");
    }

    private void verifyExtensionContainingType(Extension<MessageType, ?> paramExtension)
    {
      if (paramExtension.getDescriptor().getContainingType() != getDescriptorForType())
        throw new IllegalArgumentException("Extension is for type \"" + paramExtension.getDescriptor().getContainingType().getFullName() + "\" which does not match message type \"" + getDescriptorForType().getFullName() + "\".");
    }

    public final <Type> MessageType addExtension(Extension<MessageType, List<Type>> paramExtension, Type paramType)
    {
      assertMutable();
      verifyExtensionContainingType(paramExtension);
      ensureExtensionsIsMutable();
      Descriptors.FieldDescriptor localFieldDescriptor = paramExtension.getDescriptor();
      this.extensions.addRepeatedField(localFieldDescriptor, paramExtension.singularToReflectionType(paramType));
      return this;
    }

    public MessageType addRepeatedField(Descriptors.FieldDescriptor paramFieldDescriptor, Object paramObject)
    {
      assertMutable();
      if (paramFieldDescriptor.isExtension())
      {
        verifyContainingType(paramFieldDescriptor);
        ensureExtensionsIsMutable();
        this.extensions.addRepeatedField(paramFieldDescriptor, paramObject);
        return this;
      }
      return (ExtendableMutableMessage)super.addRepeatedField(paramFieldDescriptor, paramObject);
    }

    public MessageType clear()
    {
      assertMutable();
      this.extensions = FieldSet.emptySet();
      return (ExtendableMutableMessage)super.clear();
    }

    public final <Type> MessageType clearExtension(Extension<MessageType, ?> paramExtension)
    {
      assertMutable();
      verifyExtensionContainingType(paramExtension);
      ensureExtensionsIsMutable();
      this.extensions.clearField(paramExtension.getDescriptor());
      return this;
    }

    public MessageType clearField(Descriptors.FieldDescriptor paramFieldDescriptor)
    {
      assertMutable();
      if (paramFieldDescriptor.isExtension())
      {
        verifyContainingType(paramFieldDescriptor);
        ensureExtensionsIsMutable();
        this.extensions.clearField(paramFieldDescriptor);
        return this;
      }
      return (ExtendableMutableMessage)super.clearField(paramFieldDescriptor);
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

    public Map<Descriptors.FieldDescriptor, Object> getAllFields()
    {
      Map localMap = super.getAllFieldsMutable();
      localMap.putAll(getExtensionFields());
      return Collections.unmodifiableMap(localMap);
    }

    public final <Type> Type getExtension(Extension<MessageType, Type> paramExtension)
    {
      verifyExtensionContainingType(paramExtension);
      Descriptors.FieldDescriptor localFieldDescriptor = paramExtension.getDescriptor();
      Object localObject1 = this.extensions.getField(localFieldDescriptor);
      Object localObject2;
      if (localObject1 == null)
        if (localFieldDescriptor.isRepeated())
          localObject2 = Collections.emptyList();
      do
      {
        return localObject2;
        if (localFieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE)
          return paramExtension.getMessageDefaultInstance();
        if (localFieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.BYTE_STRING)
          return ((ByteString)localFieldDescriptor.getDefaultValue()).toByteArray();
        return paramExtension.fromReflectionType(localFieldDescriptor.getDefaultValue());
        localObject2 = paramExtension.fromReflectionType(localObject1);
      }
      while (!localFieldDescriptor.isRepeated());
      return Collections.unmodifiableList((List)localObject2);
    }

    public final <Type> Type getExtension(Extension<MessageType, List<Type>> paramExtension, int paramInt)
    {
      verifyExtensionContainingType(paramExtension);
      Descriptors.FieldDescriptor localFieldDescriptor = paramExtension.getDescriptor();
      return paramExtension.singularFromReflectionType(this.extensions.getRepeatedField(localFieldDescriptor, paramInt));
    }

    public final <Type> int getExtensionCount(Extension<MessageType, List<Type>> paramExtension)
    {
      verifyExtensionContainingType(paramExtension);
      Descriptors.FieldDescriptor localFieldDescriptor = paramExtension.getDescriptor();
      return this.extensions.getRepeatedFieldCount(localFieldDescriptor);
    }

    protected Map<Descriptors.FieldDescriptor, Object> getExtensionFields()
    {
      return this.extensions.getAllFields();
    }

    public Object getField(Descriptors.FieldDescriptor paramFieldDescriptor)
    {
      if (paramFieldDescriptor.isExtension())
      {
        verifyContainingType(paramFieldDescriptor);
        Object localObject = this.extensions.getField(paramFieldDescriptor);
        if (localObject == null)
          if (paramFieldDescriptor.isRepeated())
            localObject = Collections.emptyList();
        while (!paramFieldDescriptor.isRepeated())
        {
          return localObject;
          if (paramFieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE)
            return DynamicMutableMessage.getDefaultInstance(paramFieldDescriptor.getMessageType());
          if (paramFieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.BYTE_STRING)
            return ((ByteString)paramFieldDescriptor.getDefaultValue()).toByteArray();
          return paramFieldDescriptor.getDefaultValue();
        }
        return Collections.unmodifiableList((List)localObject);
      }
      return super.getField(paramFieldDescriptor);
    }

    public final <Type extends MutableMessage> Type getMutableExtension(Extension<MessageType, Type> paramExtension)
    {
      assertMutable();
      verifyExtensionContainingType(paramExtension);
      ensureExtensionsIsMutable();
      Descriptors.FieldDescriptor localFieldDescriptor = paramExtension.getDescriptor();
      if (localFieldDescriptor.getJavaType() != Descriptors.FieldDescriptor.JavaType.MESSAGE)
        throw new UnsupportedOperationException("getMutableExtension() called on a non-Message type.");
      if (localFieldDescriptor.isRepeated())
        throw new UnsupportedOperationException("getMutableExtension() called on a repeated type.");
      Object localObject = this.extensions.getField(localFieldDescriptor);
      if (localObject == null)
      {
        MutableMessage localMutableMessage = (MutableMessage)((MutableMessageLite)paramExtension.getMessageDefaultInstance()).newMessageForType();
        this.extensions.setField(localFieldDescriptor, localMutableMessage);
        return localMutableMessage;
      }
      return (MutableMessage)paramExtension.fromReflectionType(localObject);
    }

    public Object getMutableField(Descriptors.FieldDescriptor paramFieldDescriptor)
    {
      assertMutable();
      if (paramFieldDescriptor.isExtension())
      {
        verifyContainingType(paramFieldDescriptor);
        ensureExtensionsIsMutable();
        if (paramFieldDescriptor.getJavaType() != Descriptors.FieldDescriptor.JavaType.MESSAGE)
          throw new UnsupportedOperationException("getMutable() called on a non-Message type.");
        if (paramFieldDescriptor.isRepeated())
          throw new UnsupportedOperationException("getMutable() called on a repeated type.");
        Object localObject = this.extensions.getField(paramFieldDescriptor);
        if (localObject == null)
        {
          DynamicMutableMessage localDynamicMutableMessage = DynamicMutableMessage.newMessage(paramFieldDescriptor.getMessageType());
          this.extensions.setField(paramFieldDescriptor, localDynamicMutableMessage);
          return localDynamicMutableMessage;
        }
        return localObject;
      }
      return super.getField(paramFieldDescriptor);
    }

    public Object getRepeatedField(Descriptors.FieldDescriptor paramFieldDescriptor, int paramInt)
    {
      if (paramFieldDescriptor.isExtension())
      {
        verifyContainingType(paramFieldDescriptor);
        return this.extensions.getRepeatedField(paramFieldDescriptor, paramInt);
      }
      return super.getRepeatedField(paramFieldDescriptor, paramInt);
    }

    public int getRepeatedFieldCount(Descriptors.FieldDescriptor paramFieldDescriptor)
    {
      if (paramFieldDescriptor.isExtension())
      {
        verifyContainingType(paramFieldDescriptor);
        return this.extensions.getRepeatedFieldCount(paramFieldDescriptor);
      }
      return super.getRepeatedFieldCount(paramFieldDescriptor);
    }

    public final <Type> boolean hasExtension(Extension<MessageType, Type> paramExtension)
    {
      verifyExtensionContainingType(paramExtension);
      return this.extensions.hasField(paramExtension.getDescriptor());
    }

    public boolean hasField(Descriptors.FieldDescriptor paramFieldDescriptor)
    {
      if (paramFieldDescriptor.isExtension())
      {
        verifyContainingType(paramFieldDescriptor);
        return this.extensions.hasField(paramFieldDescriptor);
      }
      return super.hasField(paramFieldDescriptor);
    }

    public Message immutableCopy()
    {
      if (!getDescriptorForType().getFields().isEmpty());
      for (GeneratedMessage.ExtendableBuilder localExtendableBuilder = (GeneratedMessage.ExtendableBuilder)GeneratedMutableMessageLite.internalCopyToBuilder(this, internalImmutableDefault()); ; localExtendableBuilder = (GeneratedMessage.ExtendableBuilder)internalImmutableDefault().newBuilderForType())
      {
        localExtendableBuilder.internalSetExtensionSet(this.extensions.cloneWithAllFieldsToImmutable());
        localExtendableBuilder.setUnknownFields(getUnknownFields());
        return localExtendableBuilder.buildPartial();
      }
    }

    void internalSetExtensionSet(FieldSet<Descriptors.FieldDescriptor> paramFieldSet)
    {
      this.extensions = paramFieldSet;
    }

    public boolean isInitialized()
    {
      return (super.isInitialized()) && (extensionsAreInitialized());
    }

    protected final void mergeExtensionFields(ExtendableMutableMessage paramExtendableMutableMessage)
    {
      ensureExtensionsIsMutable();
      this.extensions.mergeFrom(paramExtendableMutableMessage.extensions);
    }

    protected ExtendableMutableMessage<MessageType>.ExtensionWriter newExtensionWriter()
    {
      return new ExtensionWriter(false, null);
    }

    protected ExtendableMutableMessage<MessageType>.ExtensionWriter newMessageSetExtensionWriter()
    {
      return new ExtensionWriter(true, null);
    }

    protected boolean parseUnknownField(CodedInputStream paramCodedInputStream, UnknownFieldSet.Builder paramBuilder, ExtensionRegistryLite paramExtensionRegistryLite, int paramInt)
      throws IOException
    {
      return MessageReflection.mergeFieldFrom(paramCodedInputStream, paramBuilder, paramExtensionRegistryLite, getDescriptorForType(), new MessageReflection.MutableMessageAdapter(this), paramInt);
    }

    public final <Type> MessageType setExtension(Extension<MessageType, List<Type>> paramExtension, int paramInt, Type paramType)
    {
      assertMutable();
      verifyExtensionContainingType(paramExtension);
      ensureExtensionsIsMutable();
      Descriptors.FieldDescriptor localFieldDescriptor = paramExtension.getDescriptor();
      this.extensions.setRepeatedField(localFieldDescriptor, paramInt, paramExtension.singularToReflectionType(paramType));
      return this;
    }

    public final <Type> MessageType setExtension(Extension<MessageType, Type> paramExtension, Type paramType)
    {
      assertMutable();
      verifyExtensionContainingType(paramExtension);
      ensureExtensionsIsMutable();
      Descriptors.FieldDescriptor localFieldDescriptor = paramExtension.getDescriptor();
      this.extensions.setField(localFieldDescriptor, paramExtension.toReflectionType(paramType));
      return this;
    }

    public MessageType setField(Descriptors.FieldDescriptor paramFieldDescriptor, Object paramObject)
    {
      assertMutable();
      if (paramFieldDescriptor.isExtension())
      {
        verifyContainingType(paramFieldDescriptor);
        ensureExtensionsIsMutable();
        this.extensions.setField(paramFieldDescriptor, paramObject);
        return this;
      }
      return (ExtendableMutableMessage)super.setField(paramFieldDescriptor, paramObject);
    }

    public MessageType setRepeatedField(Descriptors.FieldDescriptor paramFieldDescriptor, int paramInt, Object paramObject)
    {
      assertMutable();
      if (paramFieldDescriptor.isExtension())
      {
        verifyContainingType(paramFieldDescriptor);
        ensureExtensionsIsMutable();
        this.extensions.setRepeatedField(paramFieldDescriptor, paramInt, paramObject);
        return this;
      }
      return (ExtendableMutableMessage)super.setRepeatedField(paramFieldDescriptor, paramInt, paramObject);
    }

    protected class ExtensionWriter
    {
      private final Iterator<Map.Entry<Descriptors.FieldDescriptor, Object>> iter = GeneratedMutableMessage.ExtendableMutableMessage.this.extensions.iterator();
      private final boolean messageSetWireFormat;
      private Map.Entry<Descriptors.FieldDescriptor, Object> next;

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
        while ((this.next != null) && (((Descriptors.FieldDescriptor)this.next.getKey()).getNumber() < paramInt))
        {
          Descriptors.FieldDescriptor localFieldDescriptor = (Descriptors.FieldDescriptor)this.next.getKey();
          if ((this.messageSetWireFormat) && (localFieldDescriptor.getLiteJavaType() == WireFormat.JavaType.MESSAGE) && (!localFieldDescriptor.isRepeated()))
            paramCodedOutputStream.writeMessageSetExtension(localFieldDescriptor.getNumber(), (Message)this.next.getValue());
          while (true)
          {
            if (!this.iter.hasNext())
              break label131;
            this.next = ((Map.Entry)this.iter.next());
            break;
            FieldSet.writeField(localFieldDescriptor, this.next.getValue(), paramCodedOutputStream);
          }
          label131: this.next = null;
        }
      }
    }
  }

  public static final class FieldAccessorTable
  {
    private String[] camelCaseNames;
    private final Descriptors.Descriptor descriptor;
    private final FieldAccessor[] fields;
    private volatile boolean initialized;

    public FieldAccessorTable(Descriptors.Descriptor paramDescriptor, String[] paramArrayOfString)
    {
      this.descriptor = paramDescriptor;
      this.camelCaseNames = paramArrayOfString;
      this.fields = new FieldAccessor[paramDescriptor.getFields().size()];
      this.initialized = false;
    }

    private FieldAccessor getField(Descriptors.FieldDescriptor paramFieldDescriptor)
    {
      if (paramFieldDescriptor.getContainingType() != this.descriptor)
        throw new IllegalArgumentException("FieldDescriptor does not match message type.");
      if (paramFieldDescriptor.isExtension())
        throw new IllegalArgumentException("This type does not have extensions.");
      return this.fields[paramFieldDescriptor.getIndex()];
    }

    public FieldAccessorTable ensureFieldAccessorsInitialized(Class<? extends GeneratedMutableMessage> paramClass)
    {
      if (this.initialized)
        return this;
      try
      {
        if (this.initialized)
          return this;
      }
      finally
      {
      }
      for (int i = 0; ; i++)
        if (i < this.fields.length)
        {
          Descriptors.FieldDescriptor localFieldDescriptor = (Descriptors.FieldDescriptor)this.descriptor.getFields().get(i);
          if (localFieldDescriptor.isRepeated())
          {
            if (localFieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE)
              this.fields[i] = new RepeatedMessageFieldAccessor(localFieldDescriptor, this.camelCaseNames[i], paramClass);
            else if (localFieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.ENUM)
              this.fields[i] = new RepeatedEnumFieldAccessor(localFieldDescriptor, this.camelCaseNames[i], paramClass);
            else
              this.fields[i] = new RepeatedFieldAccessor(localFieldDescriptor, this.camelCaseNames[i], paramClass);
          }
          else if (localFieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE)
            this.fields[i] = new SingularMessageFieldAccessor(localFieldDescriptor, this.camelCaseNames[i], paramClass);
          else if (localFieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.ENUM)
            this.fields[i] = new SingularEnumFieldAccessor(localFieldDescriptor, this.camelCaseNames[i], paramClass);
          else
            this.fields[i] = new SingularFieldAccessor(localFieldDescriptor, this.camelCaseNames[i], paramClass);
        }
        else
        {
          this.initialized = true;
          this.camelCaseNames = null;
          return this;
        }
    }

    private static abstract interface FieldAccessor
    {
      public abstract void addRepeated(GeneratedMutableMessage paramGeneratedMutableMessage, Object paramObject);

      public abstract void clear(GeneratedMutableMessage paramGeneratedMutableMessage);

      public abstract Object get(GeneratedMutableMessage paramGeneratedMutableMessage);

      public abstract Object getMutable(GeneratedMutableMessage paramGeneratedMutableMessage);

      public abstract Object getRepeated(GeneratedMutableMessage paramGeneratedMutableMessage, int paramInt);

      public abstract int getRepeatedCount(GeneratedMutableMessage paramGeneratedMutableMessage);

      public abstract boolean has(GeneratedMutableMessage paramGeneratedMutableMessage);

      public abstract MutableMessage newMessage();

      public abstract void set(GeneratedMutableMessage paramGeneratedMutableMessage, Object paramObject);

      public abstract void setRepeated(GeneratedMutableMessage paramGeneratedMutableMessage, int paramInt, Object paramObject);
    }

    private static final class RepeatedEnumFieldAccessor extends GeneratedMutableMessage.FieldAccessorTable.RepeatedFieldAccessor
    {
      private final Method getValueDescriptorMethod = GeneratedMutableMessage.getMethodOrDie(this.type, "getValueDescriptor", new Class[0]);
      private final Method valueOfMethod = GeneratedMutableMessage.getMethodOrDie(this.type, "valueOf", new Class[] { Descriptors.EnumValueDescriptor.class });

      RepeatedEnumFieldAccessor(Descriptors.FieldDescriptor paramFieldDescriptor, String paramString, Class<? extends GeneratedMutableMessage> paramClass)
      {
        super(paramString, paramClass);
      }

      public void addRepeated(GeneratedMutableMessage paramGeneratedMutableMessage, Object paramObject)
      {
        super.addRepeated(paramGeneratedMutableMessage, GeneratedMutableMessage.invokeOrDie(this.valueOfMethod, null, new Object[] { paramObject }));
      }

      public Object get(GeneratedMutableMessage paramGeneratedMutableMessage)
      {
        ArrayList localArrayList = new ArrayList();
        Iterator localIterator = ((List)super.get(paramGeneratedMutableMessage)).iterator();
        while (localIterator.hasNext())
        {
          Object localObject = localIterator.next();
          localArrayList.add(GeneratedMutableMessage.invokeOrDie(this.getValueDescriptorMethod, localObject, new Object[0]));
        }
        return Collections.unmodifiableList(localArrayList);
      }

      public Object getRepeated(GeneratedMutableMessage paramGeneratedMutableMessage, int paramInt)
      {
        return GeneratedMutableMessage.invokeOrDie(this.getValueDescriptorMethod, super.getRepeated(paramGeneratedMutableMessage, paramInt), new Object[0]);
      }

      public void setRepeated(GeneratedMutableMessage paramGeneratedMutableMessage, int paramInt, Object paramObject)
      {
        super.setRepeated(paramGeneratedMutableMessage, paramInt, GeneratedMutableMessage.invokeOrDie(this.valueOfMethod, null, new Object[] { paramObject }));
      }
    }

    private static class RepeatedFieldAccessor
      implements GeneratedMutableMessage.FieldAccessorTable.FieldAccessor
    {
      protected final Method addRepeatedMethod;
      protected final Method clearMethod;
      protected final Method getCountMethod;
      protected final Method getMethod;
      protected final Method getRepeatedMethod;
      protected final Method setRepeatedMethod;
      protected final Class type;

      RepeatedFieldAccessor(Descriptors.FieldDescriptor paramFieldDescriptor, String paramString, Class<? extends GeneratedMutableMessage> paramClass)
      {
        this.getMethod = GeneratedMutableMessage.getMethodOrDie(paramClass, "get" + paramString + "List", new Class[0]);
        String str1 = "get" + paramString;
        Class[] arrayOfClass1 = new Class[1];
        arrayOfClass1[0] = Integer.TYPE;
        this.getRepeatedMethod = GeneratedMutableMessage.getMethodOrDie(paramClass, str1, arrayOfClass1);
        this.type = this.getRepeatedMethod.getReturnType();
        String str2 = "set" + paramString;
        Class[] arrayOfClass2 = new Class[2];
        arrayOfClass2[0] = Integer.TYPE;
        arrayOfClass2[1] = this.type;
        this.setRepeatedMethod = GeneratedMutableMessage.getMethodOrDie(paramClass, str2, arrayOfClass2);
        String str3 = "add" + paramString;
        Class[] arrayOfClass3 = new Class[1];
        arrayOfClass3[0] = this.type;
        this.addRepeatedMethod = GeneratedMutableMessage.getMethodOrDie(paramClass, str3, arrayOfClass3);
        this.getCountMethod = GeneratedMutableMessage.getMethodOrDie(paramClass, "get" + paramString + "Count", new Class[0]);
        this.clearMethod = GeneratedMutableMessage.getMethodOrDie(paramClass, "clear" + paramString, new Class[0]);
      }

      public void addRepeated(GeneratedMutableMessage paramGeneratedMutableMessage, Object paramObject)
      {
        GeneratedMutableMessage.invokeOrDie(this.addRepeatedMethod, paramGeneratedMutableMessage, new Object[] { paramObject });
      }

      public void clear(GeneratedMutableMessage paramGeneratedMutableMessage)
      {
        GeneratedMutableMessage.invokeOrDie(this.clearMethod, paramGeneratedMutableMessage, new Object[0]);
      }

      public Object get(GeneratedMutableMessage paramGeneratedMutableMessage)
      {
        return GeneratedMutableMessage.invokeOrDie(this.getMethod, paramGeneratedMutableMessage, new Object[0]);
      }

      public Object getMutable(GeneratedMutableMessage paramGeneratedMutableMessage)
      {
        throw new UnsupportedOperationException("getMutableField() called on a repeated field.");
      }

      public Object getRepeated(GeneratedMutableMessage paramGeneratedMutableMessage, int paramInt)
      {
        Method localMethod = this.getRepeatedMethod;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(paramInt);
        return GeneratedMutableMessage.invokeOrDie(localMethod, paramGeneratedMutableMessage, arrayOfObject);
      }

      public int getRepeatedCount(GeneratedMutableMessage paramGeneratedMutableMessage)
      {
        return ((Integer)GeneratedMutableMessage.invokeOrDie(this.getCountMethod, paramGeneratedMutableMessage, new Object[0])).intValue();
      }

      public boolean has(GeneratedMutableMessage paramGeneratedMutableMessage)
      {
        throw new UnsupportedOperationException("hasField() called on a repeated field.");
      }

      public MutableMessage newMessage()
      {
        throw new UnsupportedOperationException("newMessage() called on a non-Message type.");
      }

      public void set(GeneratedMutableMessage paramGeneratedMutableMessage, Object paramObject)
      {
        clear(paramGeneratedMutableMessage);
        Iterator localIterator = ((List)paramObject).iterator();
        while (localIterator.hasNext())
          addRepeated(paramGeneratedMutableMessage, localIterator.next());
      }

      public void setRepeated(GeneratedMutableMessage paramGeneratedMutableMessage, int paramInt, Object paramObject)
      {
        Method localMethod = this.setRepeatedMethod;
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = Integer.valueOf(paramInt);
        arrayOfObject[1] = paramObject;
        GeneratedMutableMessage.invokeOrDie(localMethod, paramGeneratedMutableMessage, arrayOfObject);
      }
    }

    private static final class RepeatedMessageFieldAccessor extends GeneratedMutableMessage.FieldAccessorTable.RepeatedFieldAccessor
    {
      private final Method newMessageMethod = GeneratedMutableMessage.getMethodOrDie(this.type, "newMessage", new Class[0]);

      RepeatedMessageFieldAccessor(Descriptors.FieldDescriptor paramFieldDescriptor, String paramString, Class<? extends GeneratedMutableMessage> paramClass)
      {
        super(paramString, paramClass);
      }

      private Object coerceType(Object paramObject)
      {
        if (this.type.isInstance(paramObject))
          return paramObject;
        return ((MutableMessage)GeneratedMutableMessage.invokeOrDie(this.newMessageMethod, null, new Object[0])).mergeFrom((MutableMessage)paramObject);
      }

      public void addRepeated(GeneratedMutableMessage paramGeneratedMutableMessage, Object paramObject)
      {
        super.addRepeated(paramGeneratedMutableMessage, coerceType(paramObject));
      }

      public MutableMessage newMessage()
      {
        return (MutableMessage)GeneratedMutableMessage.invokeOrDie(this.newMessageMethod, null, new Object[0]);
      }

      public void setRepeated(GeneratedMutableMessage paramGeneratedMutableMessage, int paramInt, Object paramObject)
      {
        super.setRepeated(paramGeneratedMutableMessage, paramInt, coerceType(paramObject));
      }
    }

    private static final class SingularEnumFieldAccessor extends GeneratedMutableMessage.FieldAccessorTable.SingularFieldAccessor
    {
      private final Method getValueDescriptorMethod = GeneratedMutableMessage.getMethodOrDie(this.type, "getValueDescriptor", new Class[0]);
      private final Method valueOfMethod = GeneratedMutableMessage.getMethodOrDie(this.type, "valueOf", new Class[] { Descriptors.EnumValueDescriptor.class });

      SingularEnumFieldAccessor(Descriptors.FieldDescriptor paramFieldDescriptor, String paramString, Class<? extends GeneratedMutableMessage> paramClass)
      {
        super(paramString, paramClass);
      }

      public Object get(GeneratedMutableMessage paramGeneratedMutableMessage)
      {
        return GeneratedMutableMessage.invokeOrDie(this.getValueDescriptorMethod, super.get(paramGeneratedMutableMessage), new Object[0]);
      }

      public void set(GeneratedMutableMessage paramGeneratedMutableMessage, Object paramObject)
      {
        super.set(paramGeneratedMutableMessage, GeneratedMutableMessage.invokeOrDie(this.valueOfMethod, null, new Object[] { paramObject }));
      }
    }

    private static class SingularFieldAccessor
      implements GeneratedMutableMessage.FieldAccessorTable.FieldAccessor
    {
      protected final Method clearMethod;
      protected final Method getMethod;
      protected final Method hasMethod;
      protected final Method setMethod;
      protected final Class<?> type;

      SingularFieldAccessor(Descriptors.FieldDescriptor paramFieldDescriptor, String paramString, Class<? extends GeneratedMutableMessage> paramClass)
      {
        this.getMethod = GeneratedMutableMessage.getMethodOrDie(paramClass, "get" + paramString, new Class[0]);
        this.type = this.getMethod.getReturnType();
        String str = "set" + paramString;
        Class[] arrayOfClass = new Class[1];
        arrayOfClass[0] = this.type;
        this.setMethod = GeneratedMutableMessage.getMethodOrDie(paramClass, str, arrayOfClass);
        this.hasMethod = GeneratedMutableMessage.getMethodOrDie(paramClass, "has" + paramString, new Class[0]);
        this.clearMethod = GeneratedMutableMessage.getMethodOrDie(paramClass, "clear" + paramString, new Class[0]);
      }

      public void addRepeated(GeneratedMutableMessage paramGeneratedMutableMessage, Object paramObject)
      {
        throw new UnsupportedOperationException("getRepeatedField() called on a singular field.");
      }

      public void clear(GeneratedMutableMessage paramGeneratedMutableMessage)
      {
        GeneratedMutableMessage.invokeOrDie(this.clearMethod, paramGeneratedMutableMessage, new Object[0]);
      }

      public Object get(GeneratedMutableMessage paramGeneratedMutableMessage)
      {
        return GeneratedMutableMessage.invokeOrDie(this.getMethod, paramGeneratedMutableMessage, new Object[0]);
      }

      public Object getMutable(GeneratedMutableMessage paramGeneratedMutableMessage)
      {
        throw new UnsupportedOperationException("getMutable() called on a non-Message type.");
      }

      public Object getRepeated(GeneratedMutableMessage paramGeneratedMutableMessage, int paramInt)
      {
        throw new UnsupportedOperationException("getRepeatedField() called on a singular field.");
      }

      public int getRepeatedCount(GeneratedMutableMessage paramGeneratedMutableMessage)
      {
        throw new UnsupportedOperationException("getRepeatedField() called on a singular field.");
      }

      public boolean has(GeneratedMutableMessage paramGeneratedMutableMessage)
      {
        return ((Boolean)GeneratedMutableMessage.invokeOrDie(this.hasMethod, paramGeneratedMutableMessage, new Object[0])).booleanValue();
      }

      public MutableMessage newMessage()
      {
        throw new UnsupportedOperationException("newMessageForField() called on a non-Message type.");
      }

      public void set(GeneratedMutableMessage paramGeneratedMutableMessage, Object paramObject)
      {
        GeneratedMutableMessage.invokeOrDie(this.setMethod, paramGeneratedMutableMessage, new Object[] { paramObject });
      }

      public void setRepeated(GeneratedMutableMessage paramGeneratedMutableMessage, int paramInt, Object paramObject)
      {
        throw new UnsupportedOperationException("getRepeatedField() called on a singular field.");
      }
    }

    private static final class SingularMessageFieldAccessor extends GeneratedMutableMessage.FieldAccessorTable.SingularFieldAccessor
    {
      private final Method getMutableMethod;
      private final Method newMessageMethod;

      SingularMessageFieldAccessor(Descriptors.FieldDescriptor paramFieldDescriptor, String paramString, Class<? extends GeneratedMutableMessage> paramClass)
      {
        super(paramString, paramClass);
        this.getMutableMethod = GeneratedMutableMessage.getMethodOrDie(paramClass, "getMutable" + paramString, new Class[0]);
        this.newMessageMethod = GeneratedMutableMessage.getMethodOrDie(this.type, "newMessage", new Class[0]);
      }

      private Object coerceType(Object paramObject)
      {
        if (this.type.isInstance(paramObject))
          return paramObject;
        return ((MutableMessage)GeneratedMutableMessage.invokeOrDie(this.newMessageMethod, null, new Object[0])).mergeFrom((MutableMessage)paramObject);
      }

      public Object getMutable(GeneratedMutableMessage paramGeneratedMutableMessage)
      {
        return GeneratedMutableMessage.invokeOrDie(this.getMutableMethod, paramGeneratedMutableMessage, new Object[0]);
      }

      public MutableMessage newMessage()
      {
        return (MutableMessage)GeneratedMutableMessage.invokeOrDie(this.newMessageMethod, null, new Object[0]);
      }

      public void set(GeneratedMutableMessage paramGeneratedMutableMessage, Object paramObject)
      {
        super.set(paramGeneratedMutableMessage, coerceType(paramObject));
      }
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.protobuf.GeneratedMutableMessage
 * JD-Core Version:    0.6.2
 */