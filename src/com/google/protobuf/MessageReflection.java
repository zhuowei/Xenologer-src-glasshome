package com.google.protobuf;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class MessageReflection
{
  static String delimitWithCommas(List<String> paramList)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (localStringBuilder.length() > 0)
        localStringBuilder.append(", ");
      localStringBuilder.append(str);
    }
    return localStringBuilder.toString();
  }

  private static void eagerlyMergeMessageSetExtension(CodedInputStream paramCodedInputStream, ExtensionRegistry.ExtensionInfo paramExtensionInfo, ExtensionRegistryLite paramExtensionRegistryLite, MergeTarget paramMergeTarget)
    throws IOException
  {
    Descriptors.FieldDescriptor localFieldDescriptor = paramExtensionInfo.descriptor;
    paramMergeTarget.setField(localFieldDescriptor, paramMergeTarget.parseMessage(paramCodedInputStream, paramExtensionRegistryLite, localFieldDescriptor, paramExtensionInfo.defaultInstance));
  }

  static List<String> findMissingFields(MessageOrBuilder paramMessageOrBuilder)
  {
    ArrayList localArrayList = new ArrayList();
    findMissingFields(paramMessageOrBuilder, "", localArrayList);
    return localArrayList;
  }

  private static void findMissingFields(MessageOrBuilder paramMessageOrBuilder, String paramString, List<String> paramList)
  {
    Iterator localIterator1 = paramMessageOrBuilder.getDescriptorForType().getFields().iterator();
    while (localIterator1.hasNext())
    {
      Descriptors.FieldDescriptor localFieldDescriptor2 = (Descriptors.FieldDescriptor)localIterator1.next();
      if ((localFieldDescriptor2.isRequired()) && (!paramMessageOrBuilder.hasField(localFieldDescriptor2)))
        paramList.add(paramString + localFieldDescriptor2.getName());
    }
    Iterator localIterator2 = paramMessageOrBuilder.getAllFields().entrySet().iterator();
    while (localIterator2.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator2.next();
      Descriptors.FieldDescriptor localFieldDescriptor1 = (Descriptors.FieldDescriptor)localEntry.getKey();
      Object localObject = localEntry.getValue();
      if (localFieldDescriptor1.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE)
        if (localFieldDescriptor1.isRepeated())
        {
          int i = 0;
          Iterator localIterator3 = ((List)localObject).iterator();
          while (localIterator3.hasNext())
          {
            MessageOrBuilder localMessageOrBuilder = (MessageOrBuilder)localIterator3.next();
            int j = i + 1;
            findMissingFields(localMessageOrBuilder, subMessagePrefix(paramString, localFieldDescriptor1, i), paramList);
            i = j;
          }
        }
        else if (paramMessageOrBuilder.hasField(localFieldDescriptor1))
        {
          findMissingFields((MessageOrBuilder)localObject, subMessagePrefix(paramString, localFieldDescriptor1, -1), paramList);
        }
    }
  }

  static int getSerializedSize(Message paramMessage)
  {
    int i = 0;
    boolean bool = paramMessage.getDescriptorForType().getOptions().getMessageSetWireFormat();
    Iterator localIterator = paramMessage.getAllFields().entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      Descriptors.FieldDescriptor localFieldDescriptor = (Descriptors.FieldDescriptor)localEntry.getKey();
      Object localObject = localEntry.getValue();
      if ((bool) && (localFieldDescriptor.isExtension()) && (localFieldDescriptor.getType() == Descriptors.FieldDescriptor.Type.MESSAGE) && (!localFieldDescriptor.isRepeated()))
        i += CodedOutputStream.computeMessageSetExtensionSize(localFieldDescriptor.getNumber(), (Message)localObject);
      else
        i += FieldSet.computeFieldSize(localFieldDescriptor, localObject);
    }
    UnknownFieldSet localUnknownFieldSet = paramMessage.getUnknownFields();
    if (bool)
      return i + localUnknownFieldSet.getSerializedSizeAsMessageSet();
    return i + localUnknownFieldSet.getSerializedSize();
  }

  static boolean isInitialized(MessageOrBuilder paramMessageOrBuilder)
  {
    Iterator localIterator1 = paramMessageOrBuilder.getDescriptorForType().getFields().iterator();
    while (localIterator1.hasNext())
    {
      Descriptors.FieldDescriptor localFieldDescriptor2 = (Descriptors.FieldDescriptor)localIterator1.next();
      if ((localFieldDescriptor2.isRequired()) && (!paramMessageOrBuilder.hasField(localFieldDescriptor2)))
        return false;
    }
    Iterator localIterator2 = paramMessageOrBuilder.getAllFields().entrySet().iterator();
    while (true)
      if (localIterator2.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator2.next();
        Descriptors.FieldDescriptor localFieldDescriptor1 = (Descriptors.FieldDescriptor)localEntry.getKey();
        if (localFieldDescriptor1.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE)
        {
          if (localFieldDescriptor1.isRepeated())
          {
            Iterator localIterator3 = ((List)localEntry.getValue()).iterator();
            if (!localIterator3.hasNext())
              continue;
            if (((Message)localIterator3.next()).isInitialized())
              break;
            return false;
          }
          if (!((Message)localEntry.getValue()).isInitialized())
            return false;
        }
      }
    return true;
  }

  static boolean mergeFieldFrom(CodedInputStream paramCodedInputStream, UnknownFieldSet.Builder paramBuilder, ExtensionRegistryLite paramExtensionRegistryLite, Descriptors.Descriptor paramDescriptor, MergeTarget paramMergeTarget, int paramInt)
    throws IOException
  {
    if ((paramDescriptor.getOptions().getMessageSetWireFormat()) && (paramInt == WireFormat.MESSAGE_SET_ITEM_TAG))
    {
      mergeMessageSetExtensionFromCodedStream(paramCodedInputStream, paramBuilder, paramExtensionRegistryLite, paramDescriptor, paramMergeTarget);
      return true;
    }
    int i = WireFormat.getTagWireType(paramInt);
    int j = WireFormat.getTagFieldNumber(paramInt);
    Message localMessage = null;
    ExtensionRegistry.ExtensionInfo localExtensionInfo;
    Descriptors.FieldDescriptor localFieldDescriptor;
    int k;
    int m;
    if (paramDescriptor.isExtensionNumber(j))
      if ((paramExtensionRegistryLite instanceof ExtensionRegistry))
      {
        localExtensionInfo = paramMergeTarget.findExtensionByNumber((ExtensionRegistry)paramExtensionRegistryLite, paramDescriptor, j);
        if (localExtensionInfo == null)
        {
          localFieldDescriptor = null;
          k = 0;
          if (localFieldDescriptor != null)
            break label216;
          m = 1;
        }
      }
    while (true)
    {
      if (m == 0)
        break label279;
      return paramBuilder.mergeFieldFrom(paramInt, paramCodedInputStream);
      localFieldDescriptor = localExtensionInfo.descriptor;
      localMessage = localExtensionInfo.defaultInstance;
      if ((localMessage != null) || (localFieldDescriptor.getJavaType() != Descriptors.FieldDescriptor.JavaType.MESSAGE))
        break;
      throw new IllegalStateException("Message-typed extension lacked default instance: " + localFieldDescriptor.getFullName());
      localMessage = null;
      localFieldDescriptor = null;
      break;
      if (paramMergeTarget.getContainerType() == MessageReflection.MergeTarget.ContainerType.MESSAGE)
      {
        localFieldDescriptor = paramDescriptor.findFieldByNumber(j);
        localMessage = null;
        break;
      }
      localMessage = null;
      localFieldDescriptor = null;
      break;
      label216: if (i == FieldSet.getWireFormatForFieldType(localFieldDescriptor.getLiteType(), false))
      {
        k = 0;
        m = 0;
      }
      else if ((localFieldDescriptor.isPackable()) && (i == FieldSet.getWireFormatForFieldType(localFieldDescriptor.getLiteType(), true)))
      {
        k = 1;
        m = 0;
      }
      else
      {
        m = 1;
        k = 0;
      }
    }
    label279: if (k != 0)
    {
      int i1 = paramCodedInputStream.pushLimit(paramCodedInputStream.readRawVarint32());
      if (localFieldDescriptor.getLiteType() == WireFormat.FieldType.ENUM)
        while (paramCodedInputStream.getBytesUntilLimit() > 0)
        {
          int i2 = paramCodedInputStream.readEnum();
          Descriptors.EnumValueDescriptor localEnumValueDescriptor = localFieldDescriptor.getEnumType().findValueByNumber(i2);
          if (localEnumValueDescriptor == null)
            return true;
          paramMergeTarget.addRepeatedField(localFieldDescriptor, localEnumValueDescriptor);
        }
      while (paramCodedInputStream.getBytesUntilLimit() > 0)
        paramMergeTarget.addRepeatedField(localFieldDescriptor, paramMergeTarget.readPrimitiveField(paramCodedInputStream, localFieldDescriptor.getLiteType()));
      paramCodedInputStream.popLimit(i1);
    }
    while (true)
    {
      return true;
      Object localObject;
      switch (1.$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[localFieldDescriptor.getType().ordinal()])
      {
      default:
        localObject = paramMergeTarget.readPrimitiveField(paramCodedInputStream, localFieldDescriptor.getLiteType());
      case 1:
      case 2:
      case 3:
      }
      while (true)
        if (localFieldDescriptor.isRepeated())
        {
          paramMergeTarget.addRepeatedField(localFieldDescriptor, localObject);
          break;
          localObject = paramMergeTarget.parseGroup(paramCodedInputStream, paramExtensionRegistryLite, localFieldDescriptor, localMessage);
          continue;
          localObject = paramMergeTarget.parseMessage(paramCodedInputStream, paramExtensionRegistryLite, localFieldDescriptor, localMessage);
          continue;
          int n = paramCodedInputStream.readEnum();
          localObject = localFieldDescriptor.getEnumType().findValueByNumber(n);
          if (localObject == null)
          {
            paramBuilder.mergeVarintField(j, n);
            return true;
          }
        }
      paramMergeTarget.setField(localFieldDescriptor, localObject);
    }
  }

  private static void mergeMessageSetExtensionFromBytes(ByteString paramByteString, ExtensionRegistry.ExtensionInfo paramExtensionInfo, ExtensionRegistryLite paramExtensionRegistryLite, MergeTarget paramMergeTarget)
    throws IOException
  {
    Descriptors.FieldDescriptor localFieldDescriptor = paramExtensionInfo.descriptor;
    if ((paramMergeTarget.hasField(localFieldDescriptor)) || (ExtensionRegistryLite.isEagerlyParseMessageSets()))
    {
      paramMergeTarget.setField(localFieldDescriptor, paramMergeTarget.parseMessageFromBytes(paramByteString, paramExtensionRegistryLite, localFieldDescriptor, paramExtensionInfo.defaultInstance));
      return;
    }
    paramMergeTarget.setField(localFieldDescriptor, new LazyField(paramExtensionInfo.defaultInstance, paramExtensionRegistryLite, paramByteString));
  }

  private static void mergeMessageSetExtensionFromCodedStream(CodedInputStream paramCodedInputStream, UnknownFieldSet.Builder paramBuilder, ExtensionRegistryLite paramExtensionRegistryLite, Descriptors.Descriptor paramDescriptor, MergeTarget paramMergeTarget)
    throws IOException
  {
    int i = 0;
    ByteString localByteString = null;
    ExtensionRegistry.ExtensionInfo localExtensionInfo = null;
    int j = paramCodedInputStream.readTag();
    if (j == 0)
    {
      label20: paramCodedInputStream.checkLastTagWas(WireFormat.MESSAGE_SET_ITEM_END_TAG);
      if ((localByteString != null) && (i != 0))
      {
        if (localExtensionInfo == null)
          break label158;
        mergeMessageSetExtensionFromBytes(localByteString, localExtensionInfo, paramExtensionRegistryLite, paramMergeTarget);
      }
    }
    label158: 
    while (localByteString == null)
    {
      return;
      if (j == WireFormat.MESSAGE_SET_TYPE_ID_TAG)
      {
        i = paramCodedInputStream.readUInt32();
        if ((i == 0) || (!(paramExtensionRegistryLite instanceof ExtensionRegistry)))
          break;
        localExtensionInfo = paramMergeTarget.findExtensionByNumber((ExtensionRegistry)paramExtensionRegistryLite, paramDescriptor, i);
        break;
      }
      if (j == WireFormat.MESSAGE_SET_MESSAGE_TAG)
      {
        if ((i != 0) && (localExtensionInfo != null) && (ExtensionRegistryLite.isEagerlyParseMessageSets()))
        {
          eagerlyMergeMessageSetExtension(paramCodedInputStream, localExtensionInfo, paramExtensionRegistryLite, paramMergeTarget);
          localByteString = null;
          break;
        }
        localByteString = paramCodedInputStream.readBytes();
        break;
      }
      if (paramCodedInputStream.skipField(j))
        break;
      break label20;
    }
    paramBuilder.mergeField(i, UnknownFieldSet.Field.newBuilder().addLengthDelimited(localByteString).build());
  }

  private static String subMessagePrefix(String paramString, Descriptors.FieldDescriptor paramFieldDescriptor, int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramString);
    if (paramFieldDescriptor.isExtension())
      localStringBuilder.append('(').append(paramFieldDescriptor.getFullName()).append(')');
    while (true)
    {
      if (paramInt != -1)
        localStringBuilder.append('[').append(paramInt).append(']');
      localStringBuilder.append('.');
      return localStringBuilder.toString();
      localStringBuilder.append(paramFieldDescriptor.getName());
    }
  }

  static void writeMessageTo(Message paramMessage, CodedOutputStream paramCodedOutputStream)
    throws IOException
  {
    boolean bool = paramMessage.getDescriptorForType().getOptions().getMessageSetWireFormat();
    Iterator localIterator = paramMessage.getAllFields().entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      Descriptors.FieldDescriptor localFieldDescriptor = (Descriptors.FieldDescriptor)localEntry.getKey();
      Object localObject = localEntry.getValue();
      if ((bool) && (localFieldDescriptor.isExtension()) && (localFieldDescriptor.getType() == Descriptors.FieldDescriptor.Type.MESSAGE) && (!localFieldDescriptor.isRepeated()))
        paramCodedOutputStream.writeMessageSetExtension(localFieldDescriptor.getNumber(), (Message)localObject);
      else
        FieldSet.writeField(localFieldDescriptor, localObject, paramCodedOutputStream);
    }
    UnknownFieldSet localUnknownFieldSet = paramMessage.getUnknownFields();
    if (bool)
    {
      localUnknownFieldSet.writeAsMessageSetTo(paramCodedOutputStream);
      return;
    }
    localUnknownFieldSet.writeTo(paramCodedOutputStream);
  }

  static class BuilderAdapter
    implements MessageReflection.MergeTarget
  {
    private final Message.Builder builder;

    public BuilderAdapter(Message.Builder paramBuilder)
    {
      this.builder = paramBuilder;
    }

    public MessageReflection.MergeTarget addRepeatedField(Descriptors.FieldDescriptor paramFieldDescriptor, Object paramObject)
    {
      this.builder.addRepeatedField(paramFieldDescriptor, paramObject);
      return this;
    }

    public MessageReflection.MergeTarget clearField(Descriptors.FieldDescriptor paramFieldDescriptor)
    {
      this.builder.clearField(paramFieldDescriptor);
      return this;
    }

    public ExtensionRegistry.ExtensionInfo findExtensionByName(ExtensionRegistry paramExtensionRegistry, String paramString)
    {
      return paramExtensionRegistry.findImmutableExtensionByName(paramString);
    }

    public ExtensionRegistry.ExtensionInfo findExtensionByNumber(ExtensionRegistry paramExtensionRegistry, Descriptors.Descriptor paramDescriptor, int paramInt)
    {
      return paramExtensionRegistry.findImmutableExtensionByNumber(paramDescriptor, paramInt);
    }

    public Object finish()
    {
      return this.builder.buildPartial();
    }

    public MessageReflection.MergeTarget.ContainerType getContainerType()
    {
      return MessageReflection.MergeTarget.ContainerType.MESSAGE;
    }

    public Descriptors.Descriptor getDescriptorForType()
    {
      return this.builder.getDescriptorForType();
    }

    public Object getField(Descriptors.FieldDescriptor paramFieldDescriptor)
    {
      return this.builder.getField(paramFieldDescriptor);
    }

    public boolean hasField(Descriptors.FieldDescriptor paramFieldDescriptor)
    {
      return this.builder.hasField(paramFieldDescriptor);
    }

    public MessageReflection.MergeTarget newMergeTargetForField(Descriptors.FieldDescriptor paramFieldDescriptor, Message paramMessage)
    {
      if (paramMessage != null)
        return new BuilderAdapter(paramMessage.newBuilderForType());
      return new BuilderAdapter(this.builder.newBuilderForField(paramFieldDescriptor));
    }

    public Object parseGroup(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite, Descriptors.FieldDescriptor paramFieldDescriptor, Message paramMessage)
      throws IOException
    {
      if (paramMessage != null);
      for (Message.Builder localBuilder = paramMessage.newBuilderForType(); ; localBuilder = this.builder.newBuilderForField(paramFieldDescriptor))
      {
        if (!paramFieldDescriptor.isRepeated())
        {
          Message localMessage = (Message)getField(paramFieldDescriptor);
          if (localMessage != null)
            localBuilder.mergeFrom(localMessage);
        }
        paramCodedInputStream.readGroup(paramFieldDescriptor.getNumber(), localBuilder, paramExtensionRegistryLite);
        return localBuilder.buildPartial();
      }
    }

    public Object parseMessage(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite, Descriptors.FieldDescriptor paramFieldDescriptor, Message paramMessage)
      throws IOException
    {
      if (paramMessage != null);
      for (Message.Builder localBuilder = paramMessage.newBuilderForType(); ; localBuilder = this.builder.newBuilderForField(paramFieldDescriptor))
      {
        if (!paramFieldDescriptor.isRepeated())
        {
          Message localMessage = (Message)getField(paramFieldDescriptor);
          if (localMessage != null)
            localBuilder.mergeFrom(localMessage);
        }
        paramCodedInputStream.readMessage(localBuilder, paramExtensionRegistryLite);
        return localBuilder.buildPartial();
      }
    }

    public Object parseMessageFromBytes(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite, Descriptors.FieldDescriptor paramFieldDescriptor, Message paramMessage)
      throws IOException
    {
      if (paramMessage != null);
      for (Message.Builder localBuilder = paramMessage.newBuilderForType(); ; localBuilder = this.builder.newBuilderForField(paramFieldDescriptor))
      {
        if (!paramFieldDescriptor.isRepeated())
        {
          Message localMessage = (Message)getField(paramFieldDescriptor);
          if (localMessage != null)
            localBuilder.mergeFrom(localMessage);
        }
        localBuilder.mergeFrom(paramByteString, paramExtensionRegistryLite);
        return localBuilder.buildPartial();
      }
    }

    public Object readPrimitiveField(CodedInputStream paramCodedInputStream, WireFormat.FieldType paramFieldType)
      throws IOException
    {
      return FieldSet.readPrimitiveField(paramCodedInputStream, paramFieldType);
    }

    public MessageReflection.MergeTarget setField(Descriptors.FieldDescriptor paramFieldDescriptor, Object paramObject)
    {
      this.builder.setField(paramFieldDescriptor, paramObject);
      return this;
    }

    public MessageReflection.MergeTarget setRepeatedField(Descriptors.FieldDescriptor paramFieldDescriptor, int paramInt, Object paramObject)
    {
      this.builder.setRepeatedField(paramFieldDescriptor, paramInt, paramObject);
      return this;
    }
  }

  static class ExtensionAdapter
    implements MessageReflection.MergeTarget
  {
    private final FieldSet<Descriptors.FieldDescriptor> extensions;

    ExtensionAdapter(FieldSet<Descriptors.FieldDescriptor> paramFieldSet)
    {
      this.extensions = paramFieldSet;
    }

    public MessageReflection.MergeTarget addRepeatedField(Descriptors.FieldDescriptor paramFieldDescriptor, Object paramObject)
    {
      this.extensions.addRepeatedField(paramFieldDescriptor, paramObject);
      return this;
    }

    public MessageReflection.MergeTarget clearField(Descriptors.FieldDescriptor paramFieldDescriptor)
    {
      this.extensions.clearField(paramFieldDescriptor);
      return this;
    }

    public ExtensionRegistry.ExtensionInfo findExtensionByName(ExtensionRegistry paramExtensionRegistry, String paramString)
    {
      return paramExtensionRegistry.findImmutableExtensionByName(paramString);
    }

    public ExtensionRegistry.ExtensionInfo findExtensionByNumber(ExtensionRegistry paramExtensionRegistry, Descriptors.Descriptor paramDescriptor, int paramInt)
    {
      return paramExtensionRegistry.findImmutableExtensionByNumber(paramDescriptor, paramInt);
    }

    public Object finish()
    {
      throw new UnsupportedOperationException("finish() called on FieldSet object");
    }

    public MessageReflection.MergeTarget.ContainerType getContainerType()
    {
      return MessageReflection.MergeTarget.ContainerType.EXTENSION_SET;
    }

    public Descriptors.Descriptor getDescriptorForType()
    {
      throw new UnsupportedOperationException("getDescriptorForType() called on FieldSet object");
    }

    public Object getField(Descriptors.FieldDescriptor paramFieldDescriptor)
    {
      return this.extensions.getField(paramFieldDescriptor);
    }

    public boolean hasField(Descriptors.FieldDescriptor paramFieldDescriptor)
    {
      return this.extensions.hasField(paramFieldDescriptor);
    }

    public MessageReflection.MergeTarget newMergeTargetForField(Descriptors.FieldDescriptor paramFieldDescriptor, Message paramMessage)
    {
      throw new UnsupportedOperationException("newMergeTargetForField() called on FieldSet object");
    }

    public Object parseGroup(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite, Descriptors.FieldDescriptor paramFieldDescriptor, Message paramMessage)
      throws IOException
    {
      Message.Builder localBuilder = paramMessage.newBuilderForType();
      if (!paramFieldDescriptor.isRepeated())
      {
        Message localMessage = (Message)getField(paramFieldDescriptor);
        if (localMessage != null)
          localBuilder.mergeFrom(localMessage);
      }
      paramCodedInputStream.readGroup(paramFieldDescriptor.getNumber(), localBuilder, paramExtensionRegistryLite);
      return localBuilder.buildPartial();
    }

    public Object parseMessage(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite, Descriptors.FieldDescriptor paramFieldDescriptor, Message paramMessage)
      throws IOException
    {
      Message.Builder localBuilder = paramMessage.newBuilderForType();
      if (!paramFieldDescriptor.isRepeated())
      {
        Message localMessage = (Message)getField(paramFieldDescriptor);
        if (localMessage != null)
          localBuilder.mergeFrom(localMessage);
      }
      paramCodedInputStream.readMessage(localBuilder, paramExtensionRegistryLite);
      return localBuilder.buildPartial();
    }

    public Object parseMessageFromBytes(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite, Descriptors.FieldDescriptor paramFieldDescriptor, Message paramMessage)
      throws IOException
    {
      Message.Builder localBuilder = paramMessage.newBuilderForType();
      if (!paramFieldDescriptor.isRepeated())
      {
        Message localMessage = (Message)getField(paramFieldDescriptor);
        if (localMessage != null)
          localBuilder.mergeFrom(localMessage);
      }
      localBuilder.mergeFrom(paramByteString, paramExtensionRegistryLite);
      return localBuilder.buildPartial();
    }

    public Object readPrimitiveField(CodedInputStream paramCodedInputStream, WireFormat.FieldType paramFieldType)
      throws IOException
    {
      return FieldSet.readPrimitiveField(paramCodedInputStream, paramFieldType);
    }

    public MessageReflection.MergeTarget setField(Descriptors.FieldDescriptor paramFieldDescriptor, Object paramObject)
    {
      this.extensions.setField(paramFieldDescriptor, paramObject);
      return this;
    }

    public MessageReflection.MergeTarget setRepeatedField(Descriptors.FieldDescriptor paramFieldDescriptor, int paramInt, Object paramObject)
    {
      this.extensions.setRepeatedField(paramFieldDescriptor, paramInt, paramObject);
      return this;
    }
  }

  static abstract interface MergeTarget
  {
    public abstract MergeTarget addRepeatedField(Descriptors.FieldDescriptor paramFieldDescriptor, Object paramObject);

    public abstract MergeTarget clearField(Descriptors.FieldDescriptor paramFieldDescriptor);

    public abstract ExtensionRegistry.ExtensionInfo findExtensionByName(ExtensionRegistry paramExtensionRegistry, String paramString);

    public abstract ExtensionRegistry.ExtensionInfo findExtensionByNumber(ExtensionRegistry paramExtensionRegistry, Descriptors.Descriptor paramDescriptor, int paramInt);

    public abstract Object finish();

    public abstract ContainerType getContainerType();

    public abstract Descriptors.Descriptor getDescriptorForType();

    public abstract Object getField(Descriptors.FieldDescriptor paramFieldDescriptor);

    public abstract boolean hasField(Descriptors.FieldDescriptor paramFieldDescriptor);

    public abstract MergeTarget newMergeTargetForField(Descriptors.FieldDescriptor paramFieldDescriptor, Message paramMessage);

    public abstract Object parseGroup(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite, Descriptors.FieldDescriptor paramFieldDescriptor, Message paramMessage)
      throws IOException;

    public abstract Object parseMessage(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite, Descriptors.FieldDescriptor paramFieldDescriptor, Message paramMessage)
      throws IOException;

    public abstract Object parseMessageFromBytes(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite, Descriptors.FieldDescriptor paramFieldDescriptor, Message paramMessage)
      throws IOException;

    public abstract Object readPrimitiveField(CodedInputStream paramCodedInputStream, WireFormat.FieldType paramFieldType)
      throws IOException;

    public abstract MergeTarget setField(Descriptors.FieldDescriptor paramFieldDescriptor, Object paramObject);

    public abstract MergeTarget setRepeatedField(Descriptors.FieldDescriptor paramFieldDescriptor, int paramInt, Object paramObject);

    public static enum ContainerType
    {
      static
      {
        EXTENSION_SET = new ContainerType("EXTENSION_SET", 1);
        ContainerType[] arrayOfContainerType = new ContainerType[2];
        arrayOfContainerType[0] = MESSAGE;
        arrayOfContainerType[1] = EXTENSION_SET;
      }
    }
  }

  static class MutableMessageAdapter
    implements MessageReflection.MergeTarget
  {
    private final MutableMessage message;

    public MutableMessageAdapter(MutableMessage paramMutableMessage)
    {
      this.message = paramMutableMessage;
    }

    public MessageReflection.MergeTarget addRepeatedField(Descriptors.FieldDescriptor paramFieldDescriptor, Object paramObject)
    {
      this.message.addRepeatedField(paramFieldDescriptor, paramObject);
      return this;
    }

    public MessageReflection.MergeTarget clearField(Descriptors.FieldDescriptor paramFieldDescriptor)
    {
      this.message.clearField(paramFieldDescriptor);
      return this;
    }

    public ExtensionRegistry.ExtensionInfo findExtensionByName(ExtensionRegistry paramExtensionRegistry, String paramString)
    {
      return paramExtensionRegistry.findMutableExtensionByName(paramString);
    }

    public ExtensionRegistry.ExtensionInfo findExtensionByNumber(ExtensionRegistry paramExtensionRegistry, Descriptors.Descriptor paramDescriptor, int paramInt)
    {
      return paramExtensionRegistry.findMutableExtensionByNumber(paramDescriptor, paramInt);
    }

    public Object finish()
    {
      return this.message;
    }

    public MessageReflection.MergeTarget.ContainerType getContainerType()
    {
      return MessageReflection.MergeTarget.ContainerType.MESSAGE;
    }

    public Descriptors.Descriptor getDescriptorForType()
    {
      return this.message.getDescriptorForType();
    }

    public Object getField(Descriptors.FieldDescriptor paramFieldDescriptor)
    {
      return this.message.getField(paramFieldDescriptor);
    }

    public boolean hasField(Descriptors.FieldDescriptor paramFieldDescriptor)
    {
      return this.message.hasField(paramFieldDescriptor);
    }

    public MessageReflection.MergeTarget newMergeTargetForField(Descriptors.FieldDescriptor paramFieldDescriptor, Message paramMessage)
    {
      if (paramMessage != null)
        return new MutableMessageAdapter(((MutableMessage)paramMessage).newMessageForType());
      return new MutableMessageAdapter(this.message.newMessageForField(paramFieldDescriptor));
    }

    public Object parseGroup(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite, Descriptors.FieldDescriptor paramFieldDescriptor, Message paramMessage)
      throws IOException
    {
      if (paramMessage != null);
      for (MutableMessage localMutableMessage = ((MutableMessage)paramMessage).newMessageForType(); ; localMutableMessage = this.message.newMessageForField(paramFieldDescriptor))
      {
        if ((!paramFieldDescriptor.isRepeated()) && (hasField(paramFieldDescriptor)))
          localMutableMessage.mergeFrom((MutableMessage)getField(paramFieldDescriptor));
        paramCodedInputStream.readGroup(paramFieldDescriptor.getNumber(), localMutableMessage, paramExtensionRegistryLite);
        return localMutableMessage;
      }
    }

    public Object parseMessage(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite, Descriptors.FieldDescriptor paramFieldDescriptor, Message paramMessage)
      throws IOException
    {
      if (paramMessage != null);
      for (MutableMessage localMutableMessage = ((MutableMessage)paramMessage).newMessageForType(); ; localMutableMessage = this.message.newMessageForField(paramFieldDescriptor))
      {
        if ((!paramFieldDescriptor.isRepeated()) && (hasField(paramFieldDescriptor)))
          localMutableMessage.mergeFrom((MutableMessage)getField(paramFieldDescriptor));
        paramCodedInputStream.readMessage(localMutableMessage, paramExtensionRegistryLite);
        return localMutableMessage;
      }
    }

    public Object parseMessageFromBytes(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite, Descriptors.FieldDescriptor paramFieldDescriptor, Message paramMessage)
      throws IOException
    {
      if (paramMessage != null);
      for (MutableMessage localMutableMessage = ((MutableMessage)paramMessage).newMessageForType(); ; localMutableMessage = this.message.newMessageForField(paramFieldDescriptor))
      {
        if ((!paramFieldDescriptor.isRepeated()) && (hasField(paramFieldDescriptor)))
          localMutableMessage.mergeFrom((MutableMessage)getField(paramFieldDescriptor));
        localMutableMessage.mergeFrom(paramByteString, paramExtensionRegistryLite);
        return localMutableMessage;
      }
    }

    public Object readPrimitiveField(CodedInputStream paramCodedInputStream, WireFormat.FieldType paramFieldType)
      throws IOException
    {
      return FieldSet.readPrimitiveFieldForMutable(paramCodedInputStream, paramFieldType);
    }

    public MessageReflection.MergeTarget setField(Descriptors.FieldDescriptor paramFieldDescriptor, Object paramObject)
    {
      this.message.setField(paramFieldDescriptor, paramObject);
      return this;
    }

    public MessageReflection.MergeTarget setRepeatedField(Descriptors.FieldDescriptor paramFieldDescriptor, int paramInt, Object paramObject)
    {
      this.message.setRepeatedField(paramFieldDescriptor, paramInt, paramObject);
      return this;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.protobuf.MessageReflection
 * JD-Core Version:    0.6.2
 */