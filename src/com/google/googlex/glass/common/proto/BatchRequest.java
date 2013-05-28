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

public final class BatchRequest extends GeneratedMessage
  implements BatchRequestOrBuilder
{
  public static final int HEADER_FIELD_NUMBER = 1;
  public static Parser<BatchRequest> PARSER = new AbstractParser()
  {
    public BatchRequest parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return new BatchRequest(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
    }
  };
  public static final int REQUEST_FIELD_NUMBER = 2;
  private static final BatchRequest defaultInstance;
  private static volatile MutableMessage mutableDefault = null;
  private static final long serialVersionUID;
  private int bitField0_;
  private BatchHeader header_;
  private byte memoizedIsInitialized = -1;
  private int memoizedSerializedSize = -1;
  private List<RequestWrapper> request_;
  private final UnknownFieldSet unknownFields;

  static
  {
    defaultInstance = new BatchRequest(true);
    defaultInstance.initFields();
  }

  // ERROR //
  private BatchRequest(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 56	com/google/protobuf/GeneratedMessage:<init>	()V
    //   4: aload_0
    //   5: iconst_m1
    //   6: putfield 58	com/google/googlex/glass/common/proto/BatchRequest:memoizedIsInitialized	B
    //   9: aload_0
    //   10: iconst_m1
    //   11: putfield 60	com/google/googlex/glass/common/proto/BatchRequest:memoizedSerializedSize	I
    //   14: aload_0
    //   15: invokespecial 50	com/google/googlex/glass/common/proto/BatchRequest:initFields	()V
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
    //   83: invokevirtual 76	com/google/googlex/glass/common/proto/BatchRequest:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    //   86: ifne -58 -> 28
    //   89: iconst_1
    //   90: istore 5
    //   92: goto -64 -> 28
    //   95: iconst_1
    //   96: aload_0
    //   97: getfield 78	com/google/googlex/glass/common/proto/BatchRequest:bitField0_	I
    //   100: iand
    //   101: istore 11
    //   103: aconst_null
    //   104: astore 12
    //   106: iload 11
    //   108: iconst_1
    //   109: if_icmpne +12 -> 121
    //   112: aload_0
    //   113: getfield 80	com/google/googlex/glass/common/proto/BatchRequest:header_	Lcom/google/googlex/glass/common/proto/BatchHeader;
    //   116: invokevirtual 86	com/google/googlex/glass/common/proto/BatchHeader:toBuilder	()Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;
    //   119: astore 12
    //   121: aload_0
    //   122: aload_1
    //   123: getstatic 87	com/google/googlex/glass/common/proto/BatchHeader:PARSER	Lcom/google/protobuf/Parser;
    //   126: aload_2
    //   127: invokevirtual 91	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
    //   130: checkcast 82	com/google/googlex/glass/common/proto/BatchHeader
    //   133: putfield 80	com/google/googlex/glass/common/proto/BatchRequest:header_	Lcom/google/googlex/glass/common/proto/BatchHeader;
    //   136: aload 12
    //   138: ifnull +22 -> 160
    //   141: aload 12
    //   143: aload_0
    //   144: getfield 80	com/google/googlex/glass/common/proto/BatchRequest:header_	Lcom/google/googlex/glass/common/proto/BatchHeader;
    //   147: invokevirtual 97	com/google/googlex/glass/common/proto/BatchHeader$Builder:mergeFrom	(Lcom/google/googlex/glass/common/proto/BatchHeader;)Lcom/google/googlex/glass/common/proto/BatchHeader$Builder;
    //   150: pop
    //   151: aload_0
    //   152: aload 12
    //   154: invokevirtual 101	com/google/googlex/glass/common/proto/BatchHeader$Builder:buildPartial	()Lcom/google/googlex/glass/common/proto/BatchHeader;
    //   157: putfield 80	com/google/googlex/glass/common/proto/BatchRequest:header_	Lcom/google/googlex/glass/common/proto/BatchHeader;
    //   160: aload_0
    //   161: iconst_1
    //   162: aload_0
    //   163: getfield 78	com/google/googlex/glass/common/proto/BatchRequest:bitField0_	I
    //   166: ior
    //   167: putfield 78	com/google/googlex/glass/common/proto/BatchRequest:bitField0_	I
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
    //   193: getfield 107	com/google/googlex/glass/common/proto/BatchRequest:request_	Ljava/util/List;
    //   196: invokestatic 113	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   199: putfield 107	com/google/googlex/glass/common/proto/BatchRequest:request_	Ljava/util/List;
    //   202: aload_0
    //   203: aload 4
    //   205: invokevirtual 119	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   208: putfield 121	com/google/googlex/glass/common/proto/BatchRequest:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   211: aload_0
    //   212: invokevirtual 124	com/google/googlex/glass/common/proto/BatchRequest:makeExtensionsImmutable	()V
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
    //   233: putfield 107	com/google/googlex/glass/common/proto/BatchRequest:request_	Ljava/util/List;
    //   236: iload_3
    //   237: iconst_2
    //   238: ior
    //   239: istore_3
    //   240: aload_0
    //   241: getfield 107	com/google/googlex/glass/common/proto/BatchRequest:request_	Ljava/util/List;
    //   244: aload_1
    //   245: getstatic 130	com/google/googlex/glass/common/proto/RequestWrapper:PARSER	Lcom/google/protobuf/Parser;
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
    //   289: getfield 107	com/google/googlex/glass/common/proto/BatchRequest:request_	Ljava/util/List;
    //   292: invokestatic 113	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   295: putfield 107	com/google/googlex/glass/common/proto/BatchRequest:request_	Ljava/util/List;
    //   298: aload_0
    //   299: aload 4
    //   301: invokevirtual 119	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   304: putfield 121	com/google/googlex/glass/common/proto/BatchRequest:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   307: aload_0
    //   308: invokevirtual 124	com/google/googlex/glass/common/proto/BatchRequest:makeExtensionsImmutable	()V
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

  private BatchRequest(GeneratedMessage.Builder<?> paramBuilder)
  {
    super(paramBuilder);
    this.unknownFields = paramBuilder.getUnknownFields();
  }

  private BatchRequest(boolean paramBoolean)
  {
    this.unknownFields = UnknownFieldSet.getDefaultInstance();
  }

  public static BatchRequest getDefaultInstance()
  {
    return defaultInstance;
  }

  public static final Descriptors.Descriptor getDescriptor()
  {
    return Batch.internal_static_googlex_glass_common_proto_BatchRequest_descriptor;
  }

  private void initFields()
  {
    this.header_ = BatchHeader.getDefaultInstance();
    this.request_ = Collections.emptyList();
  }

  public static Builder newBuilder()
  {
    return Builder.access$100();
  }

  public static Builder newBuilder(BatchRequest paramBatchRequest)
  {
    return newBuilder().mergeFrom(paramBatchRequest);
  }

  public static BatchRequest parseDelimitedFrom(InputStream paramInputStream)
    throws IOException
  {
    return (BatchRequest)PARSER.parseDelimitedFrom(paramInputStream);
  }

  public static BatchRequest parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (BatchRequest)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static BatchRequest parseFrom(ByteString paramByteString)
    throws InvalidProtocolBufferException
  {
    return (BatchRequest)PARSER.parseFrom(paramByteString);
  }

  public static BatchRequest parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (BatchRequest)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
  }

  public static BatchRequest parseFrom(CodedInputStream paramCodedInputStream)
    throws IOException
  {
    return (BatchRequest)PARSER.parseFrom(paramCodedInputStream);
  }

  public static BatchRequest parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (BatchRequest)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
  }

  public static BatchRequest parseFrom(InputStream paramInputStream)
    throws IOException
  {
    return (BatchRequest)PARSER.parseFrom(paramInputStream);
  }

  public static BatchRequest parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (BatchRequest)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static BatchRequest parseFrom(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    return (BatchRequest)PARSER.parseFrom(paramArrayOfByte);
  }

  public static BatchRequest parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (BatchRequest)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
  }

  public BatchRequest getDefaultInstanceForType()
  {
    return defaultInstance;
  }

  public BatchHeader getHeader()
  {
    return this.header_;
  }

  public BatchHeaderOrBuilder getHeaderOrBuilder()
  {
    return this.header_;
  }

  public Parser<BatchRequest> getParserForType()
  {
    return PARSER;
  }

  public RequestWrapper getRequest(int paramInt)
  {
    return (RequestWrapper)this.request_.get(paramInt);
  }

  public int getRequestCount()
  {
    return this.request_.size();
  }

  public List<RequestWrapper> getRequestList()
  {
    return this.request_;
  }

  public RequestWrapperOrBuilder getRequestOrBuilder(int paramInt)
  {
    return (RequestWrapperOrBuilder)this.request_.get(paramInt);
  }

  public List<? extends RequestWrapperOrBuilder> getRequestOrBuilderList()
  {
    return this.request_;
  }

  public int getSerializedSize()
  {
    int i = this.memoizedSerializedSize;
    if (i != -1)
      return i;
    int j = 0x1 & this.bitField0_;
    int k = 0;
    if (j == 1)
      k = 0 + CodedOutputStream.computeMessageSize(1, this.header_);
    for (int m = 0; m < this.request_.size(); m++)
      k += CodedOutputStream.computeMessageSize(2, (MessageLite)this.request_.get(m));
    int n = k + getUnknownFields().getSerializedSize();
    this.memoizedSerializedSize = n;
    return n;
  }

  public final UnknownFieldSet getUnknownFields()
  {
    return this.unknownFields;
  }

  public boolean hasHeader()
  {
    return (0x1 & this.bitField0_) == 1;
  }

  protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
  {
    return Batch.internal_static_googlex_glass_common_proto_BatchRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(BatchRequest.class, Builder.class);
  }

  protected MutableMessage internalMutableDefault()
  {
    if (mutableDefault == null)
      mutableDefault = internalMutableDefault("com.google.googlex.glass.common.proto.MutableBatch$BatchRequest");
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
      paramCodedOutputStream.writeMessage(1, this.header_);
    for (int i = 0; i < this.request_.size(); i++)
      paramCodedOutputStream.writeMessage(2, (MessageLite)this.request_.get(i));
    getUnknownFields().writeTo(paramCodedOutputStream);
  }

  public static final class Builder extends GeneratedMessage.Builder<Builder>
    implements BatchRequestOrBuilder
  {
    private int bitField0_;
    private SingleFieldBuilder<BatchHeader, BatchHeader.Builder, BatchHeaderOrBuilder> headerBuilder_;
    private BatchHeader header_ = BatchHeader.getDefaultInstance();
    private RepeatedFieldBuilder<RequestWrapper, RequestWrapper.Builder, RequestWrapperOrBuilder> requestBuilder_;
    private List<RequestWrapper> request_ = Collections.emptyList();

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

    private void ensureRequestIsMutable()
    {
      if ((0x2 & this.bitField0_) != 2)
      {
        this.request_ = new ArrayList(this.request_);
        this.bitField0_ = (0x2 | this.bitField0_);
      }
    }

    public static final Descriptors.Descriptor getDescriptor()
    {
      return Batch.internal_static_googlex_glass_common_proto_BatchRequest_descriptor;
    }

    private SingleFieldBuilder<BatchHeader, BatchHeader.Builder, BatchHeaderOrBuilder> getHeaderFieldBuilder()
    {
      if (this.headerBuilder_ == null)
      {
        this.headerBuilder_ = new SingleFieldBuilder(this.header_, getParentForChildren(), isClean());
        this.header_ = null;
      }
      return this.headerBuilder_;
    }

    private RepeatedFieldBuilder<RequestWrapper, RequestWrapper.Builder, RequestWrapperOrBuilder> getRequestFieldBuilder()
    {
      List localList;
      if (this.requestBuilder_ == null)
      {
        localList = this.request_;
        if ((0x2 & this.bitField0_) != 2)
          break label55;
      }
      label55: for (boolean bool = true; ; bool = false)
      {
        this.requestBuilder_ = new RepeatedFieldBuilder(localList, bool, getParentForChildren(), isClean());
        this.request_ = null;
        return this.requestBuilder_;
      }
    }

    private void maybeForceBuilderInitialization()
    {
      if (BatchRequest.alwaysUseFieldBuilders)
      {
        getHeaderFieldBuilder();
        getRequestFieldBuilder();
      }
    }

    public Builder addAllRequest(Iterable<? extends RequestWrapper> paramIterable)
    {
      if (this.requestBuilder_ == null)
      {
        ensureRequestIsMutable();
        AbstractMessageLite.Builder.addAll(paramIterable, this.request_);
        onChanged();
        return this;
      }
      this.requestBuilder_.addAllMessages(paramIterable);
      return this;
    }

    public Builder addRequest(int paramInt, RequestWrapper.Builder paramBuilder)
    {
      if (this.requestBuilder_ == null)
      {
        ensureRequestIsMutable();
        this.request_.add(paramInt, paramBuilder.build());
        onChanged();
        return this;
      }
      this.requestBuilder_.addMessage(paramInt, paramBuilder.build());
      return this;
    }

    public Builder addRequest(int paramInt, RequestWrapper paramRequestWrapper)
    {
      if (this.requestBuilder_ == null)
      {
        if (paramRequestWrapper == null)
          throw new NullPointerException();
        ensureRequestIsMutable();
        this.request_.add(paramInt, paramRequestWrapper);
        onChanged();
        return this;
      }
      this.requestBuilder_.addMessage(paramInt, paramRequestWrapper);
      return this;
    }

    public Builder addRequest(RequestWrapper.Builder paramBuilder)
    {
      if (this.requestBuilder_ == null)
      {
        ensureRequestIsMutable();
        this.request_.add(paramBuilder.build());
        onChanged();
        return this;
      }
      this.requestBuilder_.addMessage(paramBuilder.build());
      return this;
    }

    public Builder addRequest(RequestWrapper paramRequestWrapper)
    {
      if (this.requestBuilder_ == null)
      {
        if (paramRequestWrapper == null)
          throw new NullPointerException();
        ensureRequestIsMutable();
        this.request_.add(paramRequestWrapper);
        onChanged();
        return this;
      }
      this.requestBuilder_.addMessage(paramRequestWrapper);
      return this;
    }

    public RequestWrapper.Builder addRequestBuilder()
    {
      return (RequestWrapper.Builder)getRequestFieldBuilder().addBuilder(RequestWrapper.getDefaultInstance());
    }

    public RequestWrapper.Builder addRequestBuilder(int paramInt)
    {
      return (RequestWrapper.Builder)getRequestFieldBuilder().addBuilder(paramInt, RequestWrapper.getDefaultInstance());
    }

    public BatchRequest build()
    {
      BatchRequest localBatchRequest = buildPartial();
      if (!localBatchRequest.isInitialized())
        throw newUninitializedMessageException(localBatchRequest);
      return localBatchRequest;
    }

    public BatchRequest buildPartial()
    {
      BatchRequest localBatchRequest = new BatchRequest(this, null);
      int i = 0x1 & this.bitField0_;
      int j = 0;
      if (i == 1)
        j = 0x0 | 0x1;
      if (this.headerBuilder_ == null)
      {
        BatchRequest.access$502(localBatchRequest, this.header_);
        if (this.requestBuilder_ != null)
          break label122;
        if ((0x2 & this.bitField0_) == 2)
        {
          this.request_ = Collections.unmodifiableList(this.request_);
          this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        }
        BatchRequest.access$602(localBatchRequest, this.request_);
      }
      while (true)
      {
        BatchRequest.access$702(localBatchRequest, j);
        onBuilt();
        return localBatchRequest;
        BatchRequest.access$502(localBatchRequest, (BatchHeader)this.headerBuilder_.build());
        break;
        label122: BatchRequest.access$602(localBatchRequest, this.requestBuilder_.build());
      }
    }

    public Builder clear()
    {
      super.clear();
      if (this.headerBuilder_ == null)
        this.header_ = BatchHeader.getDefaultInstance();
      while (true)
      {
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        if (this.requestBuilder_ != null)
          break;
        this.request_ = Collections.emptyList();
        this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        return this;
        this.headerBuilder_.clear();
      }
      this.requestBuilder_.clear();
      return this;
    }

    public Builder clearHeader()
    {
      if (this.headerBuilder_ == null)
      {
        this.header_ = BatchHeader.getDefaultInstance();
        onChanged();
      }
      while (true)
      {
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        return this;
        this.headerBuilder_.clear();
      }
    }

    public Builder clearRequest()
    {
      if (this.requestBuilder_ == null)
      {
        this.request_ = Collections.emptyList();
        this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        onChanged();
        return this;
      }
      this.requestBuilder_.clear();
      return this;
    }

    public Builder clone()
    {
      return create().mergeFrom(buildPartial());
    }

    public BatchRequest getDefaultInstanceForType()
    {
      return BatchRequest.getDefaultInstance();
    }

    public Descriptors.Descriptor getDescriptorForType()
    {
      return Batch.internal_static_googlex_glass_common_proto_BatchRequest_descriptor;
    }

    public BatchHeader getHeader()
    {
      if (this.headerBuilder_ == null)
        return this.header_;
      return (BatchHeader)this.headerBuilder_.getMessage();
    }

    public BatchHeader.Builder getHeaderBuilder()
    {
      this.bitField0_ = (0x1 | this.bitField0_);
      onChanged();
      return (BatchHeader.Builder)getHeaderFieldBuilder().getBuilder();
    }

    public BatchHeaderOrBuilder getHeaderOrBuilder()
    {
      if (this.headerBuilder_ != null)
        return (BatchHeaderOrBuilder)this.headerBuilder_.getMessageOrBuilder();
      return this.header_;
    }

    public RequestWrapper getRequest(int paramInt)
    {
      if (this.requestBuilder_ == null)
        return (RequestWrapper)this.request_.get(paramInt);
      return (RequestWrapper)this.requestBuilder_.getMessage(paramInt);
    }

    public RequestWrapper.Builder getRequestBuilder(int paramInt)
    {
      return (RequestWrapper.Builder)getRequestFieldBuilder().getBuilder(paramInt);
    }

    public List<RequestWrapper.Builder> getRequestBuilderList()
    {
      return getRequestFieldBuilder().getBuilderList();
    }

    public int getRequestCount()
    {
      if (this.requestBuilder_ == null)
        return this.request_.size();
      return this.requestBuilder_.getCount();
    }

    public List<RequestWrapper> getRequestList()
    {
      if (this.requestBuilder_ == null)
        return Collections.unmodifiableList(this.request_);
      return this.requestBuilder_.getMessageList();
    }

    public RequestWrapperOrBuilder getRequestOrBuilder(int paramInt)
    {
      if (this.requestBuilder_ == null)
        return (RequestWrapperOrBuilder)this.request_.get(paramInt);
      return (RequestWrapperOrBuilder)this.requestBuilder_.getMessageOrBuilder(paramInt);
    }

    public List<? extends RequestWrapperOrBuilder> getRequestOrBuilderList()
    {
      if (this.requestBuilder_ != null)
        return this.requestBuilder_.getMessageOrBuilderList();
      return Collections.unmodifiableList(this.request_);
    }

    public boolean hasHeader()
    {
      return (0x1 & this.bitField0_) == 1;
    }

    protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return Batch.internal_static_googlex_glass_common_proto_BatchRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(BatchRequest.class, Builder.class);
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Builder mergeFrom(BatchRequest paramBatchRequest)
    {
      if (paramBatchRequest == BatchRequest.getDefaultInstance())
        return this;
      if (paramBatchRequest.hasHeader())
        mergeHeader(paramBatchRequest.getHeader());
      if (this.requestBuilder_ == null)
        if (!paramBatchRequest.request_.isEmpty())
        {
          if (!this.request_.isEmpty())
            break label90;
          this.request_ = paramBatchRequest.request_;
          this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
          onChanged();
        }
      while (true)
      {
        mergeUnknownFields(paramBatchRequest.getUnknownFields());
        return this;
        label90: ensureRequestIsMutable();
        this.request_.addAll(paramBatchRequest.request_);
        break;
        if (!paramBatchRequest.request_.isEmpty())
          if (this.requestBuilder_.isEmpty())
          {
            this.requestBuilder_.dispose();
            this.requestBuilder_ = null;
            this.request_ = paramBatchRequest.request_;
            this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
            boolean bool = BatchRequest.alwaysUseFieldBuilders;
            RepeatedFieldBuilder localRepeatedFieldBuilder = null;
            if (bool)
              localRepeatedFieldBuilder = getRequestFieldBuilder();
            this.requestBuilder_ = localRepeatedFieldBuilder;
          }
          else
          {
            this.requestBuilder_.addAllMessages(paramBatchRequest.request_);
          }
      }
    }

    public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      BatchRequest localBatchRequest1 = null;
      try
      {
        BatchRequest localBatchRequest2 = (BatchRequest)BatchRequest.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
        return this;
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        localBatchRequest1 = (BatchRequest)localInvalidProtocolBufferException.getUnfinishedMessage();
        throw localInvalidProtocolBufferException;
      }
      finally
      {
        if (localBatchRequest1 != null)
          mergeFrom(localBatchRequest1);
      }
    }

    public Builder mergeFrom(Message paramMessage)
    {
      if ((paramMessage instanceof BatchRequest))
        return mergeFrom((BatchRequest)paramMessage);
      super.mergeFrom(paramMessage);
      return this;
    }

    public Builder mergeHeader(BatchHeader paramBatchHeader)
    {
      if (this.headerBuilder_ == null)
        if (((0x1 & this.bitField0_) == 1) && (this.header_ != BatchHeader.getDefaultInstance()))
        {
          this.header_ = BatchHeader.newBuilder(this.header_).mergeFrom(paramBatchHeader).buildPartial();
          onChanged();
        }
      while (true)
      {
        this.bitField0_ = (0x1 | this.bitField0_);
        return this;
        this.header_ = paramBatchHeader;
        break;
        this.headerBuilder_.mergeFrom(paramBatchHeader);
      }
    }

    public Builder removeRequest(int paramInt)
    {
      if (this.requestBuilder_ == null)
      {
        ensureRequestIsMutable();
        this.request_.remove(paramInt);
        onChanged();
        return this;
      }
      this.requestBuilder_.remove(paramInt);
      return this;
    }

    public Builder setHeader(BatchHeader.Builder paramBuilder)
    {
      if (this.headerBuilder_ == null)
      {
        this.header_ = paramBuilder.build();
        onChanged();
      }
      while (true)
      {
        this.bitField0_ = (0x1 | this.bitField0_);
        return this;
        this.headerBuilder_.setMessage(paramBuilder.build());
      }
    }

    public Builder setHeader(BatchHeader paramBatchHeader)
    {
      if (this.headerBuilder_ == null)
      {
        if (paramBatchHeader == null)
          throw new NullPointerException();
        this.header_ = paramBatchHeader;
        onChanged();
      }
      while (true)
      {
        this.bitField0_ = (0x1 | this.bitField0_);
        return this;
        this.headerBuilder_.setMessage(paramBatchHeader);
      }
    }

    public Builder setRequest(int paramInt, RequestWrapper.Builder paramBuilder)
    {
      if (this.requestBuilder_ == null)
      {
        ensureRequestIsMutable();
        this.request_.set(paramInt, paramBuilder.build());
        onChanged();
        return this;
      }
      this.requestBuilder_.setMessage(paramInt, paramBuilder.build());
      return this;
    }

    public Builder setRequest(int paramInt, RequestWrapper paramRequestWrapper)
    {
      if (this.requestBuilder_ == null)
      {
        if (paramRequestWrapper == null)
          throw new NullPointerException();
        ensureRequestIsMutable();
        this.request_.set(paramInt, paramRequestWrapper);
        onChanged();
        return this;
      }
      this.requestBuilder_.setMessage(paramInt, paramRequestWrapper);
      return this;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.BatchRequest
 * JD-Core Version:    0.6.2
 */