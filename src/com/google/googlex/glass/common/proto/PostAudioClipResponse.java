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

public final class PostAudioClipResponse extends GeneratedMessage
  implements PostAudioClipResponseOrBuilder
{
  public static final int AUDIO_CLIP_DOWNLOAD_URL_FIELD_NUMBER = 4;
  public static final int AUDIO_CLIP_PLAY_URL_FIELD_NUMBER = 5;
  public static final int CONFIDENCE_FIELD_NUMBER = 3;
  public static final int HTML_TRANSCRIPT_FIELD_NUMBER = 1;
  public static Parser<PostAudioClipResponse> PARSER = new AbstractParser()
  {
    public PostAudioClipResponse parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return new PostAudioClipResponse(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
    }
  };
  public static final int PLAIN_TRANSCRIPT_FIELD_NUMBER = 2;
  public static final int RAW_AUDIO_CLIP_DOWNLOAD_URL_FIELD_NUMBER = 6;
  private static final PostAudioClipResponse defaultInstance;
  private static volatile MutableMessage mutableDefault = null;
  private static final long serialVersionUID;
  private Object audioClipDownloadUrl_;
  private Object audioClipPlayUrl_;
  private int bitField0_;
  private float confidence_;
  private Object htmlTranscript_;
  private byte memoizedIsInitialized = -1;
  private int memoizedSerializedSize = -1;
  private Object plainTranscript_;
  private Object rawAudioClipDownloadUrl_;
  private final UnknownFieldSet unknownFields;

  static
  {
    defaultInstance = new PostAudioClipResponse(true);
    defaultInstance.initFields();
  }

  // ERROR //
  private PostAudioClipResponse(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 67	com/google/protobuf/GeneratedMessage:<init>	()V
    //   4: aload_0
    //   5: iconst_m1
    //   6: putfield 69	com/google/googlex/glass/common/proto/PostAudioClipResponse:memoizedIsInitialized	B
    //   9: aload_0
    //   10: iconst_m1
    //   11: putfield 71	com/google/googlex/glass/common/proto/PostAudioClipResponse:memoizedSerializedSize	I
    //   14: aload_0
    //   15: invokespecial 61	com/google/googlex/glass/common/proto/PostAudioClipResponse:initFields	()V
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
    //   38: lookupswitch	default:+66->104, 0:+271->309, 10:+84->122, 18:+131->169, 29:+171->209, 34:+192->230, 42:+214->252, 50:+236->274
    //   105: aload_1
    //   106: aload_3
    //   107: aload_2
    //   108: iload 8
    //   110: invokevirtual 87	com/google/googlex/glass/common/proto/PostAudioClipResponse:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    //   113: ifne -88 -> 25
    //   116: iconst_1
    //   117: istore 4
    //   119: goto -94 -> 25
    //   122: aload_0
    //   123: iconst_1
    //   124: aload_0
    //   125: getfield 89	com/google/googlex/glass/common/proto/PostAudioClipResponse:bitField0_	I
    //   128: ior
    //   129: putfield 89	com/google/googlex/glass/common/proto/PostAudioClipResponse:bitField0_	I
    //   132: aload_0
    //   133: aload_1
    //   134: invokevirtual 93	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   137: putfield 95	com/google/googlex/glass/common/proto/PostAudioClipResponse:htmlTranscript_	Ljava/lang/Object;
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
    //   159: putfield 107	com/google/googlex/glass/common/proto/PostAudioClipResponse:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   162: aload_0
    //   163: invokevirtual 110	com/google/googlex/glass/common/proto/PostAudioClipResponse:makeExtensionsImmutable	()V
    //   166: aload 6
    //   168: athrow
    //   169: aload_0
    //   170: iconst_2
    //   171: aload_0
    //   172: getfield 89	com/google/googlex/glass/common/proto/PostAudioClipResponse:bitField0_	I
    //   175: ior
    //   176: putfield 89	com/google/googlex/glass/common/proto/PostAudioClipResponse:bitField0_	I
    //   179: aload_0
    //   180: aload_1
    //   181: invokevirtual 93	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   184: putfield 112	com/google/googlex/glass/common/proto/PostAudioClipResponse:plainTranscript_	Ljava/lang/Object;
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
    //   212: getfield 89	com/google/googlex/glass/common/proto/PostAudioClipResponse:bitField0_	I
    //   215: ior
    //   216: putfield 89	com/google/googlex/glass/common/proto/PostAudioClipResponse:bitField0_	I
    //   219: aload_0
    //   220: aload_1
    //   221: invokevirtual 123	com/google/protobuf/CodedInputStream:readFloat	()F
    //   224: putfield 125	com/google/googlex/glass/common/proto/PostAudioClipResponse:confidence_	F
    //   227: goto -202 -> 25
    //   230: aload_0
    //   231: bipush 8
    //   233: aload_0
    //   234: getfield 89	com/google/googlex/glass/common/proto/PostAudioClipResponse:bitField0_	I
    //   237: ior
    //   238: putfield 89	com/google/googlex/glass/common/proto/PostAudioClipResponse:bitField0_	I
    //   241: aload_0
    //   242: aload_1
    //   243: invokevirtual 93	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   246: putfield 127	com/google/googlex/glass/common/proto/PostAudioClipResponse:audioClipDownloadUrl_	Ljava/lang/Object;
    //   249: goto -224 -> 25
    //   252: aload_0
    //   253: bipush 16
    //   255: aload_0
    //   256: getfield 89	com/google/googlex/glass/common/proto/PostAudioClipResponse:bitField0_	I
    //   259: ior
    //   260: putfield 89	com/google/googlex/glass/common/proto/PostAudioClipResponse:bitField0_	I
    //   263: aload_0
    //   264: aload_1
    //   265: invokevirtual 93	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   268: putfield 129	com/google/googlex/glass/common/proto/PostAudioClipResponse:audioClipPlayUrl_	Ljava/lang/Object;
    //   271: goto -246 -> 25
    //   274: aload_0
    //   275: bipush 32
    //   277: aload_0
    //   278: getfield 89	com/google/googlex/glass/common/proto/PostAudioClipResponse:bitField0_	I
    //   281: ior
    //   282: putfield 89	com/google/googlex/glass/common/proto/PostAudioClipResponse:bitField0_	I
    //   285: aload_0
    //   286: aload_1
    //   287: invokevirtual 93	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   290: putfield 131	com/google/googlex/glass/common/proto/PostAudioClipResponse:rawAudioClipDownloadUrl_	Ljava/lang/Object;
    //   293: goto -268 -> 25
    //   296: aload_0
    //   297: aload_3
    //   298: invokevirtual 105	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   301: putfield 107	com/google/googlex/glass/common/proto/PostAudioClipResponse:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   304: aload_0
    //   305: invokevirtual 110	com/google/googlex/glass/common/proto/PostAudioClipResponse:makeExtensionsImmutable	()V
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

  private PostAudioClipResponse(GeneratedMessage.Builder<?> paramBuilder)
  {
    super(paramBuilder);
    this.unknownFields = paramBuilder.getUnknownFields();
  }

  private PostAudioClipResponse(boolean paramBoolean)
  {
    this.unknownFields = UnknownFieldSet.getDefaultInstance();
  }

  public static PostAudioClipResponse getDefaultInstance()
  {
    return defaultInstance;
  }

  public static final Descriptors.Descriptor getDescriptor()
  {
    return AudioClip.internal_static_googlex_glass_common_proto_PostAudioClipResponse_descriptor;
  }

  private void initFields()
  {
    this.htmlTranscript_ = "";
    this.plainTranscript_ = "";
    this.confidence_ = 0.0F;
    this.audioClipDownloadUrl_ = "";
    this.audioClipPlayUrl_ = "";
    this.rawAudioClipDownloadUrl_ = "";
  }

  public static Builder newBuilder()
  {
    return Builder.access$100();
  }

  public static Builder newBuilder(PostAudioClipResponse paramPostAudioClipResponse)
  {
    return newBuilder().mergeFrom(paramPostAudioClipResponse);
  }

  public static PostAudioClipResponse parseDelimitedFrom(InputStream paramInputStream)
    throws IOException
  {
    return (PostAudioClipResponse)PARSER.parseDelimitedFrom(paramInputStream);
  }

  public static PostAudioClipResponse parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (PostAudioClipResponse)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static PostAudioClipResponse parseFrom(ByteString paramByteString)
    throws InvalidProtocolBufferException
  {
    return (PostAudioClipResponse)PARSER.parseFrom(paramByteString);
  }

  public static PostAudioClipResponse parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (PostAudioClipResponse)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
  }

  public static PostAudioClipResponse parseFrom(CodedInputStream paramCodedInputStream)
    throws IOException
  {
    return (PostAudioClipResponse)PARSER.parseFrom(paramCodedInputStream);
  }

  public static PostAudioClipResponse parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (PostAudioClipResponse)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
  }

  public static PostAudioClipResponse parseFrom(InputStream paramInputStream)
    throws IOException
  {
    return (PostAudioClipResponse)PARSER.parseFrom(paramInputStream);
  }

  public static PostAudioClipResponse parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (PostAudioClipResponse)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static PostAudioClipResponse parseFrom(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    return (PostAudioClipResponse)PARSER.parseFrom(paramArrayOfByte);
  }

  public static PostAudioClipResponse parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (PostAudioClipResponse)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
  }

  public String getAudioClipDownloadUrl()
  {
    Object localObject = this.audioClipDownloadUrl_;
    if ((localObject instanceof String))
      return (String)localObject;
    ByteString localByteString = (ByteString)localObject;
    String str = localByteString.toStringUtf8();
    if (localByteString.isValidUtf8())
      this.audioClipDownloadUrl_ = str;
    return str;
  }

  public ByteString getAudioClipDownloadUrlBytes()
  {
    Object localObject = this.audioClipDownloadUrl_;
    if ((localObject instanceof String))
    {
      ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
      this.audioClipDownloadUrl_ = localByteString;
      return localByteString;
    }
    return (ByteString)localObject;
  }

  public String getAudioClipPlayUrl()
  {
    Object localObject = this.audioClipPlayUrl_;
    if ((localObject instanceof String))
      return (String)localObject;
    ByteString localByteString = (ByteString)localObject;
    String str = localByteString.toStringUtf8();
    if (localByteString.isValidUtf8())
      this.audioClipPlayUrl_ = str;
    return str;
  }

  public ByteString getAudioClipPlayUrlBytes()
  {
    Object localObject = this.audioClipPlayUrl_;
    if ((localObject instanceof String))
    {
      ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
      this.audioClipPlayUrl_ = localByteString;
      return localByteString;
    }
    return (ByteString)localObject;
  }

  public float getConfidence()
  {
    return this.confidence_;
  }

  public PostAudioClipResponse getDefaultInstanceForType()
  {
    return defaultInstance;
  }

  public String getHtmlTranscript()
  {
    Object localObject = this.htmlTranscript_;
    if ((localObject instanceof String))
      return (String)localObject;
    ByteString localByteString = (ByteString)localObject;
    String str = localByteString.toStringUtf8();
    if (localByteString.isValidUtf8())
      this.htmlTranscript_ = str;
    return str;
  }

  public ByteString getHtmlTranscriptBytes()
  {
    Object localObject = this.htmlTranscript_;
    if ((localObject instanceof String))
    {
      ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
      this.htmlTranscript_ = localByteString;
      return localByteString;
    }
    return (ByteString)localObject;
  }

  public Parser<PostAudioClipResponse> getParserForType()
  {
    return PARSER;
  }

  public String getPlainTranscript()
  {
    Object localObject = this.plainTranscript_;
    if ((localObject instanceof String))
      return (String)localObject;
    ByteString localByteString = (ByteString)localObject;
    String str = localByteString.toStringUtf8();
    if (localByteString.isValidUtf8())
      this.plainTranscript_ = str;
    return str;
  }

  public ByteString getPlainTranscriptBytes()
  {
    Object localObject = this.plainTranscript_;
    if ((localObject instanceof String))
    {
      ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
      this.plainTranscript_ = localByteString;
      return localByteString;
    }
    return (ByteString)localObject;
  }

  public String getRawAudioClipDownloadUrl()
  {
    Object localObject = this.rawAudioClipDownloadUrl_;
    if ((localObject instanceof String))
      return (String)localObject;
    ByteString localByteString = (ByteString)localObject;
    String str = localByteString.toStringUtf8();
    if (localByteString.isValidUtf8())
      this.rawAudioClipDownloadUrl_ = str;
    return str;
  }

  public ByteString getRawAudioClipDownloadUrlBytes()
  {
    Object localObject = this.rawAudioClipDownloadUrl_;
    if ((localObject instanceof String))
    {
      ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
      this.rawAudioClipDownloadUrl_ = localByteString;
      return localByteString;
    }
    return (ByteString)localObject;
  }

  public int getSerializedSize()
  {
    int i = this.memoizedSerializedSize;
    if (i != -1)
      return i;
    int j = 0x1 & this.bitField0_;
    int k = 0;
    if (j == 1)
      k = 0 + CodedOutputStream.computeBytesSize(1, getHtmlTranscriptBytes());
    if ((0x2 & this.bitField0_) == 2)
      k += CodedOutputStream.computeBytesSize(2, getPlainTranscriptBytes());
    if ((0x4 & this.bitField0_) == 4)
      k += CodedOutputStream.computeFloatSize(3, this.confidence_);
    if ((0x8 & this.bitField0_) == 8)
      k += CodedOutputStream.computeBytesSize(4, getAudioClipDownloadUrlBytes());
    if ((0x10 & this.bitField0_) == 16)
      k += CodedOutputStream.computeBytesSize(5, getAudioClipPlayUrlBytes());
    if ((0x20 & this.bitField0_) == 32)
      k += CodedOutputStream.computeBytesSize(6, getRawAudioClipDownloadUrlBytes());
    int m = k + getUnknownFields().getSerializedSize();
    this.memoizedSerializedSize = m;
    return m;
  }

  public final UnknownFieldSet getUnknownFields()
  {
    return this.unknownFields;
  }

  public boolean hasAudioClipDownloadUrl()
  {
    return (0x8 & this.bitField0_) == 8;
  }

  public boolean hasAudioClipPlayUrl()
  {
    return (0x10 & this.bitField0_) == 16;
  }

  public boolean hasConfidence()
  {
    return (0x4 & this.bitField0_) == 4;
  }

  public boolean hasHtmlTranscript()
  {
    return (0x1 & this.bitField0_) == 1;
  }

  public boolean hasPlainTranscript()
  {
    return (0x2 & this.bitField0_) == 2;
  }

  public boolean hasRawAudioClipDownloadUrl()
  {
    return (0x20 & this.bitField0_) == 32;
  }

  protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
  {
    return AudioClip.internal_static_googlex_glass_common_proto_PostAudioClipResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(PostAudioClipResponse.class, Builder.class);
  }

  protected MutableMessage internalMutableDefault()
  {
    if (mutableDefault == null)
      mutableDefault = internalMutableDefault("com.google.googlex.glass.common.proto.MutableAudioClip$PostAudioClipResponse");
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
      paramCodedOutputStream.writeBytes(1, getHtmlTranscriptBytes());
    if ((0x2 & this.bitField0_) == 2)
      paramCodedOutputStream.writeBytes(2, getPlainTranscriptBytes());
    if ((0x4 & this.bitField0_) == 4)
      paramCodedOutputStream.writeFloat(3, this.confidence_);
    if ((0x8 & this.bitField0_) == 8)
      paramCodedOutputStream.writeBytes(4, getAudioClipDownloadUrlBytes());
    if ((0x10 & this.bitField0_) == 16)
      paramCodedOutputStream.writeBytes(5, getAudioClipPlayUrlBytes());
    if ((0x20 & this.bitField0_) == 32)
      paramCodedOutputStream.writeBytes(6, getRawAudioClipDownloadUrlBytes());
    getUnknownFields().writeTo(paramCodedOutputStream);
  }

  public static final class Builder extends GeneratedMessage.Builder<Builder>
    implements PostAudioClipResponseOrBuilder
  {
    private Object audioClipDownloadUrl_ = "";
    private Object audioClipPlayUrl_ = "";
    private int bitField0_;
    private float confidence_;
    private Object htmlTranscript_ = "";
    private Object plainTranscript_ = "";
    private Object rawAudioClipDownloadUrl_ = "";

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
      return AudioClip.internal_static_googlex_glass_common_proto_PostAudioClipResponse_descriptor;
    }

    private void maybeForceBuilderInitialization()
    {
      if (PostAudioClipResponse.alwaysUseFieldBuilders);
    }

    public PostAudioClipResponse build()
    {
      PostAudioClipResponse localPostAudioClipResponse = buildPartial();
      if (!localPostAudioClipResponse.isInitialized())
        throw newUninitializedMessageException(localPostAudioClipResponse);
      return localPostAudioClipResponse;
    }

    public PostAudioClipResponse buildPartial()
    {
      PostAudioClipResponse localPostAudioClipResponse = new PostAudioClipResponse(this, null);
      int i = this.bitField0_;
      int j = i & 0x1;
      int k = 0;
      if (j == 1)
        k = 0x0 | 0x1;
      PostAudioClipResponse.access$502(localPostAudioClipResponse, this.htmlTranscript_);
      if ((i & 0x2) == 2)
        k |= 2;
      PostAudioClipResponse.access$602(localPostAudioClipResponse, this.plainTranscript_);
      if ((i & 0x4) == 4)
        k |= 4;
      PostAudioClipResponse.access$702(localPostAudioClipResponse, this.confidence_);
      if ((i & 0x8) == 8)
        k |= 8;
      PostAudioClipResponse.access$802(localPostAudioClipResponse, this.audioClipDownloadUrl_);
      if ((i & 0x10) == 16)
        k |= 16;
      PostAudioClipResponse.access$902(localPostAudioClipResponse, this.audioClipPlayUrl_);
      if ((i & 0x20) == 32)
        k |= 32;
      PostAudioClipResponse.access$1002(localPostAudioClipResponse, this.rawAudioClipDownloadUrl_);
      PostAudioClipResponse.access$1102(localPostAudioClipResponse, k);
      onBuilt();
      return localPostAudioClipResponse;
    }

    public Builder clear()
    {
      super.clear();
      this.htmlTranscript_ = "";
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      this.plainTranscript_ = "";
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      this.confidence_ = 0.0F;
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      this.audioClipDownloadUrl_ = "";
      this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
      this.audioClipPlayUrl_ = "";
      this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
      this.rawAudioClipDownloadUrl_ = "";
      this.bitField0_ = (0xFFFFFFDF & this.bitField0_);
      return this;
    }

    public Builder clearAudioClipDownloadUrl()
    {
      this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
      this.audioClipDownloadUrl_ = PostAudioClipResponse.getDefaultInstance().getAudioClipDownloadUrl();
      onChanged();
      return this;
    }

    public Builder clearAudioClipPlayUrl()
    {
      this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
      this.audioClipPlayUrl_ = PostAudioClipResponse.getDefaultInstance().getAudioClipPlayUrl();
      onChanged();
      return this;
    }

    public Builder clearConfidence()
    {
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      this.confidence_ = 0.0F;
      onChanged();
      return this;
    }

    public Builder clearHtmlTranscript()
    {
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      this.htmlTranscript_ = PostAudioClipResponse.getDefaultInstance().getHtmlTranscript();
      onChanged();
      return this;
    }

    public Builder clearPlainTranscript()
    {
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      this.plainTranscript_ = PostAudioClipResponse.getDefaultInstance().getPlainTranscript();
      onChanged();
      return this;
    }

    public Builder clearRawAudioClipDownloadUrl()
    {
      this.bitField0_ = (0xFFFFFFDF & this.bitField0_);
      this.rawAudioClipDownloadUrl_ = PostAudioClipResponse.getDefaultInstance().getRawAudioClipDownloadUrl();
      onChanged();
      return this;
    }

    public Builder clone()
    {
      return create().mergeFrom(buildPartial());
    }

    public String getAudioClipDownloadUrl()
    {
      Object localObject = this.audioClipDownloadUrl_;
      if (!(localObject instanceof String))
      {
        String str = ((ByteString)localObject).toStringUtf8();
        this.audioClipDownloadUrl_ = str;
        return str;
      }
      return (String)localObject;
    }

    public ByteString getAudioClipDownloadUrlBytes()
    {
      Object localObject = this.audioClipDownloadUrl_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.audioClipDownloadUrl_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public String getAudioClipPlayUrl()
    {
      Object localObject = this.audioClipPlayUrl_;
      if (!(localObject instanceof String))
      {
        String str = ((ByteString)localObject).toStringUtf8();
        this.audioClipPlayUrl_ = str;
        return str;
      }
      return (String)localObject;
    }

    public ByteString getAudioClipPlayUrlBytes()
    {
      Object localObject = this.audioClipPlayUrl_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.audioClipPlayUrl_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public float getConfidence()
    {
      return this.confidence_;
    }

    public PostAudioClipResponse getDefaultInstanceForType()
    {
      return PostAudioClipResponse.getDefaultInstance();
    }

    public Descriptors.Descriptor getDescriptorForType()
    {
      return AudioClip.internal_static_googlex_glass_common_proto_PostAudioClipResponse_descriptor;
    }

    public String getHtmlTranscript()
    {
      Object localObject = this.htmlTranscript_;
      if (!(localObject instanceof String))
      {
        String str = ((ByteString)localObject).toStringUtf8();
        this.htmlTranscript_ = str;
        return str;
      }
      return (String)localObject;
    }

    public ByteString getHtmlTranscriptBytes()
    {
      Object localObject = this.htmlTranscript_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.htmlTranscript_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public String getPlainTranscript()
    {
      Object localObject = this.plainTranscript_;
      if (!(localObject instanceof String))
      {
        String str = ((ByteString)localObject).toStringUtf8();
        this.plainTranscript_ = str;
        return str;
      }
      return (String)localObject;
    }

    public ByteString getPlainTranscriptBytes()
    {
      Object localObject = this.plainTranscript_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.plainTranscript_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public String getRawAudioClipDownloadUrl()
    {
      Object localObject = this.rawAudioClipDownloadUrl_;
      if (!(localObject instanceof String))
      {
        String str = ((ByteString)localObject).toStringUtf8();
        this.rawAudioClipDownloadUrl_ = str;
        return str;
      }
      return (String)localObject;
    }

    public ByteString getRawAudioClipDownloadUrlBytes()
    {
      Object localObject = this.rawAudioClipDownloadUrl_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.rawAudioClipDownloadUrl_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public boolean hasAudioClipDownloadUrl()
    {
      return (0x8 & this.bitField0_) == 8;
    }

    public boolean hasAudioClipPlayUrl()
    {
      return (0x10 & this.bitField0_) == 16;
    }

    public boolean hasConfidence()
    {
      return (0x4 & this.bitField0_) == 4;
    }

    public boolean hasHtmlTranscript()
    {
      return (0x1 & this.bitField0_) == 1;
    }

    public boolean hasPlainTranscript()
    {
      return (0x2 & this.bitField0_) == 2;
    }

    public boolean hasRawAudioClipDownloadUrl()
    {
      return (0x20 & this.bitField0_) == 32;
    }

    protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return AudioClip.internal_static_googlex_glass_common_proto_PostAudioClipResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(PostAudioClipResponse.class, Builder.class);
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Builder mergeFrom(PostAudioClipResponse paramPostAudioClipResponse)
    {
      if (paramPostAudioClipResponse == PostAudioClipResponse.getDefaultInstance())
        return this;
      if (paramPostAudioClipResponse.hasHtmlTranscript())
      {
        this.bitField0_ = (0x1 | this.bitField0_);
        this.htmlTranscript_ = paramPostAudioClipResponse.htmlTranscript_;
        onChanged();
      }
      if (paramPostAudioClipResponse.hasPlainTranscript())
      {
        this.bitField0_ = (0x2 | this.bitField0_);
        this.plainTranscript_ = paramPostAudioClipResponse.plainTranscript_;
        onChanged();
      }
      if (paramPostAudioClipResponse.hasConfidence())
        setConfidence(paramPostAudioClipResponse.getConfidence());
      if (paramPostAudioClipResponse.hasAudioClipDownloadUrl())
      {
        this.bitField0_ = (0x8 | this.bitField0_);
        this.audioClipDownloadUrl_ = paramPostAudioClipResponse.audioClipDownloadUrl_;
        onChanged();
      }
      if (paramPostAudioClipResponse.hasAudioClipPlayUrl())
      {
        this.bitField0_ = (0x10 | this.bitField0_);
        this.audioClipPlayUrl_ = paramPostAudioClipResponse.audioClipPlayUrl_;
        onChanged();
      }
      if (paramPostAudioClipResponse.hasRawAudioClipDownloadUrl())
      {
        this.bitField0_ = (0x20 | this.bitField0_);
        this.rawAudioClipDownloadUrl_ = paramPostAudioClipResponse.rawAudioClipDownloadUrl_;
        onChanged();
      }
      mergeUnknownFields(paramPostAudioClipResponse.getUnknownFields());
      return this;
    }

    public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      PostAudioClipResponse localPostAudioClipResponse1 = null;
      try
      {
        PostAudioClipResponse localPostAudioClipResponse2 = (PostAudioClipResponse)PostAudioClipResponse.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
        return this;
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        localPostAudioClipResponse1 = (PostAudioClipResponse)localInvalidProtocolBufferException.getUnfinishedMessage();
        throw localInvalidProtocolBufferException;
      }
      finally
      {
        if (localPostAudioClipResponse1 != null)
          mergeFrom(localPostAudioClipResponse1);
      }
    }

    public Builder mergeFrom(Message paramMessage)
    {
      if ((paramMessage instanceof PostAudioClipResponse))
        return mergeFrom((PostAudioClipResponse)paramMessage);
      super.mergeFrom(paramMessage);
      return this;
    }

    public Builder setAudioClipDownloadUrl(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x8 | this.bitField0_);
      this.audioClipDownloadUrl_ = paramString;
      onChanged();
      return this;
    }

    public Builder setAudioClipDownloadUrlBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x8 | this.bitField0_);
      this.audioClipDownloadUrl_ = paramByteString;
      onChanged();
      return this;
    }

    public Builder setAudioClipPlayUrl(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x10 | this.bitField0_);
      this.audioClipPlayUrl_ = paramString;
      onChanged();
      return this;
    }

    public Builder setAudioClipPlayUrlBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x10 | this.bitField0_);
      this.audioClipPlayUrl_ = paramByteString;
      onChanged();
      return this;
    }

    public Builder setConfidence(float paramFloat)
    {
      this.bitField0_ = (0x4 | this.bitField0_);
      this.confidence_ = paramFloat;
      onChanged();
      return this;
    }

    public Builder setHtmlTranscript(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x1 | this.bitField0_);
      this.htmlTranscript_ = paramString;
      onChanged();
      return this;
    }

    public Builder setHtmlTranscriptBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x1 | this.bitField0_);
      this.htmlTranscript_ = paramByteString;
      onChanged();
      return this;
    }

    public Builder setPlainTranscript(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x2 | this.bitField0_);
      this.plainTranscript_ = paramString;
      onChanged();
      return this;
    }

    public Builder setPlainTranscriptBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x2 | this.bitField0_);
      this.plainTranscript_ = paramByteString;
      onChanged();
      return this;
    }

    public Builder setRawAudioClipDownloadUrl(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x20 | this.bitField0_);
      this.rawAudioClipDownloadUrl_ = paramString;
      onChanged();
      return this;
    }

    public Builder setRawAudioClipDownloadUrlBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x20 | this.bitField0_);
      this.rawAudioClipDownloadUrl_ = paramByteString;
      onChanged();
      return this;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.PostAudioClipResponse
 * JD-Core Version:    0.6.2
 */