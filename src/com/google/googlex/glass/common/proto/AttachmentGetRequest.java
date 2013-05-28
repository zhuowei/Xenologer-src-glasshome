package com.google.googlex.glass.common.proto;

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
import com.google.protobuf.MessageOrBuilder;
import com.google.protobuf.MutableMessage;
import com.google.protobuf.Parser;
import com.google.protobuf.SingleFieldBuilder;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;

public final class AttachmentGetRequest extends GeneratedMessage
  implements AttachmentGetRequestOrBuilder
{
  public static final int ATTACHMENT_ID_FIELD_NUMBER = 1;
  public static Parser<AttachmentGetRequest> PARSER = new AbstractParser()
  {
    public AttachmentGetRequest parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return new AttachmentGetRequest(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
    }
  };
  public static final int SCREEN_DIMENSIONS_FIELD_NUMBER = 2;
  private static final AttachmentGetRequest defaultInstance;
  private static volatile MutableMessage mutableDefault = null;
  private static final long serialVersionUID;
  private Object attachmentId_;
  private int bitField0_;
  private byte memoizedIsInitialized = -1;
  private int memoizedSerializedSize = -1;
  private ScreenDimensions screenDimensions_;
  private final UnknownFieldSet unknownFields;

  static
  {
    defaultInstance = new AttachmentGetRequest(true);
    defaultInstance.initFields();
  }

  // ERROR //
  private AttachmentGetRequest(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 55	com/google/protobuf/GeneratedMessage:<init>	()V
    //   4: aload_0
    //   5: iconst_m1
    //   6: putfield 57	com/google/googlex/glass/common/proto/AttachmentGetRequest:memoizedIsInitialized	B
    //   9: aload_0
    //   10: iconst_m1
    //   11: putfield 59	com/google/googlex/glass/common/proto/AttachmentGetRequest:memoizedSerializedSize	I
    //   14: aload_0
    //   15: invokespecial 49	com/google/googlex/glass/common/proto/AttachmentGetRequest:initFields	()V
    //   18: invokestatic 65	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
    //   21: astore_3
    //   22: iconst_0
    //   23: istore 4
    //   25: iload 4
    //   27: ifne +207 -> 234
    //   30: aload_1
    //   31: invokevirtual 71	com/google/protobuf/CodedInputStream:readTag	()I
    //   34: istore 8
    //   36: iload 8
    //   38: lookupswitch	default:+34->72, 0:+209->247, 10:+52->90, 18:+99->137
    //   73: aload_1
    //   74: aload_3
    //   75: aload_2
    //   76: iload 8
    //   78: invokevirtual 75	com/google/googlex/glass/common/proto/AttachmentGetRequest:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    //   81: ifne -56 -> 25
    //   84: iconst_1
    //   85: istore 4
    //   87: goto -62 -> 25
    //   90: aload_0
    //   91: iconst_1
    //   92: aload_0
    //   93: getfield 77	com/google/googlex/glass/common/proto/AttachmentGetRequest:bitField0_	I
    //   96: ior
    //   97: putfield 77	com/google/googlex/glass/common/proto/AttachmentGetRequest:bitField0_	I
    //   100: aload_0
    //   101: aload_1
    //   102: invokevirtual 81	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   105: putfield 83	com/google/googlex/glass/common/proto/AttachmentGetRequest:attachmentId_	Ljava/lang/Object;
    //   108: goto -83 -> 25
    //   111: astore 7
    //   113: aload 7
    //   115: aload_0
    //   116: invokevirtual 87	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   119: athrow
    //   120: astore 6
    //   122: aload_0
    //   123: aload_3
    //   124: invokevirtual 93	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   127: putfield 95	com/google/googlex/glass/common/proto/AttachmentGetRequest:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   130: aload_0
    //   131: invokevirtual 98	com/google/googlex/glass/common/proto/AttachmentGetRequest:makeExtensionsImmutable	()V
    //   134: aload 6
    //   136: athrow
    //   137: iconst_2
    //   138: aload_0
    //   139: getfield 77	com/google/googlex/glass/common/proto/AttachmentGetRequest:bitField0_	I
    //   142: iand
    //   143: istore 9
    //   145: aconst_null
    //   146: astore 10
    //   148: iload 9
    //   150: iconst_2
    //   151: if_icmpne +12 -> 163
    //   154: aload_0
    //   155: getfield 100	com/google/googlex/glass/common/proto/AttachmentGetRequest:screenDimensions_	Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;
    //   158: invokevirtual 106	com/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions:toBuilder	()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;
    //   161: astore 10
    //   163: aload_0
    //   164: aload_1
    //   165: getstatic 107	com/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions:PARSER	Lcom/google/protobuf/Parser;
    //   168: aload_2
    //   169: invokevirtual 111	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
    //   172: checkcast 102	com/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions
    //   175: putfield 100	com/google/googlex/glass/common/proto/AttachmentGetRequest:screenDimensions_	Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;
    //   178: aload 10
    //   180: ifnull +22 -> 202
    //   183: aload 10
    //   185: aload_0
    //   186: getfield 100	com/google/googlex/glass/common/proto/AttachmentGetRequest:screenDimensions_	Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;
    //   189: invokevirtual 117	com/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder:mergeFrom	(Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;)Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder;
    //   192: pop
    //   193: aload_0
    //   194: aload 10
    //   196: invokevirtual 121	com/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions$Builder:buildPartial	()Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;
    //   199: putfield 100	com/google/googlex/glass/common/proto/AttachmentGetRequest:screenDimensions_	Lcom/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions;
    //   202: aload_0
    //   203: iconst_2
    //   204: aload_0
    //   205: getfield 77	com/google/googlex/glass/common/proto/AttachmentGetRequest:bitField0_	I
    //   208: ior
    //   209: putfield 77	com/google/googlex/glass/common/proto/AttachmentGetRequest:bitField0_	I
    //   212: goto -187 -> 25
    //   215: astore 5
    //   217: new 52	com/google/protobuf/InvalidProtocolBufferException
    //   220: dup
    //   221: aload 5
    //   223: invokevirtual 125	java/io/IOException:getMessage	()Ljava/lang/String;
    //   226: invokespecial 128	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
    //   229: aload_0
    //   230: invokevirtual 87	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   233: athrow
    //   234: aload_0
    //   235: aload_3
    //   236: invokevirtual 93	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   239: putfield 95	com/google/googlex/glass/common/proto/AttachmentGetRequest:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   242: aload_0
    //   243: invokevirtual 98	com/google/googlex/glass/common/proto/AttachmentGetRequest:makeExtensionsImmutable	()V
    //   246: return
    //   247: iconst_1
    //   248: istore 4
    //   250: goto -225 -> 25
    //
    // Exception table:
    //   from	to	target	type
    //   30	36	111	com/google/protobuf/InvalidProtocolBufferException
    //   72	84	111	com/google/protobuf/InvalidProtocolBufferException
    //   90	108	111	com/google/protobuf/InvalidProtocolBufferException
    //   137	145	111	com/google/protobuf/InvalidProtocolBufferException
    //   154	163	111	com/google/protobuf/InvalidProtocolBufferException
    //   163	178	111	com/google/protobuf/InvalidProtocolBufferException
    //   183	202	111	com/google/protobuf/InvalidProtocolBufferException
    //   202	212	111	com/google/protobuf/InvalidProtocolBufferException
    //   30	36	120	finally
    //   72	84	120	finally
    //   90	108	120	finally
    //   113	120	120	finally
    //   137	145	120	finally
    //   154	163	120	finally
    //   163	178	120	finally
    //   183	202	120	finally
    //   202	212	120	finally
    //   217	234	120	finally
    //   30	36	215	java/io/IOException
    //   72	84	215	java/io/IOException
    //   90	108	215	java/io/IOException
    //   137	145	215	java/io/IOException
    //   154	163	215	java/io/IOException
    //   163	178	215	java/io/IOException
    //   183	202	215	java/io/IOException
    //   202	212	215	java/io/IOException
  }

  private AttachmentGetRequest(GeneratedMessage.Builder<?> paramBuilder)
  {
    super(paramBuilder);
    this.unknownFields = paramBuilder.getUnknownFields();
  }

  private AttachmentGetRequest(boolean paramBoolean)
  {
    this.unknownFields = UnknownFieldSet.getDefaultInstance();
  }

  public static AttachmentGetRequest getDefaultInstance()
  {
    return defaultInstance;
  }

  public static final Descriptors.Descriptor getDescriptor()
  {
    return Sync.internal_static_googlex_glass_common_proto_AttachmentGetRequest_descriptor;
  }

  private void initFields()
  {
    this.attachmentId_ = "";
    this.screenDimensions_ = ScreenDimensions.getDefaultInstance();
  }

  public static Builder newBuilder()
  {
    return Builder.access$900();
  }

  public static Builder newBuilder(AttachmentGetRequest paramAttachmentGetRequest)
  {
    return newBuilder().mergeFrom(paramAttachmentGetRequest);
  }

  public static AttachmentGetRequest parseDelimitedFrom(InputStream paramInputStream)
    throws IOException
  {
    return (AttachmentGetRequest)PARSER.parseDelimitedFrom(paramInputStream);
  }

  public static AttachmentGetRequest parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (AttachmentGetRequest)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static AttachmentGetRequest parseFrom(ByteString paramByteString)
    throws InvalidProtocolBufferException
  {
    return (AttachmentGetRequest)PARSER.parseFrom(paramByteString);
  }

  public static AttachmentGetRequest parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (AttachmentGetRequest)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
  }

  public static AttachmentGetRequest parseFrom(CodedInputStream paramCodedInputStream)
    throws IOException
  {
    return (AttachmentGetRequest)PARSER.parseFrom(paramCodedInputStream);
  }

  public static AttachmentGetRequest parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (AttachmentGetRequest)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
  }

  public static AttachmentGetRequest parseFrom(InputStream paramInputStream)
    throws IOException
  {
    return (AttachmentGetRequest)PARSER.parseFrom(paramInputStream);
  }

  public static AttachmentGetRequest parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (AttachmentGetRequest)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static AttachmentGetRequest parseFrom(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    return (AttachmentGetRequest)PARSER.parseFrom(paramArrayOfByte);
  }

  public static AttachmentGetRequest parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (AttachmentGetRequest)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
  }

  public String getAttachmentId()
  {
    Object localObject = this.attachmentId_;
    if ((localObject instanceof String))
      return (String)localObject;
    ByteString localByteString = (ByteString)localObject;
    String str = localByteString.toStringUtf8();
    if (localByteString.isValidUtf8())
      this.attachmentId_ = str;
    return str;
  }

  public ByteString getAttachmentIdBytes()
  {
    Object localObject = this.attachmentId_;
    if ((localObject instanceof String))
    {
      ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
      this.attachmentId_ = localByteString;
      return localByteString;
    }
    return (ByteString)localObject;
  }

  public AttachmentGetRequest getDefaultInstanceForType()
  {
    return defaultInstance;
  }

  public Parser<AttachmentGetRequest> getParserForType()
  {
    return PARSER;
  }

  public ScreenDimensions getScreenDimensions()
  {
    return this.screenDimensions_;
  }

  public ScreenDimensionsOrBuilder getScreenDimensionsOrBuilder()
  {
    return this.screenDimensions_;
  }

  public int getSerializedSize()
  {
    int i = this.memoizedSerializedSize;
    if (i != -1)
      return i;
    int j = 0x1 & this.bitField0_;
    int k = 0;
    if (j == 1)
      k = 0 + CodedOutputStream.computeBytesSize(1, getAttachmentIdBytes());
    if ((0x2 & this.bitField0_) == 2)
      k += CodedOutputStream.computeMessageSize(2, this.screenDimensions_);
    int m = k + getUnknownFields().getSerializedSize();
    this.memoizedSerializedSize = m;
    return m;
  }

  public final UnknownFieldSet getUnknownFields()
  {
    return this.unknownFields;
  }

  public boolean hasAttachmentId()
  {
    return (0x1 & this.bitField0_) == 1;
  }

  public boolean hasScreenDimensions()
  {
    return (0x2 & this.bitField0_) == 2;
  }

  protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
  {
    return Sync.internal_static_googlex_glass_common_proto_AttachmentGetRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(AttachmentGetRequest.class, Builder.class);
  }

  protected MutableMessage internalMutableDefault()
  {
    if (mutableDefault == null)
      mutableDefault = internalMutableDefault("com.google.googlex.glass.common.proto.MutableSync$AttachmentGetRequest");
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
      paramCodedOutputStream.writeBytes(1, getAttachmentIdBytes());
    if ((0x2 & this.bitField0_) == 2)
      paramCodedOutputStream.writeMessage(2, this.screenDimensions_);
    getUnknownFields().writeTo(paramCodedOutputStream);
  }

  public static final class Builder extends GeneratedMessage.Builder<Builder>
    implements AttachmentGetRequestOrBuilder
  {
    private Object attachmentId_ = "";
    private int bitField0_;
    private SingleFieldBuilder<AttachmentGetRequest.ScreenDimensions, AttachmentGetRequest.ScreenDimensions.Builder, AttachmentGetRequest.ScreenDimensionsOrBuilder> screenDimensionsBuilder_;
    private AttachmentGetRequest.ScreenDimensions screenDimensions_ = AttachmentGetRequest.ScreenDimensions.getDefaultInstance();

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

    public static final Descriptors.Descriptor getDescriptor()
    {
      return Sync.internal_static_googlex_glass_common_proto_AttachmentGetRequest_descriptor;
    }

    private SingleFieldBuilder<AttachmentGetRequest.ScreenDimensions, AttachmentGetRequest.ScreenDimensions.Builder, AttachmentGetRequest.ScreenDimensionsOrBuilder> getScreenDimensionsFieldBuilder()
    {
      if (this.screenDimensionsBuilder_ == null)
      {
        this.screenDimensionsBuilder_ = new SingleFieldBuilder(this.screenDimensions_, getParentForChildren(), isClean());
        this.screenDimensions_ = null;
      }
      return this.screenDimensionsBuilder_;
    }

    private void maybeForceBuilderInitialization()
    {
      if (AttachmentGetRequest.alwaysUseFieldBuilders)
        getScreenDimensionsFieldBuilder();
    }

    public AttachmentGetRequest build()
    {
      AttachmentGetRequest localAttachmentGetRequest = buildPartial();
      if (!localAttachmentGetRequest.isInitialized())
        throw newUninitializedMessageException(localAttachmentGetRequest);
      return localAttachmentGetRequest;
    }

    public AttachmentGetRequest buildPartial()
    {
      AttachmentGetRequest localAttachmentGetRequest = new AttachmentGetRequest(this, null);
      int i = this.bitField0_;
      int j = i & 0x1;
      int k = 0;
      if (j == 1)
        k = 0x0 | 0x1;
      AttachmentGetRequest.access$1302(localAttachmentGetRequest, this.attachmentId_);
      if ((i & 0x2) == 2)
        k |= 2;
      if (this.screenDimensionsBuilder_ == null)
        AttachmentGetRequest.access$1402(localAttachmentGetRequest, this.screenDimensions_);
      while (true)
      {
        AttachmentGetRequest.access$1502(localAttachmentGetRequest, k);
        onBuilt();
        return localAttachmentGetRequest;
        AttachmentGetRequest.access$1402(localAttachmentGetRequest, (AttachmentGetRequest.ScreenDimensions)this.screenDimensionsBuilder_.build());
      }
    }

    public Builder clear()
    {
      super.clear();
      this.attachmentId_ = "";
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      if (this.screenDimensionsBuilder_ == null)
        this.screenDimensions_ = AttachmentGetRequest.ScreenDimensions.getDefaultInstance();
      while (true)
      {
        this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        return this;
        this.screenDimensionsBuilder_.clear();
      }
    }

    public Builder clearAttachmentId()
    {
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      this.attachmentId_ = AttachmentGetRequest.getDefaultInstance().getAttachmentId();
      onChanged();
      return this;
    }

    public Builder clearScreenDimensions()
    {
      if (this.screenDimensionsBuilder_ == null)
      {
        this.screenDimensions_ = AttachmentGetRequest.ScreenDimensions.getDefaultInstance();
        onChanged();
      }
      while (true)
      {
        this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        return this;
        this.screenDimensionsBuilder_.clear();
      }
    }

    public Builder clone()
    {
      return create().mergeFrom(buildPartial());
    }

    public String getAttachmentId()
    {
      Object localObject = this.attachmentId_;
      if (!(localObject instanceof String))
      {
        String str = ((ByteString)localObject).toStringUtf8();
        this.attachmentId_ = str;
        return str;
      }
      return (String)localObject;
    }

    public ByteString getAttachmentIdBytes()
    {
      Object localObject = this.attachmentId_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.attachmentId_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public AttachmentGetRequest getDefaultInstanceForType()
    {
      return AttachmentGetRequest.getDefaultInstance();
    }

    public Descriptors.Descriptor getDescriptorForType()
    {
      return Sync.internal_static_googlex_glass_common_proto_AttachmentGetRequest_descriptor;
    }

    public AttachmentGetRequest.ScreenDimensions getScreenDimensions()
    {
      if (this.screenDimensionsBuilder_ == null)
        return this.screenDimensions_;
      return (AttachmentGetRequest.ScreenDimensions)this.screenDimensionsBuilder_.getMessage();
    }

    public AttachmentGetRequest.ScreenDimensions.Builder getScreenDimensionsBuilder()
    {
      this.bitField0_ = (0x2 | this.bitField0_);
      onChanged();
      return (AttachmentGetRequest.ScreenDimensions.Builder)getScreenDimensionsFieldBuilder().getBuilder();
    }

    public AttachmentGetRequest.ScreenDimensionsOrBuilder getScreenDimensionsOrBuilder()
    {
      if (this.screenDimensionsBuilder_ != null)
        return (AttachmentGetRequest.ScreenDimensionsOrBuilder)this.screenDimensionsBuilder_.getMessageOrBuilder();
      return this.screenDimensions_;
    }

    public boolean hasAttachmentId()
    {
      return (0x1 & this.bitField0_) == 1;
    }

    public boolean hasScreenDimensions()
    {
      return (0x2 & this.bitField0_) == 2;
    }

    protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return Sync.internal_static_googlex_glass_common_proto_AttachmentGetRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(AttachmentGetRequest.class, Builder.class);
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Builder mergeFrom(AttachmentGetRequest paramAttachmentGetRequest)
    {
      if (paramAttachmentGetRequest == AttachmentGetRequest.getDefaultInstance())
        return this;
      if (paramAttachmentGetRequest.hasAttachmentId())
      {
        this.bitField0_ = (0x1 | this.bitField0_);
        this.attachmentId_ = paramAttachmentGetRequest.attachmentId_;
        onChanged();
      }
      if (paramAttachmentGetRequest.hasScreenDimensions())
        mergeScreenDimensions(paramAttachmentGetRequest.getScreenDimensions());
      mergeUnknownFields(paramAttachmentGetRequest.getUnknownFields());
      return this;
    }

    public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      AttachmentGetRequest localAttachmentGetRequest1 = null;
      try
      {
        AttachmentGetRequest localAttachmentGetRequest2 = (AttachmentGetRequest)AttachmentGetRequest.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
        return this;
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        localAttachmentGetRequest1 = (AttachmentGetRequest)localInvalidProtocolBufferException.getUnfinishedMessage();
        throw localInvalidProtocolBufferException;
      }
      finally
      {
        if (localAttachmentGetRequest1 != null)
          mergeFrom(localAttachmentGetRequest1);
      }
    }

    public Builder mergeFrom(Message paramMessage)
    {
      if ((paramMessage instanceof AttachmentGetRequest))
        return mergeFrom((AttachmentGetRequest)paramMessage);
      super.mergeFrom(paramMessage);
      return this;
    }

    public Builder mergeScreenDimensions(AttachmentGetRequest.ScreenDimensions paramScreenDimensions)
    {
      if (this.screenDimensionsBuilder_ == null)
        if (((0x2 & this.bitField0_) == 2) && (this.screenDimensions_ != AttachmentGetRequest.ScreenDimensions.getDefaultInstance()))
        {
          this.screenDimensions_ = AttachmentGetRequest.ScreenDimensions.newBuilder(this.screenDimensions_).mergeFrom(paramScreenDimensions).buildPartial();
          onChanged();
        }
      while (true)
      {
        this.bitField0_ = (0x2 | this.bitField0_);
        return this;
        this.screenDimensions_ = paramScreenDimensions;
        break;
        this.screenDimensionsBuilder_.mergeFrom(paramScreenDimensions);
      }
    }

    public Builder setAttachmentId(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x1 | this.bitField0_);
      this.attachmentId_ = paramString;
      onChanged();
      return this;
    }

    public Builder setAttachmentIdBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x1 | this.bitField0_);
      this.attachmentId_ = paramByteString;
      onChanged();
      return this;
    }

    public Builder setScreenDimensions(AttachmentGetRequest.ScreenDimensions.Builder paramBuilder)
    {
      if (this.screenDimensionsBuilder_ == null)
      {
        this.screenDimensions_ = paramBuilder.build();
        onChanged();
      }
      while (true)
      {
        this.bitField0_ = (0x2 | this.bitField0_);
        return this;
        this.screenDimensionsBuilder_.setMessage(paramBuilder.build());
      }
    }

    public Builder setScreenDimensions(AttachmentGetRequest.ScreenDimensions paramScreenDimensions)
    {
      if (this.screenDimensionsBuilder_ == null)
      {
        if (paramScreenDimensions == null)
          throw new NullPointerException();
        this.screenDimensions_ = paramScreenDimensions;
        onChanged();
      }
      while (true)
      {
        this.bitField0_ = (0x2 | this.bitField0_);
        return this;
        this.screenDimensionsBuilder_.setMessage(paramScreenDimensions);
      }
    }
  }

  public static final class ScreenDimensions extends GeneratedMessage
    implements AttachmentGetRequest.ScreenDimensionsOrBuilder
  {
    public static final int HEIGHT_PIXELS_FIELD_NUMBER = 2;
    public static Parser<ScreenDimensions> PARSER = new AbstractParser()
    {
      public AttachmentGetRequest.ScreenDimensions parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
        throws InvalidProtocolBufferException
      {
        return new AttachmentGetRequest.ScreenDimensions(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
      }
    };
    public static final int WIDTH_PIXELS_FIELD_NUMBER = 1;
    private static final ScreenDimensions defaultInstance;
    private static volatile MutableMessage mutableDefault = null;
    private static final long serialVersionUID;
    private int bitField0_;
    private int heightPixels_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private final UnknownFieldSet unknownFields;
    private int widthPixels_;

    static
    {
      defaultInstance = new ScreenDimensions(true);
      defaultInstance.initFields();
    }

    // ERROR //
    private ScreenDimensions(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 53	com/google/protobuf/GeneratedMessage:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 55	com/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 57	com/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 47	com/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions:initFields	()V
      //   18: invokestatic 63	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
      //   21: astore_3
      //   22: iconst_0
      //   23: istore 4
      //   25: iload 4
      //   27: ifne +150 -> 177
      //   30: aload_1
      //   31: invokevirtual 69	com/google/protobuf/CodedInputStream:readTag	()I
      //   34: istore 8
      //   36: iload 8
      //   38: lookupswitch	default:+34->72, 0:+152->190, 8:+52->90, 16:+99->137
      //   73: aload_1
      //   74: aload_3
      //   75: aload_2
      //   76: iload 8
      //   78: invokevirtual 73	com/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   81: ifne -56 -> 25
      //   84: iconst_1
      //   85: istore 4
      //   87: goto -62 -> 25
      //   90: aload_0
      //   91: iconst_1
      //   92: aload_0
      //   93: getfield 75	com/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions:bitField0_	I
      //   96: ior
      //   97: putfield 75	com/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions:bitField0_	I
      //   100: aload_0
      //   101: aload_1
      //   102: invokevirtual 78	com/google/protobuf/CodedInputStream:readInt32	()I
      //   105: putfield 80	com/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions:widthPixels_	I
      //   108: goto -83 -> 25
      //   111: astore 7
      //   113: aload 7
      //   115: aload_0
      //   116: invokevirtual 84	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   119: athrow
      //   120: astore 6
      //   122: aload_0
      //   123: aload_3
      //   124: invokevirtual 90	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   127: putfield 92	com/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   130: aload_0
      //   131: invokevirtual 95	com/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions:makeExtensionsImmutable	()V
      //   134: aload 6
      //   136: athrow
      //   137: aload_0
      //   138: iconst_2
      //   139: aload_0
      //   140: getfield 75	com/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions:bitField0_	I
      //   143: ior
      //   144: putfield 75	com/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions:bitField0_	I
      //   147: aload_0
      //   148: aload_1
      //   149: invokevirtual 78	com/google/protobuf/CodedInputStream:readInt32	()I
      //   152: putfield 97	com/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions:heightPixels_	I
      //   155: goto -130 -> 25
      //   158: astore 5
      //   160: new 50	com/google/protobuf/InvalidProtocolBufferException
      //   163: dup
      //   164: aload 5
      //   166: invokevirtual 101	java/io/IOException:getMessage	()Ljava/lang/String;
      //   169: invokespecial 104	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   172: aload_0
      //   173: invokevirtual 84	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   176: athrow
      //   177: aload_0
      //   178: aload_3
      //   179: invokevirtual 90	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
      //   182: putfield 92	com/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
      //   185: aload_0
      //   186: invokevirtual 95	com/google/googlex/glass/common/proto/AttachmentGetRequest$ScreenDimensions:makeExtensionsImmutable	()V
      //   189: return
      //   190: iconst_1
      //   191: istore 4
      //   193: goto -168 -> 25
      //
      // Exception table:
      //   from	to	target	type
      //   30	36	111	com/google/protobuf/InvalidProtocolBufferException
      //   72	84	111	com/google/protobuf/InvalidProtocolBufferException
      //   90	108	111	com/google/protobuf/InvalidProtocolBufferException
      //   137	155	111	com/google/protobuf/InvalidProtocolBufferException
      //   30	36	120	finally
      //   72	84	120	finally
      //   90	108	120	finally
      //   113	120	120	finally
      //   137	155	120	finally
      //   160	177	120	finally
      //   30	36	158	java/io/IOException
      //   72	84	158	java/io/IOException
      //   90	108	158	java/io/IOException
      //   137	155	158	java/io/IOException
    }

    private ScreenDimensions(GeneratedMessage.Builder<?> paramBuilder)
    {
      super();
      this.unknownFields = paramBuilder.getUnknownFields();
    }

    private ScreenDimensions(boolean paramBoolean)
    {
      this.unknownFields = UnknownFieldSet.getDefaultInstance();
    }

    public static ScreenDimensions getDefaultInstance()
    {
      return defaultInstance;
    }

    public static final Descriptors.Descriptor getDescriptor()
    {
      return Sync.internal_static_googlex_glass_common_proto_AttachmentGetRequest_ScreenDimensions_descriptor;
    }

    private void initFields()
    {
      this.widthPixels_ = 0;
      this.heightPixels_ = 0;
    }

    public static Builder newBuilder()
    {
      return Builder.access$200();
    }

    public static Builder newBuilder(ScreenDimensions paramScreenDimensions)
    {
      return newBuilder().mergeFrom(paramScreenDimensions);
    }

    public static ScreenDimensions parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (ScreenDimensions)PARSER.parseDelimitedFrom(paramInputStream);
    }

    public static ScreenDimensions parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (ScreenDimensions)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }

    public static ScreenDimensions parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (ScreenDimensions)PARSER.parseFrom(paramByteString);
    }

    public static ScreenDimensions parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (ScreenDimensions)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }

    public static ScreenDimensions parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (ScreenDimensions)PARSER.parseFrom(paramCodedInputStream);
    }

    public static ScreenDimensions parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (ScreenDimensions)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }

    public static ScreenDimensions parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (ScreenDimensions)PARSER.parseFrom(paramInputStream);
    }

    public static ScreenDimensions parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (ScreenDimensions)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }

    public static ScreenDimensions parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (ScreenDimensions)PARSER.parseFrom(paramArrayOfByte);
    }

    public static ScreenDimensions parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (ScreenDimensions)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }

    public ScreenDimensions getDefaultInstanceForType()
    {
      return defaultInstance;
    }

    public int getHeightPixels()
    {
      return this.heightPixels_;
    }

    public Parser<ScreenDimensions> getParserForType()
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
        k = 0 + CodedOutputStream.computeInt32Size(1, this.widthPixels_);
      if ((0x2 & this.bitField0_) == 2)
        k += CodedOutputStream.computeInt32Size(2, this.heightPixels_);
      int m = k + getUnknownFields().getSerializedSize();
      this.memoizedSerializedSize = m;
      return m;
    }

    public final UnknownFieldSet getUnknownFields()
    {
      return this.unknownFields;
    }

    public int getWidthPixels()
    {
      return this.widthPixels_;
    }

    public boolean hasHeightPixels()
    {
      return (0x2 & this.bitField0_) == 2;
    }

    public boolean hasWidthPixels()
    {
      return (0x1 & this.bitField0_) == 1;
    }

    protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return Sync.internal_static_googlex_glass_common_proto_AttachmentGetRequest_ScreenDimensions_fieldAccessorTable.ensureFieldAccessorsInitialized(ScreenDimensions.class, Builder.class);
    }

    protected MutableMessage internalMutableDefault()
    {
      if (mutableDefault == null)
        mutableDefault = internalMutableDefault("com.google.googlex.glass.common.proto.MutableSync$AttachmentGetRequest$ScreenDimensions");
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
        paramCodedOutputStream.writeInt32(1, this.widthPixels_);
      if ((0x2 & this.bitField0_) == 2)
        paramCodedOutputStream.writeInt32(2, this.heightPixels_);
      getUnknownFields().writeTo(paramCodedOutputStream);
    }

    public static final class Builder extends GeneratedMessage.Builder<Builder>
      implements AttachmentGetRequest.ScreenDimensionsOrBuilder
    {
      private int bitField0_;
      private int heightPixels_;
      private int widthPixels_;

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

      public static final Descriptors.Descriptor getDescriptor()
      {
        return Sync.internal_static_googlex_glass_common_proto_AttachmentGetRequest_ScreenDimensions_descriptor;
      }

      private void maybeForceBuilderInitialization()
      {
        if (AttachmentGetRequest.ScreenDimensions.alwaysUseFieldBuilders);
      }

      public AttachmentGetRequest.ScreenDimensions build()
      {
        AttachmentGetRequest.ScreenDimensions localScreenDimensions = buildPartial();
        if (!localScreenDimensions.isInitialized())
          throw newUninitializedMessageException(localScreenDimensions);
        return localScreenDimensions;
      }

      public AttachmentGetRequest.ScreenDimensions buildPartial()
      {
        AttachmentGetRequest.ScreenDimensions localScreenDimensions = new AttachmentGetRequest.ScreenDimensions(this, null);
        int i = this.bitField0_;
        int j = i & 0x1;
        int k = 0;
        if (j == 1)
          k = 0x0 | 0x1;
        AttachmentGetRequest.ScreenDimensions.access$602(localScreenDimensions, this.widthPixels_);
        if ((i & 0x2) == 2)
          k |= 2;
        AttachmentGetRequest.ScreenDimensions.access$702(localScreenDimensions, this.heightPixels_);
        AttachmentGetRequest.ScreenDimensions.access$802(localScreenDimensions, k);
        onBuilt();
        return localScreenDimensions;
      }

      public Builder clear()
      {
        super.clear();
        this.widthPixels_ = 0;
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        this.heightPixels_ = 0;
        this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        return this;
      }

      public Builder clearHeightPixels()
      {
        this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        this.heightPixels_ = 0;
        onChanged();
        return this;
      }

      public Builder clearWidthPixels()
      {
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        this.widthPixels_ = 0;
        onChanged();
        return this;
      }

      public Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }

      public AttachmentGetRequest.ScreenDimensions getDefaultInstanceForType()
      {
        return AttachmentGetRequest.ScreenDimensions.getDefaultInstance();
      }

      public Descriptors.Descriptor getDescriptorForType()
      {
        return Sync.internal_static_googlex_glass_common_proto_AttachmentGetRequest_ScreenDimensions_descriptor;
      }

      public int getHeightPixels()
      {
        return this.heightPixels_;
      }

      public int getWidthPixels()
      {
        return this.widthPixels_;
      }

      public boolean hasHeightPixels()
      {
        return (0x2 & this.bitField0_) == 2;
      }

      public boolean hasWidthPixels()
      {
        return (0x1 & this.bitField0_) == 1;
      }

      protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
      {
        return Sync.internal_static_googlex_glass_common_proto_AttachmentGetRequest_ScreenDimensions_fieldAccessorTable.ensureFieldAccessorsInitialized(AttachmentGetRequest.ScreenDimensions.class, Builder.class);
      }

      public final boolean isInitialized()
      {
        return true;
      }

      public Builder mergeFrom(AttachmentGetRequest.ScreenDimensions paramScreenDimensions)
      {
        if (paramScreenDimensions == AttachmentGetRequest.ScreenDimensions.getDefaultInstance())
          return this;
        if (paramScreenDimensions.hasWidthPixels())
          setWidthPixels(paramScreenDimensions.getWidthPixels());
        if (paramScreenDimensions.hasHeightPixels())
          setHeightPixels(paramScreenDimensions.getHeightPixels());
        mergeUnknownFields(paramScreenDimensions.getUnknownFields());
        return this;
      }

      public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
        throws IOException
      {
        AttachmentGetRequest.ScreenDimensions localScreenDimensions1 = null;
        try
        {
          AttachmentGetRequest.ScreenDimensions localScreenDimensions2 = (AttachmentGetRequest.ScreenDimensions)AttachmentGetRequest.ScreenDimensions.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
          return this;
        }
        catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
        {
          localScreenDimensions1 = (AttachmentGetRequest.ScreenDimensions)localInvalidProtocolBufferException.getUnfinishedMessage();
          throw localInvalidProtocolBufferException;
        }
        finally
        {
          if (localScreenDimensions1 != null)
            mergeFrom(localScreenDimensions1);
        }
      }

      public Builder mergeFrom(Message paramMessage)
      {
        if ((paramMessage instanceof AttachmentGetRequest.ScreenDimensions))
          return mergeFrom((AttachmentGetRequest.ScreenDimensions)paramMessage);
        super.mergeFrom(paramMessage);
        return this;
      }

      public Builder setHeightPixels(int paramInt)
      {
        this.bitField0_ = (0x2 | this.bitField0_);
        this.heightPixels_ = paramInt;
        onChanged();
        return this;
      }

      public Builder setWidthPixels(int paramInt)
      {
        this.bitField0_ = (0x1 | this.bitField0_);
        this.widthPixels_ = paramInt;
        onChanged();
        return this;
      }
    }
  }

  public static abstract interface ScreenDimensionsOrBuilder extends MessageOrBuilder
  {
    public abstract int getHeightPixels();

    public abstract int getWidthPixels();

    public abstract boolean hasHeightPixels();

    public abstract boolean hasWidthPixels();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.AttachmentGetRequest
 * JD-Core Version:    0.6.2
 */