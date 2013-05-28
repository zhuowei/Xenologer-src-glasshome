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
import com.google.protobuf.LazyStringArrayList;
import com.google.protobuf.LazyStringList;
import com.google.protobuf.Message;
import com.google.protobuf.MessageLite;
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.MutableMessage;
import com.google.protobuf.Parser;
import com.google.protobuf.RepeatedFieldBuilder;
import com.google.protobuf.SingleFieldBuilder;
import com.google.protobuf.UnknownFieldSet;
import com.google.protobuf.UnmodifiableLazyStringList;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class Update extends GeneratedMessage
  implements UpdateOrBuilder
{
  public static final int MUTATIONS_FIELD_NUMBER = 1;
  public static Parser<Update> PARSER = new AbstractParser()
  {
    public Update parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return new Update(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
    }
  };
  public static final int TIMELINE_ITEM_ID_FIELD_NUMBER = 2;
  public static final int USER_ACTION_FIELD_NUMBER = 3;
  private static final Update defaultInstance;
  private static volatile MutableMessage mutableDefault = null;
  private static final long serialVersionUID;
  private int bitField0_;
  private byte memoizedIsInitialized = -1;
  private int memoizedSerializedSize = -1;
  private Mutations mutations_;
  private Object timelineItemId_;
  private final UnknownFieldSet unknownFields;
  private List<UserAction> userAction_;

  static
  {
    defaultInstance = new Update(true);
    defaultInstance.initFields();
  }

  // ERROR //
  private Update(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 60	com/google/protobuf/GeneratedMessage:<init>	()V
    //   4: aload_0
    //   5: iconst_m1
    //   6: putfield 62	com/google/googlex/glass/common/proto/Update:memoizedIsInitialized	B
    //   9: aload_0
    //   10: iconst_m1
    //   11: putfield 64	com/google/googlex/glass/common/proto/Update:memoizedSerializedSize	I
    //   14: aload_0
    //   15: invokespecial 54	com/google/googlex/glass/common/proto/Update:initFields	()V
    //   18: iconst_0
    //   19: istore_3
    //   20: invokestatic 70	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
    //   23: astore 4
    //   25: iconst_0
    //   26: istore 5
    //   28: iload 5
    //   30: ifne +279 -> 309
    //   33: aload_1
    //   34: invokevirtual 76	com/google/protobuf/CodedInputStream:readTag	()I
    //   37: istore 9
    //   39: iload 9
    //   41: lookupswitch	default:+43->84, 0:+300->341, 10:+62->103, 18:+185->226, 26:+225->266
    //   85: aload_1
    //   86: aload 4
    //   88: aload_2
    //   89: iload 9
    //   91: invokevirtual 80	com/google/googlex/glass/common/proto/Update:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    //   94: ifne -66 -> 28
    //   97: iconst_1
    //   98: istore 5
    //   100: goto -72 -> 28
    //   103: iconst_1
    //   104: aload_0
    //   105: getfield 82	com/google/googlex/glass/common/proto/Update:bitField0_	I
    //   108: iand
    //   109: istore 11
    //   111: aconst_null
    //   112: astore 12
    //   114: iload 11
    //   116: iconst_1
    //   117: if_icmpne +12 -> 129
    //   120: aload_0
    //   121: getfield 84	com/google/googlex/glass/common/proto/Update:mutations_	Lcom/google/googlex/glass/common/proto/Update$Mutations;
    //   124: invokevirtual 90	com/google/googlex/glass/common/proto/Update$Mutations:toBuilder	()Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;
    //   127: astore 12
    //   129: aload_0
    //   130: aload_1
    //   131: getstatic 91	com/google/googlex/glass/common/proto/Update$Mutations:PARSER	Lcom/google/protobuf/Parser;
    //   134: aload_2
    //   135: invokevirtual 95	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
    //   138: checkcast 86	com/google/googlex/glass/common/proto/Update$Mutations
    //   141: putfield 84	com/google/googlex/glass/common/proto/Update:mutations_	Lcom/google/googlex/glass/common/proto/Update$Mutations;
    //   144: aload 12
    //   146: ifnull +22 -> 168
    //   149: aload 12
    //   151: aload_0
    //   152: getfield 84	com/google/googlex/glass/common/proto/Update:mutations_	Lcom/google/googlex/glass/common/proto/Update$Mutations;
    //   155: invokevirtual 101	com/google/googlex/glass/common/proto/Update$Mutations$Builder:mergeFrom	(Lcom/google/googlex/glass/common/proto/Update$Mutations;)Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;
    //   158: pop
    //   159: aload_0
    //   160: aload 12
    //   162: invokevirtual 105	com/google/googlex/glass/common/proto/Update$Mutations$Builder:buildPartial	()Lcom/google/googlex/glass/common/proto/Update$Mutations;
    //   165: putfield 84	com/google/googlex/glass/common/proto/Update:mutations_	Lcom/google/googlex/glass/common/proto/Update$Mutations;
    //   168: aload_0
    //   169: iconst_1
    //   170: aload_0
    //   171: getfield 82	com/google/googlex/glass/common/proto/Update:bitField0_	I
    //   174: ior
    //   175: putfield 82	com/google/googlex/glass/common/proto/Update:bitField0_	I
    //   178: goto -150 -> 28
    //   181: astore 8
    //   183: aload 8
    //   185: aload_0
    //   186: invokevirtual 109	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   189: athrow
    //   190: astore 7
    //   192: iload_3
    //   193: iconst_4
    //   194: iand
    //   195: iconst_4
    //   196: if_icmpne +14 -> 210
    //   199: aload_0
    //   200: aload_0
    //   201: getfield 111	com/google/googlex/glass/common/proto/Update:userAction_	Ljava/util/List;
    //   204: invokestatic 117	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   207: putfield 111	com/google/googlex/glass/common/proto/Update:userAction_	Ljava/util/List;
    //   210: aload_0
    //   211: aload 4
    //   213: invokevirtual 123	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   216: putfield 125	com/google/googlex/glass/common/proto/Update:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   219: aload_0
    //   220: invokevirtual 128	com/google/googlex/glass/common/proto/Update:makeExtensionsImmutable	()V
    //   223: aload 7
    //   225: athrow
    //   226: aload_0
    //   227: iconst_2
    //   228: aload_0
    //   229: getfield 82	com/google/googlex/glass/common/proto/Update:bitField0_	I
    //   232: ior
    //   233: putfield 82	com/google/googlex/glass/common/proto/Update:bitField0_	I
    //   236: aload_0
    //   237: aload_1
    //   238: invokevirtual 132	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   241: putfield 134	com/google/googlex/glass/common/proto/Update:timelineItemId_	Ljava/lang/Object;
    //   244: goto -216 -> 28
    //   247: astore 6
    //   249: new 57	com/google/protobuf/InvalidProtocolBufferException
    //   252: dup
    //   253: aload 6
    //   255: invokevirtual 138	java/io/IOException:getMessage	()Ljava/lang/String;
    //   258: invokespecial 141	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
    //   261: aload_0
    //   262: invokevirtual 109	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   265: athrow
    //   266: iload_3
    //   267: iconst_4
    //   268: iand
    //   269: iconst_4
    //   270: if_icmpeq +18 -> 288
    //   273: aload_0
    //   274: new 143	java/util/ArrayList
    //   277: dup
    //   278: invokespecial 144	java/util/ArrayList:<init>	()V
    //   281: putfield 111	com/google/googlex/glass/common/proto/Update:userAction_	Ljava/util/List;
    //   284: iload_3
    //   285: iconst_4
    //   286: ior
    //   287: istore_3
    //   288: aload_0
    //   289: getfield 111	com/google/googlex/glass/common/proto/Update:userAction_	Ljava/util/List;
    //   292: aload_1
    //   293: getstatic 147	com/google/googlex/glass/common/proto/UserAction:PARSER	Lcom/google/protobuf/Parser;
    //   296: aload_2
    //   297: invokevirtual 95	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
    //   300: invokeinterface 153 2 0
    //   305: pop
    //   306: goto -278 -> 28
    //   309: iload_3
    //   310: iconst_4
    //   311: iand
    //   312: iconst_4
    //   313: if_icmpne +14 -> 327
    //   316: aload_0
    //   317: aload_0
    //   318: getfield 111	com/google/googlex/glass/common/proto/Update:userAction_	Ljava/util/List;
    //   321: invokestatic 117	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   324: putfield 111	com/google/googlex/glass/common/proto/Update:userAction_	Ljava/util/List;
    //   327: aload_0
    //   328: aload 4
    //   330: invokevirtual 123	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   333: putfield 125	com/google/googlex/glass/common/proto/Update:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   336: aload_0
    //   337: invokevirtual 128	com/google/googlex/glass/common/proto/Update:makeExtensionsImmutable	()V
    //   340: return
    //   341: iconst_1
    //   342: istore 5
    //   344: goto -316 -> 28
    //
    // Exception table:
    //   from	to	target	type
    //   33	39	181	com/google/protobuf/InvalidProtocolBufferException
    //   84	97	181	com/google/protobuf/InvalidProtocolBufferException
    //   103	111	181	com/google/protobuf/InvalidProtocolBufferException
    //   120	129	181	com/google/protobuf/InvalidProtocolBufferException
    //   129	144	181	com/google/protobuf/InvalidProtocolBufferException
    //   149	168	181	com/google/protobuf/InvalidProtocolBufferException
    //   168	178	181	com/google/protobuf/InvalidProtocolBufferException
    //   226	244	181	com/google/protobuf/InvalidProtocolBufferException
    //   273	284	181	com/google/protobuf/InvalidProtocolBufferException
    //   288	306	181	com/google/protobuf/InvalidProtocolBufferException
    //   33	39	190	finally
    //   84	97	190	finally
    //   103	111	190	finally
    //   120	129	190	finally
    //   129	144	190	finally
    //   149	168	190	finally
    //   168	178	190	finally
    //   183	190	190	finally
    //   226	244	190	finally
    //   249	266	190	finally
    //   273	284	190	finally
    //   288	306	190	finally
    //   33	39	247	java/io/IOException
    //   84	97	247	java/io/IOException
    //   103	111	247	java/io/IOException
    //   120	129	247	java/io/IOException
    //   129	144	247	java/io/IOException
    //   149	168	247	java/io/IOException
    //   168	178	247	java/io/IOException
    //   226	244	247	java/io/IOException
    //   273	284	247	java/io/IOException
    //   288	306	247	java/io/IOException
  }

  private Update(GeneratedMessage.Builder<?> paramBuilder)
  {
    super(paramBuilder);
    this.unknownFields = paramBuilder.getUnknownFields();
  }

  private Update(boolean paramBoolean)
  {
    this.unknownFields = UnknownFieldSet.getDefaultInstance();
  }

  public static Update getDefaultInstance()
  {
    return defaultInstance;
  }

  public static final Descriptors.Descriptor getDescriptor()
  {
    return Sync.internal_static_googlex_glass_common_proto_Update_descriptor;
  }

  private void initFields()
  {
    this.mutations_ = Mutations.getDefaultInstance();
    this.timelineItemId_ = "";
    this.userAction_ = Collections.emptyList();
  }

  public static Builder newBuilder()
  {
    return Builder.access$1000();
  }

  public static Builder newBuilder(Update paramUpdate)
  {
    return newBuilder().mergeFrom(paramUpdate);
  }

  public static Update parseDelimitedFrom(InputStream paramInputStream)
    throws IOException
  {
    return (Update)PARSER.parseDelimitedFrom(paramInputStream);
  }

  public static Update parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (Update)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static Update parseFrom(ByteString paramByteString)
    throws InvalidProtocolBufferException
  {
    return (Update)PARSER.parseFrom(paramByteString);
  }

  public static Update parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (Update)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
  }

  public static Update parseFrom(CodedInputStream paramCodedInputStream)
    throws IOException
  {
    return (Update)PARSER.parseFrom(paramCodedInputStream);
  }

  public static Update parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (Update)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
  }

  public static Update parseFrom(InputStream paramInputStream)
    throws IOException
  {
    return (Update)PARSER.parseFrom(paramInputStream);
  }

  public static Update parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (Update)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static Update parseFrom(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    return (Update)PARSER.parseFrom(paramArrayOfByte);
  }

  public static Update parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (Update)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
  }

  public Update getDefaultInstanceForType()
  {
    return defaultInstance;
  }

  public Mutations getMutations()
  {
    return this.mutations_;
  }

  public MutationsOrBuilder getMutationsOrBuilder()
  {
    return this.mutations_;
  }

  public Parser<Update> getParserForType()
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
      k = 0 + CodedOutputStream.computeMessageSize(1, this.mutations_);
    if ((0x2 & this.bitField0_) == 2)
      k += CodedOutputStream.computeBytesSize(2, getTimelineItemIdBytes());
    for (int m = 0; m < this.userAction_.size(); m++)
      k += CodedOutputStream.computeMessageSize(3, (MessageLite)this.userAction_.get(m));
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

  public boolean hasMutations()
  {
    return (0x1 & this.bitField0_) == 1;
  }

  public boolean hasTimelineItemId()
  {
    return (0x2 & this.bitField0_) == 2;
  }

  protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
  {
    return Sync.internal_static_googlex_glass_common_proto_Update_fieldAccessorTable.ensureFieldAccessorsInitialized(Update.class, Builder.class);
  }

  protected MutableMessage internalMutableDefault()
  {
    if (mutableDefault == null)
      mutableDefault = internalMutableDefault("com.google.googlex.glass.common.proto.MutableSync$Update");
    return mutableDefault;
  }

  public final boolean isInitialized()
  {
    int i = this.memoizedIsInitialized;
    if (i != -1)
      return i == 1;
    if ((hasMutations()) && (!getMutations().isInitialized()))
    {
      this.memoizedIsInitialized = 0;
      return false;
    }
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
      paramCodedOutputStream.writeMessage(1, this.mutations_);
    if ((0x2 & this.bitField0_) == 2)
      paramCodedOutputStream.writeBytes(2, getTimelineItemIdBytes());
    for (int i = 0; i < this.userAction_.size(); i++)
      paramCodedOutputStream.writeMessage(3, (MessageLite)this.userAction_.get(i));
    getUnknownFields().writeTo(paramCodedOutputStream);
  }

  public static final class Builder extends GeneratedMessage.Builder<Builder>
    implements UpdateOrBuilder
  {
    private int bitField0_;
    private SingleFieldBuilder<Update.Mutations, Update.Mutations.Builder, Update.MutationsOrBuilder> mutationsBuilder_;
    private Update.Mutations mutations_ = Update.Mutations.getDefaultInstance();
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
      if ((0x4 & this.bitField0_) != 4)
      {
        this.userAction_ = new ArrayList(this.userAction_);
        this.bitField0_ = (0x4 | this.bitField0_);
      }
    }

    public static final Descriptors.Descriptor getDescriptor()
    {
      return Sync.internal_static_googlex_glass_common_proto_Update_descriptor;
    }

    private SingleFieldBuilder<Update.Mutations, Update.Mutations.Builder, Update.MutationsOrBuilder> getMutationsFieldBuilder()
    {
      if (this.mutationsBuilder_ == null)
      {
        this.mutationsBuilder_ = new SingleFieldBuilder(this.mutations_, getParentForChildren(), isClean());
        this.mutations_ = null;
      }
      return this.mutationsBuilder_;
    }

    private RepeatedFieldBuilder<UserAction, UserAction.Builder, UserActionOrBuilder> getUserActionFieldBuilder()
    {
      List localList;
      if (this.userActionBuilder_ == null)
      {
        localList = this.userAction_;
        if ((0x4 & this.bitField0_) != 4)
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
      if (Update.alwaysUseFieldBuilders)
      {
        getMutationsFieldBuilder();
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

    public Update build()
    {
      Update localUpdate = buildPartial();
      if (!localUpdate.isInitialized())
        throw newUninitializedMessageException(localUpdate);
      return localUpdate;
    }

    public Update buildPartial()
    {
      Update localUpdate = new Update(this, null);
      int i = this.bitField0_;
      int j = i & 0x1;
      int k = 0;
      if (j == 1)
        k = 0x0 | 0x1;
      if (this.mutationsBuilder_ == null)
      {
        Update.access$1402(localUpdate, this.mutations_);
        if ((i & 0x2) == 2)
          k |= 2;
        Update.access$1502(localUpdate, this.timelineItemId_);
        if (this.userActionBuilder_ != null)
          break label149;
        if ((0x4 & this.bitField0_) == 4)
        {
          this.userAction_ = Collections.unmodifiableList(this.userAction_);
          this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
        }
        Update.access$1602(localUpdate, this.userAction_);
      }
      while (true)
      {
        Update.access$1702(localUpdate, k);
        onBuilt();
        return localUpdate;
        Update.access$1402(localUpdate, (Update.Mutations)this.mutationsBuilder_.build());
        break;
        label149: Update.access$1602(localUpdate, this.userActionBuilder_.build());
      }
    }

    public Builder clear()
    {
      super.clear();
      if (this.mutationsBuilder_ == null)
        this.mutations_ = Update.Mutations.getDefaultInstance();
      while (true)
      {
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        this.timelineItemId_ = "";
        this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        if (this.userActionBuilder_ != null)
          break;
        this.userAction_ = Collections.emptyList();
        this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
        return this;
        this.mutationsBuilder_.clear();
      }
      this.userActionBuilder_.clear();
      return this;
    }

    public Builder clearMutations()
    {
      if (this.mutationsBuilder_ == null)
      {
        this.mutations_ = Update.Mutations.getDefaultInstance();
        onChanged();
      }
      while (true)
      {
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        return this;
        this.mutationsBuilder_.clear();
      }
    }

    public Builder clearTimelineItemId()
    {
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      this.timelineItemId_ = Update.getDefaultInstance().getTimelineItemId();
      onChanged();
      return this;
    }

    public Builder clearUserAction()
    {
      if (this.userActionBuilder_ == null)
      {
        this.userAction_ = Collections.emptyList();
        this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
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

    public Update getDefaultInstanceForType()
    {
      return Update.getDefaultInstance();
    }

    public Descriptors.Descriptor getDescriptorForType()
    {
      return Sync.internal_static_googlex_glass_common_proto_Update_descriptor;
    }

    public Update.Mutations getMutations()
    {
      if (this.mutationsBuilder_ == null)
        return this.mutations_;
      return (Update.Mutations)this.mutationsBuilder_.getMessage();
    }

    public Update.Mutations.Builder getMutationsBuilder()
    {
      this.bitField0_ = (0x1 | this.bitField0_);
      onChanged();
      return (Update.Mutations.Builder)getMutationsFieldBuilder().getBuilder();
    }

    public Update.MutationsOrBuilder getMutationsOrBuilder()
    {
      if (this.mutationsBuilder_ != null)
        return (Update.MutationsOrBuilder)this.mutationsBuilder_.getMessageOrBuilder();
      return this.mutations_;
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

    public boolean hasMutations()
    {
      return (0x1 & this.bitField0_) == 1;
    }

    public boolean hasTimelineItemId()
    {
      return (0x2 & this.bitField0_) == 2;
    }

    protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return Sync.internal_static_googlex_glass_common_proto_Update_fieldAccessorTable.ensureFieldAccessorsInitialized(Update.class, Builder.class);
    }

    public final boolean isInitialized()
    {
      return (!hasMutations()) || (getMutations().isInitialized());
    }

    public Builder mergeFrom(Update paramUpdate)
    {
      if (paramUpdate == Update.getDefaultInstance())
        return this;
      if (paramUpdate.hasMutations())
        mergeMutations(paramUpdate.getMutations());
      if (paramUpdate.hasTimelineItemId())
      {
        this.bitField0_ = (0x2 | this.bitField0_);
        this.timelineItemId_ = paramUpdate.timelineItemId_;
        onChanged();
      }
      if (this.userActionBuilder_ == null)
        if (!paramUpdate.userAction_.isEmpty())
        {
          if (!this.userAction_.isEmpty())
            break label119;
          this.userAction_ = paramUpdate.userAction_;
          this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
          onChanged();
        }
      while (true)
      {
        mergeUnknownFields(paramUpdate.getUnknownFields());
        return this;
        label119: ensureUserActionIsMutable();
        this.userAction_.addAll(paramUpdate.userAction_);
        break;
        if (!paramUpdate.userAction_.isEmpty())
          if (this.userActionBuilder_.isEmpty())
          {
            this.userActionBuilder_.dispose();
            this.userActionBuilder_ = null;
            this.userAction_ = paramUpdate.userAction_;
            this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
            boolean bool = Update.alwaysUseFieldBuilders;
            RepeatedFieldBuilder localRepeatedFieldBuilder = null;
            if (bool)
              localRepeatedFieldBuilder = getUserActionFieldBuilder();
            this.userActionBuilder_ = localRepeatedFieldBuilder;
          }
          else
          {
            this.userActionBuilder_.addAllMessages(paramUpdate.userAction_);
          }
      }
    }

    public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      Update localUpdate1 = null;
      try
      {
        Update localUpdate2 = (Update)Update.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
        return this;
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        localUpdate1 = (Update)localInvalidProtocolBufferException.getUnfinishedMessage();
        throw localInvalidProtocolBufferException;
      }
      finally
      {
        if (localUpdate1 != null)
          mergeFrom(localUpdate1);
      }
    }

    public Builder mergeFrom(Message paramMessage)
    {
      if ((paramMessage instanceof Update))
        return mergeFrom((Update)paramMessage);
      super.mergeFrom(paramMessage);
      return this;
    }

    public Builder mergeMutations(Update.Mutations paramMutations)
    {
      if (this.mutationsBuilder_ == null)
        if (((0x1 & this.bitField0_) == 1) && (this.mutations_ != Update.Mutations.getDefaultInstance()))
        {
          this.mutations_ = Update.Mutations.newBuilder(this.mutations_).mergeFrom(paramMutations).buildPartial();
          onChanged();
        }
      while (true)
      {
        this.bitField0_ = (0x1 | this.bitField0_);
        return this;
        this.mutations_ = paramMutations;
        break;
        this.mutationsBuilder_.mergeFrom(paramMutations);
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

    public Builder setMutations(Update.Mutations.Builder paramBuilder)
    {
      if (this.mutationsBuilder_ == null)
      {
        this.mutations_ = paramBuilder.build();
        onChanged();
      }
      while (true)
      {
        this.bitField0_ = (0x1 | this.bitField0_);
        return this;
        this.mutationsBuilder_.setMessage(paramBuilder.build());
      }
    }

    public Builder setMutations(Update.Mutations paramMutations)
    {
      if (this.mutationsBuilder_ == null)
      {
        if (paramMutations == null)
          throw new NullPointerException();
        this.mutations_ = paramMutations;
        onChanged();
      }
      while (true)
      {
        this.bitField0_ = (0x1 | this.bitField0_);
        return this;
        this.mutationsBuilder_.setMessage(paramMutations);
      }
    }

    public Builder setTimelineItemId(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x2 | this.bitField0_);
      this.timelineItemId_ = paramString;
      onChanged();
      return this;
    }

    public Builder setTimelineItemIdBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x2 | this.bitField0_);
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

  public static final class Mutations extends GeneratedMessage
    implements Update.MutationsOrBuilder
  {
    public static final int ATTACHMENT_DELETIONS_FIELD_NUMBER = 3;
    public static final int ITEM_FIELD_DELETIONS_FIELD_NUMBER = 2;
    public static final int ITEM_FIELD_NUMBER = 1;
    public static Parser<Mutations> PARSER = new AbstractParser()
    {
      public Update.Mutations parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
        throws InvalidProtocolBufferException
      {
        return new Update.Mutations(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
      }
    };
    private static final Mutations defaultInstance;
    private static volatile MutableMessage mutableDefault = null;
    private static final long serialVersionUID;
    private LazyStringList attachmentDeletions_;
    private int bitField0_;
    private List<Integer> itemFieldDeletions_;
    private TimelineItem item_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private final UnknownFieldSet unknownFields;

    static
    {
      defaultInstance = new Mutations(true);
      defaultInstance.initFields();
    }

    // ERROR //
    private Mutations(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 60	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 62	com/google/googlex/glass/common/proto/Update$Mutations:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 64	com/google/googlex/glass/common/proto/Update$Mutations:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 54	com/google/googlex/glass/common/proto/Update$Mutations:initFields	()V
      //   18: iconst_0
      //   19: istore_3
      //   20: invokestatic 70	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   23: astore 4
      //   25: iconst_0
      //   26: istore 5
      //   28: iload 5
      //   30: ifne +400 -> 430
      //   33: aload_1
      //   34: invokevirtual 76	com/google/protobuf/CodedInputStream:readTag	()I
      //   37: istore 9
      //   39: iload 9
      //   41: lookupswitch	default:+51->92, 0:+443->484, 10:+70->111, 16:+215->256, 18:+276->317, 26:+351->392
      //   93: aload_1
      //   94: aload 4
      //   96: aload_2
      //   97: iload 9
      //   99: invokevirtual 80	com/google/googlex/glass/common/proto/Update$Mutations:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   102: ifne -74 -> 28
      //   105: iconst_1
      //   106: istore 5
      //   108: goto -80 -> 28
      //   111: iconst_1
      //   112: aload_0
      //   113: getfield 82	com/google/googlex/glass/common/proto/Update$Mutations:bitField0_	I
      //   116: iand
      //   117: istore 13
      //   119: aconst_null
      //   120: astore 14
      //   122: iload 13
      //   124: iconst_1
      //   125: if_icmpne +12 -> 137
      //   128: aload_0
      //   129: getfield 84	com/google/googlex/glass/common/proto/Update$Mutations:item_	Lcom/google/googlex/glass/common/proto/TimelineItem;
      //   132: invokevirtual 90	com/google/googlex/glass/common/proto/TimelineItem:toBuilder	()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
      //   135: astore 14
      //   137: aload_0
      //   138: aload_1
      //   139: getstatic 91	com/google/googlex/glass/common/proto/TimelineItem:PARSER	Lcom/google/protobuf/Parser;
      //   142: aload_2
      //   143: invokevirtual 95	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
      //   146: checkcast 86	com/google/googlex/glass/common/proto/TimelineItem
      //   149: putfield 84	com/google/googlex/glass/common/proto/Update$Mutations:item_	Lcom/google/googlex/glass/common/proto/TimelineItem;
      //   152: aload 14
      //   154: ifnull +22 -> 176
      //   157: aload 14
      //   159: aload_0
      //   160: getfield 84	com/google/googlex/glass/common/proto/Update$Mutations:item_	Lcom/google/googlex/glass/common/proto/TimelineItem;
      //   163: invokevirtual 101	com/google/googlex/glass/common/proto/TimelineItem$Builder:mergeFrom	(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
      //   166: pop
      //   167: aload_0
      //   168: aload 14
      //   170: invokevirtual 105	com/google/googlex/glass/common/proto/TimelineItem$Builder:buildPartial	()Lcom/google/googlex/glass/common/proto/TimelineItem;
      //   173: putfield 84	com/google/googlex/glass/common/proto/Update$Mutations:item_	Lcom/google/googlex/glass/common/proto/TimelineItem;
      //   176: aload_0
      //   177: iconst_1
      //   178: aload_0
      //   179: getfield 82	com/google/googlex/glass/common/proto/Update$Mutations:bitField0_	I
      //   182: ior
      //   183: putfield 82	com/google/googlex/glass/common/proto/Update$Mutations:bitField0_	I
      //   186: goto -158 -> 28
      //   189: astore 8
      //   191: aload 8
      //   193: aload_0
      //   194: invokevirtual 109	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   197: athrow
      //   198: astore 7
      //   200: iload_3
      //   201: iconst_2
      //   202: iand
      //   203: iconst_2
      //   204: if_icmpne +14 -> 218
      //   207: aload_0
      //   208: aload_0
      //   209: getfield 111	com/google/googlex/glass/common/proto/Update$Mutations:itemFieldDeletions_	Ljava/util/List;
      //   212: invokestatic 117	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
      //   215: putfield 111	com/google/googlex/glass/common/proto/Update$Mutations:itemFieldDeletions_	Ljava/util/List;
      //   218: iload_3
      //   219: iconst_4
      //   220: iand
      //   221: iconst_4
      //   222: if_icmpne +18 -> 240
      //   225: aload_0
      //   226: new 119	com/google/protobuf/UnmodifiableLazyStringList
      //   229: dup
      //   230: aload_0
      //   231: getfield 121	com/google/googlex/glass/common/proto/Update$Mutations:attachmentDeletions_	Lcom/google/protobuf/LazyStringList;
      //   234: invokespecial 124	com/google/protobuf/UnmodifiableLazyStringList:<init>	(Lcom/google/protobuf/LazyStringList;)V
      //   237: putfield 121	com/google/googlex/glass/common/proto/Update$Mutations:attachmentDeletions_	Lcom/google/protobuf/LazyStringList;
      //   240: aload_0
      //   241: aload 4
      //   243: invokevirtual 130	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   246: putfield 132	com/google/googlex/glass/common/proto/Update$Mutations:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   249: aload_0
      //   250: invokevirtual 135	com/google/googlex/glass/common/proto/Update$Mutations:makeExtensionsImmutable	()V
      //   253: aload 7
      //   255: athrow
      //   256: iload_3
      //   257: iconst_2
      //   258: iand
      //   259: iconst_2
      //   260: if_icmpeq +18 -> 278
      //   263: aload_0
      //   264: new 137	java/util/ArrayList
      //   267: dup
      //   268: invokespecial 138	java/util/ArrayList:<init>	()V
      //   271: putfield 111	com/google/googlex/glass/common/proto/Update$Mutations:itemFieldDeletions_	Ljava/util/List;
      //   274: iload_3
      //   275: iconst_2
      //   276: ior
      //   277: istore_3
      //   278: aload_0
      //   279: getfield 111	com/google/googlex/glass/common/proto/Update$Mutations:itemFieldDeletions_	Ljava/util/List;
      //   282: aload_1
      //   283: invokevirtual 141	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   286: invokestatic 147	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   289: invokeinterface 153 2 0
      //   294: pop
      //   295: goto -267 -> 28
      //   298: astore 6
      //   300: new 57	com/google/protobuf/InvalidProtocolBufferException
      //   303: dup
      //   304: aload 6
      //   306: invokevirtual 157	java/io/IOException:getMessage	()Ljava/lang/String;
      //   309: invokespecial 160	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   312: aload_0
      //   313: invokevirtual 109	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   316: athrow
      //   317: aload_1
      //   318: aload_1
      //   319: invokevirtual 163	com/google/protobuf/CodedInputStream:readRawVarint32	()I
      //   322: invokevirtual 167	com/google/protobuf/CodedInputStream:pushLimit	(I)I
      //   325: istore 10
      //   327: iload_3
      //   328: iconst_2
      //   329: iand
      //   330: iconst_2
      //   331: if_icmpeq +25 -> 356
      //   334: aload_1
      //   335: invokevirtual 170	com/google/protobuf/CodedInputStream:getBytesUntilLimit	()I
      //   338: ifle +18 -> 356
      //   341: aload_0
      //   342: new 137	java/util/ArrayList
      //   345: dup
      //   346: invokespecial 138	java/util/ArrayList:<init>	()V
      //   349: putfield 111	com/google/googlex/glass/common/proto/Update$Mutations:itemFieldDeletions_	Ljava/util/List;
      //   352: iload_3
      //   353: iconst_2
      //   354: ior
      //   355: istore_3
      //   356: aload_1
      //   357: invokevirtual 170	com/google/protobuf/CodedInputStream:getBytesUntilLimit	()I
      //   360: ifle +23 -> 383
      //   363: aload_0
      //   364: getfield 111	com/google/googlex/glass/common/proto/Update$Mutations:itemFieldDeletions_	Ljava/util/List;
      //   367: aload_1
      //   368: invokevirtual 141	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   371: invokestatic 147	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   374: invokeinterface 153 2 0
      //   379: pop
      //   380: goto -24 -> 356
      //   383: aload_1
      //   384: iload 10
      //   386: invokevirtual 174	com/google/protobuf/CodedInputStream:popLimit	(I)V
      //   389: goto -361 -> 28
      //   392: iload_3
      //   393: iconst_4
      //   394: iand
      //   395: iconst_4
      //   396: if_icmpeq +18 -> 414
      //   399: aload_0
      //   400: new 176	com/google/protobuf/LazyStringArrayList
      //   403: dup
      //   404: invokespecial 177	com/google/protobuf/LazyStringArrayList:<init>	()V
      //   407: putfield 121	com/google/googlex/glass/common/proto/Update$Mutations:attachmentDeletions_	Lcom/google/protobuf/LazyStringList;
      //   410: iload_3
      //   411: iconst_4
      //   412: ior
      //   413: istore_3
      //   414: aload_0
      //   415: getfield 121	com/google/googlex/glass/common/proto/Update$Mutations:attachmentDeletions_	Lcom/google/protobuf/LazyStringList;
      //   418: aload_1
      //   419: invokevirtual 181	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   422: invokeinterface 186 2 0
      //   427: goto -399 -> 28
      //   430: iload_3
      //   431: iconst_2
      //   432: iand
      //   433: iconst_2
      //   434: if_icmpne +14 -> 448
      //   437: aload_0
      //   438: aload_0
      //   439: getfield 111	com/google/googlex/glass/common/proto/Update$Mutations:itemFieldDeletions_	Ljava/util/List;
      //   442: invokestatic 117	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
      //   445: putfield 111	com/google/googlex/glass/common/proto/Update$Mutations:itemFieldDeletions_	Ljava/util/List;
      //   448: iload_3
      //   449: iconst_4
      //   450: iand
      //   451: iconst_4
      //   452: if_icmpne +18 -> 470
      //   455: aload_0
      //   456: new 119	com/google/protobuf/UnmodifiableLazyStringList
      //   459: dup
      //   460: aload_0
      //   461: getfield 121	com/google/googlex/glass/common/proto/Update$Mutations:attachmentDeletions_	Lcom/google/protobuf/LazyStringList;
      //   464: invokespecial 124	com/google/protobuf/UnmodifiableLazyStringList:<init>	(Lcom/google/protobuf/LazyStringList;)V
      //   467: putfield 121	com/google/googlex/glass/common/proto/Update$Mutations:attachmentDeletions_	Lcom/google/protobuf/LazyStringList;
      //   470: aload_0
      //   471: aload 4
      //   473: invokevirtual 130	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   476: putfield 132	com/google/googlex/glass/common/proto/Update$Mutations:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   479: aload_0
      //   480: invokevirtual 135	com/google/googlex/glass/common/proto/Update$Mutations:makeExtensionsImmutable	()V
      //   483: return
      //   484: iconst_1
      //   485: istore 5
      //   487: goto -459 -> 28
      //
      // Exception table:
      //   from	to	target	type
      //   33	39	189	com/google/protobuf/InvalidProtocolBufferException
      //   92	105	189	com/google/protobuf/InvalidProtocolBufferException
      //   111	119	189	com/google/protobuf/InvalidProtocolBufferException
      //   128	137	189	com/google/protobuf/InvalidProtocolBufferException
      //   137	152	189	com/google/protobuf/InvalidProtocolBufferException
      //   157	176	189	com/google/protobuf/InvalidProtocolBufferException
      //   176	186	189	com/google/protobuf/InvalidProtocolBufferException
      //   263	274	189	com/google/protobuf/InvalidProtocolBufferException
      //   278	295	189	com/google/protobuf/InvalidProtocolBufferException
      //   317	327	189	com/google/protobuf/InvalidProtocolBufferException
      //   334	352	189	com/google/protobuf/InvalidProtocolBufferException
      //   356	380	189	com/google/protobuf/InvalidProtocolBufferException
      //   383	389	189	com/google/protobuf/InvalidProtocolBufferException
      //   399	410	189	com/google/protobuf/InvalidProtocolBufferException
      //   414	427	189	com/google/protobuf/InvalidProtocolBufferException
      //   33	39	198	finally
      //   92	105	198	finally
      //   111	119	198	finally
      //   128	137	198	finally
      //   137	152	198	finally
      //   157	176	198	finally
      //   176	186	198	finally
      //   191	198	198	finally
      //   263	274	198	finally
      //   278	295	198	finally
      //   300	317	198	finally
      //   317	327	198	finally
      //   334	352	198	finally
      //   356	380	198	finally
      //   383	389	198	finally
      //   399	410	198	finally
      //   414	427	198	finally
      //   33	39	298	java/io/IOException
      //   92	105	298	java/io/IOException
      //   111	119	298	java/io/IOException
      //   128	137	298	java/io/IOException
      //   137	152	298	java/io/IOException
      //   157	176	298	java/io/IOException
      //   176	186	298	java/io/IOException
      //   263	274	298	java/io/IOException
      //   278	295	298	java/io/IOException
      //   317	327	298	java/io/IOException
      //   334	352	298	java/io/IOException
      //   356	380	298	java/io/IOException
      //   383	389	298	java/io/IOException
      //   399	410	298	java/io/IOException
      //   414	427	298	java/io/IOException
    }

    private Mutations(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }

    private Mutations(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }

    public static Mutations getDefaultInstance()
    {
      return defaultInstance;
    }

    public static final Descriptors.Descriptor getDescriptor()
    {
      return Sync.internal_static_googlex_glass_common_proto_Update_Mutations_descriptor;
    }

    private void initFields()
    {
      this.item_ = TimelineItem.getDefaultInstance();
      this.itemFieldDeletions_ = Collections.emptyList();
      this.attachmentDeletions_ = LazyStringArrayList.EMPTY;
    }

    public static Builder newBuilder()
    {
      return Builder.access$200();
    }

    public static Builder newBuilder(Mutations paramMutations)
    {
      return newBuilder().mergeFrom(paramMutations);
    }

    public static Mutations parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (Mutations)PARSER.parseDelimitedFrom(paramInputStream);
    }

    public static Mutations parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (Mutations)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }

    public static Mutations parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (Mutations)PARSER.parseFrom(paramByteString);
    }

    public static Mutations parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (Mutations)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }

    public static Mutations parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (Mutations)PARSER.parseFrom(paramCodedInputStream);
    }

    public static Mutations parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (Mutations)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }

    public static Mutations parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (Mutations)PARSER.parseFrom(paramInputStream);
    }

    public static Mutations parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (Mutations)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }

    public static Mutations parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (Mutations)PARSER.parseFrom(paramArrayOfByte);
    }

    public static Mutations parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (Mutations)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }

    public String getAttachmentDeletions(int paramInt)
    {
      return (String)this.attachmentDeletions_.get(paramInt);
    }

    public ByteString getAttachmentDeletionsBytes(int paramInt)
    {
      return this.attachmentDeletions_.getByteString(paramInt);
    }

    public int getAttachmentDeletionsCount()
    {
      return this.attachmentDeletions_.size();
    }

    public List<String> getAttachmentDeletionsList()
    {
      return this.attachmentDeletions_;
    }

    public Mutations getDefaultInstanceForType()
    {
      return defaultInstance;
    }

    public TimelineItem getItem()
    {
      return this.item_;
    }

    public int getItemFieldDeletions(int paramInt)
    {
      return ((Integer)this.itemFieldDeletions_.get(paramInt)).intValue();
    }

    public int getItemFieldDeletionsCount()
    {
      return this.itemFieldDeletions_.size();
    }

    public List<Integer> getItemFieldDeletionsList()
    {
      return this.itemFieldDeletions_;
    }

    public TimelineItemOrBuilder getItemOrBuilder()
    {
      return this.item_;
    }

    public Parser<Mutations> getParserForType()
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
        k = 0 + CodedOutputStream.computeMessageSize(1, this.item_);
      int m = 0;
      for (int n = 0; n < this.itemFieldDeletions_.size(); n++)
        m += CodedOutputStream.computeUInt32SizeNoTag(((Integer)this.itemFieldDeletions_.get(n)).intValue());
      int i1 = k + m + 1 * getItemFieldDeletionsList().size();
      int i2 = 0;
      for (int i3 = 0; i3 < this.attachmentDeletions_.size(); i3++)
        i2 += CodedOutputStream.computeBytesSizeNoTag(this.attachmentDeletions_.getByteString(i3));
      int i4 = i1 + i2 + 1 * getAttachmentDeletionsList().size() + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = i4;
      return i4;
    }

    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }

    public boolean hasItem()
    {
      return (0x1 & this.bitField0_) == 1;
    }

    protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return Sync.internal_static_googlex_glass_common_proto_Update_Mutations_fieldAccessorTable.ensureFieldAccessorsInitialized(Mutations.class, Builder.class);
    }

    protected MutableMessage internalMutableDefault()
    {
      if (mutableDefault == null)
        mutableDefault = internalMutableDefault("com.google.googlex.glass.common.proto.MutableSync$Update$Mutations");
      return mutableDefault;
    }

    public final boolean isInitialized()
    {
      int i = this.memoizedIsInitialized;
      if (i != -1)
        return i == 1;
      if (!hasItem())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
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
        paramCodedOutputStream.writeMessage(1, this.item_);
      for (int i = 0; i < this.itemFieldDeletions_.size(); i++)
        paramCodedOutputStream.writeUInt32(2, ((Integer)this.itemFieldDeletions_.get(i)).intValue());
      for (int j = 0; j < this.attachmentDeletions_.size(); j++)
        paramCodedOutputStream.writeBytes(3, this.attachmentDeletions_.getByteString(j));
      getUnknownFields().writeTo(paramCodedOutputStream);
    }

    public static final class Builder extends GeneratedMessage.Builder<Builder>
      implements Update.MutationsOrBuilder
    {
      private LazyStringList attachmentDeletions_ = LazyStringArrayList.EMPTY;
      private int bitField0_;
      private SingleFieldBuilder<TimelineItem, TimelineItem.Builder, TimelineItemOrBuilder> itemBuilder_;
      private List<Integer> itemFieldDeletions_ = Collections.emptyList();
      private TimelineItem item_ = TimelineItem.getDefaultInstance();

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

      private void ensureAttachmentDeletionsIsMutable()
      {
        if ((0x4 & this.bitField0_) != 4)
        {
          this.attachmentDeletions_ = new LazyStringArrayList(this.attachmentDeletions_);
          this.bitField0_ = (0x4 | this.bitField0_);
        }
      }

      private void ensureItemFieldDeletionsIsMutable()
      {
        if ((0x2 & this.bitField0_) != 2)
        {
          this.itemFieldDeletions_ = new ArrayList(this.itemFieldDeletions_);
          this.bitField0_ = (0x2 | this.bitField0_);
        }
      }

      public static final Descriptors.Descriptor getDescriptor()
      {
        return Sync.internal_static_googlex_glass_common_proto_Update_Mutations_descriptor;
      }

      private SingleFieldBuilder<TimelineItem, TimelineItem.Builder, TimelineItemOrBuilder> getItemFieldBuilder()
      {
        if (this.itemBuilder_ == null)
        {
          this.itemBuilder_ = new SingleFieldBuilder(this.item_, getParentForChildren(), isClean());
          this.item_ = null;
        }
        return this.itemBuilder_;
      }

      private void maybeForceBuilderInitialization()
      {
        if (Update.Mutations.alwaysUseFieldBuilders)
          getItemFieldBuilder();
      }

      public Builder addAllAttachmentDeletions(Iterable<String> paramIterable)
      {
        ensureAttachmentDeletionsIsMutable();
        AbstractMessageLite.Builder.addAll(paramIterable, this.attachmentDeletions_);
        onChanged();
        return this;
      }

      public Builder addAllItemFieldDeletions(Iterable<? extends Integer> paramIterable)
      {
        ensureItemFieldDeletionsIsMutable();
        AbstractMessageLite.Builder.addAll(paramIterable, this.itemFieldDeletions_);
        onChanged();
        return this;
      }

      public Builder addAttachmentDeletions(String paramString)
      {
        if (paramString == null)
          throw new NullPointerException();
        ensureAttachmentDeletionsIsMutable();
        this.attachmentDeletions_.add(paramString);
        onChanged();
        return this;
      }

      public Builder addAttachmentDeletionsBytes(ByteString paramByteString)
      {
        if (paramByteString == null)
          throw new NullPointerException();
        ensureAttachmentDeletionsIsMutable();
        this.attachmentDeletions_.add(paramByteString);
        onChanged();
        return this;
      }

      public Builder addItemFieldDeletions(int paramInt)
      {
        ensureItemFieldDeletionsIsMutable();
        this.itemFieldDeletions_.add(Integer.valueOf(paramInt));
        onChanged();
        return this;
      }

      public Update.Mutations build()
      {
        Update.Mutations localMutations = buildPartial();
        if (!localMutations.isInitialized())
          throw newUninitializedMessageException(localMutations);
        return localMutations;
      }

      public Update.Mutations buildPartial()
      {
        Update.Mutations localMutations = new Update.Mutations(this, null);
        int i = 0x1 & this.bitField0_;
        int j = 0;
        if (i == 1)
          j = 0x0 | 0x1;
        if (this.itemBuilder_ == null)
          Update.Mutations.access$602(localMutations, this.item_);
        while (true)
        {
          if ((0x2 & this.bitField0_) == 2)
          {
            this.itemFieldDeletions_ = Collections.unmodifiableList(this.itemFieldDeletions_);
            this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
          }
          Update.Mutations.access$702(localMutations, this.itemFieldDeletions_);
          if ((0x4 & this.bitField0_) == 4)
          {
            this.attachmentDeletions_ = new UnmodifiableLazyStringList(this.attachmentDeletions_);
            this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
          }
          Update.Mutations.access$802(localMutations, this.attachmentDeletions_);
          Update.Mutations.access$902(localMutations, j);
          onBuilt();
          return localMutations;
          Update.Mutations.access$602(localMutations, (TimelineItem)this.itemBuilder_.build());
        }
      }

      public Builder clear()
      {
        super.clear();
        if (this.itemBuilder_ == null)
          this.item_ = TimelineItem.getDefaultInstance();
        while (true)
        {
          this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
          this.itemFieldDeletions_ = Collections.emptyList();
          this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
          this.attachmentDeletions_ = LazyStringArrayList.EMPTY;
          this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
          return this;
          this.itemBuilder_.clear();
        }
      }

      public Builder clearAttachmentDeletions()
      {
        this.attachmentDeletions_ = LazyStringArrayList.EMPTY;
        this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
        onChanged();
        return this;
      }

      public Builder clearItem()
      {
        if (this.itemBuilder_ == null)
        {
          this.item_ = TimelineItem.getDefaultInstance();
          onChanged();
        }
        while (true)
        {
          this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
          return this;
          this.itemBuilder_.clear();
        }
      }

      public Builder clearItemFieldDeletions()
      {
        this.itemFieldDeletions_ = Collections.emptyList();
        this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        onChanged();
        return this;
      }

      public Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }

      public String getAttachmentDeletions(int paramInt)
      {
        return (String)this.attachmentDeletions_.get(paramInt);
      }

      public ByteString getAttachmentDeletionsBytes(int paramInt)
      {
        return this.attachmentDeletions_.getByteString(paramInt);
      }

      public int getAttachmentDeletionsCount()
      {
        return this.attachmentDeletions_.size();
      }

      public List<String> getAttachmentDeletionsList()
      {
        return Collections.unmodifiableList(this.attachmentDeletions_);
      }

      public Update.Mutations getDefaultInstanceForType()
      {
        return Update.Mutations.getDefaultInstance();
      }

      public Descriptors.Descriptor getDescriptorForType()
      {
        return Sync.internal_static_googlex_glass_common_proto_Update_Mutations_descriptor;
      }

      public TimelineItem getItem()
      {
        if (this.itemBuilder_ == null)
          return this.item_;
        return (TimelineItem)this.itemBuilder_.getMessage();
      }

      public TimelineItem.Builder getItemBuilder()
      {
        this.bitField0_ = (0x1 | this.bitField0_);
        onChanged();
        return (TimelineItem.Builder)getItemFieldBuilder().getBuilder();
      }

      public int getItemFieldDeletions(int paramInt)
      {
        return ((Integer)this.itemFieldDeletions_.get(paramInt)).intValue();
      }

      public int getItemFieldDeletionsCount()
      {
        return this.itemFieldDeletions_.size();
      }

      public List<Integer> getItemFieldDeletionsList()
      {
        return Collections.unmodifiableList(this.itemFieldDeletions_);
      }

      public TimelineItemOrBuilder getItemOrBuilder()
      {
        if (this.itemBuilder_ != null)
          return (TimelineItemOrBuilder)this.itemBuilder_.getMessageOrBuilder();
        return this.item_;
      }

      public boolean hasItem()
      {
        return (0x1 & this.bitField0_) == 1;
      }

      protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return Sync.internal_static_googlex_glass_common_proto_Update_Mutations_fieldAccessorTable.ensureFieldAccessorsInitialized(Update.Mutations.class, Builder.class);
      }

      public final boolean isInitialized()
      {
        return hasItem();
      }

      public Builder mergeFrom(Update.Mutations paramMutations)
      {
        if (paramMutations == Update.Mutations.getDefaultInstance())
          return this;
        if (paramMutations.hasItem())
          mergeItem(paramMutations.getItem());
        if (!paramMutations.itemFieldDeletions_.isEmpty())
        {
          if (this.itemFieldDeletions_.isEmpty())
          {
            this.itemFieldDeletions_ = paramMutations.itemFieldDeletions_;
            this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
            onChanged();
          }
        }
        else if (!paramMutations.attachmentDeletions_.isEmpty())
        {
          if (!this.attachmentDeletions_.isEmpty())
            break label151;
          this.attachmentDeletions_ = paramMutations.attachmentDeletions_;
          this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
        }
        while (true)
        {
          onChanged();
          mergeUnknownFields(paramMutations.getUnknownFields());
          return this;
          ensureItemFieldDeletionsIsMutable();
          this.itemFieldDeletions_.addAll(paramMutations.itemFieldDeletions_);
          break;
          label151: ensureAttachmentDeletionsIsMutable();
          this.attachmentDeletions_.addAll(paramMutations.attachmentDeletions_);
        }
      }

      public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
        throws IOException
      {
        Update.Mutations localMutations1 = null;
        try
        {
          Update.Mutations localMutations2 = (Update.Mutations)Update.Mutations.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
          return this;
        }
        catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
        {
          localMutations1 = (Update.Mutations)localInvalidProtocolBufferException.getUnfinishedMessage();
          throw localInvalidProtocolBufferException;
        }
        finally
        {
          if (localMutations1 != null)
            mergeFrom(localMutations1);
        }
      }

      public Builder mergeFrom(Message paramMessage)
      {
        if ((paramMessage instanceof Update.Mutations))
          return mergeFrom((Update.Mutations)paramMessage);
        super.mergeFrom(paramMessage);
        return this;
      }

      public Builder mergeItem(TimelineItem paramTimelineItem)
      {
        if (this.itemBuilder_ == null)
          if (((0x1 & this.bitField0_) == 1) && (this.item_ != TimelineItem.getDefaultInstance()))
          {
            this.item_ = TimelineItem.newBuilder(this.item_).mergeFrom(paramTimelineItem).buildPartial();
            onChanged();
          }
        while (true)
        {
          this.bitField0_ = (0x1 | this.bitField0_);
          return this;
          this.item_ = paramTimelineItem;
          break;
          this.itemBuilder_.mergeFrom(paramTimelineItem);
        }
      }

      public Builder setAttachmentDeletions(int paramInt, String paramString)
      {
        if (paramString == null)
          throw new NullPointerException();
        ensureAttachmentDeletionsIsMutable();
        this.attachmentDeletions_.set(paramInt, paramString);
        onChanged();
        return this;
      }

      public Builder setItem(TimelineItem.Builder paramBuilder)
      {
        if (this.itemBuilder_ == null)
        {
          this.item_ = paramBuilder.build();
          onChanged();
        }
        while (true)
        {
          this.bitField0_ = (0x1 | this.bitField0_);
          return this;
          this.itemBuilder_.setMessage(paramBuilder.build());
        }
      }

      public Builder setItem(TimelineItem paramTimelineItem)
      {
        if (this.itemBuilder_ == null)
        {
          if (paramTimelineItem == null)
            throw new NullPointerException();
          this.item_ = paramTimelineItem;
          onChanged();
        }
        while (true)
        {
          this.bitField0_ = (0x1 | this.bitField0_);
          return this;
          this.itemBuilder_.setMessage(paramTimelineItem);
        }
      }

      public Builder setItemFieldDeletions(int paramInt1, int paramInt2)
      {
        ensureItemFieldDeletionsIsMutable();
        this.itemFieldDeletions_.set(paramInt1, Integer.valueOf(paramInt2));
        onChanged();
        return this;
      }
    }
  }

  public static abstract interface MutationsOrBuilder extends MessageOrBuilder
  {
    public abstract String getAttachmentDeletions(int paramInt);

    public abstract ByteString getAttachmentDeletionsBytes(int paramInt);

    public abstract int getAttachmentDeletionsCount();

    public abstract List<String> getAttachmentDeletionsList();

    public abstract TimelineItem getItem();

    public abstract int getItemFieldDeletions(int paramInt);

    public abstract int getItemFieldDeletionsCount();

    public abstract List<Integer> getItemFieldDeletionsList();

    public abstract TimelineItemOrBuilder getItemOrBuilder();

    public abstract boolean hasItem();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.Update
 * JD-Core Version:    0.6.2
 */