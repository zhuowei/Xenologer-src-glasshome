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

public abstract class GeneratedMessage extends AbstractMessage
  implements Serializable
{
  protected static boolean alwaysUseFieldBuilders = false;
  private static final long serialVersionUID = 1L;

  protected GeneratedMessage()
  {
  }

  protected GeneratedMessage(Builder<?> paramBuilder)
  {
  }

  static void enableAlwaysUseFieldBuildersForTesting()
  {
    alwaysUseFieldBuilders = true;
  }

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

  protected static MutableMessage internalMutableDefault(String paramString)
  {
    return (MutableMessage)GeneratedMessageLite.internalMutableDefault(paramString);
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

  public static <ContainingType extends Message, Type> GeneratedExtension<ContainingType, Type> newFileScopedGeneratedExtension(Class paramClass, Message paramMessage)
  {
    return new GeneratedExtension(null, paramClass, paramMessage, Extension.ExtensionType.IMMUTABLE);
  }

  public static <ContainingType extends Message, Type> GeneratedExtension<ContainingType, Type> newMessageScopedGeneratedExtension(Message paramMessage1, final int paramInt, Class paramClass, Message paramMessage2)
  {
    return new GeneratedExtension(new ExtensionDescriptorRetriever()
    {
      public Descriptors.FieldDescriptor getDescriptor()
      {
        return (Descriptors.FieldDescriptor)this.val$scope.getDescriptorForType().getExtensions().get(paramInt);
      }
    }
    , paramClass, paramMessage2, Extension.ExtensionType.IMMUTABLE);
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

  public Parser<? extends GeneratedMessage> getParserForType()
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

  public UnknownFieldSet getUnknownFields()
  {
    throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
  }

  public boolean hasField(Descriptors.FieldDescriptor paramFieldDescriptor)
  {
    return internalGetFieldAccessorTable().getField(paramFieldDescriptor).has(this);
  }

  protected abstract FieldAccessorTable internalGetFieldAccessorTable();

  protected MutableMessage internalMutableDefault()
  {
    throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
  }

  public boolean isInitialized()
  {
    Iterator localIterator1 = getDescriptorForType().getFields().iterator();
    while (true)
      if (localIterator1.hasNext())
      {
        Descriptors.FieldDescriptor localFieldDescriptor = (Descriptors.FieldDescriptor)localIterator1.next();
        if ((localFieldDescriptor.isRequired()) && (!hasField(localFieldDescriptor)))
          return false;
        if (localFieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE)
        {
          if (localFieldDescriptor.isRepeated())
          {
            Iterator localIterator2 = ((List)getField(localFieldDescriptor)).iterator();
            if (!localIterator2.hasNext())
              continue;
            if (((Message)localIterator2.next()).isInitialized())
              break;
            return false;
          }
          if ((hasField(localFieldDescriptor)) && (!((Message)getField(localFieldDescriptor)).isInitialized()))
            return false;
        }
      }
    return true;
  }

  protected void makeExtensionsImmutable()
  {
  }

  public MutableMessage mutableCopy()
  {
    MutableMessage localMutableMessage = internalMutableDefault().newMessageForType();
    if (this == getDefaultInstanceForType())
      return localMutableMessage;
    localMutableMessage.mergePartialFrom(CodedInputStream.newInstance(toByteArray()));
    return localMutableMessage;
  }

  protected abstract Message.Builder newBuilderForType(BuilderParent paramBuilderParent);

  protected boolean parseUnknownField(CodedInputStream paramCodedInputStream, UnknownFieldSet.Builder paramBuilder, ExtensionRegistryLite paramExtensionRegistryLite, int paramInt)
    throws IOException
  {
    return paramBuilder.mergeFieldFrom(paramInt, paramCodedInputStream);
  }

  protected Object writeReplace()
    throws ObjectStreamException
  {
    return new GeneratedMessageLite.SerializedForm(this);
  }

  public static abstract class Builder<BuilderType extends Builder> extends AbstractMessage.Builder<BuilderType>
  {
    private GeneratedMessage.BuilderParent builderParent;
    private boolean isClean;
    private Builder<BuilderType>.BuilderParentImpl meAsParent;
    private UnknownFieldSet unknownFields = UnknownFieldSet.getDefaultInstance();

    protected Builder()
    {
      this(null);
    }

    protected Builder(GeneratedMessage.BuilderParent paramBuilderParent)
    {
      this.builderParent = paramBuilderParent;
    }

    private Map<Descriptors.FieldDescriptor, Object> getAllFieldsMutable()
    {
      TreeMap localTreeMap = new TreeMap();
      Iterator localIterator = GeneratedMessage.FieldAccessorTable.access$000(internalGetFieldAccessorTable()).getFields().iterator();
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

    public BuilderType addRepeatedField(Descriptors.FieldDescriptor paramFieldDescriptor, Object paramObject)
    {
      GeneratedMessage.FieldAccessorTable.access$100(internalGetFieldAccessorTable(), paramFieldDescriptor).addRepeated(this, paramObject);
      return this;
    }

    public BuilderType clear()
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
      onChanged();
      return this;
    }

    public BuilderType clearField(Descriptors.FieldDescriptor paramFieldDescriptor)
    {
      GeneratedMessage.FieldAccessorTable.access$100(internalGetFieldAccessorTable(), paramFieldDescriptor).clear(this);
      return this;
    }

    public BuilderType clone()
    {
      throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
    }

    void dispose()
    {
      this.builderParent = null;
    }

    public Map<Descriptors.FieldDescriptor, Object> getAllFields()
    {
      return Collections.unmodifiableMap(getAllFieldsMutable());
    }

    public Descriptors.Descriptor getDescriptorForType()
    {
      return GeneratedMessage.FieldAccessorTable.access$000(internalGetFieldAccessorTable());
    }

    public Object getField(Descriptors.FieldDescriptor paramFieldDescriptor)
    {
      Object localObject = GeneratedMessage.FieldAccessorTable.access$100(internalGetFieldAccessorTable(), paramFieldDescriptor).get(this);
      if (paramFieldDescriptor.isRepeated())
        localObject = Collections.unmodifiableList((List)localObject);
      return localObject;
    }

    public Message.Builder getFieldBuilder(Descriptors.FieldDescriptor paramFieldDescriptor)
    {
      return GeneratedMessage.FieldAccessorTable.access$100(internalGetFieldAccessorTable(), paramFieldDescriptor).getBuilder(this);
    }

    protected GeneratedMessage.BuilderParent getParentForChildren()
    {
      if (this.meAsParent == null)
        this.meAsParent = new BuilderParentImpl(null);
      return this.meAsParent;
    }

    public Object getRepeatedField(Descriptors.FieldDescriptor paramFieldDescriptor, int paramInt)
    {
      return GeneratedMessage.FieldAccessorTable.access$100(internalGetFieldAccessorTable(), paramFieldDescriptor).getRepeated(this, paramInt);
    }

    public int getRepeatedFieldCount(Descriptors.FieldDescriptor paramFieldDescriptor)
    {
      return GeneratedMessage.FieldAccessorTable.access$100(internalGetFieldAccessorTable(), paramFieldDescriptor).getRepeatedCount(this);
    }

    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }

    public boolean hasField(Descriptors.FieldDescriptor paramFieldDescriptor)
    {
      return GeneratedMessage.FieldAccessorTable.access$100(internalGetFieldAccessorTable(), paramFieldDescriptor).has(this);
    }

    protected abstract GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable();

    protected boolean isClean()
    {
      return this.isClean;
    }

    public boolean isInitialized()
    {
      Iterator localIterator1 = getDescriptorForType().getFields().iterator();
      while (true)
        if (localIterator1.hasNext())
        {
          Descriptors.FieldDescriptor localFieldDescriptor = (Descriptors.FieldDescriptor)localIterator1.next();
          if ((localFieldDescriptor.isRequired()) && (!hasField(localFieldDescriptor)))
            return false;
          if (localFieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE)
          {
            if (localFieldDescriptor.isRepeated())
            {
              Iterator localIterator2 = ((List)getField(localFieldDescriptor)).iterator();
              if (!localIterator2.hasNext())
                continue;
              if (((Message)localIterator2.next()).isInitialized())
                break;
              return false;
            }
            if ((hasField(localFieldDescriptor)) && (!((Message)getField(localFieldDescriptor)).isInitialized()))
              return false;
          }
        }
      return true;
    }

    protected void markClean()
    {
      this.isClean = true;
    }

    public final BuilderType mergeUnknownFields(UnknownFieldSet paramUnknownFieldSet)
    {
      this.unknownFields = UnknownFieldSet.newBuilder(this.unknownFields).mergeFrom(paramUnknownFieldSet).build();
      onChanged();
      return this;
    }

    public Message.Builder newBuilderForField(Descriptors.FieldDescriptor paramFieldDescriptor)
    {
      return GeneratedMessage.FieldAccessorTable.access$100(internalGetFieldAccessorTable(), paramFieldDescriptor).newBuilder();
    }

    protected void onBuilt()
    {
      if (this.builderParent != null)
        markClean();
    }

    protected final void onChanged()
    {
      if ((this.isClean) && (this.builderParent != null))
      {
        this.builderParent.markDirty();
        this.isClean = false;
      }
    }

    protected boolean parseUnknownField(CodedInputStream paramCodedInputStream, UnknownFieldSet.Builder paramBuilder, ExtensionRegistryLite paramExtensionRegistryLite, int paramInt)
      throws IOException
    {
      return paramBuilder.mergeFieldFrom(paramInt, paramCodedInputStream);
    }

    public BuilderType setField(Descriptors.FieldDescriptor paramFieldDescriptor, Object paramObject)
    {
      GeneratedMessage.FieldAccessorTable.access$100(internalGetFieldAccessorTable(), paramFieldDescriptor).set(this, paramObject);
      return this;
    }

    public BuilderType setRepeatedField(Descriptors.FieldDescriptor paramFieldDescriptor, int paramInt, Object paramObject)
    {
      GeneratedMessage.FieldAccessorTable.access$100(internalGetFieldAccessorTable(), paramFieldDescriptor).setRepeated(this, paramInt, paramObject);
      return this;
    }

    public final BuilderType setUnknownFields(UnknownFieldSet paramUnknownFieldSet)
    {
      this.unknownFields = paramUnknownFieldSet;
      onChanged();
      return this;
    }

    private class BuilderParentImpl
      implements GeneratedMessage.BuilderParent
    {
      private BuilderParentImpl()
      {
      }

      public void markDirty()
      {
        GeneratedMessage.Builder.this.onChanged();
      }
    }
  }

  protected static abstract interface BuilderParent
  {
    public abstract void markDirty();
  }

  public static abstract class ExtendableBuilder<MessageType extends GeneratedMessage.ExtendableMessage, BuilderType extends ExtendableBuilder> extends GeneratedMessage.Builder<BuilderType>
    implements GeneratedMessage.ExtendableMessageOrBuilder<MessageType>
  {
    private FieldSet<Descriptors.FieldDescriptor> extensions = FieldSet.emptySet();

    protected ExtendableBuilder()
    {
    }

    protected ExtendableBuilder(GeneratedMessage.BuilderParent paramBuilderParent)
    {
      super();
    }

    private FieldSet<Descriptors.FieldDescriptor> buildExtensions()
    {
      this.extensions.makeImmutable();
      return this.extensions;
    }

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

    public final <Type> BuilderType addExtension(Extension<MessageType, List<Type>> paramExtension, Type paramType)
    {
      verifyExtensionContainingType(paramExtension);
      ensureExtensionsIsMutable();
      Descriptors.FieldDescriptor localFieldDescriptor = paramExtension.getDescriptor();
      this.extensions.addRepeatedField(localFieldDescriptor, paramExtension.singularToReflectionType(paramType));
      onChanged();
      return this;
    }

    public BuilderType addRepeatedField(Descriptors.FieldDescriptor paramFieldDescriptor, Object paramObject)
    {
      if (paramFieldDescriptor.isExtension())
      {
        verifyContainingType(paramFieldDescriptor);
        ensureExtensionsIsMutable();
        this.extensions.addRepeatedField(paramFieldDescriptor, paramObject);
        onChanged();
        return this;
      }
      return (ExtendableBuilder)super.addRepeatedField(paramFieldDescriptor, paramObject);
    }

    public BuilderType clear()
    {
      this.extensions = FieldSet.emptySet();
      return (ExtendableBuilder)super.clear();
    }

    public final <Type> BuilderType clearExtension(Extension<MessageType, ?> paramExtension)
    {
      verifyExtensionContainingType(paramExtension);
      ensureExtensionsIsMutable();
      this.extensions.clearField(paramExtension.getDescriptor());
      onChanged();
      return this;
    }

    public BuilderType clearField(Descriptors.FieldDescriptor paramFieldDescriptor)
    {
      if (paramFieldDescriptor.isExtension())
      {
        verifyContainingType(paramFieldDescriptor);
        ensureExtensionsIsMutable();
        this.extensions.clearField(paramFieldDescriptor);
        onChanged();
        return this;
      }
      return (ExtendableBuilder)super.clearField(paramFieldDescriptor);
    }

    public BuilderType clone()
    {
      throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
    }

    protected boolean extensionsAreInitialized()
    {
      return this.extensions.isInitialized();
    }

    public Map<Descriptors.FieldDescriptor, Object> getAllFields()
    {
      Map localMap = super.getAllFieldsMutable();
      localMap.putAll(this.extensions.getAllFields());
      return Collections.unmodifiableMap(localMap);
    }

    public final <Type> Type getExtension(Extension<MessageType, Type> paramExtension)
    {
      verifyExtensionContainingType(paramExtension);
      Descriptors.FieldDescriptor localFieldDescriptor = paramExtension.getDescriptor();
      Object localObject = this.extensions.getField(localFieldDescriptor);
      if (localObject == null)
      {
        if (localFieldDescriptor.isRepeated())
          return Collections.emptyList();
        if (localFieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE)
          return paramExtension.getMessageDefaultInstance();
        return paramExtension.fromReflectionType(localFieldDescriptor.getDefaultValue());
      }
      return paramExtension.fromReflectionType(localObject);
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

    public Object getField(Descriptors.FieldDescriptor paramFieldDescriptor)
    {
      if (paramFieldDescriptor.isExtension())
      {
        verifyContainingType(paramFieldDescriptor);
        Object localObject = this.extensions.getField(paramFieldDescriptor);
        if (localObject == null)
        {
          if (paramFieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE)
            localObject = DynamicMessage.getDefaultInstance(paramFieldDescriptor.getMessageType());
        }
        else
          return localObject;
        return paramFieldDescriptor.getDefaultValue();
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

    void internalSetExtensionSet(FieldSet<Descriptors.FieldDescriptor> paramFieldSet)
    {
      this.extensions = paramFieldSet;
    }

    public boolean isInitialized()
    {
      return (super.isInitialized()) && (extensionsAreInitialized());
    }

    protected final void mergeExtensionFields(GeneratedMessage.ExtendableMessage paramExtendableMessage)
    {
      ensureExtensionsIsMutable();
      this.extensions.mergeFrom(GeneratedMessage.ExtendableMessage.access$400(paramExtendableMessage));
      onChanged();
    }

    protected boolean parseUnknownField(CodedInputStream paramCodedInputStream, UnknownFieldSet.Builder paramBuilder, ExtensionRegistryLite paramExtensionRegistryLite, int paramInt)
      throws IOException
    {
      return MessageReflection.mergeFieldFrom(paramCodedInputStream, paramBuilder, paramExtensionRegistryLite, getDescriptorForType(), new MessageReflection.BuilderAdapter(this), paramInt);
    }

    public final <Type> BuilderType setExtension(Extension<MessageType, List<Type>> paramExtension, int paramInt, Type paramType)
    {
      verifyExtensionContainingType(paramExtension);
      ensureExtensionsIsMutable();
      Descriptors.FieldDescriptor localFieldDescriptor = paramExtension.getDescriptor();
      this.extensions.setRepeatedField(localFieldDescriptor, paramInt, paramExtension.singularToReflectionType(paramType));
      onChanged();
      return this;
    }

    public final <Type> BuilderType setExtension(Extension<MessageType, Type> paramExtension, Type paramType)
    {
      verifyExtensionContainingType(paramExtension);
      ensureExtensionsIsMutable();
      Descriptors.FieldDescriptor localFieldDescriptor = paramExtension.getDescriptor();
      this.extensions.setField(localFieldDescriptor, paramExtension.toReflectionType(paramType));
      onChanged();
      return this;
    }

    public BuilderType setField(Descriptors.FieldDescriptor paramFieldDescriptor, Object paramObject)
    {
      if (paramFieldDescriptor.isExtension())
      {
        verifyContainingType(paramFieldDescriptor);
        ensureExtensionsIsMutable();
        this.extensions.setField(paramFieldDescriptor, paramObject);
        onChanged();
        return this;
      }
      return (ExtendableBuilder)super.setField(paramFieldDescriptor, paramObject);
    }

    public BuilderType setRepeatedField(Descriptors.FieldDescriptor paramFieldDescriptor, int paramInt, Object paramObject)
    {
      if (paramFieldDescriptor.isExtension())
      {
        verifyContainingType(paramFieldDescriptor);
        ensureExtensionsIsMutable();
        this.extensions.setRepeatedField(paramFieldDescriptor, paramInt, paramObject);
        onChanged();
        return this;
      }
      return (ExtendableBuilder)super.setRepeatedField(paramFieldDescriptor, paramInt, paramObject);
    }
  }

  public static abstract class ExtendableMessage<MessageType extends ExtendableMessage> extends GeneratedMessage
    implements GeneratedMessage.ExtendableMessageOrBuilder<MessageType>
  {
    private final FieldSet<Descriptors.FieldDescriptor> extensions;

    protected ExtendableMessage()
    {
      this.extensions = FieldSet.newFieldSet();
    }

    protected ExtendableMessage(GeneratedMessage.ExtendableBuilder<MessageType, ?> paramExtendableBuilder)
    {
      super();
      this.extensions = paramExtendableBuilder.buildExtensions();
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
      Object localObject = this.extensions.getField(localFieldDescriptor);
      if (localObject == null)
      {
        if (localFieldDescriptor.isRepeated())
          return Collections.emptyList();
        if (localFieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE)
          return paramExtension.getMessageDefaultInstance();
        return paramExtension.fromReflectionType(localFieldDescriptor.getDefaultValue());
      }
      return paramExtension.fromReflectionType(localObject);
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
        {
          if (paramFieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE)
            localObject = DynamicMessage.getDefaultInstance(paramFieldDescriptor.getMessageType());
        }
        else
          return localObject;
        return paramFieldDescriptor.getDefaultValue();
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

    public boolean isInitialized()
    {
      return (super.isInitialized()) && (extensionsAreInitialized());
    }

    protected void makeExtensionsImmutable()
    {
      this.extensions.makeImmutable();
    }

    public MutableMessage mutableCopy()
    {
      if (getDescriptorForType().getFields().isEmpty());
      for (GeneratedMutableMessage.ExtendableMutableMessage localExtendableMutableMessage = (GeneratedMutableMessage.ExtendableMutableMessage)internalMutableDefault().newMessageForType(); ; localExtendableMutableMessage = (GeneratedMutableMessage.ExtendableMutableMessage)super.mutableCopy())
      {
        localExtendableMutableMessage.internalSetExtensionSet(this.extensions.cloneWithAllFieldsToMutable());
        localExtendableMutableMessage.setUnknownFields(getUnknownFields());
        return localExtendableMutableMessage;
      }
    }

    protected ExtendableMessage<MessageType>.ExtensionWriter newExtensionWriter()
    {
      return new ExtensionWriter(false, null);
    }

    protected ExtendableMessage<MessageType>.ExtensionWriter newMessageSetExtensionWriter()
    {
      return new ExtensionWriter(true, null);
    }

    protected boolean parseUnknownField(CodedInputStream paramCodedInputStream, UnknownFieldSet.Builder paramBuilder, ExtensionRegistryLite paramExtensionRegistryLite, int paramInt)
      throws IOException
    {
      return MessageReflection.mergeFieldFrom(paramCodedInputStream, paramBuilder, paramExtensionRegistryLite, getDescriptorForType(), new MessageReflection.ExtensionAdapter(this.extensions), paramInt);
    }

    protected class ExtensionWriter
    {
      private final Iterator<Map.Entry<Descriptors.FieldDescriptor, Object>> iter = GeneratedMessage.ExtendableMessage.this.extensions.iterator();
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
            if ((this.next instanceof LazyField.LazyEntry))
              paramCodedOutputStream.writeRawMessageSetExtension(localFieldDescriptor.getNumber(), ((LazyField.LazyEntry)this.next).getField().toByteString());
          while (true)
          {
            if (!this.iter.hasNext())
              break label165;
            this.next = ((Map.Entry)this.iter.next());
            break;
            paramCodedOutputStream.writeMessageSetExtension(localFieldDescriptor.getNumber(), (Message)this.next.getValue());
            continue;
            FieldSet.writeField(localFieldDescriptor, this.next.getValue(), paramCodedOutputStream);
          }
          label165: this.next = null;
        }
      }
    }
  }

  public static abstract interface ExtendableMessageOrBuilder<MessageType extends GeneratedMessage.ExtendableMessage> extends MessageOrBuilder
  {
    public abstract Message getDefaultInstanceForType();

    public abstract <Type> Type getExtension(Extension<MessageType, Type> paramExtension);

    public abstract <Type> Type getExtension(Extension<MessageType, List<Type>> paramExtension, int paramInt);

    public abstract <Type> int getExtensionCount(Extension<MessageType, List<Type>> paramExtension);

    public abstract <Type> boolean hasExtension(Extension<MessageType, Type> paramExtension);
  }

  static abstract interface ExtensionDescriptorRetriever
  {
    public abstract Descriptors.FieldDescriptor getDescriptor();
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

    public FieldAccessorTable(Descriptors.Descriptor paramDescriptor, String[] paramArrayOfString, Class<? extends GeneratedMessage> paramClass, Class<? extends GeneratedMessage.Builder> paramClass1)
    {
      this(paramDescriptor, paramArrayOfString);
      ensureFieldAccessorsInitialized(paramClass, paramClass1);
    }

    private FieldAccessor getField(Descriptors.FieldDescriptor paramFieldDescriptor)
    {
      if (paramFieldDescriptor.getContainingType() != this.descriptor)
        throw new IllegalArgumentException("FieldDescriptor does not match message type.");
      if (paramFieldDescriptor.isExtension())
        throw new IllegalArgumentException("This type does not have extensions.");
      return this.fields[paramFieldDescriptor.getIndex()];
    }

    public FieldAccessorTable ensureFieldAccessorsInitialized(Class<? extends GeneratedMessage> paramClass, Class<? extends GeneratedMessage.Builder> paramClass1)
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
              this.fields[i] = new RepeatedMessageFieldAccessor(localFieldDescriptor, this.camelCaseNames[i], paramClass, paramClass1);
            else if (localFieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.ENUM)
              this.fields[i] = new RepeatedEnumFieldAccessor(localFieldDescriptor, this.camelCaseNames[i], paramClass, paramClass1);
            else
              this.fields[i] = new RepeatedFieldAccessor(localFieldDescriptor, this.camelCaseNames[i], paramClass, paramClass1);
          }
          else if (localFieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE)
            this.fields[i] = new SingularMessageFieldAccessor(localFieldDescriptor, this.camelCaseNames[i], paramClass, paramClass1);
          else if (localFieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.ENUM)
            this.fields[i] = new SingularEnumFieldAccessor(localFieldDescriptor, this.camelCaseNames[i], paramClass, paramClass1);
          else
            this.fields[i] = new SingularFieldAccessor(localFieldDescriptor, this.camelCaseNames[i], paramClass, paramClass1);
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
      public abstract void addRepeated(GeneratedMessage.Builder paramBuilder, Object paramObject);

      public abstract void clear(GeneratedMessage.Builder paramBuilder);

      public abstract Object get(GeneratedMessage.Builder paramBuilder);

      public abstract Object get(GeneratedMessage paramGeneratedMessage);

      public abstract Message.Builder getBuilder(GeneratedMessage.Builder paramBuilder);

      public abstract Object getRepeated(GeneratedMessage.Builder paramBuilder, int paramInt);

      public abstract Object getRepeated(GeneratedMessage paramGeneratedMessage, int paramInt);

      public abstract int getRepeatedCount(GeneratedMessage.Builder paramBuilder);

      public abstract int getRepeatedCount(GeneratedMessage paramGeneratedMessage);

      public abstract boolean has(GeneratedMessage.Builder paramBuilder);

      public abstract boolean has(GeneratedMessage paramGeneratedMessage);

      public abstract Message.Builder newBuilder();

      public abstract void set(GeneratedMessage.Builder paramBuilder, Object paramObject);

      public abstract void setRepeated(GeneratedMessage.Builder paramBuilder, int paramInt, Object paramObject);
    }

    private static final class RepeatedEnumFieldAccessor extends GeneratedMessage.FieldAccessorTable.RepeatedFieldAccessor
    {
      private final Method getValueDescriptorMethod = GeneratedMessage.getMethodOrDie(this.type, "getValueDescriptor", new Class[0]);
      private final Method valueOfMethod = GeneratedMessage.getMethodOrDie(this.type, "valueOf", new Class[] { Descriptors.EnumValueDescriptor.class });

      RepeatedEnumFieldAccessor(Descriptors.FieldDescriptor paramFieldDescriptor, String paramString, Class<? extends GeneratedMessage> paramClass, Class<? extends GeneratedMessage.Builder> paramClass1)
      {
        super(paramString, paramClass, paramClass1);
      }

      public void addRepeated(GeneratedMessage.Builder paramBuilder, Object paramObject)
      {
        super.addRepeated(paramBuilder, GeneratedMessage.invokeOrDie(this.valueOfMethod, null, new Object[] { paramObject }));
      }

      public Object get(GeneratedMessage.Builder paramBuilder)
      {
        ArrayList localArrayList = new ArrayList();
        Iterator localIterator = ((List)super.get(paramBuilder)).iterator();
        while (localIterator.hasNext())
        {
          Object localObject = localIterator.next();
          localArrayList.add(GeneratedMessage.invokeOrDie(this.getValueDescriptorMethod, localObject, new Object[0]));
        }
        return Collections.unmodifiableList(localArrayList);
      }

      public Object get(GeneratedMessage paramGeneratedMessage)
      {
        ArrayList localArrayList = new ArrayList();
        Iterator localIterator = ((List)super.get(paramGeneratedMessage)).iterator();
        while (localIterator.hasNext())
        {
          Object localObject = localIterator.next();
          localArrayList.add(GeneratedMessage.invokeOrDie(this.getValueDescriptorMethod, localObject, new Object[0]));
        }
        return Collections.unmodifiableList(localArrayList);
      }

      public Object getRepeated(GeneratedMessage.Builder paramBuilder, int paramInt)
      {
        return GeneratedMessage.invokeOrDie(this.getValueDescriptorMethod, super.getRepeated(paramBuilder, paramInt), new Object[0]);
      }

      public Object getRepeated(GeneratedMessage paramGeneratedMessage, int paramInt)
      {
        return GeneratedMessage.invokeOrDie(this.getValueDescriptorMethod, super.getRepeated(paramGeneratedMessage, paramInt), new Object[0]);
      }

      public void setRepeated(GeneratedMessage.Builder paramBuilder, int paramInt, Object paramObject)
      {
        super.setRepeated(paramBuilder, paramInt, GeneratedMessage.invokeOrDie(this.valueOfMethod, null, new Object[] { paramObject }));
      }
    }

    private static class RepeatedFieldAccessor
      implements GeneratedMessage.FieldAccessorTable.FieldAccessor
    {
      protected final Method addRepeatedMethod;
      protected final Method clearMethod;
      protected final Method getCountMethod;
      protected final Method getCountMethodBuilder;
      protected final Method getMethod;
      protected final Method getMethodBuilder;
      protected final Method getRepeatedMethod;
      protected final Method getRepeatedMethodBuilder;
      protected final Method setRepeatedMethod;
      protected final Class type;

      RepeatedFieldAccessor(Descriptors.FieldDescriptor paramFieldDescriptor, String paramString, Class<? extends GeneratedMessage> paramClass, Class<? extends GeneratedMessage.Builder> paramClass1)
      {
        this.getMethod = GeneratedMessage.getMethodOrDie(paramClass, "get" + paramString + "List", new Class[0]);
        this.getMethodBuilder = GeneratedMessage.getMethodOrDie(paramClass1, "get" + paramString + "List", new Class[0]);
        String str1 = "get" + paramString;
        Class[] arrayOfClass1 = new Class[1];
        arrayOfClass1[0] = Integer.TYPE;
        this.getRepeatedMethod = GeneratedMessage.getMethodOrDie(paramClass, str1, arrayOfClass1);
        String str2 = "get" + paramString;
        Class[] arrayOfClass2 = new Class[1];
        arrayOfClass2[0] = Integer.TYPE;
        this.getRepeatedMethodBuilder = GeneratedMessage.getMethodOrDie(paramClass1, str2, arrayOfClass2);
        this.type = this.getRepeatedMethod.getReturnType();
        String str3 = "set" + paramString;
        Class[] arrayOfClass3 = new Class[2];
        arrayOfClass3[0] = Integer.TYPE;
        arrayOfClass3[1] = this.type;
        this.setRepeatedMethod = GeneratedMessage.getMethodOrDie(paramClass1, str3, arrayOfClass3);
        String str4 = "add" + paramString;
        Class[] arrayOfClass4 = new Class[1];
        arrayOfClass4[0] = this.type;
        this.addRepeatedMethod = GeneratedMessage.getMethodOrDie(paramClass1, str4, arrayOfClass4);
        this.getCountMethod = GeneratedMessage.getMethodOrDie(paramClass, "get" + paramString + "Count", new Class[0]);
        this.getCountMethodBuilder = GeneratedMessage.getMethodOrDie(paramClass1, "get" + paramString + "Count", new Class[0]);
        this.clearMethod = GeneratedMessage.getMethodOrDie(paramClass1, "clear" + paramString, new Class[0]);
      }

      public void addRepeated(GeneratedMessage.Builder paramBuilder, Object paramObject)
      {
        GeneratedMessage.invokeOrDie(this.addRepeatedMethod, paramBuilder, new Object[] { paramObject });
      }

      public void clear(GeneratedMessage.Builder paramBuilder)
      {
        GeneratedMessage.invokeOrDie(this.clearMethod, paramBuilder, new Object[0]);
      }

      public Object get(GeneratedMessage.Builder paramBuilder)
      {
        return GeneratedMessage.invokeOrDie(this.getMethodBuilder, paramBuilder, new Object[0]);
      }

      public Object get(GeneratedMessage paramGeneratedMessage)
      {
        return GeneratedMessage.invokeOrDie(this.getMethod, paramGeneratedMessage, new Object[0]);
      }

      public Message.Builder getBuilder(GeneratedMessage.Builder paramBuilder)
      {
        throw new UnsupportedOperationException("getFieldBuilder() called on a non-Message type.");
      }

      public Object getRepeated(GeneratedMessage.Builder paramBuilder, int paramInt)
      {
        Method localMethod = this.getRepeatedMethodBuilder;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(paramInt);
        return GeneratedMessage.invokeOrDie(localMethod, paramBuilder, arrayOfObject);
      }

      public Object getRepeated(GeneratedMessage paramGeneratedMessage, int paramInt)
      {
        Method localMethod = this.getRepeatedMethod;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(paramInt);
        return GeneratedMessage.invokeOrDie(localMethod, paramGeneratedMessage, arrayOfObject);
      }

      public int getRepeatedCount(GeneratedMessage.Builder paramBuilder)
      {
        return ((Integer)GeneratedMessage.invokeOrDie(this.getCountMethodBuilder, paramBuilder, new Object[0])).intValue();
      }

      public int getRepeatedCount(GeneratedMessage paramGeneratedMessage)
      {
        return ((Integer)GeneratedMessage.invokeOrDie(this.getCountMethod, paramGeneratedMessage, new Object[0])).intValue();
      }

      public boolean has(GeneratedMessage.Builder paramBuilder)
      {
        throw new UnsupportedOperationException("hasField() called on a repeated field.");
      }

      public boolean has(GeneratedMessage paramGeneratedMessage)
      {
        throw new UnsupportedOperationException("hasField() called on a repeated field.");
      }

      public Message.Builder newBuilder()
      {
        throw new UnsupportedOperationException("newBuilderForField() called on a non-Message type.");
      }

      public void set(GeneratedMessage.Builder paramBuilder, Object paramObject)
      {
        clear(paramBuilder);
        Iterator localIterator = ((List)paramObject).iterator();
        while (localIterator.hasNext())
          addRepeated(paramBuilder, localIterator.next());
      }

      public void setRepeated(GeneratedMessage.Builder paramBuilder, int paramInt, Object paramObject)
      {
        Method localMethod = this.setRepeatedMethod;
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = Integer.valueOf(paramInt);
        arrayOfObject[1] = paramObject;
        GeneratedMessage.invokeOrDie(localMethod, paramBuilder, arrayOfObject);
      }
    }

    private static final class RepeatedMessageFieldAccessor extends GeneratedMessage.FieldAccessorTable.RepeatedFieldAccessor
    {
      private final Method newBuilderMethod = GeneratedMessage.getMethodOrDie(this.type, "newBuilder", new Class[0]);

      RepeatedMessageFieldAccessor(Descriptors.FieldDescriptor paramFieldDescriptor, String paramString, Class<? extends GeneratedMessage> paramClass, Class<? extends GeneratedMessage.Builder> paramClass1)
      {
        super(paramString, paramClass, paramClass1);
      }

      private Object coerceType(Object paramObject)
      {
        if (this.type.isInstance(paramObject))
          return paramObject;
        return ((Message.Builder)GeneratedMessage.invokeOrDie(this.newBuilderMethod, null, new Object[0])).mergeFrom((Message)paramObject).build();
      }

      public void addRepeated(GeneratedMessage.Builder paramBuilder, Object paramObject)
      {
        super.addRepeated(paramBuilder, coerceType(paramObject));
      }

      public Message.Builder newBuilder()
      {
        return (Message.Builder)GeneratedMessage.invokeOrDie(this.newBuilderMethod, null, new Object[0]);
      }

      public void setRepeated(GeneratedMessage.Builder paramBuilder, int paramInt, Object paramObject)
      {
        super.setRepeated(paramBuilder, paramInt, coerceType(paramObject));
      }
    }

    private static final class SingularEnumFieldAccessor extends GeneratedMessage.FieldAccessorTable.SingularFieldAccessor
    {
      private Method getValueDescriptorMethod = GeneratedMessage.getMethodOrDie(this.type, "getValueDescriptor", new Class[0]);
      private Method valueOfMethod = GeneratedMessage.getMethodOrDie(this.type, "valueOf", new Class[] { Descriptors.EnumValueDescriptor.class });

      SingularEnumFieldAccessor(Descriptors.FieldDescriptor paramFieldDescriptor, String paramString, Class<? extends GeneratedMessage> paramClass, Class<? extends GeneratedMessage.Builder> paramClass1)
      {
        super(paramString, paramClass, paramClass1);
      }

      public Object get(GeneratedMessage.Builder paramBuilder)
      {
        return GeneratedMessage.invokeOrDie(this.getValueDescriptorMethod, super.get(paramBuilder), new Object[0]);
      }

      public Object get(GeneratedMessage paramGeneratedMessage)
      {
        return GeneratedMessage.invokeOrDie(this.getValueDescriptorMethod, super.get(paramGeneratedMessage), new Object[0]);
      }

      public void set(GeneratedMessage.Builder paramBuilder, Object paramObject)
      {
        super.set(paramBuilder, GeneratedMessage.invokeOrDie(this.valueOfMethod, null, new Object[] { paramObject }));
      }
    }

    private static class SingularFieldAccessor
      implements GeneratedMessage.FieldAccessorTable.FieldAccessor
    {
      protected final Method clearMethod;
      protected final Method getMethod;
      protected final Method getMethodBuilder;
      protected final Method hasMethod;
      protected final Method hasMethodBuilder;
      protected final Method setMethod;
      protected final Class<?> type;

      SingularFieldAccessor(Descriptors.FieldDescriptor paramFieldDescriptor, String paramString, Class<? extends GeneratedMessage> paramClass, Class<? extends GeneratedMessage.Builder> paramClass1)
      {
        this.getMethod = GeneratedMessage.getMethodOrDie(paramClass, "get" + paramString, new Class[0]);
        this.getMethodBuilder = GeneratedMessage.getMethodOrDie(paramClass1, "get" + paramString, new Class[0]);
        this.type = this.getMethod.getReturnType();
        String str = "set" + paramString;
        Class[] arrayOfClass = new Class[1];
        arrayOfClass[0] = this.type;
        this.setMethod = GeneratedMessage.getMethodOrDie(paramClass1, str, arrayOfClass);
        this.hasMethod = GeneratedMessage.getMethodOrDie(paramClass, "has" + paramString, new Class[0]);
        this.hasMethodBuilder = GeneratedMessage.getMethodOrDie(paramClass1, "has" + paramString, new Class[0]);
        this.clearMethod = GeneratedMessage.getMethodOrDie(paramClass1, "clear" + paramString, new Class[0]);
      }

      public void addRepeated(GeneratedMessage.Builder paramBuilder, Object paramObject)
      {
        throw new UnsupportedOperationException("addRepeatedField() called on a singular field.");
      }

      public void clear(GeneratedMessage.Builder paramBuilder)
      {
        GeneratedMessage.invokeOrDie(this.clearMethod, paramBuilder, new Object[0]);
      }

      public Object get(GeneratedMessage.Builder paramBuilder)
      {
        return GeneratedMessage.invokeOrDie(this.getMethodBuilder, paramBuilder, new Object[0]);
      }

      public Object get(GeneratedMessage paramGeneratedMessage)
      {
        return GeneratedMessage.invokeOrDie(this.getMethod, paramGeneratedMessage, new Object[0]);
      }

      public Message.Builder getBuilder(GeneratedMessage.Builder paramBuilder)
      {
        throw new UnsupportedOperationException("getFieldBuilder() called on a non-Message type.");
      }

      public Object getRepeated(GeneratedMessage.Builder paramBuilder, int paramInt)
      {
        throw new UnsupportedOperationException("getRepeatedField() called on a singular field.");
      }

      public Object getRepeated(GeneratedMessage paramGeneratedMessage, int paramInt)
      {
        throw new UnsupportedOperationException("getRepeatedField() called on a singular field.");
      }

      public int getRepeatedCount(GeneratedMessage.Builder paramBuilder)
      {
        throw new UnsupportedOperationException("getRepeatedFieldSize() called on a singular field.");
      }

      public int getRepeatedCount(GeneratedMessage paramGeneratedMessage)
      {
        throw new UnsupportedOperationException("getRepeatedFieldSize() called on a singular field.");
      }

      public boolean has(GeneratedMessage.Builder paramBuilder)
      {
        return ((Boolean)GeneratedMessage.invokeOrDie(this.hasMethodBuilder, paramBuilder, new Object[0])).booleanValue();
      }

      public boolean has(GeneratedMessage paramGeneratedMessage)
      {
        return ((Boolean)GeneratedMessage.invokeOrDie(this.hasMethod, paramGeneratedMessage, new Object[0])).booleanValue();
      }

      public Message.Builder newBuilder()
      {
        throw new UnsupportedOperationException("newBuilderForField() called on a non-Message type.");
      }

      public void set(GeneratedMessage.Builder paramBuilder, Object paramObject)
      {
        GeneratedMessage.invokeOrDie(this.setMethod, paramBuilder, new Object[] { paramObject });
      }

      public void setRepeated(GeneratedMessage.Builder paramBuilder, int paramInt, Object paramObject)
      {
        throw new UnsupportedOperationException("setRepeatedField() called on a singular field.");
      }
    }

    private static final class SingularMessageFieldAccessor extends GeneratedMessage.FieldAccessorTable.SingularFieldAccessor
    {
      private final Method getBuilderMethodBuilder;
      private final Method newBuilderMethod = GeneratedMessage.getMethodOrDie(this.type, "newBuilder", new Class[0]);

      SingularMessageFieldAccessor(Descriptors.FieldDescriptor paramFieldDescriptor, String paramString, Class<? extends GeneratedMessage> paramClass, Class<? extends GeneratedMessage.Builder> paramClass1)
      {
        super(paramString, paramClass, paramClass1);
        this.getBuilderMethodBuilder = GeneratedMessage.getMethodOrDie(paramClass1, "get" + paramString + "Builder", new Class[0]);
      }

      private Object coerceType(Object paramObject)
      {
        if (this.type.isInstance(paramObject))
          return paramObject;
        return ((Message.Builder)GeneratedMessage.invokeOrDie(this.newBuilderMethod, null, new Object[0])).mergeFrom((Message)paramObject).buildPartial();
      }

      public Message.Builder getBuilder(GeneratedMessage.Builder paramBuilder)
      {
        return (Message.Builder)GeneratedMessage.invokeOrDie(this.getBuilderMethodBuilder, paramBuilder, new Object[0]);
      }

      public Message.Builder newBuilder()
      {
        return (Message.Builder)GeneratedMessage.invokeOrDie(this.newBuilderMethod, null, new Object[0]);
      }

      public void set(GeneratedMessage.Builder paramBuilder, Object paramObject)
      {
        super.set(paramBuilder, coerceType(paramObject));
      }
    }
  }

  public static class GeneratedExtension<ContainingType extends Message, Type> extends Extension<ContainingType, Type>
  {
    private GeneratedMessage.ExtensionDescriptorRetriever descriptorRetriever;
    private final Method enumGetValueDescriptor;
    private final Method enumValueOf;
    private final Extension.ExtensionType extensionType;
    private final Message messageDefaultInstance;
    private final Class singularType;

    GeneratedExtension(GeneratedMessage.ExtensionDescriptorRetriever paramExtensionDescriptorRetriever, Class paramClass, Message paramMessage, Extension.ExtensionType paramExtensionType)
    {
      if ((Message.class.isAssignableFrom(paramClass)) && (!paramClass.isInstance(paramMessage)))
        throw new IllegalArgumentException("Bad messageDefaultInstance for " + paramClass.getName());
      this.descriptorRetriever = paramExtensionDescriptorRetriever;
      this.singularType = paramClass;
      this.messageDefaultInstance = paramMessage;
      if (ProtocolMessageEnum.class.isAssignableFrom(paramClass))
        this.enumValueOf = GeneratedMessage.getMethodOrDie(paramClass, "valueOf", new Class[] { Descriptors.EnumValueDescriptor.class });
      for (this.enumGetValueDescriptor = GeneratedMessage.getMethodOrDie(paramClass, "getValueDescriptor", new Class[0]); ; this.enumGetValueDescriptor = null)
      {
        this.extensionType = paramExtensionType;
        return;
        this.enumValueOf = null;
      }
    }

    protected Object fromReflectionType(Object paramObject)
    {
      Descriptors.FieldDescriptor localFieldDescriptor = getDescriptor();
      if (localFieldDescriptor.isRepeated())
      {
        if ((localFieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) || (localFieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.ENUM))
        {
          ArrayList localArrayList = new ArrayList();
          Iterator localIterator = ((List)paramObject).iterator();
          while (localIterator.hasNext())
            localArrayList.add(singularFromReflectionType(localIterator.next()));
          paramObject = localArrayList;
        }
        return paramObject;
      }
      return singularFromReflectionType(paramObject);
    }

    public Type getDefaultValue()
    {
      if (isRepeated())
        return Collections.emptyList();
      if (getDescriptor().getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE)
        return this.messageDefaultInstance;
      return singularFromReflectionType(getDescriptor().getDefaultValue());
    }

    public Descriptors.FieldDescriptor getDescriptor()
    {
      if (this.descriptorRetriever == null)
        throw new IllegalStateException("getDescriptor() called before internalInit()");
      return this.descriptorRetriever.getDescriptor();
    }

    protected Extension.ExtensionType getExtensionType()
    {
      return this.extensionType;
    }

    public WireFormat.FieldType getLiteType()
    {
      return getDescriptor().getLiteType();
    }

    public Message getMessageDefaultInstance()
    {
      return this.messageDefaultInstance;
    }

    public int getNumber()
    {
      return getDescriptor().getNumber();
    }

    public void internalInit(final Descriptors.FieldDescriptor paramFieldDescriptor)
    {
      if (this.descriptorRetriever != null)
        throw new IllegalStateException("Already initialized.");
      this.descriptorRetriever = new GeneratedMessage.ExtensionDescriptorRetriever()
      {
        public Descriptors.FieldDescriptor getDescriptor()
        {
          return paramFieldDescriptor;
        }
      };
    }

    public boolean isRepeated()
    {
      return getDescriptor().isRepeated();
    }

    protected Object singularFromReflectionType(Object paramObject)
    {
      Descriptors.FieldDescriptor localFieldDescriptor = getDescriptor();
      switch (GeneratedMessage.2.$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$JavaType[localFieldDescriptor.getJavaType().ordinal()])
      {
      default:
      case 1:
        do
          return paramObject;
        while (this.singularType.isInstance(paramObject));
        if ((this.messageDefaultInstance instanceof MutableMessage))
          return ((MutableMessage)this.messageDefaultInstance).newMessageForType().mergeFrom((MutableMessage)paramObject);
        return this.messageDefaultInstance.newBuilderForType().mergeFrom((Message)paramObject).build();
      case 2:
      }
      Method localMethod = this.enumValueOf;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = ((Descriptors.EnumValueDescriptor)paramObject);
      return GeneratedMessage.invokeOrDie(localMethod, null, arrayOfObject);
    }

    protected Object singularToReflectionType(Object paramObject)
    {
      Descriptors.FieldDescriptor localFieldDescriptor = getDescriptor();
      switch (GeneratedMessage.2.$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$JavaType[localFieldDescriptor.getJavaType().ordinal()])
      {
      default:
        return paramObject;
      case 2:
      }
      return GeneratedMessage.invokeOrDie(this.enumGetValueDescriptor, paramObject, new Object[0]);
    }

    protected Object toReflectionType(Object paramObject)
    {
      Descriptors.FieldDescriptor localFieldDescriptor = getDescriptor();
      if (localFieldDescriptor.isRepeated())
      {
        if (localFieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.ENUM)
        {
          localObject = new ArrayList();
          Iterator localIterator = ((List)paramObject).iterator();
          while (localIterator.hasNext())
            ((List)localObject).add(singularToReflectionType(localIterator.next()));
        }
        Object localObject = paramObject;
        return localObject;
      }
      return singularToReflectionType(paramObject);
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.protobuf.GeneratedMessage
 * JD-Core Version:    0.6.2
 */