package com.google.googlex.glass.common.proto;

import com.google.protobuf.AbstractMessageLite.Builder;
import com.google.protobuf.AbstractParser;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors.Descriptor;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.GeneratedMessage.Builder;
import com.google.protobuf.GeneratedMessage.BuilderParent;
import com.google.protobuf.GeneratedMessage.FieldAccessorTable;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.google.protobuf.MessageLite;
import com.google.protobuf.MutableMessage;
import com.google.protobuf.Parser;
import com.google.protobuf.RepeatedFieldBuilder;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class EntitySyncResponse extends GeneratedMessage
  implements EntitySyncResponseOrBuilder
{
  public static final int ENTITIES_FIELD_NUMBER = 1;
  public static Parser<EntitySyncResponse> PARSER = new AbstractParser()
  {
    public EntitySyncResponse parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return new EntitySyncResponse(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
    }
  };
  private static final EntitySyncResponse defaultInstance;
  private static volatile MutableMessage mutableDefault = null;
  private static final long serialVersionUID;
  private List<Entity> entities_;
  private byte memoizedIsInitialized = -1;
  private int memoizedSerializedSize = -1;
  private final UnknownFieldSet unknownFields;

  static
  {
    defaultInstance = new EntitySyncResponse(true);
    defaultInstance.initFields();
  }

  // ERROR //
  private EntitySyncResponse(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 51	com/google/protobuf/GeneratedMessage:<init>	()V
    //   4: aload_0
    //   5: iconst_m1
    //   6: putfield 53	com/google/googlex/glass/common/proto/EntitySyncResponse:memoizedIsInitialized	B
    //   9: aload_0
    //   10: iconst_m1
    //   11: putfield 55	com/google/googlex/glass/common/proto/EntitySyncResponse:memoizedSerializedSize	I
    //   14: aload_0
    //   15: invokespecial 45	com/google/googlex/glass/common/proto/EntitySyncResponse:initFields	()V
    //   18: iconst_0
    //   19: istore_3
    //   20: invokestatic 61	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
    //   23: astore 4
    //   25: iconst_0
    //   26: istore 5
    //   28: iload 5
    //   30: ifne +145 -> 175
    //   33: aload_1
    //   34: invokevirtual 67	com/google/protobuf/CodedInputStream:readTag	()I
    //   37: istore 9
    //   39: iload 9
    //   41: lookupswitch	default:+27->68, 0:+185->226, 10:+46->87
    //   69: aload_1
    //   70: aload 4
    //   72: aload_2
    //   73: iload 9
    //   75: invokevirtual 71	com/google/googlex/glass/common/proto/EntitySyncResponse:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    //   78: ifne -50 -> 28
    //   81: iconst_1
    //   82: istore 5
    //   84: goto -56 -> 28
    //   87: iload_3
    //   88: iconst_1
    //   89: iand
    //   90: iconst_1
    //   91: if_icmpeq +18 -> 109
    //   94: aload_0
    //   95: new 73	java/util/ArrayList
    //   98: dup
    //   99: invokespecial 74	java/util/ArrayList:<init>	()V
    //   102: putfield 76	com/google/googlex/glass/common/proto/EntitySyncResponse:entities_	Ljava/util/List;
    //   105: iload_3
    //   106: iconst_1
    //   107: ior
    //   108: istore_3
    //   109: aload_0
    //   110: getfield 76	com/google/googlex/glass/common/proto/EntitySyncResponse:entities_	Ljava/util/List;
    //   113: aload_1
    //   114: getstatic 79	com/google/googlex/glass/common/proto/Entity:PARSER	Lcom/google/protobuf/Parser;
    //   117: aload_2
    //   118: invokevirtual 83	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
    //   121: invokeinterface 89 2 0
    //   126: pop
    //   127: goto -99 -> 28
    //   130: astore 8
    //   132: aload 8
    //   134: aload_0
    //   135: invokevirtual 93	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   138: athrow
    //   139: astore 7
    //   141: iload_3
    //   142: iconst_1
    //   143: iand
    //   144: iconst_1
    //   145: if_icmpne +14 -> 159
    //   148: aload_0
    //   149: aload_0
    //   150: getfield 76	com/google/googlex/glass/common/proto/EntitySyncResponse:entities_	Ljava/util/List;
    //   153: invokestatic 99	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   156: putfield 76	com/google/googlex/glass/common/proto/EntitySyncResponse:entities_	Ljava/util/List;
    //   159: aload_0
    //   160: aload 4
    //   162: invokevirtual 105	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   165: putfield 107	com/google/googlex/glass/common/proto/EntitySyncResponse:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   168: aload_0
    //   169: invokevirtual 110	com/google/googlex/glass/common/proto/EntitySyncResponse:makeExtensionsImmutable	()V
    //   172: aload 7
    //   174: athrow
    //   175: iload_3
    //   176: iconst_1
    //   177: iand
    //   178: iconst_1
    //   179: if_icmpne +14 -> 193
    //   182: aload_0
    //   183: aload_0
    //   184: getfield 76	com/google/googlex/glass/common/proto/EntitySyncResponse:entities_	Ljava/util/List;
    //   187: invokestatic 99	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   190: putfield 76	com/google/googlex/glass/common/proto/EntitySyncResponse:entities_	Ljava/util/List;
    //   193: aload_0
    //   194: aload 4
    //   196: invokevirtual 105	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   199: putfield 107	com/google/googlex/glass/common/proto/EntitySyncResponse:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   202: aload_0
    //   203: invokevirtual 110	com/google/googlex/glass/common/proto/EntitySyncResponse:makeExtensionsImmutable	()V
    //   206: return
    //   207: astore 6
    //   209: new 48	com/google/protobuf/InvalidProtocolBufferException
    //   212: dup
    //   213: aload 6
    //   215: invokevirtual 114	java/io/IOException:getMessage	()Ljava/lang/String;
    //   218: invokespecial 117	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
    //   221: aload_0
    //   222: invokevirtual 93	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   225: athrow
    //   226: iconst_1
    //   227: istore 5
    //   229: goto -201 -> 28
    //
    // Exception table:
    //   from	to	target	type
    //   33	39	130	com/google/protobuf/InvalidProtocolBufferException
    //   68	81	130	com/google/protobuf/InvalidProtocolBufferException
    //   94	105	130	com/google/protobuf/InvalidProtocolBufferException
    //   109	127	130	com/google/protobuf/InvalidProtocolBufferException
    //   33	39	139	finally
    //   68	81	139	finally
    //   94	105	139	finally
    //   109	127	139	finally
    //   132	139	139	finally
    //   209	226	139	finally
    //   33	39	207	java/io/IOException
    //   68	81	207	java/io/IOException
    //   94	105	207	java/io/IOException
    //   109	127	207	java/io/IOException
  }

  private EntitySyncResponse(GeneratedMessage.Builder<?> paramBuilder)
  {
    super(paramBuilder);
    this.unknownFields = paramBuilder.getUnknownFields();
  }

  private EntitySyncResponse(boolean paramBoolean)
  {
    this.unknownFields = UnknownFieldSet.getDefaultInstance();
  }

  public static EntitySyncResponse getDefaultInstance()
  {
    return defaultInstance;
  }

  public static final Descriptors.Descriptor getDescriptor()
  {
    return EntitySync.internal_static_googlex_glass_common_proto_EntitySyncResponse_descriptor;
  }

  private void initFields()
  {
    this.entities_ = Collections.emptyList();
  }

  public static Builder newBuilder()
  {
    return Builder.access$100();
  }

  public static Builder newBuilder(EntitySyncResponse paramEntitySyncResponse)
  {
    return newBuilder().mergeFrom(paramEntitySyncResponse);
  }

  public static EntitySyncResponse parseDelimitedFrom(InputStream paramInputStream)
    throws IOException
  {
    return (EntitySyncResponse)PARSER.parseDelimitedFrom(paramInputStream);
  }

  public static EntitySyncResponse parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (EntitySyncResponse)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static EntitySyncResponse parseFrom(ByteString paramByteString)
    throws InvalidProtocolBufferException
  {
    return (EntitySyncResponse)PARSER.parseFrom(paramByteString);
  }

  public static EntitySyncResponse parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (EntitySyncResponse)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
  }

  public static EntitySyncResponse parseFrom(CodedInputStream paramCodedInputStream)
    throws IOException
  {
    return (EntitySyncResponse)PARSER.parseFrom(paramCodedInputStream);
  }

  public static EntitySyncResponse parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (EntitySyncResponse)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
  }

  public static EntitySyncResponse parseFrom(InputStream paramInputStream)
    throws IOException
  {
    return (EntitySyncResponse)PARSER.parseFrom(paramInputStream);
  }

  public static EntitySyncResponse parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (EntitySyncResponse)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static EntitySyncResponse parseFrom(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    return (EntitySyncResponse)PARSER.parseFrom(paramArrayOfByte);
  }

  public static EntitySyncResponse parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (EntitySyncResponse)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
  }

  public EntitySyncResponse getDefaultInstanceForType()
  {
    return defaultInstance;
  }

  public Entity getEntities(int paramInt)
  {
    return (Entity)this.entities_.get(paramInt);
  }

  public int getEntitiesCount()
  {
    return this.entities_.size();
  }

  public List<Entity> getEntitiesList()
  {
    return this.entities_;
  }

  public EntityOrBuilder getEntitiesOrBuilder(int paramInt)
  {
    return (EntityOrBuilder)this.entities_.get(paramInt);
  }

  public List<? extends EntityOrBuilder> getEntitiesOrBuilderList()
  {
    return this.entities_;
  }

  public Parser<EntitySyncResponse> getParserForType()
  {
    return PARSER;
  }

  public int getSerializedSize()
  {
    int i = this.memoizedSerializedSize;
    if (i != -1)
      return i;
    int j = 0;
    for (int k = 0; k < this.entities_.size(); k++)
      j += CodedOutputStream.computeMessageSize(1, (MessageLite)this.entities_.get(k));
    int m = j + getUnknownFields().getSerializedSize();
    this.memoizedSerializedSize = m;
    return m;
  }

  public final UnknownFieldSet getUnknownFields()
  {
    return this.unknownFields;
  }

  protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
  {
    return EntitySync.internal_static_googlex_glass_common_proto_EntitySyncResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(EntitySyncResponse.class, Builder.class);
  }

  protected MutableMessage internalMutableDefault()
  {
    if (mutableDefault == null)
      mutableDefault = internalMutableDefault("com.google.googlex.glass.common.proto.MutableEntitySync$EntitySyncResponse");
    return mutableDefault;
  }

  public final boolean isInitialized()
  {
    int i = this.memoizedIsInitialized;
    if (i != -1)
      return i == 1;
    this.memoizedIsInitialized = 1;
    return true;
  }

  public Builder newBuilderForType()
  {
    return newBuilder();
  }

  protected Builder newBuilderForType(GeneratedMessage.BuilderParent paramBuilderParent)
  {
    return new Builder(paramBuilderParent, null);
  }

  public Builder toBuilder()
  {
    return newBuilder(this);
  }

  protected Object writeReplace()
    throws ObjectStreamException
  {
    return super.writeReplace();
  }

  public void writeTo(CodedOutputStream paramCodedOutputStream)
    throws IOException
  {
    getSerializedSize();
    for (int i = 0; i < this.entities_.size(); i++)
      paramCodedOutputStream.writeMessage(1, (MessageLite)this.entities_.get(i));
    getUnknownFields().writeTo(paramCodedOutputStream);
  }

  public static final class Builder extends GeneratedMessage.Builder<Builder>
    implements EntitySyncResponseOrBuilder
  {
    private int bitField0_;
    private RepeatedFieldBuilder<Entity, Entity.Builder, EntityOrBuilder> entitiesBuilder_;
    private List<Entity> entities_ = Collections.emptyList();

    private Builder()
    {
      maybeForceBuilderInitialization();
    }

    private Builder(GeneratedMessage.BuilderParent paramBuilderParent)
    {
      super();
      maybeForceBuilderInitialization();
    }

    private static Builder create()
    {
      return new Builder();
    }

    private void ensureEntitiesIsMutable()
    {
      if ((0x1 & this.bitField0_) != 1)
      {
        this.entities_ = new ArrayList(this.entities_);
        this.bitField0_ = (0x1 | this.bitField0_);
      }
    }

    public static final Descriptors.Descriptor getDescriptor()
    {
      return EntitySync.internal_static_googlex_glass_common_proto_EntitySyncResponse_descriptor;
    }

    private RepeatedFieldBuilder<Entity, Entity.Builder, EntityOrBuilder> getEntitiesFieldBuilder()
    {
      int i = 1;
      List localList;
      if (this.entitiesBuilder_ == null)
      {
        localList = this.entities_;
        if ((0x1 & this.bitField0_) != i)
          break label55;
      }
      while (true)
      {
        this.entitiesBuilder_ = new RepeatedFieldBuilder(localList, i, getParentForChildren(), isClean());
        this.entities_ = null;
        return this.entitiesBuilder_;
        label55: int j = 0;
      }
    }

    private void maybeForceBuilderInitialization()
    {
      if (EntitySyncResponse.alwaysUseFieldBuilders)
        getEntitiesFieldBuilder();
    }

    public Builder addAllEntities(Iterable<? extends Entity> paramIterable)
    {
      if (this.entitiesBuilder_ == null)
      {
        ensureEntitiesIsMutable();
        AbstractMessageLite.Builder.addAll(paramIterable, this.entities_);
        onChanged();
        return this;
      }
      this.entitiesBuilder_.addAllMessages(paramIterable);
      return this;
    }

    public Builder addEntities(int paramInt, Entity.Builder paramBuilder)
    {
      if (this.entitiesBuilder_ == null)
      {
        ensureEntitiesIsMutable();
        this.entities_.add(paramInt, paramBuilder.build());
        onChanged();
        return this;
      }
      this.entitiesBuilder_.addMessage(paramInt, paramBuilder.build());
      return this;
    }

    public Builder addEntities(int paramInt, Entity paramEntity)
    {
      if (this.entitiesBuilder_ == null)
      {
        if (paramEntity == null)
          throw new NullPointerException();
        ensureEntitiesIsMutable();
        this.entities_.add(paramInt, paramEntity);
        onChanged();
        return this;
      }
      this.entitiesBuilder_.addMessage(paramInt, paramEntity);
      return this;
    }

    public Builder addEntities(Entity.Builder paramBuilder)
    {
      if (this.entitiesBuilder_ == null)
      {
        ensureEntitiesIsMutable();
        this.entities_.add(paramBuilder.build());
        onChanged();
        return this;
      }
      this.entitiesBuilder_.addMessage(paramBuilder.build());
      return this;
    }

    public Builder addEntities(Entity paramEntity)
    {
      if (this.entitiesBuilder_ == null)
      {
        if (paramEntity == null)
          throw new NullPointerException();
        ensureEntitiesIsMutable();
        this.entities_.add(paramEntity);
        onChanged();
        return this;
      }
      this.entitiesBuilder_.addMessage(paramEntity);
      return this;
    }

    public Entity.Builder addEntitiesBuilder()
    {
      return (Entity.Builder)getEntitiesFieldBuilder().addBuilder(Entity.getDefaultInstance());
    }

    public Entity.Builder addEntitiesBuilder(int paramInt)
    {
      return (Entity.Builder)getEntitiesFieldBuilder().addBuilder(paramInt, Entity.getDefaultInstance());
    }

    public EntitySyncResponse build()
    {
      EntitySyncResponse localEntitySyncResponse = buildPartial();
      if (!localEntitySyncResponse.isInitialized())
        throw newUninitializedMessageException(localEntitySyncResponse);
      return localEntitySyncResponse;
    }

    public EntitySyncResponse buildPartial()
    {
      EntitySyncResponse localEntitySyncResponse = new EntitySyncResponse(this, null);
      if (this.entitiesBuilder_ == null)
      {
        if ((0x1 & this.bitField0_) == 1)
        {
          this.entities_ = Collections.unmodifiableList(this.entities_);
          this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        }
        EntitySyncResponse.access$502(localEntitySyncResponse, this.entities_);
      }
      while (true)
      {
        onBuilt();
        return localEntitySyncResponse;
        EntitySyncResponse.access$502(localEntitySyncResponse, this.entitiesBuilder_.build());
      }
    }

    public Builder clear()
    {
      super.clear();
      if (this.entitiesBuilder_ == null)
      {
        this.entities_ = Collections.emptyList();
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        return this;
      }
      this.entitiesBuilder_.clear();
      return this;
    }

    public Builder clearEntities()
    {
      if (this.entitiesBuilder_ == null)
      {
        this.entities_ = Collections.emptyList();
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        onChanged();
        return this;
      }
      this.entitiesBuilder_.clear();
      return this;
    }

    public Builder clone()
    {
      return create().mergeFrom(buildPartial());
    }

    public EntitySyncResponse getDefaultInstanceForType()
    {
      return EntitySyncResponse.getDefaultInstance();
    }

    public Descriptors.Descriptor getDescriptorForType()
    {
      return EntitySync.internal_static_googlex_glass_common_proto_EntitySyncResponse_descriptor;
    }

    public Entity getEntities(int paramInt)
    {
      if (this.entitiesBuilder_ == null)
        return (Entity)this.entities_.get(paramInt);
      return (Entity)this.entitiesBuilder_.getMessage(paramInt);
    }

    public Entity.Builder getEntitiesBuilder(int paramInt)
    {
      return (Entity.Builder)getEntitiesFieldBuilder().getBuilder(paramInt);
    }

    public List<Entity.Builder> getEntitiesBuilderList()
    {
      return getEntitiesFieldBuilder().getBuilderList();
    }

    public int getEntitiesCount()
    {
      if (this.entitiesBuilder_ == null)
        return this.entities_.size();
      return this.entitiesBuilder_.getCount();
    }

    public List<Entity> getEntitiesList()
    {
      if (this.entitiesBuilder_ == null)
        return Collections.unmodifiableList(this.entities_);
      return this.entitiesBuilder_.getMessageList();
    }

    public EntityOrBuilder getEntitiesOrBuilder(int paramInt)
    {
      if (this.entitiesBuilder_ == null)
        return (EntityOrBuilder)this.entities_.get(paramInt);
      return (EntityOrBuilder)this.entitiesBuilder_.getMessageOrBuilder(paramInt);
    }

    public List<? extends EntityOrBuilder> getEntitiesOrBuilderList()
    {
      if (this.entitiesBuilder_ != null)
        return this.entitiesBuilder_.getMessageOrBuilderList();
      return Collections.unmodifiableList(this.entities_);
    }

    protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return EntitySync.internal_static_googlex_glass_common_proto_EntitySyncResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(EntitySyncResponse.class, Builder.class);
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Builder mergeFrom(EntitySyncResponse paramEntitySyncResponse)
    {
      if (paramEntitySyncResponse == EntitySyncResponse.getDefaultInstance())
        return this;
      if (this.entitiesBuilder_ == null)
        if (!paramEntitySyncResponse.entities_.isEmpty())
        {
          if (!this.entities_.isEmpty())
            break label74;
          this.entities_ = paramEntitySyncResponse.entities_;
          this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
          onChanged();
        }
      while (true)
      {
        mergeUnknownFields(paramEntitySyncResponse.getUnknownFields());
        return this;
        label74: ensureEntitiesIsMutable();
        this.entities_.addAll(paramEntitySyncResponse.entities_);
        break;
        if (!paramEntitySyncResponse.entities_.isEmpty())
          if (this.entitiesBuilder_.isEmpty())
          {
            this.entitiesBuilder_.dispose();
            this.entitiesBuilder_ = null;
            this.entities_ = paramEntitySyncResponse.entities_;
            this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
            boolean bool = EntitySyncResponse.alwaysUseFieldBuilders;
            RepeatedFieldBuilder localRepeatedFieldBuilder = null;
            if (bool)
              localRepeatedFieldBuilder = getEntitiesFieldBuilder();
            this.entitiesBuilder_ = localRepeatedFieldBuilder;
          }
          else
          {
            this.entitiesBuilder_.addAllMessages(paramEntitySyncResponse.entities_);
          }
      }
    }

    public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      EntitySyncResponse localEntitySyncResponse1 = null;
      try
      {
        EntitySyncResponse localEntitySyncResponse2 = (EntitySyncResponse)EntitySyncResponse.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
        return this;
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        localEntitySyncResponse1 = (EntitySyncResponse)localInvalidProtocolBufferException.getUnfinishedMessage();
        throw localInvalidProtocolBufferException;
      }
      finally
      {
        if (localEntitySyncResponse1 != null)
          mergeFrom(localEntitySyncResponse1);
      }
    }

    public Builder mergeFrom(Message paramMessage)
    {
      if ((paramMessage instanceof EntitySyncResponse))
        return mergeFrom((EntitySyncResponse)paramMessage);
      super.mergeFrom(paramMessage);
      return this;
    }

    public Builder removeEntities(int paramInt)
    {
      if (this.entitiesBuilder_ == null)
      {
        ensureEntitiesIsMutable();
        this.entities_.remove(paramInt);
        onChanged();
        return this;
      }
      this.entitiesBuilder_.remove(paramInt);
      return this;
    }

    public Builder setEntities(int paramInt, Entity.Builder paramBuilder)
    {
      if (this.entitiesBuilder_ == null)
      {
        ensureEntitiesIsMutable();
        this.entities_.set(paramInt, paramBuilder.build());
        onChanged();
        return this;
      }
      this.entitiesBuilder_.setMessage(paramInt, paramBuilder.build());
      return this;
    }

    public Builder setEntities(int paramInt, Entity paramEntity)
    {
      if (this.entitiesBuilder_ == null)
      {
        if (paramEntity == null)
          throw new NullPointerException();
        ensureEntitiesIsMutable();
        this.entities_.set(paramInt, paramEntity);
        onChanged();
        return this;
      }
      this.entitiesBuilder_.setMessage(paramInt, paramEntity);
      return this;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.EntitySyncResponse
 * JD-Core Version:    0.6.2
 */