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

public final class Delete extends GeneratedMessage
  implements DeleteOrBuilder
{
  public static Parser<Delete> PARSER = new AbstractParser()
  {
    public Delete parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return new Delete(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
    }
  };
  public static final int TIMELINE_ITEM_ID_FIELD_NUMBER = 1;
  public static final int USER_ACTION_FIELD_NUMBER = 2;
  private static final Delete defaultInstance;
  private static volatile MutableMessage mutableDefault = null;
  private static final long serialVersionUID;
  private int bitField0_;
  private byte memoizedIsInitialized = -1;
  private int memoizedSerializedSize = -1;
  private Object timelineItemId_;
  private final UnknownFieldSet unknownFields;
  private List<UserAction> userAction_;

  static
  {
    defaultInstance = new Delete(true);
    defaultInstance.initFields();
  }

  // ERROR //
  private Delete(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 56	com/google/protobuf/GeneratedMessage:<init>	()V
    //   4: aload_0
    //   5: iconst_m1
    //   6: putfield 58	com/google/googlex/glass/common/proto/Delete:memoizedIsInitialized	B
    //   9: aload_0
    //   10: iconst_m1
    //   11: putfield 60	com/google/googlex/glass/common/proto/Delete:memoizedSerializedSize	I
    //   14: aload_0
    //   15: invokespecial 50	com/google/googlex/glass/common/proto/Delete:initFields	()V
    //   18: iconst_0
    //   19: istore_3
    //   20: invokestatic 66	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
    //   23: astore 4
    //   25: iconst_0
    //   26: istore 5
    //   28: iload 5
    //   30: ifne +193 -> 223
    //   33: aload_1
    //   34: invokevirtual 72	com/google/protobuf/CodedInputStream:readTag	()I
    //   37: istore 9
    //   39: iload 9
    //   41: lookupswitch	default:+35->76, 0:+214->255, 10:+54->95, 18:+120->161
    //   77: aload_1
    //   78: aload 4
    //   80: aload_2
    //   81: iload 9
    //   83: invokevirtual 76	com/google/googlex/glass/common/proto/Delete:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    //   86: ifne -58 -> 28
    //   89: iconst_1
    //   90: istore 5
    //   92: goto -64 -> 28
    //   95: aload_0
    //   96: iconst_1
    //   97: aload_0
    //   98: getfield 78	com/google/googlex/glass/common/proto/Delete:bitField0_	I
    //   101: ior
    //   102: putfield 78	com/google/googlex/glass/common/proto/Delete:bitField0_	I
    //   105: aload_0
    //   106: aload_1
    //   107: invokevirtual 82	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   110: putfield 84	com/google/googlex/glass/common/proto/Delete:timelineItemId_	Ljava/lang/Object;
    //   113: goto -85 -> 28
    //   116: astore 8
    //   118: aload 8
    //   120: aload_0
    //   121: invokevirtual 88	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   124: athrow
    //   125: astore 7
    //   127: iload_3
    //   128: iconst_2
    //   129: iand
    //   130: iconst_2
    //   131: if_icmpne +14 -> 145
    //   134: aload_0
    //   135: aload_0
    //   136: getfield 90	com/google/googlex/glass/common/proto/Delete:userAction_	Ljava/util/List;
    //   139: invokestatic 96	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   142: putfield 90	com/google/googlex/glass/common/proto/Delete:userAction_	Ljava/util/List;
    //   145: aload_0
    //   146: aload 4
    //   148: invokevirtual 102	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   151: putfield 104	com/google/googlex/glass/common/proto/Delete:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   154: aload_0
    //   155: invokevirtual 107	com/google/googlex/glass/common/proto/Delete:makeExtensionsImmutable	()V
    //   158: aload 7
    //   160: athrow
    //   161: iload_3
    //   162: iconst_2
    //   163: iand
    //   164: iconst_2
    //   165: if_icmpeq +18 -> 183
    //   168: aload_0
    //   169: new 109	java/util/ArrayList
    //   172: dup
    //   173: invokespecial 110	java/util/ArrayList:<init>	()V
    //   176: putfield 90	com/google/googlex/glass/common/proto/Delete:userAction_	Ljava/util/List;
    //   179: iload_3
    //   180: iconst_2
    //   181: ior
    //   182: istore_3
    //   183: aload_0
    //   184: getfield 90	com/google/googlex/glass/common/proto/Delete:userAction_	Ljava/util/List;
    //   187: aload_1
    //   188: getstatic 113	com/google/googlex/glass/common/proto/UserAction:PARSER	Lcom/google/protobuf/Parser;
    //   191: aload_2
    //   192: invokevirtual 117	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
    //   195: invokeinterface 123 2 0
    //   200: pop
    //   201: goto -173 -> 28
    //   204: astore 6
    //   206: new 53	com/google/protobuf/InvalidProtocolBufferException
    //   209: dup
    //   210: aload 6
    //   212: invokevirtual 127	java/io/IOException:getMessage	()Ljava/lang/String;
    //   215: invokespecial 130	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
    //   218: aload_0
    //   219: invokevirtual 88	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   222: athrow
    //   223: iload_3
    //   224: iconst_2
    //   225: iand
    //   226: iconst_2
    //   227: if_icmpne +14 -> 241
    //   230: aload_0
    //   231: aload_0
    //   232: getfield 90	com/google/googlex/glass/common/proto/Delete:userAction_	Ljava/util/List;
    //   235: invokestatic 96	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   238: putfield 90	com/google/googlex/glass/common/proto/Delete:userAction_	Ljava/util/List;
    //   241: aload_0
    //   242: aload 4
    //   244: invokevirtual 102	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   247: putfield 104	com/google/googlex/glass/common/proto/Delete:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   250: aload_0
    //   251: invokevirtual 107	com/google/googlex/glass/common/proto/Delete:makeExtensionsImmutable	()V
    //   254: return
    //   255: iconst_1
    //   256: istore 5
    //   258: goto -230 -> 28
    //
    // Exception table:
    //   from	to	target	type
    //   33	39	116	com/google/protobuf/InvalidProtocolBufferException
    //   76	89	116	com/google/protobuf/InvalidProtocolBufferException
    //   95	113	116	com/google/protobuf/InvalidProtocolBufferException
    //   168	179	116	com/google/protobuf/InvalidProtocolBufferException
    //   183	201	116	com/google/protobuf/InvalidProtocolBufferException
    //   33	39	125	finally
    //   76	89	125	finally
    //   95	113	125	finally
    //   118	125	125	finally
    //   168	179	125	finally
    //   183	201	125	finally
    //   206	223	125	finally
    //   33	39	204	java/io/IOException
    //   76	89	204	java/io/IOException
    //   95	113	204	java/io/IOException
    //   168	179	204	java/io/IOException
    //   183	201	204	java/io/IOException
  }

  private Delete(GeneratedMessage.Builder<?> paramBuilder)
  {
    super(paramBuilder);
    this.unknownFields = paramBuilder.getUnknownFields();
  }

  private Delete(boolean paramBoolean)
  {
    this.unknownFields = UnknownFieldSet.getDefaultInstance();
  }

  public static Delete getDefaultInstance()
  {
    return defaultInstance;
  }

  public static final Descriptors.Descriptor getDescriptor()
  {
    return Sync.internal_static_googlex_glass_common_proto_Delete_descriptor;
  }

  private void initFields()
  {
    this.timelineItemId_ = "";
    this.userAction_ = Collections.emptyList();
  }

  public static Builder newBuilder()
  {
    return Builder.access$100();
  }

  public static Builder newBuilder(Delete paramDelete)
  {
    return newBuilder().mergeFrom(paramDelete);
  }

  public static Delete parseDelimitedFrom(InputStream paramInputStream)
    throws IOException
  {
    return (Delete)PARSER.parseDelimitedFrom(paramInputStream);
  }

  public static Delete parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (Delete)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static Delete parseFrom(ByteString paramByteString)
    throws InvalidProtocolBufferException
  {
    return (Delete)PARSER.parseFrom(paramByteString);
  }

  public static Delete parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (Delete)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
  }

  public static Delete parseFrom(CodedInputStream paramCodedInputStream)
    throws IOException
  {
    return (Delete)PARSER.parseFrom(paramCodedInputStream);
  }

  public static Delete parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (Delete)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
  }

  public static Delete parseFrom(InputStream paramInputStream)
    throws IOException
  {
    return (Delete)PARSER.parseFrom(paramInputStream);
  }

  public static Delete parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (Delete)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static Delete parseFrom(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    return (Delete)PARSER.parseFrom(paramArrayOfByte);
  }

  public static Delete parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (Delete)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
  }

  public Delete getDefaultInstanceForType()
  {
    return defaultInstance;
  }

  public Parser<Delete> getParserForType()
  {
    return PARSER;
  }

  public int getSerializedSize()
  {
    int i = this.memoizedSerializedSize;
    if (i != -1)
      return i;
    int j = 0x1 & this.bitField0_;
    int k = 0;
    if (j == 1)
      k = 0 + CodedOutputStream.computeBytesSize(1, getTimelineItemIdBytes());
    for (int m = 0; m < this.userAction_.size(); m++)
      k += CodedOutputStream.computeMessageSize(2, (MessageLite)this.userAction_.get(m));
    int n = k + getUnknownFields().getSerializedSize();
    this.memoizedSerializedSize = n;
    return n;
  }

  public String getTimelineItemId()
  {
    Object localObject = this.timelineItemId_;
    if ((localObject instanceof String))
      return (String)localObject;
    ByteString localByteString = (ByteString)localObject;
    String str = localByteString.toStringUtf8();
    if (localByteString.isValidUtf8())
      this.timelineItemId_ = str;
    return str;
  }

  public ByteString getTimelineItemIdBytes()
  {
    Object localObject = this.timelineItemId_;
    if ((localObject instanceof String))
    {
      ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
      this.timelineItemId_ = localByteString;
      return localByteString;
    }
    return (ByteString)localObject;
  }

  public final UnknownFieldSet getUnknownFields()
  {
    return this.unknownFields;
  }

  public UserAction getUserAction(int paramInt)
  {
    return (UserAction)this.userAction_.get(paramInt);
  }

  public int getUserActionCount()
  {
    return this.userAction_.size();
  }

  public List<UserAction> getUserActionList()
  {
    return this.userAction_;
  }

  public UserActionOrBuilder getUserActionOrBuilder(int paramInt)
  {
    return (UserActionOrBuilder)this.userAction_.get(paramInt);
  }

  public List<? extends UserActionOrBuilder> getUserActionOrBuilderList()
  {
    return this.userAction_;
  }

  public boolean hasTimelineItemId()
  {
    return (0x1 & this.bitField0_) == 1;
  }

  protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
  {
    return Sync.internal_static_googlex_glass_common_proto_Delete_fieldAccessorTable.ensureFieldAccessorsInitialized(Delete.class, Builder.class);
  }

  protected MutableMessage internalMutableDefault()
  {
    if (mutableDefault == null)
      mutableDefault = internalMutableDefault("com.google.googlex.glass.common.proto.MutableSync$Delete");
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
    if ((0x1 & this.bitField0_) == 1)
      paramCodedOutputStream.writeBytes(1, getTimelineItemIdBytes());
    for (int i = 0; i < this.userAction_.size(); i++)
      paramCodedOutputStream.writeMessage(2, (MessageLite)this.userAction_.get(i));
    getUnknownFields().writeTo(paramCodedOutputStream);
  }

  public static final class Builder extends GeneratedMessage.Builder<Builder>
    implements DeleteOrBuilder
  {
    private int bitField0_;
    private Object timelineItemId_ = "";
    private RepeatedFieldBuilder<UserAction, UserAction.Builder, UserActionOrBuilder> userActionBuilder_;
    private List<UserAction> userAction_ = Collections.emptyList();

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

    private void ensureUserActionIsMutable()
    {
      if ((0x2 & this.bitField0_) != 2)
      {
        this.userAction_ = new ArrayList(this.userAction_);
        this.bitField0_ = (0x2 | this.bitField0_);
      }
    }

    public static final Descriptors.Descriptor getDescriptor()
    {
      return Sync.internal_static_googlex_glass_common_proto_Delete_descriptor;
    }

    private RepeatedFieldBuilder<UserAction, UserAction.Builder, UserActionOrBuilder> getUserActionFieldBuilder()
    {
      List localList;
      if (this.userActionBuilder_ == null)
      {
        localList = this.userAction_;
        if ((0x2 & this.bitField0_) != 2)
          break label55;
      }
      label55: for (boolean bool = true; ; bool = false)
      {
        this.userActionBuilder_ = new RepeatedFieldBuilder(localList, bool, getParentForChildren(), isClean());
        this.userAction_ = null;
        return this.userActionBuilder_;
      }
    }

    private void maybeForceBuilderInitialization()
    {
      if (Delete.alwaysUseFieldBuilders)
        getUserActionFieldBuilder();
    }

    public Builder addAllUserAction(Iterable<? extends UserAction> paramIterable)
    {
      if (this.userActionBuilder_ == null)
      {
        ensureUserActionIsMutable();
        AbstractMessageLite.Builder.addAll(paramIterable, this.userAction_);
        onChanged();
        return this;
      }
      this.userActionBuilder_.addAllMessages(paramIterable);
      return this;
    }

    public Builder addUserAction(int paramInt, UserAction.Builder paramBuilder)
    {
      if (this.userActionBuilder_ == null)
      {
        ensureUserActionIsMutable();
        this.userAction_.add(paramInt, paramBuilder.build());
        onChanged();
        return this;
      }
      this.userActionBuilder_.addMessage(paramInt, paramBuilder.build());
      return this;
    }

    public Builder addUserAction(int paramInt, UserAction paramUserAction)
    {
      if (this.userActionBuilder_ == null)
      {
        if (paramUserAction == null)
          throw new NullPointerException();
        ensureUserActionIsMutable();
        this.userAction_.add(paramInt, paramUserAction);
        onChanged();
        return this;
      }
      this.userActionBuilder_.addMessage(paramInt, paramUserAction);
      return this;
    }

    public Builder addUserAction(UserAction.Builder paramBuilder)
    {
      if (this.userActionBuilder_ == null)
      {
        ensureUserActionIsMutable();
        this.userAction_.add(paramBuilder.build());
        onChanged();
        return this;
      }
      this.userActionBuilder_.addMessage(paramBuilder.build());
      return this;
    }

    public Builder addUserAction(UserAction paramUserAction)
    {
      if (this.userActionBuilder_ == null)
      {
        if (paramUserAction == null)
          throw new NullPointerException();
        ensureUserActionIsMutable();
        this.userAction_.add(paramUserAction);
        onChanged();
        return this;
      }
      this.userActionBuilder_.addMessage(paramUserAction);
      return this;
    }

    public UserAction.Builder addUserActionBuilder()
    {
      return (UserAction.Builder)getUserActionFieldBuilder().addBuilder(UserAction.getDefaultInstance());
    }

    public UserAction.Builder addUserActionBuilder(int paramInt)
    {
      return (UserAction.Builder)getUserActionFieldBuilder().addBuilder(paramInt, UserAction.getDefaultInstance());
    }

    public Delete build()
    {
      Delete localDelete = buildPartial();
      if (!localDelete.isInitialized())
        throw newUninitializedMessageException(localDelete);
      return localDelete;
    }

    public Delete buildPartial()
    {
      Delete localDelete = new Delete(this, null);
      int i = 0x1 & this.bitField0_;
      int j = 0;
      if (i == 1)
        j = 0x0 | 0x1;
      Delete.access$502(localDelete, this.timelineItemId_);
      if (this.userActionBuilder_ == null)
      {
        if ((0x2 & this.bitField0_) == 2)
        {
          this.userAction_ = Collections.unmodifiableList(this.userAction_);
          this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        }
        Delete.access$602(localDelete, this.userAction_);
      }
      while (true)
      {
        Delete.access$702(localDelete, j);
        onBuilt();
        return localDelete;
        Delete.access$602(localDelete, this.userActionBuilder_.build());
      }
    }

    public Builder clear()
    {
      super.clear();
      this.timelineItemId_ = "";
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      if (this.userActionBuilder_ == null)
      {
        this.userAction_ = Collections.emptyList();
        this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        return this;
      }
      this.userActionBuilder_.clear();
      return this;
    }

    public Builder clearTimelineItemId()
    {
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      this.timelineItemId_ = Delete.getDefaultInstance().getTimelineItemId();
      onChanged();
      return this;
    }

    public Builder clearUserAction()
    {
      if (this.userActionBuilder_ == null)
      {
        this.userAction_ = Collections.emptyList();
        this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        onChanged();
        return this;
      }
      this.userActionBuilder_.clear();
      return this;
    }

    public Builder clone()
    {
      return create().mergeFrom(buildPartial());
    }

    public Delete getDefaultInstanceForType()
    {
      return Delete.getDefaultInstance();
    }

    public Descriptors.Descriptor getDescriptorForType()
    {
      return Sync.internal_static_googlex_glass_common_proto_Delete_descriptor;
    }

    public String getTimelineItemId()
    {
      Object localObject = this.timelineItemId_;
      if (!(localObject instanceof String))
      {
        String str = ((ByteString)localObject).toStringUtf8();
        this.timelineItemId_ = str;
        return str;
      }
      return (String)localObject;
    }

    public ByteString getTimelineItemIdBytes()
    {
      Object localObject = this.timelineItemId_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.timelineItemId_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public UserAction getUserAction(int paramInt)
    {
      if (this.userActionBuilder_ == null)
        return (UserAction)this.userAction_.get(paramInt);
      return (UserAction)this.userActionBuilder_.getMessage(paramInt);
    }

    public UserAction.Builder getUserActionBuilder(int paramInt)
    {
      return (UserAction.Builder)getUserActionFieldBuilder().getBuilder(paramInt);
    }

    public List<UserAction.Builder> getUserActionBuilderList()
    {
      return getUserActionFieldBuilder().getBuilderList();
    }

    public int getUserActionCount()
    {
      if (this.userActionBuilder_ == null)
        return this.userAction_.size();
      return this.userActionBuilder_.getCount();
    }

    public List<UserAction> getUserActionList()
    {
      if (this.userActionBuilder_ == null)
        return Collections.unmodifiableList(this.userAction_);
      return this.userActionBuilder_.getMessageList();
    }

    public UserActionOrBuilder getUserActionOrBuilder(int paramInt)
    {
      if (this.userActionBuilder_ == null)
        return (UserActionOrBuilder)this.userAction_.get(paramInt);
      return (UserActionOrBuilder)this.userActionBuilder_.getMessageOrBuilder(paramInt);
    }

    public List<? extends UserActionOrBuilder> getUserActionOrBuilderList()
    {
      if (this.userActionBuilder_ != null)
        return this.userActionBuilder_.getMessageOrBuilderList();
      return Collections.unmodifiableList(this.userAction_);
    }

    public boolean hasTimelineItemId()
    {
      return (0x1 & this.bitField0_) == 1;
    }

    protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return Sync.internal_static_googlex_glass_common_proto_Delete_fieldAccessorTable.ensureFieldAccessorsInitialized(Delete.class, Builder.class);
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Builder mergeFrom(Delete paramDelete)
    {
      if (paramDelete == Delete.getDefaultInstance())
        return this;
      if (paramDelete.hasTimelineItemId())
      {
        this.bitField0_ = (0x1 | this.bitField0_);
        this.timelineItemId_ = paramDelete.timelineItemId_;
        onChanged();
      }
      if (this.userActionBuilder_ == null)
        if (!paramDelete.userAction_.isEmpty())
        {
          if (!this.userAction_.isEmpty())
            break label103;
          this.userAction_ = paramDelete.userAction_;
          this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
          onChanged();
        }
      while (true)
      {
        mergeUnknownFields(paramDelete.getUnknownFields());
        return this;
        label103: ensureUserActionIsMutable();
        this.userAction_.addAll(paramDelete.userAction_);
        break;
        if (!paramDelete.userAction_.isEmpty())
          if (this.userActionBuilder_.isEmpty())
          {
            this.userActionBuilder_.dispose();
            this.userActionBuilder_ = null;
            this.userAction_ = paramDelete.userAction_;
            this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
            boolean bool = Delete.alwaysUseFieldBuilders;
            RepeatedFieldBuilder localRepeatedFieldBuilder = null;
            if (bool)
              localRepeatedFieldBuilder = getUserActionFieldBuilder();
            this.userActionBuilder_ = localRepeatedFieldBuilder;
          }
          else
          {
            this.userActionBuilder_.addAllMessages(paramDelete.userAction_);
          }
      }
    }

    public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      Delete localDelete1 = null;
      try
      {
        Delete localDelete2 = (Delete)Delete.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
        return this;
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        localDelete1 = (Delete)localInvalidProtocolBufferException.getUnfinishedMessage();
        throw localInvalidProtocolBufferException;
      }
      finally
      {
        if (localDelete1 != null)
          mergeFrom(localDelete1);
      }
    }

    public Builder mergeFrom(Message paramMessage)
    {
      if ((paramMessage instanceof Delete))
        return mergeFrom((Delete)paramMessage);
      super.mergeFrom(paramMessage);
      return this;
    }

    public Builder removeUserAction(int paramInt)
    {
      if (this.userActionBuilder_ == null)
      {
        ensureUserActionIsMutable();
        this.userAction_.remove(paramInt);
        onChanged();
        return this;
      }
      this.userActionBuilder_.remove(paramInt);
      return this;
    }

    public Builder setTimelineItemId(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x1 | this.bitField0_);
      this.timelineItemId_ = paramString;
      onChanged();
      return this;
    }

    public Builder setTimelineItemIdBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x1 | this.bitField0_);
      this.timelineItemId_ = paramByteString;
      onChanged();
      return this;
    }

    public Builder setUserAction(int paramInt, UserAction.Builder paramBuilder)
    {
      if (this.userActionBuilder_ == null)
      {
        ensureUserActionIsMutable();
        this.userAction_.set(paramInt, paramBuilder.build());
        onChanged();
        return this;
      }
      this.userActionBuilder_.setMessage(paramInt, paramBuilder.build());
      return this;
    }

    public Builder setUserAction(int paramInt, UserAction paramUserAction)
    {
      if (this.userActionBuilder_ == null)
      {
        if (paramUserAction == null)
          throw new NullPointerException();
        ensureUserActionIsMutable();
        this.userAction_.set(paramInt, paramUserAction);
        onChanged();
        return this;
      }
      this.userActionBuilder_.setMessage(paramInt, paramUserAction);
      return this;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.Delete
 * JD-Core Version:    0.6.2
 */