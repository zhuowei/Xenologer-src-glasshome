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
import com.google.protobuf.MutableMessage;
import com.google.protobuf.Parser;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;

public final class AttachmentInsertRequest extends GeneratedMessage
  implements AttachmentInsertRequestOrBuilder
{
  public static final int CONTENT_FIELD_NUMBER = 3;
  public static final int CREATION_TIME_FIELD_NUMBER = 6;
  public static final int DESCRIPTION_FIELD_NUMBER = 4;
  public static final int DEVICE_ID_FIELD_NUMBER = 1;
  public static final int MIME_TYPE_FIELD_NUMBER = 2;
  public static final int NAME_FIELD_NUMBER = 5;
  public static Parser<AttachmentInsertRequest> PARSER = new AbstractParser()
  {
    public AttachmentInsertRequest parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return new AttachmentInsertRequest(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
    }
  };
  private static final AttachmentInsertRequest defaultInstance;
  private static volatile MutableMessage mutableDefault = null;
  private static final long serialVersionUID;
  private int bitField0_;
  private ByteString content_;
  private long creationTime_;
  private Object description_;
  private Object deviceId_;
  private byte memoizedIsInitialized = -1;
  private int memoizedSerializedSize = -1;
  private Object mimeType_;
  private Object name_;
  private final UnknownFieldSet unknownFields;

  static
  {
    defaultInstance = new AttachmentInsertRequest(true);
    defaultInstance.initFields();
  }

  // ERROR //
  private AttachmentInsertRequest(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 67	com/google/protobuf/GeneratedMessage:<init>	()V
    //   4: aload_0
    //   5: iconst_m1
    //   6: putfield 69	com/google/googlex/glass/common/proto/AttachmentInsertRequest:memoizedIsInitialized	B
    //   9: aload_0
    //   10: iconst_m1
    //   11: putfield 71	com/google/googlex/glass/common/proto/AttachmentInsertRequest:memoizedSerializedSize	I
    //   14: aload_0
    //   15: invokespecial 61	com/google/googlex/glass/common/proto/AttachmentInsertRequest:initFields	()V
    //   18: invokestatic 77	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
    //   21: astore_3
    //   22: iconst_0
    //   23: istore 4
    //   25: iload 4
    //   27: ifne +269 -> 296
    //   30: aload_1
    //   31: invokevirtual 83	com/google/protobuf/CodedInputStream:readTag	()I
    //   34: istore 8
    //   36: iload 8
    //   38: lookupswitch	default:+66->104, 0:+271->309, 10:+84->122, 18:+131->169, 26:+171->209, 34:+192->230, 42:+214->252, 48:+236->274
    //   105: aload_1
    //   106: aload_3
    //   107: aload_2
    //   108: iload 8
    //   110: invokevirtual 87	com/google/googlex/glass/common/proto/AttachmentInsertRequest:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    //   113: ifne -88 -> 25
    //   116: iconst_1
    //   117: istore 4
    //   119: goto -94 -> 25
    //   122: aload_0
    //   123: iconst_1
    //   124: aload_0
    //   125: getfield 89	com/google/googlex/glass/common/proto/AttachmentInsertRequest:bitField0_	I
    //   128: ior
    //   129: putfield 89	com/google/googlex/glass/common/proto/AttachmentInsertRequest:bitField0_	I
    //   132: aload_0
    //   133: aload_1
    //   134: invokevirtual 93	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   137: putfield 95	com/google/googlex/glass/common/proto/AttachmentInsertRequest:deviceId_	Ljava/lang/Object;
    //   140: goto -115 -> 25
    //   143: astore 7
    //   145: aload 7
    //   147: aload_0
    //   148: invokevirtual 99	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   151: athrow
    //   152: astore 6
    //   154: aload_0
    //   155: aload_3
    //   156: invokevirtual 105	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   159: putfield 107	com/google/googlex/glass/common/proto/AttachmentInsertRequest:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   162: aload_0
    //   163: invokevirtual 110	com/google/googlex/glass/common/proto/AttachmentInsertRequest:makeExtensionsImmutable	()V
    //   166: aload 6
    //   168: athrow
    //   169: aload_0
    //   170: iconst_2
    //   171: aload_0
    //   172: getfield 89	com/google/googlex/glass/common/proto/AttachmentInsertRequest:bitField0_	I
    //   175: ior
    //   176: putfield 89	com/google/googlex/glass/common/proto/AttachmentInsertRequest:bitField0_	I
    //   179: aload_0
    //   180: aload_1
    //   181: invokevirtual 93	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   184: putfield 112	com/google/googlex/glass/common/proto/AttachmentInsertRequest:mimeType_	Ljava/lang/Object;
    //   187: goto -162 -> 25
    //   190: astore 5
    //   192: new 64	com/google/protobuf/InvalidProtocolBufferException
    //   195: dup
    //   196: aload 5
    //   198: invokevirtual 116	java/io/IOException:getMessage	()Ljava/lang/String;
    //   201: invokespecial 119	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
    //   204: aload_0
    //   205: invokevirtual 99	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   208: athrow
    //   209: aload_0
    //   210: iconst_4
    //   211: aload_0
    //   212: getfield 89	com/google/googlex/glass/common/proto/AttachmentInsertRequest:bitField0_	I
    //   215: ior
    //   216: putfield 89	com/google/googlex/glass/common/proto/AttachmentInsertRequest:bitField0_	I
    //   219: aload_0
    //   220: aload_1
    //   221: invokevirtual 93	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   224: putfield 121	com/google/googlex/glass/common/proto/AttachmentInsertRequest:content_	Lcom/google/protobuf/ByteString;
    //   227: goto -202 -> 25
    //   230: aload_0
    //   231: bipush 8
    //   233: aload_0
    //   234: getfield 89	com/google/googlex/glass/common/proto/AttachmentInsertRequest:bitField0_	I
    //   237: ior
    //   238: putfield 89	com/google/googlex/glass/common/proto/AttachmentInsertRequest:bitField0_	I
    //   241: aload_0
    //   242: aload_1
    //   243: invokevirtual 93	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   246: putfield 123	com/google/googlex/glass/common/proto/AttachmentInsertRequest:description_	Ljava/lang/Object;
    //   249: goto -224 -> 25
    //   252: aload_0
    //   253: bipush 16
    //   255: aload_0
    //   256: getfield 89	com/google/googlex/glass/common/proto/AttachmentInsertRequest:bitField0_	I
    //   259: ior
    //   260: putfield 89	com/google/googlex/glass/common/proto/AttachmentInsertRequest:bitField0_	I
    //   263: aload_0
    //   264: aload_1
    //   265: invokevirtual 93	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   268: putfield 125	com/google/googlex/glass/common/proto/AttachmentInsertRequest:name_	Ljava/lang/Object;
    //   271: goto -246 -> 25
    //   274: aload_0
    //   275: bipush 32
    //   277: aload_0
    //   278: getfield 89	com/google/googlex/glass/common/proto/AttachmentInsertRequest:bitField0_	I
    //   281: ior
    //   282: putfield 89	com/google/googlex/glass/common/proto/AttachmentInsertRequest:bitField0_	I
    //   285: aload_0
    //   286: aload_1
    //   287: invokevirtual 129	com/google/protobuf/CodedInputStream:readUInt64	()J
    //   290: putfield 131	com/google/googlex/glass/common/proto/AttachmentInsertRequest:creationTime_	J
    //   293: goto -268 -> 25
    //   296: aload_0
    //   297: aload_3
    //   298: invokevirtual 105	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   301: putfield 107	com/google/googlex/glass/common/proto/AttachmentInsertRequest:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   304: aload_0
    //   305: invokevirtual 110	com/google/googlex/glass/common/proto/AttachmentInsertRequest:makeExtensionsImmutable	()V
    //   308: return
    //   309: iconst_1
    //   310: istore 4
    //   312: goto -287 -> 25
    //
    // Exception table:
    //   from	to	target	type
    //   30	36	143	com/google/protobuf/InvalidProtocolBufferException
    //   104	116	143	com/google/protobuf/InvalidProtocolBufferException
    //   122	140	143	com/google/protobuf/InvalidProtocolBufferException
    //   169	187	143	com/google/protobuf/InvalidProtocolBufferException
    //   209	227	143	com/google/protobuf/InvalidProtocolBufferException
    //   230	249	143	com/google/protobuf/InvalidProtocolBufferException
    //   252	271	143	com/google/protobuf/InvalidProtocolBufferException
    //   274	293	143	com/google/protobuf/InvalidProtocolBufferException
    //   30	36	152	finally
    //   104	116	152	finally
    //   122	140	152	finally
    //   145	152	152	finally
    //   169	187	152	finally
    //   192	209	152	finally
    //   209	227	152	finally
    //   230	249	152	finally
    //   252	271	152	finally
    //   274	293	152	finally
    //   30	36	190	java/io/IOException
    //   104	116	190	java/io/IOException
    //   122	140	190	java/io/IOException
    //   169	187	190	java/io/IOException
    //   209	227	190	java/io/IOException
    //   230	249	190	java/io/IOException
    //   252	271	190	java/io/IOException
    //   274	293	190	java/io/IOException
  }

  private AttachmentInsertRequest(GeneratedMessage.Builder<?> paramBuilder)
  {
    super(paramBuilder);
    this.unknownFields = paramBuilder.getUnknownFields();
  }

  private AttachmentInsertRequest(boolean paramBoolean)
  {
    this.unknownFields = UnknownFieldSet.getDefaultInstance();
  }

  public static AttachmentInsertRequest getDefaultInstance()
  {
    return defaultInstance;
  }

  public static final Descriptors.Descriptor getDescriptor()
  {
    return Sync.internal_static_googlex_glass_common_proto_AttachmentInsertRequest_descriptor;
  }

  private void initFields()
  {
    this.deviceId_ = "";
    this.mimeType_ = "";
    this.content_ = ByteString.EMPTY;
    this.description_ = "";
    this.name_ = "";
    this.creationTime_ = 0L;
  }

  public static Builder newBuilder()
  {
    return Builder.access$100();
  }

  public static Builder newBuilder(AttachmentInsertRequest paramAttachmentInsertRequest)
  {
    return newBuilder().mergeFrom(paramAttachmentInsertRequest);
  }

  public static AttachmentInsertRequest parseDelimitedFrom(InputStream paramInputStream)
    throws IOException
  {
    return (AttachmentInsertRequest)PARSER.parseDelimitedFrom(paramInputStream);
  }

  public static AttachmentInsertRequest parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (AttachmentInsertRequest)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static AttachmentInsertRequest parseFrom(ByteString paramByteString)
    throws InvalidProtocolBufferException
  {
    return (AttachmentInsertRequest)PARSER.parseFrom(paramByteString);
  }

  public static AttachmentInsertRequest parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (AttachmentInsertRequest)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
  }

  public static AttachmentInsertRequest parseFrom(CodedInputStream paramCodedInputStream)
    throws IOException
  {
    return (AttachmentInsertRequest)PARSER.parseFrom(paramCodedInputStream);
  }

  public static AttachmentInsertRequest parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (AttachmentInsertRequest)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
  }

  public static AttachmentInsertRequest parseFrom(InputStream paramInputStream)
    throws IOException
  {
    return (AttachmentInsertRequest)PARSER.parseFrom(paramInputStream);
  }

  public static AttachmentInsertRequest parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (AttachmentInsertRequest)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static AttachmentInsertRequest parseFrom(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    return (AttachmentInsertRequest)PARSER.parseFrom(paramArrayOfByte);
  }

  public static AttachmentInsertRequest parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (AttachmentInsertRequest)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
  }

  public ByteString getContent()
  {
    return this.content_;
  }

  public long getCreationTime()
  {
    return this.creationTime_;
  }

  public AttachmentInsertRequest getDefaultInstanceForType()
  {
    return defaultInstance;
  }

  public String getDescription()
  {
    Object localObject = this.description_;
    if ((localObject instanceof String))
      return (String)localObject;
    ByteString localByteString = (ByteString)localObject;
    String str = localByteString.toStringUtf8();
    if (localByteString.isValidUtf8())
      this.description_ = str;
    return str;
  }

  public ByteString getDescriptionBytes()
  {
    Object localObject = this.description_;
    if ((localObject instanceof String))
    {
      ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
      this.description_ = localByteString;
      return localByteString;
    }
    return (ByteString)localObject;
  }

  public String getDeviceId()
  {
    Object localObject = this.deviceId_;
    if ((localObject instanceof String))
      return (String)localObject;
    ByteString localByteString = (ByteString)localObject;
    String str = localByteString.toStringUtf8();
    if (localByteString.isValidUtf8())
      this.deviceId_ = str;
    return str;
  }

  public ByteString getDeviceIdBytes()
  {
    Object localObject = this.deviceId_;
    if ((localObject instanceof String))
    {
      ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
      this.deviceId_ = localByteString;
      return localByteString;
    }
    return (ByteString)localObject;
  }

  public String getMimeType()
  {
    Object localObject = this.mimeType_;
    if ((localObject instanceof String))
      return (String)localObject;
    ByteString localByteString = (ByteString)localObject;
    String str = localByteString.toStringUtf8();
    if (localByteString.isValidUtf8())
      this.mimeType_ = str;
    return str;
  }

  public ByteString getMimeTypeBytes()
  {
    Object localObject = this.mimeType_;
    if ((localObject instanceof String))
    {
      ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
      this.mimeType_ = localByteString;
      return localByteString;
    }
    return (ByteString)localObject;
  }

  public String getName()
  {
    Object localObject = this.name_;
    if ((localObject instanceof String))
      return (String)localObject;
    ByteString localByteString = (ByteString)localObject;
    String str = localByteString.toStringUtf8();
    if (localByteString.isValidUtf8())
      this.name_ = str;
    return str;
  }

  public ByteString getNameBytes()
  {
    Object localObject = this.name_;
    if ((localObject instanceof String))
    {
      ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
      this.name_ = localByteString;
      return localByteString;
    }
    return (ByteString)localObject;
  }

  public Parser<AttachmentInsertRequest> getParserForType()
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
      k = 0 + CodedOutputStream.computeBytesSize(1, getDeviceIdBytes());
    if ((0x2 & this.bitField0_) == 2)
      k += CodedOutputStream.computeBytesSize(2, getMimeTypeBytes());
    if ((0x4 & this.bitField0_) == 4)
      k += CodedOutputStream.computeBytesSize(3, this.content_);
    if ((0x8 & this.bitField0_) == 8)
      k += CodedOutputStream.computeBytesSize(4, getDescriptionBytes());
    if ((0x10 & this.bitField0_) == 16)
      k += CodedOutputStream.computeBytesSize(5, getNameBytes());
    if ((0x20 & this.bitField0_) == 32)
      k += CodedOutputStream.computeUInt64Size(6, this.creationTime_);
    int m = k + getUnknownFields().getSerializedSize();
    this.memoizedSerializedSize = m;
    return m;
  }

  public final UnknownFieldSet getUnknownFields()
  {
    return this.unknownFields;
  }

  public boolean hasContent()
  {
    return (0x4 & this.bitField0_) == 4;
  }

  public boolean hasCreationTime()
  {
    return (0x20 & this.bitField0_) == 32;
  }

  public boolean hasDescription()
  {
    return (0x8 & this.bitField0_) == 8;
  }

  public boolean hasDeviceId()
  {
    return (0x1 & this.bitField0_) == 1;
  }

  public boolean hasMimeType()
  {
    return (0x2 & this.bitField0_) == 2;
  }

  public boolean hasName()
  {
    return (0x10 & this.bitField0_) == 16;
  }

  protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
  {
    return Sync.internal_static_googlex_glass_common_proto_AttachmentInsertRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(AttachmentInsertRequest.class, Builder.class);
  }

  protected MutableMessage internalMutableDefault()
  {
    if (mutableDefault == null)
      mutableDefault = internalMutableDefault("com.google.googlex.glass.common.proto.MutableSync$AttachmentInsertRequest");
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
      paramCodedOutputStream.writeBytes(1, getDeviceIdBytes());
    if ((0x2 & this.bitField0_) == 2)
      paramCodedOutputStream.writeBytes(2, getMimeTypeBytes());
    if ((0x4 & this.bitField0_) == 4)
      paramCodedOutputStream.writeBytes(3, this.content_);
    if ((0x8 & this.bitField0_) == 8)
      paramCodedOutputStream.writeBytes(4, getDescriptionBytes());
    if ((0x10 & this.bitField0_) == 16)
      paramCodedOutputStream.writeBytes(5, getNameBytes());
    if ((0x20 & this.bitField0_) == 32)
      paramCodedOutputStream.writeUInt64(6, this.creationTime_);
    getUnknownFields().writeTo(paramCodedOutputStream);
  }

  public static final class Builder extends GeneratedMessage.Builder<Builder>
    implements AttachmentInsertRequestOrBuilder
  {
    private int bitField0_;
    private ByteString content_ = ByteString.EMPTY;
    private long creationTime_;
    private Object description_ = "";
    private Object deviceId_ = "";
    private Object mimeType_ = "";
    private Object name_ = "";

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
      return Sync.internal_static_googlex_glass_common_proto_AttachmentInsertRequest_descriptor;
    }

    private void maybeForceBuilderInitialization()
    {
      if (AttachmentInsertRequest.alwaysUseFieldBuilders);
    }

    public AttachmentInsertRequest build()
    {
      AttachmentInsertRequest localAttachmentInsertRequest = buildPartial();
      if (!localAttachmentInsertRequest.isInitialized())
        throw newUninitializedMessageException(localAttachmentInsertRequest);
      return localAttachmentInsertRequest;
    }

    public AttachmentInsertRequest buildPartial()
    {
      AttachmentInsertRequest localAttachmentInsertRequest = new AttachmentInsertRequest(this, null);
      int i = this.bitField0_;
      int j = i & 0x1;
      int k = 0;
      if (j == 1)
        k = 0x0 | 0x1;
      AttachmentInsertRequest.access$502(localAttachmentInsertRequest, this.deviceId_);
      if ((i & 0x2) == 2)
        k |= 2;
      AttachmentInsertRequest.access$602(localAttachmentInsertRequest, this.mimeType_);
      if ((i & 0x4) == 4)
        k |= 4;
      AttachmentInsertRequest.access$702(localAttachmentInsertRequest, this.content_);
      if ((i & 0x8) == 8)
        k |= 8;
      AttachmentInsertRequest.access$802(localAttachmentInsertRequest, this.description_);
      if ((i & 0x10) == 16)
        k |= 16;
      AttachmentInsertRequest.access$902(localAttachmentInsertRequest, this.name_);
      if ((i & 0x20) == 32)
        k |= 32;
      AttachmentInsertRequest.access$1002(localAttachmentInsertRequest, this.creationTime_);
      AttachmentInsertRequest.access$1102(localAttachmentInsertRequest, k);
      onBuilt();
      return localAttachmentInsertRequest;
    }

    public Builder clear()
    {
      super.clear();
      this.deviceId_ = "";
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      this.mimeType_ = "";
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      this.content_ = ByteString.EMPTY;
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      this.description_ = "";
      this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
      this.name_ = "";
      this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
      this.creationTime_ = 0L;
      this.bitField0_ = (0xFFFFFFDF & this.bitField0_);
      return this;
    }

    public Builder clearContent()
    {
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      this.content_ = AttachmentInsertRequest.getDefaultInstance().getContent();
      onChanged();
      return this;
    }

    public Builder clearCreationTime()
    {
      this.bitField0_ = (0xFFFFFFDF & this.bitField0_);
      this.creationTime_ = 0L;
      onChanged();
      return this;
    }

    public Builder clearDescription()
    {
      this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
      this.description_ = AttachmentInsertRequest.getDefaultInstance().getDescription();
      onChanged();
      return this;
    }

    public Builder clearDeviceId()
    {
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      this.deviceId_ = AttachmentInsertRequest.getDefaultInstance().getDeviceId();
      onChanged();
      return this;
    }

    public Builder clearMimeType()
    {
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      this.mimeType_ = AttachmentInsertRequest.getDefaultInstance().getMimeType();
      onChanged();
      return this;
    }

    public Builder clearName()
    {
      this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
      this.name_ = AttachmentInsertRequest.getDefaultInstance().getName();
      onChanged();
      return this;
    }

    public Builder clone()
    {
      return create().mergeFrom(buildPartial());
    }

    public ByteString getContent()
    {
      return this.content_;
    }

    public long getCreationTime()
    {
      return this.creationTime_;
    }

    public AttachmentInsertRequest getDefaultInstanceForType()
    {
      return AttachmentInsertRequest.getDefaultInstance();
    }

    public String getDescription()
    {
      Object localObject = this.description_;
      if (!(localObject instanceof String))
      {
        String str = ((ByteString)localObject).toStringUtf8();
        this.description_ = str;
        return str;
      }
      return (String)localObject;
    }

    public ByteString getDescriptionBytes()
    {
      Object localObject = this.description_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.description_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public Descriptors.Descriptor getDescriptorForType()
    {
      return Sync.internal_static_googlex_glass_common_proto_AttachmentInsertRequest_descriptor;
    }

    public String getDeviceId()
    {
      Object localObject = this.deviceId_;
      if (!(localObject instanceof String))
      {
        String str = ((ByteString)localObject).toStringUtf8();
        this.deviceId_ = str;
        return str;
      }
      return (String)localObject;
    }

    public ByteString getDeviceIdBytes()
    {
      Object localObject = this.deviceId_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.deviceId_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public String getMimeType()
    {
      Object localObject = this.mimeType_;
      if (!(localObject instanceof String))
      {
        String str = ((ByteString)localObject).toStringUtf8();
        this.mimeType_ = str;
        return str;
      }
      return (String)localObject;
    }

    public ByteString getMimeTypeBytes()
    {
      Object localObject = this.mimeType_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.mimeType_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public String getName()
    {
      Object localObject = this.name_;
      if (!(localObject instanceof String))
      {
        String str = ((ByteString)localObject).toStringUtf8();
        this.name_ = str;
        return str;
      }
      return (String)localObject;
    }

    public ByteString getNameBytes()
    {
      Object localObject = this.name_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.name_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public boolean hasContent()
    {
      return (0x4 & this.bitField0_) == 4;
    }

    public boolean hasCreationTime()
    {
      return (0x20 & this.bitField0_) == 32;
    }

    public boolean hasDescription()
    {
      return (0x8 & this.bitField0_) == 8;
    }

    public boolean hasDeviceId()
    {
      return (0x1 & this.bitField0_) == 1;
    }

    public boolean hasMimeType()
    {
      return (0x2 & this.bitField0_) == 2;
    }

    public boolean hasName()
    {
      return (0x10 & this.bitField0_) == 16;
    }

    protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return Sync.internal_static_googlex_glass_common_proto_AttachmentInsertRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(AttachmentInsertRequest.class, Builder.class);
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Builder mergeFrom(AttachmentInsertRequest paramAttachmentInsertRequest)
    {
      if (paramAttachmentInsertRequest == AttachmentInsertRequest.getDefaultInstance())
        return this;
      if (paramAttachmentInsertRequest.hasDeviceId())
      {
        this.bitField0_ = (0x1 | this.bitField0_);
        this.deviceId_ = paramAttachmentInsertRequest.deviceId_;
        onChanged();
      }
      if (paramAttachmentInsertRequest.hasMimeType())
      {
        this.bitField0_ = (0x2 | this.bitField0_);
        this.mimeType_ = paramAttachmentInsertRequest.mimeType_;
        onChanged();
      }
      if (paramAttachmentInsertRequest.hasContent())
        setContent(paramAttachmentInsertRequest.getContent());
      if (paramAttachmentInsertRequest.hasDescription())
      {
        this.bitField0_ = (0x8 | this.bitField0_);
        this.description_ = paramAttachmentInsertRequest.description_;
        onChanged();
      }
      if (paramAttachmentInsertRequest.hasName())
      {
        this.bitField0_ = (0x10 | this.bitField0_);
        this.name_ = paramAttachmentInsertRequest.name_;
        onChanged();
      }
      if (paramAttachmentInsertRequest.hasCreationTime())
        setCreationTime(paramAttachmentInsertRequest.getCreationTime());
      mergeUnknownFields(paramAttachmentInsertRequest.getUnknownFields());
      return this;
    }

    public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      AttachmentInsertRequest localAttachmentInsertRequest1 = null;
      try
      {
        AttachmentInsertRequest localAttachmentInsertRequest2 = (AttachmentInsertRequest)AttachmentInsertRequest.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
        return this;
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        localAttachmentInsertRequest1 = (AttachmentInsertRequest)localInvalidProtocolBufferException.getUnfinishedMessage();
        throw localInvalidProtocolBufferException;
      }
      finally
      {
        if (localAttachmentInsertRequest1 != null)
          mergeFrom(localAttachmentInsertRequest1);
      }
    }

    public Builder mergeFrom(Message paramMessage)
    {
      if ((paramMessage instanceof AttachmentInsertRequest))
        return mergeFrom((AttachmentInsertRequest)paramMessage);
      super.mergeFrom(paramMessage);
      return this;
    }

    public Builder setContent(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x4 | this.bitField0_);
      this.content_ = paramByteString;
      onChanged();
      return this;
    }

    public Builder setCreationTime(long paramLong)
    {
      this.bitField0_ = (0x20 | this.bitField0_);
      this.creationTime_ = paramLong;
      onChanged();
      return this;
    }

    public Builder setDescription(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x8 | this.bitField0_);
      this.description_ = paramString;
      onChanged();
      return this;
    }

    public Builder setDescriptionBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x8 | this.bitField0_);
      this.description_ = paramByteString;
      onChanged();
      return this;
    }

    public Builder setDeviceId(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x1 | this.bitField0_);
      this.deviceId_ = paramString;
      onChanged();
      return this;
    }

    public Builder setDeviceIdBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x1 | this.bitField0_);
      this.deviceId_ = paramByteString;
      onChanged();
      return this;
    }

    public Builder setMimeType(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x2 | this.bitField0_);
      this.mimeType_ = paramString;
      onChanged();
      return this;
    }

    public Builder setMimeTypeBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x2 | this.bitField0_);
      this.mimeType_ = paramByteString;
      onChanged();
      return this;
    }

    public Builder setName(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x10 | this.bitField0_);
      this.name_ = paramString;
      onChanged();
      return this;
    }

    public Builder setNameBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x10 | this.bitField0_);
      this.name_ = paramByteString;
      onChanged();
      return this;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.AttachmentInsertRequest
 * JD-Core Version:    0.6.2
 */