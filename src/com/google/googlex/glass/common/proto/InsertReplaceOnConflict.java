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
import com.google.protobuf.SingleFieldBuilder;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class InsertReplaceOnConflict extends GeneratedMessage
  implements InsertReplaceOnConflictOrBuilder
{
  public static Parser<InsertReplaceOnConflict> PARSER = new AbstractParser()
  {
    public InsertReplaceOnConflict parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return new InsertReplaceOnConflict(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
    }
  };
  public static final int TIMELINE_ITEM_FIELD_NUMBER = 1;
  public static final int USER_ACTION_FIELD_NUMBER = 2;
  private static final InsertReplaceOnConflict defaultInstance;
  private static volatile MutableMessage mutableDefault = null;
  private static final long serialVersionUID;
  private int bitField0_;
  private byte memoizedIsInitialized = -1;
  private int memoizedSerializedSize = -1;
  private TimelineItem timelineItem_;
  private final UnknownFieldSet unknownFields;
  private List<UserAction> userAction_;

  static
  {
    defaultInstance = new InsertReplaceOnConflict(true);
    defaultInstance.initFields();
  }

  // ERROR //
  private InsertReplaceOnConflict(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 56	com/google/protobuf/GeneratedMessage:<init>	()V
    //   4: aload_0
    //   5: iconst_m1
    //   6: putfield 58	com/google/googlex/glass/common/proto/InsertReplaceOnConflict:memoizedIsInitialized	B
    //   9: aload_0
    //   10: iconst_m1
    //   11: putfield 60	com/google/googlex/glass/common/proto/InsertReplaceOnConflict:memoizedSerializedSize	I
    //   14: aload_0
    //   15: invokespecial 50	com/google/googlex/glass/common/proto/InsertReplaceOnConflict:initFields	()V
    //   18: iconst_0
    //   19: istore_3
    //   20: invokestatic 66	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
    //   23: astore 4
    //   25: iconst_0
    //   26: istore 5
    //   28: iload 5
    //   30: ifne +250 -> 280
    //   33: aload_1
    //   34: invokevirtual 72	com/google/protobuf/CodedInputStream:readTag	()I
    //   37: istore 9
    //   39: iload 9
    //   41: lookupswitch	default:+35->76, 0:+271->312, 10:+54->95, 18:+177->218
    //   77: aload_1
    //   78: aload 4
    //   80: aload_2
    //   81: iload 9
    //   83: invokevirtual 76	com/google/googlex/glass/common/proto/InsertReplaceOnConflict:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    //   86: ifne -58 -> 28
    //   89: iconst_1
    //   90: istore 5
    //   92: goto -64 -> 28
    //   95: iconst_1
    //   96: aload_0
    //   97: getfield 78	com/google/googlex/glass/common/proto/InsertReplaceOnConflict:bitField0_	I
    //   100: iand
    //   101: istore 11
    //   103: aconst_null
    //   104: astore 12
    //   106: iload 11
    //   108: iconst_1
    //   109: if_icmpne +12 -> 121
    //   112: aload_0
    //   113: getfield 80	com/google/googlex/glass/common/proto/InsertReplaceOnConflict:timelineItem_	Lcom/google/googlex/glass/common/proto/TimelineItem;
    //   116: invokevirtual 86	com/google/googlex/glass/common/proto/TimelineItem:toBuilder	()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    //   119: astore 12
    //   121: aload_0
    //   122: aload_1
    //   123: getstatic 87	com/google/googlex/glass/common/proto/TimelineItem:PARSER	Lcom/google/protobuf/Parser;
    //   126: aload_2
    //   127: invokevirtual 91	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
    //   130: checkcast 82	com/google/googlex/glass/common/proto/TimelineItem
    //   133: putfield 80	com/google/googlex/glass/common/proto/InsertReplaceOnConflict:timelineItem_	Lcom/google/googlex/glass/common/proto/TimelineItem;
    //   136: aload 12
    //   138: ifnull +22 -> 160
    //   141: aload 12
    //   143: aload_0
    //   144: getfield 80	com/google/googlex/glass/common/proto/InsertReplaceOnConflict:timelineItem_	Lcom/google/googlex/glass/common/proto/TimelineItem;
    //   147: invokevirtual 97	com/google/googlex/glass/common/proto/TimelineItem$Builder:mergeFrom	(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    //   150: pop
    //   151: aload_0
    //   152: aload 12
    //   154: invokevirtual 101	com/google/googlex/glass/common/proto/TimelineItem$Builder:buildPartial	()Lcom/google/googlex/glass/common/proto/TimelineItem;
    //   157: putfield 80	com/google/googlex/glass/common/proto/InsertReplaceOnConflict:timelineItem_	Lcom/google/googlex/glass/common/proto/TimelineItem;
    //   160: aload_0
    //   161: iconst_1
    //   162: aload_0
    //   163: getfield 78	com/google/googlex/glass/common/proto/InsertReplaceOnConflict:bitField0_	I
    //   166: ior
    //   167: putfield 78	com/google/googlex/glass/common/proto/InsertReplaceOnConflict:bitField0_	I
    //   170: goto -142 -> 28
    //   173: astore 8
    //   175: aload 8
    //   177: aload_0
    //   178: invokevirtual 105	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   181: athrow
    //   182: astore 7
    //   184: iload_3
    //   185: iconst_2
    //   186: iand
    //   187: iconst_2
    //   188: if_icmpne +14 -> 202
    //   191: aload_0
    //   192: aload_0
    //   193: getfield 107	com/google/googlex/glass/common/proto/InsertReplaceOnConflict:userAction_	Ljava/util/List;
    //   196: invokestatic 113	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   199: putfield 107	com/google/googlex/glass/common/proto/InsertReplaceOnConflict:userAction_	Ljava/util/List;
    //   202: aload_0
    //   203: aload 4
    //   205: invokevirtual 119	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   208: putfield 121	com/google/googlex/glass/common/proto/InsertReplaceOnConflict:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   211: aload_0
    //   212: invokevirtual 124	com/google/googlex/glass/common/proto/InsertReplaceOnConflict:makeExtensionsImmutable	()V
    //   215: aload 7
    //   217: athrow
    //   218: iload_3
    //   219: iconst_2
    //   220: iand
    //   221: iconst_2
    //   222: if_icmpeq +18 -> 240
    //   225: aload_0
    //   226: new 126	java/util/ArrayList
    //   229: dup
    //   230: invokespecial 127	java/util/ArrayList:<init>	()V
    //   233: putfield 107	com/google/googlex/glass/common/proto/InsertReplaceOnConflict:userAction_	Ljava/util/List;
    //   236: iload_3
    //   237: iconst_2
    //   238: ior
    //   239: istore_3
    //   240: aload_0
    //   241: getfield 107	com/google/googlex/glass/common/proto/InsertReplaceOnConflict:userAction_	Ljava/util/List;
    //   244: aload_1
    //   245: getstatic 130	com/google/googlex/glass/common/proto/UserAction:PARSER	Lcom/google/protobuf/Parser;
    //   248: aload_2
    //   249: invokevirtual 91	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
    //   252: invokeinterface 136 2 0
    //   257: pop
    //   258: goto -230 -> 28
    //   261: astore 6
    //   263: new 53	com/google/protobuf/InvalidProtocolBufferException
    //   266: dup
    //   267: aload 6
    //   269: invokevirtual 140	java/io/IOException:getMessage	()Ljava/lang/String;
    //   272: invokespecial 143	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
    //   275: aload_0
    //   276: invokevirtual 105	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   279: athrow
    //   280: iload_3
    //   281: iconst_2
    //   282: iand
    //   283: iconst_2
    //   284: if_icmpne +14 -> 298
    //   287: aload_0
    //   288: aload_0
    //   289: getfield 107	com/google/googlex/glass/common/proto/InsertReplaceOnConflict:userAction_	Ljava/util/List;
    //   292: invokestatic 113	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   295: putfield 107	com/google/googlex/glass/common/proto/InsertReplaceOnConflict:userAction_	Ljava/util/List;
    //   298: aload_0
    //   299: aload 4
    //   301: invokevirtual 119	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   304: putfield 121	com/google/googlex/glass/common/proto/InsertReplaceOnConflict:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   307: aload_0
    //   308: invokevirtual 124	com/google/googlex/glass/common/proto/InsertReplaceOnConflict:makeExtensionsImmutable	()V
    //   311: return
    //   312: iconst_1
    //   313: istore 5
    //   315: goto -287 -> 28
    //
    // Exception table:
    //   from	to	target	type
    //   33	39	173	com/google/protobuf/InvalidProtocolBufferException
    //   76	89	173	com/google/protobuf/InvalidProtocolBufferException
    //   95	103	173	com/google/protobuf/InvalidProtocolBufferException
    //   112	121	173	com/google/protobuf/InvalidProtocolBufferException
    //   121	136	173	com/google/protobuf/InvalidProtocolBufferException
    //   141	160	173	com/google/protobuf/InvalidProtocolBufferException
    //   160	170	173	com/google/protobuf/InvalidProtocolBufferException
    //   225	236	173	com/google/protobuf/InvalidProtocolBufferException
    //   240	258	173	com/google/protobuf/InvalidProtocolBufferException
    //   33	39	182	finally
    //   76	89	182	finally
    //   95	103	182	finally
    //   112	121	182	finally
    //   121	136	182	finally
    //   141	160	182	finally
    //   160	170	182	finally
    //   175	182	182	finally
    //   225	236	182	finally
    //   240	258	182	finally
    //   263	280	182	finally
    //   33	39	261	java/io/IOException
    //   76	89	261	java/io/IOException
    //   95	103	261	java/io/IOException
    //   112	121	261	java/io/IOException
    //   121	136	261	java/io/IOException
    //   141	160	261	java/io/IOException
    //   160	170	261	java/io/IOException
    //   225	236	261	java/io/IOException
    //   240	258	261	java/io/IOException
  }

  private InsertReplaceOnConflict(GeneratedMessage.Builder<?> paramBuilder)
  {
    super(paramBuilder);
    this.unknownFields = paramBuilder.getUnknownFields();
  }

  private InsertReplaceOnConflict(boolean paramBoolean)
  {
    this.unknownFields = UnknownFieldSet.getDefaultInstance();
  }

  public static InsertReplaceOnConflict getDefaultInstance()
  {
    return defaultInstance;
  }

  public static final Descriptors.Descriptor getDescriptor()
  {
    return Sync.internal_static_googlex_glass_common_proto_InsertReplaceOnConflict_descriptor;
  }

  private void initFields()
  {
    this.timelineItem_ = TimelineItem.getDefaultInstance();
    this.userAction_ = Collections.emptyList();
  }

  public static Builder newBuilder()
  {
    return Builder.access$100();
  }

  public static Builder newBuilder(InsertReplaceOnConflict paramInsertReplaceOnConflict)
  {
    return newBuilder().mergeFrom(paramInsertReplaceOnConflict);
  }

  public static InsertReplaceOnConflict parseDelimitedFrom(InputStream paramInputStream)
    throws IOException
  {
    return (InsertReplaceOnConflict)PARSER.parseDelimitedFrom(paramInputStream);
  }

  public static InsertReplaceOnConflict parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (InsertReplaceOnConflict)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static InsertReplaceOnConflict parseFrom(ByteString paramByteString)
    throws InvalidProtocolBufferException
  {
    return (InsertReplaceOnConflict)PARSER.parseFrom(paramByteString);
  }

  public static InsertReplaceOnConflict parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (InsertReplaceOnConflict)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
  }

  public static InsertReplaceOnConflict parseFrom(CodedInputStream paramCodedInputStream)
    throws IOException
  {
    return (InsertReplaceOnConflict)PARSER.parseFrom(paramCodedInputStream);
  }

  public static InsertReplaceOnConflict parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (InsertReplaceOnConflict)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
  }

  public static InsertReplaceOnConflict parseFrom(InputStream paramInputStream)
    throws IOException
  {
    return (InsertReplaceOnConflict)PARSER.parseFrom(paramInputStream);
  }

  public static InsertReplaceOnConflict parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (InsertReplaceOnConflict)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static InsertReplaceOnConflict parseFrom(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    return (InsertReplaceOnConflict)PARSER.parseFrom(paramArrayOfByte);
  }

  public static InsertReplaceOnConflict parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (InsertReplaceOnConflict)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
  }

  public InsertReplaceOnConflict getDefaultInstanceForType()
  {
    return defaultInstance;
  }

  public Parser<InsertReplaceOnConflict> getParserForType()
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
      k = 0 + CodedOutputStream.computeMessageSize(1, this.timelineItem_);
    for (int m = 0; m < this.userAction_.size(); m++)
      k += CodedOutputStream.computeMessageSize(2, (MessageLite)this.userAction_.get(m));
    int n = k + getUnknownFields().getSerializedSize();
    this.memoizedSerializedSize = n;
    return n;
  }

  public TimelineItem getTimelineItem()
  {
    return this.timelineItem_;
  }

  public TimelineItemOrBuilder getTimelineItemOrBuilder()
  {
    return this.timelineItem_;
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

  public boolean hasTimelineItem()
  {
    return (0x1 & this.bitField0_) == 1;
  }

  protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
  {
    return Sync.internal_static_googlex_glass_common_proto_InsertReplaceOnConflict_fieldAccessorTable.ensureFieldAccessorsInitialized(InsertReplaceOnConflict.class, Builder.class);
  }

  protected MutableMessage internalMutableDefault()
  {
    if (mutableDefault == null)
      mutableDefault = internalMutableDefault("com.google.googlex.glass.common.proto.MutableSync$InsertReplaceOnConflict");
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
      paramCodedOutputStream.writeMessage(1, this.timelineItem_);
    for (int i = 0; i < this.userAction_.size(); i++)
      paramCodedOutputStream.writeMessage(2, (MessageLite)this.userAction_.get(i));
    getUnknownFields().writeTo(paramCodedOutputStream);
  }

  public static final class Builder extends GeneratedMessage.Builder<Builder>
    implements InsertReplaceOnConflictOrBuilder
  {
    private int bitField0_;
    private SingleFieldBuilder<TimelineItem, TimelineItem.Builder, TimelineItemOrBuilder> timelineItemBuilder_;
    private TimelineItem timelineItem_ = TimelineItem.getDefaultInstance();
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
      return Sync.internal_static_googlex_glass_common_proto_InsertReplaceOnConflict_descriptor;
    }

    private SingleFieldBuilder<TimelineItem, TimelineItem.Builder, TimelineItemOrBuilder> getTimelineItemFieldBuilder()
    {
      if (this.timelineItemBuilder_ == null)
      {
        this.timelineItemBuilder_ = new SingleFieldBuilder(this.timelineItem_, getParentForChildren(), isClean());
        this.timelineItem_ = null;
      }
      return this.timelineItemBuilder_;
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
      if (InsertReplaceOnConflict.alwaysUseFieldBuilders)
      {
        getTimelineItemFieldBuilder();
        getUserActionFieldBuilder();
      }
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

    public InsertReplaceOnConflict build()
    {
      InsertReplaceOnConflict localInsertReplaceOnConflict = buildPartial();
      if (!localInsertReplaceOnConflict.isInitialized())
        throw newUninitializedMessageException(localInsertReplaceOnConflict);
      return localInsertReplaceOnConflict;
    }

    public InsertReplaceOnConflict buildPartial()
    {
      InsertReplaceOnConflict localInsertReplaceOnConflict = new InsertReplaceOnConflict(this, null);
      int i = 0x1 & this.bitField0_;
      int j = 0;
      if (i == 1)
        j = 0x0 | 0x1;
      if (this.timelineItemBuilder_ == null)
      {
        InsertReplaceOnConflict.access$502(localInsertReplaceOnConflict, this.timelineItem_);
        if (this.userActionBuilder_ != null)
          break label122;
        if ((0x2 & this.bitField0_) == 2)
        {
          this.userAction_ = Collections.unmodifiableList(this.userAction_);
          this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        }
        InsertReplaceOnConflict.access$602(localInsertReplaceOnConflict, this.userAction_);
      }
      while (true)
      {
        InsertReplaceOnConflict.access$702(localInsertReplaceOnConflict, j);
        onBuilt();
        return localInsertReplaceOnConflict;
        InsertReplaceOnConflict.access$502(localInsertReplaceOnConflict, (TimelineItem)this.timelineItemBuilder_.build());
        break;
        label122: InsertReplaceOnConflict.access$602(localInsertReplaceOnConflict, this.userActionBuilder_.build());
      }
    }

    public Builder clear()
    {
      super.clear();
      if (this.timelineItemBuilder_ == null)
        this.timelineItem_ = TimelineItem.getDefaultInstance();
      while (true)
      {
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        if (this.userActionBuilder_ != null)
          break;
        this.userAction_ = Collections.emptyList();
        this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        return this;
        this.timelineItemBuilder_.clear();
      }
      this.userActionBuilder_.clear();
      return this;
    }

    public Builder clearTimelineItem()
    {
      if (this.timelineItemBuilder_ == null)
      {
        this.timelineItem_ = TimelineItem.getDefaultInstance();
        onChanged();
      }
      while (true)
      {
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        return this;
        this.timelineItemBuilder_.clear();
      }
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

    public InsertReplaceOnConflict getDefaultInstanceForType()
    {
      return InsertReplaceOnConflict.getDefaultInstance();
    }

    public Descriptors.Descriptor getDescriptorForType()
    {
      return Sync.internal_static_googlex_glass_common_proto_InsertReplaceOnConflict_descriptor;
    }

    public TimelineItem getTimelineItem()
    {
      if (this.timelineItemBuilder_ == null)
        return this.timelineItem_;
      return (TimelineItem)this.timelineItemBuilder_.getMessage();
    }

    public TimelineItem.Builder getTimelineItemBuilder()
    {
      this.bitField0_ = (0x1 | this.bitField0_);
      onChanged();
      return (TimelineItem.Builder)getTimelineItemFieldBuilder().getBuilder();
    }

    public TimelineItemOrBuilder getTimelineItemOrBuilder()
    {
      if (this.timelineItemBuilder_ != null)
        return (TimelineItemOrBuilder)this.timelineItemBuilder_.getMessageOrBuilder();
      return this.timelineItem_;
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

    public boolean hasTimelineItem()
    {
      return (0x1 & this.bitField0_) == 1;
    }

    protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return Sync.internal_static_googlex_glass_common_proto_InsertReplaceOnConflict_fieldAccessorTable.ensureFieldAccessorsInitialized(InsertReplaceOnConflict.class, Builder.class);
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Builder mergeFrom(InsertReplaceOnConflict paramInsertReplaceOnConflict)
    {
      if (paramInsertReplaceOnConflict == InsertReplaceOnConflict.getDefaultInstance())
        return this;
      if (paramInsertReplaceOnConflict.hasTimelineItem())
        mergeTimelineItem(paramInsertReplaceOnConflict.getTimelineItem());
      if (this.userActionBuilder_ == null)
        if (!paramInsertReplaceOnConflict.userAction_.isEmpty())
        {
          if (!this.userAction_.isEmpty())
            break label90;
          this.userAction_ = paramInsertReplaceOnConflict.userAction_;
          this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
          onChanged();
        }
      while (true)
      {
        mergeUnknownFields(paramInsertReplaceOnConflict.getUnknownFields());
        return this;
        label90: ensureUserActionIsMutable();
        this.userAction_.addAll(paramInsertReplaceOnConflict.userAction_);
        break;
        if (!paramInsertReplaceOnConflict.userAction_.isEmpty())
          if (this.userActionBuilder_.isEmpty())
          {
            this.userActionBuilder_.dispose();
            this.userActionBuilder_ = null;
            this.userAction_ = paramInsertReplaceOnConflict.userAction_;
            this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
            boolean bool = InsertReplaceOnConflict.alwaysUseFieldBuilders;
            RepeatedFieldBuilder localRepeatedFieldBuilder = null;
            if (bool)
              localRepeatedFieldBuilder = getUserActionFieldBuilder();
            this.userActionBuilder_ = localRepeatedFieldBuilder;
          }
          else
          {
            this.userActionBuilder_.addAllMessages(paramInsertReplaceOnConflict.userAction_);
          }
      }
    }

    public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      InsertReplaceOnConflict localInsertReplaceOnConflict1 = null;
      try
      {
        InsertReplaceOnConflict localInsertReplaceOnConflict2 = (InsertReplaceOnConflict)InsertReplaceOnConflict.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
        return this;
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        localInsertReplaceOnConflict1 = (InsertReplaceOnConflict)localInvalidProtocolBufferException.getUnfinishedMessage();
        throw localInvalidProtocolBufferException;
      }
      finally
      {
        if (localInsertReplaceOnConflict1 != null)
          mergeFrom(localInsertReplaceOnConflict1);
      }
    }

    public Builder mergeFrom(Message paramMessage)
    {
      if ((paramMessage instanceof InsertReplaceOnConflict))
        return mergeFrom((InsertReplaceOnConflict)paramMessage);
      super.mergeFrom(paramMessage);
      return this;
    }

    public Builder mergeTimelineItem(TimelineItem paramTimelineItem)
    {
      if (this.timelineItemBuilder_ == null)
        if (((0x1 & this.bitField0_) == 1) && (this.timelineItem_ != TimelineItem.getDefaultInstance()))
        {
          this.timelineItem_ = TimelineItem.newBuilder(this.timelineItem_).mergeFrom(paramTimelineItem).buildPartial();
          onChanged();
        }
      while (true)
      {
        this.bitField0_ = (0x1 | this.bitField0_);
        return this;
        this.timelineItem_ = paramTimelineItem;
        break;
        this.timelineItemBuilder_.mergeFrom(paramTimelineItem);
      }
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

    public Builder setTimelineItem(TimelineItem.Builder paramBuilder)
    {
      if (this.timelineItemBuilder_ == null)
      {
        this.timelineItem_ = paramBuilder.build();
        onChanged();
      }
      while (true)
      {
        this.bitField0_ = (0x1 | this.bitField0_);
        return this;
        this.timelineItemBuilder_.setMessage(paramBuilder.build());
      }
    }

    public Builder setTimelineItem(TimelineItem paramTimelineItem)
    {
      if (this.timelineItemBuilder_ == null)
      {
        if (paramTimelineItem == null)
          throw new NullPointerException();
        this.timelineItem_ = paramTimelineItem;
        onChanged();
      }
      while (true)
      {
        this.bitField0_ = (0x1 | this.bitField0_);
        return this;
        this.timelineItemBuilder_.setMessage(paramTimelineItem);
      }
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
 * Qualified Name:     com.google.googlex.glass.common.proto.InsertReplaceOnConflict
 * JD-Core Version:    0.6.2
 */