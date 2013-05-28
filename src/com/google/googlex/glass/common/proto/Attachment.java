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

public final class Attachment extends GeneratedMessage
  implements AttachmentOrBuilder
{
  public static final int CLIENT_CACHE_PATH_FIELD_NUMBER = 5;
  public static final int CONTENT_TYPE_FIELD_NUMBER = 2;
  public static final int CONTENT_URL_FIELD_NUMBER = 3;
  public static final int CREATION_TIME_FIELD_NUMBER = 6;
  public static final int ID_FIELD_NUMBER = 1;
  public static final int IS_PROCESSING_CONTENT_FIELD_NUMBER = 7;
  public static Parser<Attachment> PARSER = new AbstractParser()
  {
    public Attachment parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return new Attachment(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
    }
  };
  public static final int THUMBNAIL_URL_FIELD_NUMBER = 4;
  private static final Attachment defaultInstance;
  private static volatile MutableMessage mutableDefault = null;
  private static final long serialVersionUID;
  private int bitField0_;
  private Object clientCachePath_;
  private Object contentType_;
  private Object contentUrl_;
  private long creationTime_;
  private Object id_;
  private boolean isProcessingContent_;
  private byte memoizedIsInitialized = -1;
  private int memoizedSerializedSize = -1;
  private Object thumbnailUrl_;
  private final UnknownFieldSet unknownFields;

  static
  {
    defaultInstance = new Attachment(true);
    defaultInstance.initFields();
  }

  // ERROR //
  private Attachment(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 70	com/google/protobuf/GeneratedMessage:<init>	()V
    //   4: aload_0
    //   5: iconst_m1
    //   6: putfield 72	com/google/googlex/glass/common/proto/Attachment:memoizedIsInitialized	B
    //   9: aload_0
    //   10: iconst_m1
    //   11: putfield 74	com/google/googlex/glass/common/proto/Attachment:memoizedSerializedSize	I
    //   14: aload_0
    //   15: invokespecial 64	com/google/googlex/glass/common/proto/Attachment:initFields	()V
    //   18: invokestatic 80	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
    //   21: astore_3
    //   22: iconst_0
    //   23: istore 4
    //   25: iload 4
    //   27: ifne +299 -> 326
    //   30: aload_1
    //   31: invokevirtual 86	com/google/protobuf/CodedInputStream:readTag	()I
    //   34: istore 8
    //   36: iload 8
    //   38: lookupswitch	default:+74->112, 0:+301->339, 10:+92->130, 18:+139->177, 26:+179->217, 34:+200->238, 42:+222->260, 48:+244->282, 56:+266->304
    //   113: aload_1
    //   114: aload_3
    //   115: aload_2
    //   116: iload 8
    //   118: invokevirtual 90	com/google/googlex/glass/common/proto/Attachment:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    //   121: ifne -96 -> 25
    //   124: iconst_1
    //   125: istore 4
    //   127: goto -102 -> 25
    //   130: aload_0
    //   131: iconst_1
    //   132: aload_0
    //   133: getfield 92	com/google/googlex/glass/common/proto/Attachment:bitField0_	I
    //   136: ior
    //   137: putfield 92	com/google/googlex/glass/common/proto/Attachment:bitField0_	I
    //   140: aload_0
    //   141: aload_1
    //   142: invokevirtual 96	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   145: putfield 98	com/google/googlex/glass/common/proto/Attachment:id_	Ljava/lang/Object;
    //   148: goto -123 -> 25
    //   151: astore 7
    //   153: aload 7
    //   155: aload_0
    //   156: invokevirtual 102	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   159: athrow
    //   160: astore 6
    //   162: aload_0
    //   163: aload_3
    //   164: invokevirtual 108	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   167: putfield 110	com/google/googlex/glass/common/proto/Attachment:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   170: aload_0
    //   171: invokevirtual 113	com/google/googlex/glass/common/proto/Attachment:makeExtensionsImmutable	()V
    //   174: aload 6
    //   176: athrow
    //   177: aload_0
    //   178: iconst_2
    //   179: aload_0
    //   180: getfield 92	com/google/googlex/glass/common/proto/Attachment:bitField0_	I
    //   183: ior
    //   184: putfield 92	com/google/googlex/glass/common/proto/Attachment:bitField0_	I
    //   187: aload_0
    //   188: aload_1
    //   189: invokevirtual 96	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   192: putfield 115	com/google/googlex/glass/common/proto/Attachment:contentType_	Ljava/lang/Object;
    //   195: goto -170 -> 25
    //   198: astore 5
    //   200: new 67	com/google/protobuf/InvalidProtocolBufferException
    //   203: dup
    //   204: aload 5
    //   206: invokevirtual 119	java/io/IOException:getMessage	()Ljava/lang/String;
    //   209: invokespecial 122	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
    //   212: aload_0
    //   213: invokevirtual 102	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   216: athrow
    //   217: aload_0
    //   218: iconst_4
    //   219: aload_0
    //   220: getfield 92	com/google/googlex/glass/common/proto/Attachment:bitField0_	I
    //   223: ior
    //   224: putfield 92	com/google/googlex/glass/common/proto/Attachment:bitField0_	I
    //   227: aload_0
    //   228: aload_1
    //   229: invokevirtual 96	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   232: putfield 124	com/google/googlex/glass/common/proto/Attachment:contentUrl_	Ljava/lang/Object;
    //   235: goto -210 -> 25
    //   238: aload_0
    //   239: bipush 8
    //   241: aload_0
    //   242: getfield 92	com/google/googlex/glass/common/proto/Attachment:bitField0_	I
    //   245: ior
    //   246: putfield 92	com/google/googlex/glass/common/proto/Attachment:bitField0_	I
    //   249: aload_0
    //   250: aload_1
    //   251: invokevirtual 96	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   254: putfield 126	com/google/googlex/glass/common/proto/Attachment:thumbnailUrl_	Ljava/lang/Object;
    //   257: goto -232 -> 25
    //   260: aload_0
    //   261: bipush 16
    //   263: aload_0
    //   264: getfield 92	com/google/googlex/glass/common/proto/Attachment:bitField0_	I
    //   267: ior
    //   268: putfield 92	com/google/googlex/glass/common/proto/Attachment:bitField0_	I
    //   271: aload_0
    //   272: aload_1
    //   273: invokevirtual 96	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   276: putfield 128	com/google/googlex/glass/common/proto/Attachment:clientCachePath_	Ljava/lang/Object;
    //   279: goto -254 -> 25
    //   282: aload_0
    //   283: bipush 32
    //   285: aload_0
    //   286: getfield 92	com/google/googlex/glass/common/proto/Attachment:bitField0_	I
    //   289: ior
    //   290: putfield 92	com/google/googlex/glass/common/proto/Attachment:bitField0_	I
    //   293: aload_0
    //   294: aload_1
    //   295: invokevirtual 132	com/google/protobuf/CodedInputStream:readUInt64	()J
    //   298: putfield 134	com/google/googlex/glass/common/proto/Attachment:creationTime_	J
    //   301: goto -276 -> 25
    //   304: aload_0
    //   305: bipush 64
    //   307: aload_0
    //   308: getfield 92	com/google/googlex/glass/common/proto/Attachment:bitField0_	I
    //   311: ior
    //   312: putfield 92	com/google/googlex/glass/common/proto/Attachment:bitField0_	I
    //   315: aload_0
    //   316: aload_1
    //   317: invokevirtual 138	com/google/protobuf/CodedInputStream:readBool	()Z
    //   320: putfield 140	com/google/googlex/glass/common/proto/Attachment:isProcessingContent_	Z
    //   323: goto -298 -> 25
    //   326: aload_0
    //   327: aload_3
    //   328: invokevirtual 108	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   331: putfield 110	com/google/googlex/glass/common/proto/Attachment:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   334: aload_0
    //   335: invokevirtual 113	com/google/googlex/glass/common/proto/Attachment:makeExtensionsImmutable	()V
    //   338: return
    //   339: iconst_1
    //   340: istore 4
    //   342: goto -317 -> 25
    //
    // Exception table:
    //   from	to	target	type
    //   30	36	151	com/google/protobuf/InvalidProtocolBufferException
    //   112	124	151	com/google/protobuf/InvalidProtocolBufferException
    //   130	148	151	com/google/protobuf/InvalidProtocolBufferException
    //   177	195	151	com/google/protobuf/InvalidProtocolBufferException
    //   217	235	151	com/google/protobuf/InvalidProtocolBufferException
    //   238	257	151	com/google/protobuf/InvalidProtocolBufferException
    //   260	279	151	com/google/protobuf/InvalidProtocolBufferException
    //   282	301	151	com/google/protobuf/InvalidProtocolBufferException
    //   304	323	151	com/google/protobuf/InvalidProtocolBufferException
    //   30	36	160	finally
    //   112	124	160	finally
    //   130	148	160	finally
    //   153	160	160	finally
    //   177	195	160	finally
    //   200	217	160	finally
    //   217	235	160	finally
    //   238	257	160	finally
    //   260	279	160	finally
    //   282	301	160	finally
    //   304	323	160	finally
    //   30	36	198	java/io/IOException
    //   112	124	198	java/io/IOException
    //   130	148	198	java/io/IOException
    //   177	195	198	java/io/IOException
    //   217	235	198	java/io/IOException
    //   238	257	198	java/io/IOException
    //   260	279	198	java/io/IOException
    //   282	301	198	java/io/IOException
    //   304	323	198	java/io/IOException
  }

  private Attachment(GeneratedMessage.Builder<?> paramBuilder)
  {
    super(paramBuilder);
    this.unknownFields = paramBuilder.getUnknownFields();
  }

  private Attachment(boolean paramBoolean)
  {
    this.unknownFields = UnknownFieldSet.getDefaultInstance();
  }

  public static Attachment getDefaultInstance()
  {
    return defaultInstance;
  }

  public static final Descriptors.Descriptor getDescriptor()
  {
    return Timeline.internal_static_googlex_glass_common_proto_Attachment_descriptor;
  }

  private void initFields()
  {
    this.id_ = "";
    this.contentType_ = "";
    this.contentUrl_ = "";
    this.thumbnailUrl_ = "";
    this.clientCachePath_ = "";
    this.creationTime_ = 0L;
    this.isProcessingContent_ = false;
  }

  public static Builder newBuilder()
  {
    return Builder.access$100();
  }

  public static Builder newBuilder(Attachment paramAttachment)
  {
    return newBuilder().mergeFrom(paramAttachment);
  }

  public static Attachment parseDelimitedFrom(InputStream paramInputStream)
    throws IOException
  {
    return (Attachment)PARSER.parseDelimitedFrom(paramInputStream);
  }

  public static Attachment parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (Attachment)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static Attachment parseFrom(ByteString paramByteString)
    throws InvalidProtocolBufferException
  {
    return (Attachment)PARSER.parseFrom(paramByteString);
  }

  public static Attachment parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (Attachment)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
  }

  public static Attachment parseFrom(CodedInputStream paramCodedInputStream)
    throws IOException
  {
    return (Attachment)PARSER.parseFrom(paramCodedInputStream);
  }

  public static Attachment parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (Attachment)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
  }

  public static Attachment parseFrom(InputStream paramInputStream)
    throws IOException
  {
    return (Attachment)PARSER.parseFrom(paramInputStream);
  }

  public static Attachment parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (Attachment)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static Attachment parseFrom(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    return (Attachment)PARSER.parseFrom(paramArrayOfByte);
  }

  public static Attachment parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (Attachment)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
  }

  public String getClientCachePath()
  {
    Object localObject = this.clientCachePath_;
    if ((localObject instanceof String))
      return (String)localObject;
    ByteString localByteString = (ByteString)localObject;
    String str = localByteString.toStringUtf8();
    if (localByteString.isValidUtf8())
      this.clientCachePath_ = str;
    return str;
  }

  public ByteString getClientCachePathBytes()
  {
    Object localObject = this.clientCachePath_;
    if ((localObject instanceof String))
    {
      ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
      this.clientCachePath_ = localByteString;
      return localByteString;
    }
    return (ByteString)localObject;
  }

  public String getContentType()
  {
    Object localObject = this.contentType_;
    if ((localObject instanceof String))
      return (String)localObject;
    ByteString localByteString = (ByteString)localObject;
    String str = localByteString.toStringUtf8();
    if (localByteString.isValidUtf8())
      this.contentType_ = str;
    return str;
  }

  public ByteString getContentTypeBytes()
  {
    Object localObject = this.contentType_;
    if ((localObject instanceof String))
    {
      ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
      this.contentType_ = localByteString;
      return localByteString;
    }
    return (ByteString)localObject;
  }

  public String getContentUrl()
  {
    Object localObject = this.contentUrl_;
    if ((localObject instanceof String))
      return (String)localObject;
    ByteString localByteString = (ByteString)localObject;
    String str = localByteString.toStringUtf8();
    if (localByteString.isValidUtf8())
      this.contentUrl_ = str;
    return str;
  }

  public ByteString getContentUrlBytes()
  {
    Object localObject = this.contentUrl_;
    if ((localObject instanceof String))
    {
      ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
      this.contentUrl_ = localByteString;
      return localByteString;
    }
    return (ByteString)localObject;
  }

  public long getCreationTime()
  {
    return this.creationTime_;
  }

  public Attachment getDefaultInstanceForType()
  {
    return defaultInstance;
  }

  public String getId()
  {
    Object localObject = this.id_;
    if ((localObject instanceof String))
      return (String)localObject;
    ByteString localByteString = (ByteString)localObject;
    String str = localByteString.toStringUtf8();
    if (localByteString.isValidUtf8())
      this.id_ = str;
    return str;
  }

  public ByteString getIdBytes()
  {
    Object localObject = this.id_;
    if ((localObject instanceof String))
    {
      ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
      this.id_ = localByteString;
      return localByteString;
    }
    return (ByteString)localObject;
  }

  public boolean getIsProcessingContent()
  {
    return this.isProcessingContent_;
  }

  public Parser<Attachment> getParserForType()
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
      k = 0 + CodedOutputStream.computeBytesSize(1, getIdBytes());
    if ((0x2 & this.bitField0_) == 2)
      k += CodedOutputStream.computeBytesSize(2, getContentTypeBytes());
    if ((0x4 & this.bitField0_) == 4)
      k += CodedOutputStream.computeBytesSize(3, getContentUrlBytes());
    if ((0x8 & this.bitField0_) == 8)
      k += CodedOutputStream.computeBytesSize(4, getThumbnailUrlBytes());
    if ((0x10 & this.bitField0_) == 16)
      k += CodedOutputStream.computeBytesSize(5, getClientCachePathBytes());
    if ((0x20 & this.bitField0_) == 32)
      k += CodedOutputStream.computeUInt64Size(6, this.creationTime_);
    if ((0x40 & this.bitField0_) == 64)
      k += CodedOutputStream.computeBoolSize(7, this.isProcessingContent_);
    int m = k + getUnknownFields().getSerializedSize();
    this.memoizedSerializedSize = m;
    return m;
  }

  public String getThumbnailUrl()
  {
    Object localObject = this.thumbnailUrl_;
    if ((localObject instanceof String))
      return (String)localObject;
    ByteString localByteString = (ByteString)localObject;
    String str = localByteString.toStringUtf8();
    if (localByteString.isValidUtf8())
      this.thumbnailUrl_ = str;
    return str;
  }

  public ByteString getThumbnailUrlBytes()
  {
    Object localObject = this.thumbnailUrl_;
    if ((localObject instanceof String))
    {
      ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
      this.thumbnailUrl_ = localByteString;
      return localByteString;
    }
    return (ByteString)localObject;
  }

  public final UnknownFieldSet getUnknownFields()
  {
    return this.unknownFields;
  }

  public boolean hasClientCachePath()
  {
    return (0x10 & this.bitField0_) == 16;
  }

  public boolean hasContentType()
  {
    return (0x2 & this.bitField0_) == 2;
  }

  public boolean hasContentUrl()
  {
    return (0x4 & this.bitField0_) == 4;
  }

  public boolean hasCreationTime()
  {
    return (0x20 & this.bitField0_) == 32;
  }

  public boolean hasId()
  {
    return (0x1 & this.bitField0_) == 1;
  }

  public boolean hasIsProcessingContent()
  {
    return (0x40 & this.bitField0_) == 64;
  }

  public boolean hasThumbnailUrl()
  {
    return (0x8 & this.bitField0_) == 8;
  }

  protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
  {
    return Timeline.internal_static_googlex_glass_common_proto_Attachment_fieldAccessorTable.ensureFieldAccessorsInitialized(Attachment.class, Builder.class);
  }

  protected MutableMessage internalMutableDefault()
  {
    if (mutableDefault == null)
      mutableDefault = internalMutableDefault("com.google.googlex.glass.common.proto.MutableTimeline$Attachment");
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
      paramCodedOutputStream.writeBytes(1, getIdBytes());
    if ((0x2 & this.bitField0_) == 2)
      paramCodedOutputStream.writeBytes(2, getContentTypeBytes());
    if ((0x4 & this.bitField0_) == 4)
      paramCodedOutputStream.writeBytes(3, getContentUrlBytes());
    if ((0x8 & this.bitField0_) == 8)
      paramCodedOutputStream.writeBytes(4, getThumbnailUrlBytes());
    if ((0x10 & this.bitField0_) == 16)
      paramCodedOutputStream.writeBytes(5, getClientCachePathBytes());
    if ((0x20 & this.bitField0_) == 32)
      paramCodedOutputStream.writeUInt64(6, this.creationTime_);
    if ((0x40 & this.bitField0_) == 64)
      paramCodedOutputStream.writeBool(7, this.isProcessingContent_);
    getUnknownFields().writeTo(paramCodedOutputStream);
  }

  public static final class Builder extends GeneratedMessage.Builder<Builder>
    implements AttachmentOrBuilder
  {
    private int bitField0_;
    private Object clientCachePath_ = "";
    private Object contentType_ = "";
    private Object contentUrl_ = "";
    private long creationTime_;
    private Object id_ = "";
    private boolean isProcessingContent_;
    private Object thumbnailUrl_ = "";

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
      return Timeline.internal_static_googlex_glass_common_proto_Attachment_descriptor;
    }

    private void maybeForceBuilderInitialization()
    {
      if (Attachment.alwaysUseFieldBuilders);
    }

    public Attachment build()
    {
      Attachment localAttachment = buildPartial();
      if (!localAttachment.isInitialized())
        throw newUninitializedMessageException(localAttachment);
      return localAttachment;
    }

    public Attachment buildPartial()
    {
      Attachment localAttachment = new Attachment(this, null);
      int i = this.bitField0_;
      int j = i & 0x1;
      int k = 0;
      if (j == 1)
        k = 0x0 | 0x1;
      Attachment.access$502(localAttachment, this.id_);
      if ((i & 0x2) == 2)
        k |= 2;
      Attachment.access$602(localAttachment, this.contentType_);
      if ((i & 0x4) == 4)
        k |= 4;
      Attachment.access$702(localAttachment, this.contentUrl_);
      if ((i & 0x8) == 8)
        k |= 8;
      Attachment.access$802(localAttachment, this.thumbnailUrl_);
      if ((i & 0x10) == 16)
        k |= 16;
      Attachment.access$902(localAttachment, this.clientCachePath_);
      if ((i & 0x20) == 32)
        k |= 32;
      Attachment.access$1002(localAttachment, this.creationTime_);
      if ((i & 0x40) == 64)
        k |= 64;
      Attachment.access$1102(localAttachment, this.isProcessingContent_);
      Attachment.access$1202(localAttachment, k);
      onBuilt();
      return localAttachment;
    }

    public Builder clear()
    {
      super.clear();
      this.id_ = "";
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      this.contentType_ = "";
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      this.contentUrl_ = "";
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      this.thumbnailUrl_ = "";
      this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
      this.clientCachePath_ = "";
      this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
      this.creationTime_ = 0L;
      this.bitField0_ = (0xFFFFFFDF & this.bitField0_);
      this.isProcessingContent_ = false;
      this.bitField0_ = (0xFFFFFFBF & this.bitField0_);
      return this;
    }

    public Builder clearClientCachePath()
    {
      this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
      this.clientCachePath_ = Attachment.getDefaultInstance().getClientCachePath();
      onChanged();
      return this;
    }

    public Builder clearContentType()
    {
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      this.contentType_ = Attachment.getDefaultInstance().getContentType();
      onChanged();
      return this;
    }

    public Builder clearContentUrl()
    {
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      this.contentUrl_ = Attachment.getDefaultInstance().getContentUrl();
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

    public Builder clearId()
    {
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      this.id_ = Attachment.getDefaultInstance().getId();
      onChanged();
      return this;
    }

    public Builder clearIsProcessingContent()
    {
      this.bitField0_ = (0xFFFFFFBF & this.bitField0_);
      this.isProcessingContent_ = false;
      onChanged();
      return this;
    }

    public Builder clearThumbnailUrl()
    {
      this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
      this.thumbnailUrl_ = Attachment.getDefaultInstance().getThumbnailUrl();
      onChanged();
      return this;
    }

    public Builder clone()
    {
      return create().mergeFrom(buildPartial());
    }

    public String getClientCachePath()
    {
      Object localObject = this.clientCachePath_;
      if (!(localObject instanceof String))
      {
        String str = ((ByteString)localObject).toStringUtf8();
        this.clientCachePath_ = str;
        return str;
      }
      return (String)localObject;
    }

    public ByteString getClientCachePathBytes()
    {
      Object localObject = this.clientCachePath_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.clientCachePath_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public String getContentType()
    {
      Object localObject = this.contentType_;
      if (!(localObject instanceof String))
      {
        String str = ((ByteString)localObject).toStringUtf8();
        this.contentType_ = str;
        return str;
      }
      return (String)localObject;
    }

    public ByteString getContentTypeBytes()
    {
      Object localObject = this.contentType_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.contentType_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public String getContentUrl()
    {
      Object localObject = this.contentUrl_;
      if (!(localObject instanceof String))
      {
        String str = ((ByteString)localObject).toStringUtf8();
        this.contentUrl_ = str;
        return str;
      }
      return (String)localObject;
    }

    public ByteString getContentUrlBytes()
    {
      Object localObject = this.contentUrl_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.contentUrl_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public long getCreationTime()
    {
      return this.creationTime_;
    }

    public Attachment getDefaultInstanceForType()
    {
      return Attachment.getDefaultInstance();
    }

    public Descriptors.Descriptor getDescriptorForType()
    {
      return Timeline.internal_static_googlex_glass_common_proto_Attachment_descriptor;
    }

    public String getId()
    {
      Object localObject = this.id_;
      if (!(localObject instanceof String))
      {
        String str = ((ByteString)localObject).toStringUtf8();
        this.id_ = str;
        return str;
      }
      return (String)localObject;
    }

    public ByteString getIdBytes()
    {
      Object localObject = this.id_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.id_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public boolean getIsProcessingContent()
    {
      return this.isProcessingContent_;
    }

    public String getThumbnailUrl()
    {
      Object localObject = this.thumbnailUrl_;
      if (!(localObject instanceof String))
      {
        String str = ((ByteString)localObject).toStringUtf8();
        this.thumbnailUrl_ = str;
        return str;
      }
      return (String)localObject;
    }

    public ByteString getThumbnailUrlBytes()
    {
      Object localObject = this.thumbnailUrl_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.thumbnailUrl_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public boolean hasClientCachePath()
    {
      return (0x10 & this.bitField0_) == 16;
    }

    public boolean hasContentType()
    {
      return (0x2 & this.bitField0_) == 2;
    }

    public boolean hasContentUrl()
    {
      return (0x4 & this.bitField0_) == 4;
    }

    public boolean hasCreationTime()
    {
      return (0x20 & this.bitField0_) == 32;
    }

    public boolean hasId()
    {
      return (0x1 & this.bitField0_) == 1;
    }

    public boolean hasIsProcessingContent()
    {
      return (0x40 & this.bitField0_) == 64;
    }

    public boolean hasThumbnailUrl()
    {
      return (0x8 & this.bitField0_) == 8;
    }

    protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return Timeline.internal_static_googlex_glass_common_proto_Attachment_fieldAccessorTable.ensureFieldAccessorsInitialized(Attachment.class, Builder.class);
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Builder mergeFrom(Attachment paramAttachment)
    {
      if (paramAttachment == Attachment.getDefaultInstance())
        return this;
      if (paramAttachment.hasId())
      {
        this.bitField0_ = (0x1 | this.bitField0_);
        this.id_ = paramAttachment.id_;
        onChanged();
      }
      if (paramAttachment.hasContentType())
      {
        this.bitField0_ = (0x2 | this.bitField0_);
        this.contentType_ = paramAttachment.contentType_;
        onChanged();
      }
      if (paramAttachment.hasContentUrl())
      {
        this.bitField0_ = (0x4 | this.bitField0_);
        this.contentUrl_ = paramAttachment.contentUrl_;
        onChanged();
      }
      if (paramAttachment.hasThumbnailUrl())
      {
        this.bitField0_ = (0x8 | this.bitField0_);
        this.thumbnailUrl_ = paramAttachment.thumbnailUrl_;
        onChanged();
      }
      if (paramAttachment.hasClientCachePath())
      {
        this.bitField0_ = (0x10 | this.bitField0_);
        this.clientCachePath_ = paramAttachment.clientCachePath_;
        onChanged();
      }
      if (paramAttachment.hasCreationTime())
        setCreationTime(paramAttachment.getCreationTime());
      if (paramAttachment.hasIsProcessingContent())
        setIsProcessingContent(paramAttachment.getIsProcessingContent());
      mergeUnknownFields(paramAttachment.getUnknownFields());
      return this;
    }

    public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      Attachment localAttachment1 = null;
      try
      {
        Attachment localAttachment2 = (Attachment)Attachment.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
        return this;
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        localAttachment1 = (Attachment)localInvalidProtocolBufferException.getUnfinishedMessage();
        throw localInvalidProtocolBufferException;
      }
      finally
      {
        if (localAttachment1 != null)
          mergeFrom(localAttachment1);
      }
    }

    public Builder mergeFrom(Message paramMessage)
    {
      if ((paramMessage instanceof Attachment))
        return mergeFrom((Attachment)paramMessage);
      super.mergeFrom(paramMessage);
      return this;
    }

    public Builder setClientCachePath(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x10 | this.bitField0_);
      this.clientCachePath_ = paramString;
      onChanged();
      return this;
    }

    public Builder setClientCachePathBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x10 | this.bitField0_);
      this.clientCachePath_ = paramByteString;
      onChanged();
      return this;
    }

    public Builder setContentType(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x2 | this.bitField0_);
      this.contentType_ = paramString;
      onChanged();
      return this;
    }

    public Builder setContentTypeBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x2 | this.bitField0_);
      this.contentType_ = paramByteString;
      onChanged();
      return this;
    }

    public Builder setContentUrl(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x4 | this.bitField0_);
      this.contentUrl_ = paramString;
      onChanged();
      return this;
    }

    public Builder setContentUrlBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x4 | this.bitField0_);
      this.contentUrl_ = paramByteString;
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

    public Builder setId(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x1 | this.bitField0_);
      this.id_ = paramString;
      onChanged();
      return this;
    }

    public Builder setIdBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x1 | this.bitField0_);
      this.id_ = paramByteString;
      onChanged();
      return this;
    }

    public Builder setIsProcessingContent(boolean paramBoolean)
    {
      this.bitField0_ = (0x40 | this.bitField0_);
      this.isProcessingContent_ = paramBoolean;
      onChanged();
      return this;
    }

    public Builder setThumbnailUrl(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x8 | this.bitField0_);
      this.thumbnailUrl_ = paramString;
      onChanged();
      return this;
    }

    public Builder setThumbnailUrlBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x8 | this.bitField0_);
      this.thumbnailUrl_ = paramByteString;
      onChanged();
      return this;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.Attachment
 * JD-Core Version:    0.6.2
 */