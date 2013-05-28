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

public final class BatchResponse extends GeneratedMessage
  implements BatchResponseOrBuilder
{
  public static Parser<BatchResponse> PARSER = new AbstractParser()
  {
    public BatchResponse parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return new BatchResponse(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
    }
  };
  public static final int RESPONSE_FIELD_NUMBER = 1;
  private static final BatchResponse defaultInstance;
  private static volatile MutableMessage mutableDefault = null;
  private static final long serialVersionUID;
  private byte memoizedIsInitialized = -1;
  private int memoizedSerializedSize = -1;
  private List<ResponseWrapper> response_;
  private final UnknownFieldSet unknownFields;

  static
  {
    defaultInstance = new BatchResponse(true);
    defaultInstance.initFields();
  }

  // ERROR //
  private BatchResponse(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 51	com/google/protobuf/GeneratedMessage:<init>	()V
    //   4: aload_0
    //   5: iconst_m1
    //   6: putfield 53	com/google/googlex/glass/common/proto/BatchResponse:memoizedIsInitialized	B
    //   9: aload_0
    //   10: iconst_m1
    //   11: putfield 55	com/google/googlex/glass/common/proto/BatchResponse:memoizedSerializedSize	I
    //   14: aload_0
    //   15: invokespecial 45	com/google/googlex/glass/common/proto/BatchResponse:initFields	()V
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
    //   75: invokevirtual 71	com/google/googlex/glass/common/proto/BatchResponse:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
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
    //   102: putfield 76	com/google/googlex/glass/common/proto/BatchResponse:response_	Ljava/util/List;
    //   105: iload_3
    //   106: iconst_1
    //   107: ior
    //   108: istore_3
    //   109: aload_0
    //   110: getfield 76	com/google/googlex/glass/common/proto/BatchResponse:response_	Ljava/util/List;
    //   113: aload_1
    //   114: getstatic 79	com/google/googlex/glass/common/proto/ResponseWrapper:PARSER	Lcom/google/protobuf/Parser;
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
    //   150: getfield 76	com/google/googlex/glass/common/proto/BatchResponse:response_	Ljava/util/List;
    //   153: invokestatic 99	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   156: putfield 76	com/google/googlex/glass/common/proto/BatchResponse:response_	Ljava/util/List;
    //   159: aload_0
    //   160: aload 4
    //   162: invokevirtual 105	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   165: putfield 107	com/google/googlex/glass/common/proto/BatchResponse:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   168: aload_0
    //   169: invokevirtual 110	com/google/googlex/glass/common/proto/BatchResponse:makeExtensionsImmutable	()V
    //   172: aload 7
    //   174: athrow
    //   175: iload_3
    //   176: iconst_1
    //   177: iand
    //   178: iconst_1
    //   179: if_icmpne +14 -> 193
    //   182: aload_0
    //   183: aload_0
    //   184: getfield 76	com/google/googlex/glass/common/proto/BatchResponse:response_	Ljava/util/List;
    //   187: invokestatic 99	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   190: putfield 76	com/google/googlex/glass/common/proto/BatchResponse:response_	Ljava/util/List;
    //   193: aload_0
    //   194: aload 4
    //   196: invokevirtual 105	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   199: putfield 107	com/google/googlex/glass/common/proto/BatchResponse:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   202: aload_0
    //   203: invokevirtual 110	com/google/googlex/glass/common/proto/BatchResponse:makeExtensionsImmutable	()V
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

  private BatchResponse(GeneratedMessage.Builder<?> paramBuilder)
  {
    super(paramBuilder);
    this.unknownFields = paramBuilder.getUnknownFields();
  }

  private BatchResponse(boolean paramBoolean)
  {
    this.unknownFields = UnknownFieldSet.getDefaultInstance();
  }

  public static BatchResponse getDefaultInstance()
  {
    return defaultInstance;
  }

  public static final Descriptors.Descriptor getDescriptor()
  {
    return Batch.internal_static_googlex_glass_common_proto_BatchResponse_descriptor;
  }

  private void initFields()
  {
    this.response_ = Collections.emptyList();
  }

  public static Builder newBuilder()
  {
    return Builder.access$100();
  }

  public static Builder newBuilder(BatchResponse paramBatchResponse)
  {
    return newBuilder().mergeFrom(paramBatchResponse);
  }

  public static BatchResponse parseDelimitedFrom(InputStream paramInputStream)
    throws IOException
  {
    return (BatchResponse)PARSER.parseDelimitedFrom(paramInputStream);
  }

  public static BatchResponse parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (BatchResponse)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static BatchResponse parseFrom(ByteString paramByteString)
    throws InvalidProtocolBufferException
  {
    return (BatchResponse)PARSER.parseFrom(paramByteString);
  }

  public static BatchResponse parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (BatchResponse)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
  }

  public static BatchResponse parseFrom(CodedInputStream paramCodedInputStream)
    throws IOException
  {
    return (BatchResponse)PARSER.parseFrom(paramCodedInputStream);
  }

  public static BatchResponse parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (BatchResponse)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
  }

  public static BatchResponse parseFrom(InputStream paramInputStream)
    throws IOException
  {
    return (BatchResponse)PARSER.parseFrom(paramInputStream);
  }

  public static BatchResponse parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (BatchResponse)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static BatchResponse parseFrom(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    return (BatchResponse)PARSER.parseFrom(paramArrayOfByte);
  }

  public static BatchResponse parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (BatchResponse)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
  }

  public BatchResponse getDefaultInstanceForType()
  {
    return defaultInstance;
  }

  public Parser<BatchResponse> getParserForType()
  {
    return PARSER;
  }

  public ResponseWrapper getResponse(int paramInt)
  {
    return (ResponseWrapper)this.response_.get(paramInt);
  }

  public int getResponseCount()
  {
    return this.response_.size();
  }

  public List<ResponseWrapper> getResponseList()
  {
    return this.response_;
  }

  public ResponseWrapperOrBuilder getResponseOrBuilder(int paramInt)
  {
    return (ResponseWrapperOrBuilder)this.response_.get(paramInt);
  }

  public List<? extends ResponseWrapperOrBuilder> getResponseOrBuilderList()
  {
    return this.response_;
  }

  public int getSerializedSize()
  {
    int i = this.memoizedSerializedSize;
    if (i != -1)
      return i;
    int j = 0;
    for (int k = 0; k < this.response_.size(); k++)
      j += CodedOutputStream.computeMessageSize(1, (MessageLite)this.response_.get(k));
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
    return Batch.internal_static_googlex_glass_common_proto_BatchResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(BatchResponse.class, Builder.class);
  }

  protected MutableMessage internalMutableDefault()
  {
    if (mutableDefault == null)
      mutableDefault = internalMutableDefault("com.google.googlex.glass.common.proto.MutableBatch$BatchResponse");
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
    for (int i = 0; i < this.response_.size(); i++)
      paramCodedOutputStream.writeMessage(1, (MessageLite)this.response_.get(i));
    getUnknownFields().writeTo(paramCodedOutputStream);
  }

  public static final class Builder extends GeneratedMessage.Builder<Builder>
    implements BatchResponseOrBuilder
  {
    private int bitField0_;
    private RepeatedFieldBuilder<ResponseWrapper, ResponseWrapper.Builder, ResponseWrapperOrBuilder> responseBuilder_;
    private List<ResponseWrapper> response_ = Collections.emptyList();

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

    private void ensureResponseIsMutable()
    {
      if ((0x1 & this.bitField0_) != 1)
      {
        this.response_ = new ArrayList(this.response_);
        this.bitField0_ = (0x1 | this.bitField0_);
      }
    }

    public static final Descriptors.Descriptor getDescriptor()
    {
      return Batch.internal_static_googlex_glass_common_proto_BatchResponse_descriptor;
    }

    private RepeatedFieldBuilder<ResponseWrapper, ResponseWrapper.Builder, ResponseWrapperOrBuilder> getResponseFieldBuilder()
    {
      int i = 1;
      List localList;
      if (this.responseBuilder_ == null)
      {
        localList = this.response_;
        if ((0x1 & this.bitField0_) != i)
          break label55;
      }
      while (true)
      {
        this.responseBuilder_ = new RepeatedFieldBuilder(localList, i, getParentForChildren(), isClean());
        this.response_ = null;
        return this.responseBuilder_;
        label55: int j = 0;
      }
    }

    private void maybeForceBuilderInitialization()
    {
      if (BatchResponse.alwaysUseFieldBuilders)
        getResponseFieldBuilder();
    }

    public Builder addAllResponse(Iterable<? extends ResponseWrapper> paramIterable)
    {
      if (this.responseBuilder_ == null)
      {
        ensureResponseIsMutable();
        AbstractMessageLite.Builder.addAll(paramIterable, this.response_);
        onChanged();
        return this;
      }
      this.responseBuilder_.addAllMessages(paramIterable);
      return this;
    }

    public Builder addResponse(int paramInt, ResponseWrapper.Builder paramBuilder)
    {
      if (this.responseBuilder_ == null)
      {
        ensureResponseIsMutable();
        this.response_.add(paramInt, paramBuilder.build());
        onChanged();
        return this;
      }
      this.responseBuilder_.addMessage(paramInt, paramBuilder.build());
      return this;
    }

    public Builder addResponse(int paramInt, ResponseWrapper paramResponseWrapper)
    {
      if (this.responseBuilder_ == null)
      {
        if (paramResponseWrapper == null)
          throw new NullPointerException();
        ensureResponseIsMutable();
        this.response_.add(paramInt, paramResponseWrapper);
        onChanged();
        return this;
      }
      this.responseBuilder_.addMessage(paramInt, paramResponseWrapper);
      return this;
    }

    public Builder addResponse(ResponseWrapper.Builder paramBuilder)
    {
      if (this.responseBuilder_ == null)
      {
        ensureResponseIsMutable();
        this.response_.add(paramBuilder.build());
        onChanged();
        return this;
      }
      this.responseBuilder_.addMessage(paramBuilder.build());
      return this;
    }

    public Builder addResponse(ResponseWrapper paramResponseWrapper)
    {
      if (this.responseBuilder_ == null)
      {
        if (paramResponseWrapper == null)
          throw new NullPointerException();
        ensureResponseIsMutable();
        this.response_.add(paramResponseWrapper);
        onChanged();
        return this;
      }
      this.responseBuilder_.addMessage(paramResponseWrapper);
      return this;
    }

    public ResponseWrapper.Builder addResponseBuilder()
    {
      return (ResponseWrapper.Builder)getResponseFieldBuilder().addBuilder(ResponseWrapper.getDefaultInstance());
    }

    public ResponseWrapper.Builder addResponseBuilder(int paramInt)
    {
      return (ResponseWrapper.Builder)getResponseFieldBuilder().addBuilder(paramInt, ResponseWrapper.getDefaultInstance());
    }

    public BatchResponse build()
    {
      BatchResponse localBatchResponse = buildPartial();
      if (!localBatchResponse.isInitialized())
        throw newUninitializedMessageException(localBatchResponse);
      return localBatchResponse;
    }

    public BatchResponse buildPartial()
    {
      BatchResponse localBatchResponse = new BatchResponse(this, null);
      if (this.responseBuilder_ == null)
      {
        if ((0x1 & this.bitField0_) == 1)
        {
          this.response_ = Collections.unmodifiableList(this.response_);
          this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        }
        BatchResponse.access$502(localBatchResponse, this.response_);
      }
      while (true)
      {
        onBuilt();
        return localBatchResponse;
        BatchResponse.access$502(localBatchResponse, this.responseBuilder_.build());
      }
    }

    public Builder clear()
    {
      super.clear();
      if (this.responseBuilder_ == null)
      {
        this.response_ = Collections.emptyList();
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        return this;
      }
      this.responseBuilder_.clear();
      return this;
    }

    public Builder clearResponse()
    {
      if (this.responseBuilder_ == null)
      {
        this.response_ = Collections.emptyList();
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        onChanged();
        return this;
      }
      this.responseBuilder_.clear();
      return this;
    }

    public Builder clone()
    {
      return create().mergeFrom(buildPartial());
    }

    public BatchResponse getDefaultInstanceForType()
    {
      return BatchResponse.getDefaultInstance();
    }

    public Descriptors.Descriptor getDescriptorForType()
    {
      return Batch.internal_static_googlex_glass_common_proto_BatchResponse_descriptor;
    }

    public ResponseWrapper getResponse(int paramInt)
    {
      if (this.responseBuilder_ == null)
        return (ResponseWrapper)this.response_.get(paramInt);
      return (ResponseWrapper)this.responseBuilder_.getMessage(paramInt);
    }

    public ResponseWrapper.Builder getResponseBuilder(int paramInt)
    {
      return (ResponseWrapper.Builder)getResponseFieldBuilder().getBuilder(paramInt);
    }

    public List<ResponseWrapper.Builder> getResponseBuilderList()
    {
      return getResponseFieldBuilder().getBuilderList();
    }

    public int getResponseCount()
    {
      if (this.responseBuilder_ == null)
        return this.response_.size();
      return this.responseBuilder_.getCount();
    }

    public List<ResponseWrapper> getResponseList()
    {
      if (this.responseBuilder_ == null)
        return Collections.unmodifiableList(this.response_);
      return this.responseBuilder_.getMessageList();
    }

    public ResponseWrapperOrBuilder getResponseOrBuilder(int paramInt)
    {
      if (this.responseBuilder_ == null)
        return (ResponseWrapperOrBuilder)this.response_.get(paramInt);
      return (ResponseWrapperOrBuilder)this.responseBuilder_.getMessageOrBuilder(paramInt);
    }

    public List<? extends ResponseWrapperOrBuilder> getResponseOrBuilderList()
    {
      if (this.responseBuilder_ != null)
        return this.responseBuilder_.getMessageOrBuilderList();
      return Collections.unmodifiableList(this.response_);
    }

    protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return Batch.internal_static_googlex_glass_common_proto_BatchResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(BatchResponse.class, Builder.class);
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Builder mergeFrom(BatchResponse paramBatchResponse)
    {
      if (paramBatchResponse == BatchResponse.getDefaultInstance())
        return this;
      if (this.responseBuilder_ == null)
        if (!paramBatchResponse.response_.isEmpty())
        {
          if (!this.response_.isEmpty())
            break label74;
          this.response_ = paramBatchResponse.response_;
          this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
          onChanged();
        }
      while (true)
      {
        mergeUnknownFields(paramBatchResponse.getUnknownFields());
        return this;
        label74: ensureResponseIsMutable();
        this.response_.addAll(paramBatchResponse.response_);
        break;
        if (!paramBatchResponse.response_.isEmpty())
          if (this.responseBuilder_.isEmpty())
          {
            this.responseBuilder_.dispose();
            this.responseBuilder_ = null;
            this.response_ = paramBatchResponse.response_;
            this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
            boolean bool = BatchResponse.alwaysUseFieldBuilders;
            RepeatedFieldBuilder localRepeatedFieldBuilder = null;
            if (bool)
              localRepeatedFieldBuilder = getResponseFieldBuilder();
            this.responseBuilder_ = localRepeatedFieldBuilder;
          }
          else
          {
            this.responseBuilder_.addAllMessages(paramBatchResponse.response_);
          }
      }
    }

    public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      BatchResponse localBatchResponse1 = null;
      try
      {
        BatchResponse localBatchResponse2 = (BatchResponse)BatchResponse.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
        return this;
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        localBatchResponse1 = (BatchResponse)localInvalidProtocolBufferException.getUnfinishedMessage();
        throw localInvalidProtocolBufferException;
      }
      finally
      {
        if (localBatchResponse1 != null)
          mergeFrom(localBatchResponse1);
      }
    }

    public Builder mergeFrom(Message paramMessage)
    {
      if ((paramMessage instanceof BatchResponse))
        return mergeFrom((BatchResponse)paramMessage);
      super.mergeFrom(paramMessage);
      return this;
    }

    public Builder removeResponse(int paramInt)
    {
      if (this.responseBuilder_ == null)
      {
        ensureResponseIsMutable();
        this.response_.remove(paramInt);
        onChanged();
        return this;
      }
      this.responseBuilder_.remove(paramInt);
      return this;
    }

    public Builder setResponse(int paramInt, ResponseWrapper.Builder paramBuilder)
    {
      if (this.responseBuilder_ == null)
      {
        ensureResponseIsMutable();
        this.response_.set(paramInt, paramBuilder.build());
        onChanged();
        return this;
      }
      this.responseBuilder_.setMessage(paramInt, paramBuilder.build());
      return this;
    }

    public Builder setResponse(int paramInt, ResponseWrapper paramResponseWrapper)
    {
      if (this.responseBuilder_ == null)
      {
        if (paramResponseWrapper == null)
          throw new NullPointerException();
        ensureResponseIsMutable();
        this.response_.set(paramInt, paramResponseWrapper);
        onChanged();
        return this;
      }
      this.responseBuilder_.setMessage(paramInt, paramResponseWrapper);
      return this;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.BatchResponse
 * JD-Core Version:    0.6.2
 */