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

public final class BatchHeader extends GeneratedMessage
  implements BatchHeaderOrBuilder
{
  public static final int AUTH_TOKEN_FIELD_NUMBER = 1;
  public static final int DISPATCHER_ID_FIELD_NUMBER = 2;
  public static Parser<BatchHeader> PARSER = new AbstractParser()
  {
    public BatchHeader parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return new BatchHeader(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
    }
  };
  private static final BatchHeader defaultInstance;
  private static volatile MutableMessage mutableDefault = null;
  private static final long serialVersionUID;
  private List<AuthToken> authToken_;
  private int bitField0_;
  private long dispatcherId_;
  private byte memoizedIsInitialized = -1;
  private int memoizedSerializedSize = -1;
  private final UnknownFieldSet unknownFields;

  static
  {
    defaultInstance = new BatchHeader(true);
    defaultInstance.initFields();
  }

  // ERROR //
  private BatchHeader(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 55	com/google/protobuf/GeneratedMessage:<init>	()V
    //   4: aload_0
    //   5: iconst_m1
    //   6: putfield 57	com/google/googlex/glass/common/proto/BatchHeader:memoizedIsInitialized	B
    //   9: aload_0
    //   10: iconst_m1
    //   11: putfield 59	com/google/googlex/glass/common/proto/BatchHeader:memoizedSerializedSize	I
    //   14: aload_0
    //   15: invokespecial 49	com/google/googlex/glass/common/proto/BatchHeader:initFields	()V
    //   18: iconst_0
    //   19: istore_3
    //   20: invokestatic 65	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
    //   23: astore 4
    //   25: iconst_0
    //   26: istore 5
    //   28: iload 5
    //   30: ifne +193 -> 223
    //   33: aload_1
    //   34: invokevirtual 71	com/google/protobuf/CodedInputStream:readTag	()I
    //   37: istore 9
    //   39: iload 9
    //   41: lookupswitch	default:+35->76, 0:+214->255, 10:+54->95, 16:+142->183
    //   77: aload_1
    //   78: aload 4
    //   80: aload_2
    //   81: iload 9
    //   83: invokevirtual 75	com/google/googlex/glass/common/proto/BatchHeader:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    //   86: ifne -58 -> 28
    //   89: iconst_1
    //   90: istore 5
    //   92: goto -64 -> 28
    //   95: iload_3
    //   96: iconst_1
    //   97: iand
    //   98: iconst_1
    //   99: if_icmpeq +18 -> 117
    //   102: aload_0
    //   103: new 77	java/util/ArrayList
    //   106: dup
    //   107: invokespecial 78	java/util/ArrayList:<init>	()V
    //   110: putfield 80	com/google/googlex/glass/common/proto/BatchHeader:authToken_	Ljava/util/List;
    //   113: iload_3
    //   114: iconst_1
    //   115: ior
    //   116: istore_3
    //   117: aload_0
    //   118: getfield 80	com/google/googlex/glass/common/proto/BatchHeader:authToken_	Ljava/util/List;
    //   121: aload_1
    //   122: getstatic 83	com/google/googlex/glass/common/proto/AuthToken:PARSER	Lcom/google/protobuf/Parser;
    //   125: aload_2
    //   126: invokevirtual 87	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
    //   129: invokeinterface 93 2 0
    //   134: pop
    //   135: goto -107 -> 28
    //   138: astore 8
    //   140: aload 8
    //   142: aload_0
    //   143: invokevirtual 97	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   146: athrow
    //   147: astore 7
    //   149: iload_3
    //   150: iconst_1
    //   151: iand
    //   152: iconst_1
    //   153: if_icmpne +14 -> 167
    //   156: aload_0
    //   157: aload_0
    //   158: getfield 80	com/google/googlex/glass/common/proto/BatchHeader:authToken_	Ljava/util/List;
    //   161: invokestatic 103	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   164: putfield 80	com/google/googlex/glass/common/proto/BatchHeader:authToken_	Ljava/util/List;
    //   167: aload_0
    //   168: aload 4
    //   170: invokevirtual 109	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   173: putfield 111	com/google/googlex/glass/common/proto/BatchHeader:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   176: aload_0
    //   177: invokevirtual 114	com/google/googlex/glass/common/proto/BatchHeader:makeExtensionsImmutable	()V
    //   180: aload 7
    //   182: athrow
    //   183: aload_0
    //   184: iconst_1
    //   185: aload_0
    //   186: getfield 116	com/google/googlex/glass/common/proto/BatchHeader:bitField0_	I
    //   189: ior
    //   190: putfield 116	com/google/googlex/glass/common/proto/BatchHeader:bitField0_	I
    //   193: aload_0
    //   194: aload_1
    //   195: invokevirtual 120	com/google/protobuf/CodedInputStream:readInt64	()J
    //   198: putfield 122	com/google/googlex/glass/common/proto/BatchHeader:dispatcherId_	J
    //   201: goto -173 -> 28
    //   204: astore 6
    //   206: new 52	com/google/protobuf/InvalidProtocolBufferException
    //   209: dup
    //   210: aload 6
    //   212: invokevirtual 126	java/io/IOException:getMessage	()Ljava/lang/String;
    //   215: invokespecial 129	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
    //   218: aload_0
    //   219: invokevirtual 97	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   222: athrow
    //   223: iload_3
    //   224: iconst_1
    //   225: iand
    //   226: iconst_1
    //   227: if_icmpne +14 -> 241
    //   230: aload_0
    //   231: aload_0
    //   232: getfield 80	com/google/googlex/glass/common/proto/BatchHeader:authToken_	Ljava/util/List;
    //   235: invokestatic 103	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   238: putfield 80	com/google/googlex/glass/common/proto/BatchHeader:authToken_	Ljava/util/List;
    //   241: aload_0
    //   242: aload 4
    //   244: invokevirtual 109	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   247: putfield 111	com/google/googlex/glass/common/proto/BatchHeader:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   250: aload_0
    //   251: invokevirtual 114	com/google/googlex/glass/common/proto/BatchHeader:makeExtensionsImmutable	()V
    //   254: return
    //   255: iconst_1
    //   256: istore 5
    //   258: goto -230 -> 28
    //
    // Exception table:
    //   from	to	target	type
    //   33	39	138	com/google/protobuf/InvalidProtocolBufferException
    //   76	89	138	com/google/protobuf/InvalidProtocolBufferException
    //   102	113	138	com/google/protobuf/InvalidProtocolBufferException
    //   117	135	138	com/google/protobuf/InvalidProtocolBufferException
    //   183	201	138	com/google/protobuf/InvalidProtocolBufferException
    //   33	39	147	finally
    //   76	89	147	finally
    //   102	113	147	finally
    //   117	135	147	finally
    //   140	147	147	finally
    //   183	201	147	finally
    //   206	223	147	finally
    //   33	39	204	java/io/IOException
    //   76	89	204	java/io/IOException
    //   102	113	204	java/io/IOException
    //   117	135	204	java/io/IOException
    //   183	201	204	java/io/IOException
  }

  private BatchHeader(GeneratedMessage.Builder<?> paramBuilder)
  {
    super(paramBuilder);
    this.unknownFields = paramBuilder.getUnknownFields();
  }

  private BatchHeader(boolean paramBoolean)
  {
    this.unknownFields = UnknownFieldSet.getDefaultInstance();
  }

  public static BatchHeader getDefaultInstance()
  {
    return defaultInstance;
  }

  public static final Descriptors.Descriptor getDescriptor()
  {
    return Batch.internal_static_googlex_glass_common_proto_BatchHeader_descriptor;
  }

  private void initFields()
  {
    this.authToken_ = Collections.emptyList();
    this.dispatcherId_ = 0L;
  }

  public static Builder newBuilder()
  {
    return Builder.access$100();
  }

  public static Builder newBuilder(BatchHeader paramBatchHeader)
  {
    return newBuilder().mergeFrom(paramBatchHeader);
  }

  public static BatchHeader parseDelimitedFrom(InputStream paramInputStream)
    throws IOException
  {
    return (BatchHeader)PARSER.parseDelimitedFrom(paramInputStream);
  }

  public static BatchHeader parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (BatchHeader)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static BatchHeader parseFrom(ByteString paramByteString)
    throws InvalidProtocolBufferException
  {
    return (BatchHeader)PARSER.parseFrom(paramByteString);
  }

  public static BatchHeader parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (BatchHeader)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
  }

  public static BatchHeader parseFrom(CodedInputStream paramCodedInputStream)
    throws IOException
  {
    return (BatchHeader)PARSER.parseFrom(paramCodedInputStream);
  }

  public static BatchHeader parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (BatchHeader)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
  }

  public static BatchHeader parseFrom(InputStream paramInputStream)
    throws IOException
  {
    return (BatchHeader)PARSER.parseFrom(paramInputStream);
  }

  public static BatchHeader parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (BatchHeader)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static BatchHeader parseFrom(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    return (BatchHeader)PARSER.parseFrom(paramArrayOfByte);
  }

  public static BatchHeader parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (BatchHeader)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
  }

  public AuthToken getAuthToken(int paramInt)
  {
    return (AuthToken)this.authToken_.get(paramInt);
  }

  public int getAuthTokenCount()
  {
    return this.authToken_.size();
  }

  public List<AuthToken> getAuthTokenList()
  {
    return this.authToken_;
  }

  public AuthTokenOrBuilder getAuthTokenOrBuilder(int paramInt)
  {
    return (AuthTokenOrBuilder)this.authToken_.get(paramInt);
  }

  public List<? extends AuthTokenOrBuilder> getAuthTokenOrBuilderList()
  {
    return this.authToken_;
  }

  public BatchHeader getDefaultInstanceForType()
  {
    return defaultInstance;
  }

  public long getDispatcherId()
  {
    return this.dispatcherId_;
  }

  public Parser<BatchHeader> getParserForType()
  {
    return PARSER;
  }

  public int getSerializedSize()
  {
    int i = this.memoizedSerializedSize;
    if (i != -1)
      return i;
    int j = 0;
    for (int k = 0; k < this.authToken_.size(); k++)
      j += CodedOutputStream.computeMessageSize(1, (MessageLite)this.authToken_.get(k));
    if ((0x1 & this.bitField0_) == 1)
      j += CodedOutputStream.computeInt64Size(2, this.dispatcherId_);
    int m = j + getUnknownFields().getSerializedSize();
    this.memoizedSerializedSize = m;
    return m;
  }

  public final UnknownFieldSet getUnknownFields()
  {
    return this.unknownFields;
  }

  public boolean hasDispatcherId()
  {
    return (0x1 & this.bitField0_) == 1;
  }

  protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
  {
    return Batch.internal_static_googlex_glass_common_proto_BatchHeader_fieldAccessorTable.ensureFieldAccessorsInitialized(BatchHeader.class, Builder.class);
  }

  protected MutableMessage internalMutableDefault()
  {
    if (mutableDefault == null)
      mutableDefault = internalMutableDefault("com.google.googlex.glass.common.proto.MutableBatch$BatchHeader");
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
    for (int i = 0; i < this.authToken_.size(); i++)
      paramCodedOutputStream.writeMessage(1, (MessageLite)this.authToken_.get(i));
    if ((0x1 & this.bitField0_) == 1)
      paramCodedOutputStream.writeInt64(2, this.dispatcherId_);
    getUnknownFields().writeTo(paramCodedOutputStream);
  }

  public static final class Builder extends GeneratedMessage.Builder<Builder>
    implements BatchHeaderOrBuilder
  {
    private RepeatedFieldBuilder<AuthToken, AuthToken.Builder, AuthTokenOrBuilder> authTokenBuilder_;
    private List<AuthToken> authToken_ = Collections.emptyList();
    private int bitField0_;
    private long dispatcherId_;

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

    private void ensureAuthTokenIsMutable()
    {
      if ((0x1 & this.bitField0_) != 1)
      {
        this.authToken_ = new ArrayList(this.authToken_);
        this.bitField0_ = (0x1 | this.bitField0_);
      }
    }

    private RepeatedFieldBuilder<AuthToken, AuthToken.Builder, AuthTokenOrBuilder> getAuthTokenFieldBuilder()
    {
      int i = 1;
      List localList;
      if (this.authTokenBuilder_ == null)
      {
        localList = this.authToken_;
        if ((0x1 & this.bitField0_) != i)
          break label55;
      }
      while (true)
      {
        this.authTokenBuilder_ = new RepeatedFieldBuilder(localList, i, getParentForChildren(), isClean());
        this.authToken_ = null;
        return this.authTokenBuilder_;
        label55: int j = 0;
      }
    }

    public static final Descriptors.Descriptor getDescriptor()
    {
      return Batch.internal_static_googlex_glass_common_proto_BatchHeader_descriptor;
    }

    private void maybeForceBuilderInitialization()
    {
      if (BatchHeader.alwaysUseFieldBuilders)
        getAuthTokenFieldBuilder();
    }

    public Builder addAllAuthToken(Iterable<? extends AuthToken> paramIterable)
    {
      if (this.authTokenBuilder_ == null)
      {
        ensureAuthTokenIsMutable();
        AbstractMessageLite.Builder.addAll(paramIterable, this.authToken_);
        onChanged();
        return this;
      }
      this.authTokenBuilder_.addAllMessages(paramIterable);
      return this;
    }

    public Builder addAuthToken(int paramInt, AuthToken.Builder paramBuilder)
    {
      if (this.authTokenBuilder_ == null)
      {
        ensureAuthTokenIsMutable();
        this.authToken_.add(paramInt, paramBuilder.build());
        onChanged();
        return this;
      }
      this.authTokenBuilder_.addMessage(paramInt, paramBuilder.build());
      return this;
    }

    public Builder addAuthToken(int paramInt, AuthToken paramAuthToken)
    {
      if (this.authTokenBuilder_ == null)
      {
        if (paramAuthToken == null)
          throw new NullPointerException();
        ensureAuthTokenIsMutable();
        this.authToken_.add(paramInt, paramAuthToken);
        onChanged();
        return this;
      }
      this.authTokenBuilder_.addMessage(paramInt, paramAuthToken);
      return this;
    }

    public Builder addAuthToken(AuthToken.Builder paramBuilder)
    {
      if (this.authTokenBuilder_ == null)
      {
        ensureAuthTokenIsMutable();
        this.authToken_.add(paramBuilder.build());
        onChanged();
        return this;
      }
      this.authTokenBuilder_.addMessage(paramBuilder.build());
      return this;
    }

    public Builder addAuthToken(AuthToken paramAuthToken)
    {
      if (this.authTokenBuilder_ == null)
      {
        if (paramAuthToken == null)
          throw new NullPointerException();
        ensureAuthTokenIsMutable();
        this.authToken_.add(paramAuthToken);
        onChanged();
        return this;
      }
      this.authTokenBuilder_.addMessage(paramAuthToken);
      return this;
    }

    public AuthToken.Builder addAuthTokenBuilder()
    {
      return (AuthToken.Builder)getAuthTokenFieldBuilder().addBuilder(AuthToken.getDefaultInstance());
    }

    public AuthToken.Builder addAuthTokenBuilder(int paramInt)
    {
      return (AuthToken.Builder)getAuthTokenFieldBuilder().addBuilder(paramInt, AuthToken.getDefaultInstance());
    }

    public BatchHeader build()
    {
      BatchHeader localBatchHeader = buildPartial();
      if (!localBatchHeader.isInitialized())
        throw newUninitializedMessageException(localBatchHeader);
      return localBatchHeader;
    }

    public BatchHeader buildPartial()
    {
      BatchHeader localBatchHeader = new BatchHeader(this, null);
      int i = this.bitField0_;
      if (this.authTokenBuilder_ == null)
      {
        if ((0x1 & this.bitField0_) == 1)
        {
          this.authToken_ = Collections.unmodifiableList(this.authToken_);
          this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        }
        BatchHeader.access$502(localBatchHeader, this.authToken_);
      }
      while (true)
      {
        int j = i & 0x2;
        int k = 0;
        if (j == 2)
          k = 0x0 | 0x1;
        BatchHeader.access$602(localBatchHeader, this.dispatcherId_);
        BatchHeader.access$702(localBatchHeader, k);
        onBuilt();
        return localBatchHeader;
        BatchHeader.access$502(localBatchHeader, this.authTokenBuilder_.build());
      }
    }

    public Builder clear()
    {
      super.clear();
      if (this.authTokenBuilder_ == null)
      {
        this.authToken_ = Collections.emptyList();
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      }
      while (true)
      {
        this.dispatcherId_ = 0L;
        this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        return this;
        this.authTokenBuilder_.clear();
      }
    }

    public Builder clearAuthToken()
    {
      if (this.authTokenBuilder_ == null)
      {
        this.authToken_ = Collections.emptyList();
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        onChanged();
        return this;
      }
      this.authTokenBuilder_.clear();
      return this;
    }

    public Builder clearDispatcherId()
    {
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      this.dispatcherId_ = 0L;
      onChanged();
      return this;
    }

    public Builder clone()
    {
      return create().mergeFrom(buildPartial());
    }

    public AuthToken getAuthToken(int paramInt)
    {
      if (this.authTokenBuilder_ == null)
        return (AuthToken)this.authToken_.get(paramInt);
      return (AuthToken)this.authTokenBuilder_.getMessage(paramInt);
    }

    public AuthToken.Builder getAuthTokenBuilder(int paramInt)
    {
      return (AuthToken.Builder)getAuthTokenFieldBuilder().getBuilder(paramInt);
    }

    public List<AuthToken.Builder> getAuthTokenBuilderList()
    {
      return getAuthTokenFieldBuilder().getBuilderList();
    }

    public int getAuthTokenCount()
    {
      if (this.authTokenBuilder_ == null)
        return this.authToken_.size();
      return this.authTokenBuilder_.getCount();
    }

    public List<AuthToken> getAuthTokenList()
    {
      if (this.authTokenBuilder_ == null)
        return Collections.unmodifiableList(this.authToken_);
      return this.authTokenBuilder_.getMessageList();
    }

    public AuthTokenOrBuilder getAuthTokenOrBuilder(int paramInt)
    {
      if (this.authTokenBuilder_ == null)
        return (AuthTokenOrBuilder)this.authToken_.get(paramInt);
      return (AuthTokenOrBuilder)this.authTokenBuilder_.getMessageOrBuilder(paramInt);
    }

    public List<? extends AuthTokenOrBuilder> getAuthTokenOrBuilderList()
    {
      if (this.authTokenBuilder_ != null)
        return this.authTokenBuilder_.getMessageOrBuilderList();
      return Collections.unmodifiableList(this.authToken_);
    }

    public BatchHeader getDefaultInstanceForType()
    {
      return BatchHeader.getDefaultInstance();
    }

    public Descriptors.Descriptor getDescriptorForType()
    {
      return Batch.internal_static_googlex_glass_common_proto_BatchHeader_descriptor;
    }

    public long getDispatcherId()
    {
      return this.dispatcherId_;
    }

    public boolean hasDispatcherId()
    {
      return (0x2 & this.bitField0_) == 2;
    }

    protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return Batch.internal_static_googlex_glass_common_proto_BatchHeader_fieldAccessorTable.ensureFieldAccessorsInitialized(BatchHeader.class, Builder.class);
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Builder mergeFrom(BatchHeader paramBatchHeader)
    {
      if (paramBatchHeader == BatchHeader.getDefaultInstance())
        return this;
      if (this.authTokenBuilder_ == null)
        if (!paramBatchHeader.authToken_.isEmpty())
        {
          if (!this.authToken_.isEmpty())
            break label90;
          this.authToken_ = paramBatchHeader.authToken_;
          this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
          onChanged();
        }
      while (true)
      {
        if (paramBatchHeader.hasDispatcherId())
          setDispatcherId(paramBatchHeader.getDispatcherId());
        mergeUnknownFields(paramBatchHeader.getUnknownFields());
        return this;
        label90: ensureAuthTokenIsMutable();
        this.authToken_.addAll(paramBatchHeader.authToken_);
        break;
        if (!paramBatchHeader.authToken_.isEmpty())
          if (this.authTokenBuilder_.isEmpty())
          {
            this.authTokenBuilder_.dispose();
            this.authTokenBuilder_ = null;
            this.authToken_ = paramBatchHeader.authToken_;
            this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
            boolean bool = BatchHeader.alwaysUseFieldBuilders;
            RepeatedFieldBuilder localRepeatedFieldBuilder = null;
            if (bool)
              localRepeatedFieldBuilder = getAuthTokenFieldBuilder();
            this.authTokenBuilder_ = localRepeatedFieldBuilder;
          }
          else
          {
            this.authTokenBuilder_.addAllMessages(paramBatchHeader.authToken_);
          }
      }
    }

    public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      BatchHeader localBatchHeader1 = null;
      try
      {
        BatchHeader localBatchHeader2 = (BatchHeader)BatchHeader.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
        return this;
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        localBatchHeader1 = (BatchHeader)localInvalidProtocolBufferException.getUnfinishedMessage();
        throw localInvalidProtocolBufferException;
      }
      finally
      {
        if (localBatchHeader1 != null)
          mergeFrom(localBatchHeader1);
      }
    }

    public Builder mergeFrom(Message paramMessage)
    {
      if ((paramMessage instanceof BatchHeader))
        return mergeFrom((BatchHeader)paramMessage);
      super.mergeFrom(paramMessage);
      return this;
    }

    public Builder removeAuthToken(int paramInt)
    {
      if (this.authTokenBuilder_ == null)
      {
        ensureAuthTokenIsMutable();
        this.authToken_.remove(paramInt);
        onChanged();
        return this;
      }
      this.authTokenBuilder_.remove(paramInt);
      return this;
    }

    public Builder setAuthToken(int paramInt, AuthToken.Builder paramBuilder)
    {
      if (this.authTokenBuilder_ == null)
      {
        ensureAuthTokenIsMutable();
        this.authToken_.set(paramInt, paramBuilder.build());
        onChanged();
        return this;
      }
      this.authTokenBuilder_.setMessage(paramInt, paramBuilder.build());
      return this;
    }

    public Builder setAuthToken(int paramInt, AuthToken paramAuthToken)
    {
      if (this.authTokenBuilder_ == null)
      {
        if (paramAuthToken == null)
          throw new NullPointerException();
        ensureAuthTokenIsMutable();
        this.authToken_.set(paramInt, paramAuthToken);
        onChanged();
        return this;
      }
      this.authTokenBuilder_.setMessage(paramInt, paramAuthToken);
      return this;
    }

    public Builder setDispatcherId(long paramLong)
    {
      this.bitField0_ = (0x2 | this.bitField0_);
      this.dispatcherId_ = paramLong;
      onChanged();
      return this;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.BatchHeader
 * JD-Core Version:    0.6.2
 */