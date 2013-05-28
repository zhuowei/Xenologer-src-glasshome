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
import com.google.protobuf.SingleFieldBuilder;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;

public final class PostAudioClipRequest extends GeneratedMessage
  implements PostAudioClipRequestOrBuilder
{
  public static final int AUDIO_FORMAT_FIELD_NUMBER = 3;
  public static final int CLIENT_PLATFORM_FIELD_NUMBER = 7;
  public static final int ID_FIELD_NUMBER = 1;
  public static Parser<PostAudioClipRequest> PARSER = new AbstractParser()
  {
    public PostAudioClipRequest parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return new PostAudioClipRequest(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
    }
  };
  public static final int RAW_AUDIO_FIELD_NUMBER = 2;
  public static final int STORE_AUDIO_FIELD_NUMBER = 5;
  public static final int STORE_RAW_AUDIO_FIELD_NUMBER = 8;
  public static final int STORE_TRANSCRIPT_FIELD_NUMBER = 6;
  public static final int TRANSCRIBE_FIELD_NUMBER = 4;
  private static final PostAudioClipRequest defaultInstance;
  private static volatile MutableMessage mutableDefault = null;
  private static final long serialVersionUID;
  private AudioFormat audioFormat_;
  private int bitField0_;
  private Object clientPlatform_;
  private AudioClipId id_;
  private byte memoizedIsInitialized = -1;
  private int memoizedSerializedSize = -1;
  private ByteString rawAudio_;
  private boolean storeAudio_;
  private boolean storeRawAudio_;
  private boolean storeTranscript_;
  private boolean transcribe_;
  private final UnknownFieldSet unknownFields;

  static
  {
    defaultInstance = new PostAudioClipRequest(true);
    defaultInstance.initFields();
  }

  // ERROR //
  private PostAudioClipRequest(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 76	com/google/protobuf/GeneratedMessage:<init>	()V
    //   4: aload_0
    //   5: iconst_m1
    //   6: putfield 78	com/google/googlex/glass/common/proto/PostAudioClipRequest:memoizedIsInitialized	B
    //   9: aload_0
    //   10: iconst_m1
    //   11: putfield 80	com/google/googlex/glass/common/proto/PostAudioClipRequest:memoizedSerializedSize	I
    //   14: aload_0
    //   15: invokespecial 70	com/google/googlex/glass/common/proto/PostAudioClipRequest:initFields	()V
    //   18: invokestatic 86	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
    //   21: astore_3
    //   22: iconst_0
    //   23: istore 4
    //   25: iload 4
    //   27: ifne +414 -> 441
    //   30: aload_1
    //   31: invokevirtual 92	com/google/protobuf/CodedInputStream:readTag	()I
    //   34: istore 8
    //   36: iload 8
    //   38: lookupswitch	default:+82->120, 0:+416->454, 10:+100->138, 18:+204->242, 24:+244->282, 32:+292->330, 40:+314->352, 48:+336->374, 58:+358->396, 64:+380->418
    //   121: aload_1
    //   122: aload_3
    //   123: aload_2
    //   124: iload 8
    //   126: invokevirtual 96	com/google/googlex/glass/common/proto/PostAudioClipRequest:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    //   129: ifne -104 -> 25
    //   132: iconst_1
    //   133: istore 4
    //   135: goto -110 -> 25
    //   138: iconst_1
    //   139: aload_0
    //   140: getfield 98	com/google/googlex/glass/common/proto/PostAudioClipRequest:bitField0_	I
    //   143: iand
    //   144: istore 12
    //   146: aconst_null
    //   147: astore 13
    //   149: iload 12
    //   151: iconst_1
    //   152: if_icmpne +12 -> 164
    //   155: aload_0
    //   156: getfield 100	com/google/googlex/glass/common/proto/PostAudioClipRequest:id_	Lcom/google/googlex/glass/common/proto/AudioClipId;
    //   159: invokevirtual 106	com/google/googlex/glass/common/proto/AudioClipId:toBuilder	()Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;
    //   162: astore 13
    //   164: aload_0
    //   165: aload_1
    //   166: getstatic 107	com/google/googlex/glass/common/proto/AudioClipId:PARSER	Lcom/google/protobuf/Parser;
    //   169: aload_2
    //   170: invokevirtual 111	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
    //   173: checkcast 102	com/google/googlex/glass/common/proto/AudioClipId
    //   176: putfield 100	com/google/googlex/glass/common/proto/PostAudioClipRequest:id_	Lcom/google/googlex/glass/common/proto/AudioClipId;
    //   179: aload 13
    //   181: ifnull +22 -> 203
    //   184: aload 13
    //   186: aload_0
    //   187: getfield 100	com/google/googlex/glass/common/proto/PostAudioClipRequest:id_	Lcom/google/googlex/glass/common/proto/AudioClipId;
    //   190: invokevirtual 117	com/google/googlex/glass/common/proto/AudioClipId$Builder:mergeFrom	(Lcom/google/googlex/glass/common/proto/AudioClipId;)Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;
    //   193: pop
    //   194: aload_0
    //   195: aload 13
    //   197: invokevirtual 121	com/google/googlex/glass/common/proto/AudioClipId$Builder:buildPartial	()Lcom/google/googlex/glass/common/proto/AudioClipId;
    //   200: putfield 100	com/google/googlex/glass/common/proto/PostAudioClipRequest:id_	Lcom/google/googlex/glass/common/proto/AudioClipId;
    //   203: aload_0
    //   204: iconst_1
    //   205: aload_0
    //   206: getfield 98	com/google/googlex/glass/common/proto/PostAudioClipRequest:bitField0_	I
    //   209: ior
    //   210: putfield 98	com/google/googlex/glass/common/proto/PostAudioClipRequest:bitField0_	I
    //   213: goto -188 -> 25
    //   216: astore 7
    //   218: aload 7
    //   220: aload_0
    //   221: invokevirtual 125	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   224: athrow
    //   225: astore 6
    //   227: aload_0
    //   228: aload_3
    //   229: invokevirtual 131	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   232: putfield 133	com/google/googlex/glass/common/proto/PostAudioClipRequest:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   235: aload_0
    //   236: invokevirtual 136	com/google/googlex/glass/common/proto/PostAudioClipRequest:makeExtensionsImmutable	()V
    //   239: aload 6
    //   241: athrow
    //   242: aload_0
    //   243: iconst_2
    //   244: aload_0
    //   245: getfield 98	com/google/googlex/glass/common/proto/PostAudioClipRequest:bitField0_	I
    //   248: ior
    //   249: putfield 98	com/google/googlex/glass/common/proto/PostAudioClipRequest:bitField0_	I
    //   252: aload_0
    //   253: aload_1
    //   254: invokevirtual 140	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   257: putfield 142	com/google/googlex/glass/common/proto/PostAudioClipRequest:rawAudio_	Lcom/google/protobuf/ByteString;
    //   260: goto -235 -> 25
    //   263: astore 5
    //   265: new 73	com/google/protobuf/InvalidProtocolBufferException
    //   268: dup
    //   269: aload 5
    //   271: invokevirtual 146	java/io/IOException:getMessage	()Ljava/lang/String;
    //   274: invokespecial 149	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
    //   277: aload_0
    //   278: invokevirtual 125	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   281: athrow
    //   282: aload_1
    //   283: invokevirtual 152	com/google/protobuf/CodedInputStream:readEnum	()I
    //   286: istore 9
    //   288: iload 9
    //   290: invokestatic 158	com/google/googlex/glass/common/proto/AudioFormat:valueOf	(I)Lcom/google/googlex/glass/common/proto/AudioFormat;
    //   293: astore 10
    //   295: aload 10
    //   297: ifnonnull +14 -> 311
    //   300: aload_3
    //   301: iconst_3
    //   302: iload 9
    //   304: invokevirtual 162	com/google/protobuf/UnknownFieldSet$Builder:mergeVarintField	(II)Lcom/google/protobuf/UnknownFieldSet$Builder;
    //   307: pop
    //   308: goto -283 -> 25
    //   311: aload_0
    //   312: iconst_4
    //   313: aload_0
    //   314: getfield 98	com/google/googlex/glass/common/proto/PostAudioClipRequest:bitField0_	I
    //   317: ior
    //   318: putfield 98	com/google/googlex/glass/common/proto/PostAudioClipRequest:bitField0_	I
    //   321: aload_0
    //   322: aload 10
    //   324: putfield 164	com/google/googlex/glass/common/proto/PostAudioClipRequest:audioFormat_	Lcom/google/googlex/glass/common/proto/AudioFormat;
    //   327: goto -302 -> 25
    //   330: aload_0
    //   331: bipush 8
    //   333: aload_0
    //   334: getfield 98	com/google/googlex/glass/common/proto/PostAudioClipRequest:bitField0_	I
    //   337: ior
    //   338: putfield 98	com/google/googlex/glass/common/proto/PostAudioClipRequest:bitField0_	I
    //   341: aload_0
    //   342: aload_1
    //   343: invokevirtual 168	com/google/protobuf/CodedInputStream:readBool	()Z
    //   346: putfield 170	com/google/googlex/glass/common/proto/PostAudioClipRequest:transcribe_	Z
    //   349: goto -324 -> 25
    //   352: aload_0
    //   353: bipush 16
    //   355: aload_0
    //   356: getfield 98	com/google/googlex/glass/common/proto/PostAudioClipRequest:bitField0_	I
    //   359: ior
    //   360: putfield 98	com/google/googlex/glass/common/proto/PostAudioClipRequest:bitField0_	I
    //   363: aload_0
    //   364: aload_1
    //   365: invokevirtual 168	com/google/protobuf/CodedInputStream:readBool	()Z
    //   368: putfield 172	com/google/googlex/glass/common/proto/PostAudioClipRequest:storeAudio_	Z
    //   371: goto -346 -> 25
    //   374: aload_0
    //   375: bipush 32
    //   377: aload_0
    //   378: getfield 98	com/google/googlex/glass/common/proto/PostAudioClipRequest:bitField0_	I
    //   381: ior
    //   382: putfield 98	com/google/googlex/glass/common/proto/PostAudioClipRequest:bitField0_	I
    //   385: aload_0
    //   386: aload_1
    //   387: invokevirtual 168	com/google/protobuf/CodedInputStream:readBool	()Z
    //   390: putfield 174	com/google/googlex/glass/common/proto/PostAudioClipRequest:storeTranscript_	Z
    //   393: goto -368 -> 25
    //   396: aload_0
    //   397: bipush 64
    //   399: aload_0
    //   400: getfield 98	com/google/googlex/glass/common/proto/PostAudioClipRequest:bitField0_	I
    //   403: ior
    //   404: putfield 98	com/google/googlex/glass/common/proto/PostAudioClipRequest:bitField0_	I
    //   407: aload_0
    //   408: aload_1
    //   409: invokevirtual 140	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   412: putfield 176	com/google/googlex/glass/common/proto/PostAudioClipRequest:clientPlatform_	Ljava/lang/Object;
    //   415: goto -390 -> 25
    //   418: aload_0
    //   419: sipush 128
    //   422: aload_0
    //   423: getfield 98	com/google/googlex/glass/common/proto/PostAudioClipRequest:bitField0_	I
    //   426: ior
    //   427: putfield 98	com/google/googlex/glass/common/proto/PostAudioClipRequest:bitField0_	I
    //   430: aload_0
    //   431: aload_1
    //   432: invokevirtual 168	com/google/protobuf/CodedInputStream:readBool	()Z
    //   435: putfield 178	com/google/googlex/glass/common/proto/PostAudioClipRequest:storeRawAudio_	Z
    //   438: goto -413 -> 25
    //   441: aload_0
    //   442: aload_3
    //   443: invokevirtual 131	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   446: putfield 133	com/google/googlex/glass/common/proto/PostAudioClipRequest:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   449: aload_0
    //   450: invokevirtual 136	com/google/googlex/glass/common/proto/PostAudioClipRequest:makeExtensionsImmutable	()V
    //   453: return
    //   454: iconst_1
    //   455: istore 4
    //   457: goto -432 -> 25
    //
    // Exception table:
    //   from	to	target	type
    //   30	36	216	com/google/protobuf/InvalidProtocolBufferException
    //   120	132	216	com/google/protobuf/InvalidProtocolBufferException
    //   138	146	216	com/google/protobuf/InvalidProtocolBufferException
    //   155	164	216	com/google/protobuf/InvalidProtocolBufferException
    //   164	179	216	com/google/protobuf/InvalidProtocolBufferException
    //   184	203	216	com/google/protobuf/InvalidProtocolBufferException
    //   203	213	216	com/google/protobuf/InvalidProtocolBufferException
    //   242	260	216	com/google/protobuf/InvalidProtocolBufferException
    //   282	295	216	com/google/protobuf/InvalidProtocolBufferException
    //   300	308	216	com/google/protobuf/InvalidProtocolBufferException
    //   311	327	216	com/google/protobuf/InvalidProtocolBufferException
    //   330	349	216	com/google/protobuf/InvalidProtocolBufferException
    //   352	371	216	com/google/protobuf/InvalidProtocolBufferException
    //   374	393	216	com/google/protobuf/InvalidProtocolBufferException
    //   396	415	216	com/google/protobuf/InvalidProtocolBufferException
    //   418	438	216	com/google/protobuf/InvalidProtocolBufferException
    //   30	36	225	finally
    //   120	132	225	finally
    //   138	146	225	finally
    //   155	164	225	finally
    //   164	179	225	finally
    //   184	203	225	finally
    //   203	213	225	finally
    //   218	225	225	finally
    //   242	260	225	finally
    //   265	282	225	finally
    //   282	295	225	finally
    //   300	308	225	finally
    //   311	327	225	finally
    //   330	349	225	finally
    //   352	371	225	finally
    //   374	393	225	finally
    //   396	415	225	finally
    //   418	438	225	finally
    //   30	36	263	java/io/IOException
    //   120	132	263	java/io/IOException
    //   138	146	263	java/io/IOException
    //   155	164	263	java/io/IOException
    //   164	179	263	java/io/IOException
    //   184	203	263	java/io/IOException
    //   203	213	263	java/io/IOException
    //   242	260	263	java/io/IOException
    //   282	295	263	java/io/IOException
    //   300	308	263	java/io/IOException
    //   311	327	263	java/io/IOException
    //   330	349	263	java/io/IOException
    //   352	371	263	java/io/IOException
    //   374	393	263	java/io/IOException
    //   396	415	263	java/io/IOException
    //   418	438	263	java/io/IOException
  }

  private PostAudioClipRequest(GeneratedMessage.Builder<?> paramBuilder)
  {
    super(paramBuilder);
    this.unknownFields = paramBuilder.getUnknownFields();
  }

  private PostAudioClipRequest(boolean paramBoolean)
  {
    this.unknownFields = UnknownFieldSet.getDefaultInstance();
  }

  public static PostAudioClipRequest getDefaultInstance()
  {
    return defaultInstance;
  }

  public static final Descriptors.Descriptor getDescriptor()
  {
    return AudioClip.internal_static_googlex_glass_common_proto_PostAudioClipRequest_descriptor;
  }

  private void initFields()
  {
    this.id_ = AudioClipId.getDefaultInstance();
    this.rawAudio_ = ByteString.EMPTY;
    this.audioFormat_ = AudioFormat.AMR;
    this.transcribe_ = false;
    this.storeAudio_ = false;
    this.storeTranscript_ = false;
    this.clientPlatform_ = "";
    this.storeRawAudio_ = false;
  }

  public static Builder newBuilder()
  {
    return Builder.access$100();
  }

  public static Builder newBuilder(PostAudioClipRequest paramPostAudioClipRequest)
  {
    return newBuilder().mergeFrom(paramPostAudioClipRequest);
  }

  public static PostAudioClipRequest parseDelimitedFrom(InputStream paramInputStream)
    throws IOException
  {
    return (PostAudioClipRequest)PARSER.parseDelimitedFrom(paramInputStream);
  }

  public static PostAudioClipRequest parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (PostAudioClipRequest)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static PostAudioClipRequest parseFrom(ByteString paramByteString)
    throws InvalidProtocolBufferException
  {
    return (PostAudioClipRequest)PARSER.parseFrom(paramByteString);
  }

  public static PostAudioClipRequest parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (PostAudioClipRequest)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
  }

  public static PostAudioClipRequest parseFrom(CodedInputStream paramCodedInputStream)
    throws IOException
  {
    return (PostAudioClipRequest)PARSER.parseFrom(paramCodedInputStream);
  }

  public static PostAudioClipRequest parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (PostAudioClipRequest)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
  }

  public static PostAudioClipRequest parseFrom(InputStream paramInputStream)
    throws IOException
  {
    return (PostAudioClipRequest)PARSER.parseFrom(paramInputStream);
  }

  public static PostAudioClipRequest parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (PostAudioClipRequest)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static PostAudioClipRequest parseFrom(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    return (PostAudioClipRequest)PARSER.parseFrom(paramArrayOfByte);
  }

  public static PostAudioClipRequest parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (PostAudioClipRequest)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
  }

  public AudioFormat getAudioFormat()
  {
    return this.audioFormat_;
  }

  public String getClientPlatform()
  {
    Object localObject = this.clientPlatform_;
    if ((localObject instanceof String))
      return (String)localObject;
    ByteString localByteString = (ByteString)localObject;
    String str = localByteString.toStringUtf8();
    if (localByteString.isValidUtf8())
      this.clientPlatform_ = str;
    return str;
  }

  public ByteString getClientPlatformBytes()
  {
    Object localObject = this.clientPlatform_;
    if ((localObject instanceof String))
    {
      ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
      this.clientPlatform_ = localByteString;
      return localByteString;
    }
    return (ByteString)localObject;
  }

  public PostAudioClipRequest getDefaultInstanceForType()
  {
    return defaultInstance;
  }

  public AudioClipId getId()
  {
    return this.id_;
  }

  public AudioClipIdOrBuilder getIdOrBuilder()
  {
    return this.id_;
  }

  public Parser<PostAudioClipRequest> getParserForType()
  {
    return PARSER;
  }

  public ByteString getRawAudio()
  {
    return this.rawAudio_;
  }

  public int getSerializedSize()
  {
    int i = this.memoizedSerializedSize;
    if (i != -1)
      return i;
    int j = 0x1 & this.bitField0_;
    int k = 0;
    if (j == 1)
      k = 0 + CodedOutputStream.computeMessageSize(1, this.id_);
    if ((0x2 & this.bitField0_) == 2)
      k += CodedOutputStream.computeBytesSize(2, this.rawAudio_);
    if ((0x4 & this.bitField0_) == 4)
      k += CodedOutputStream.computeEnumSize(3, this.audioFormat_.getNumber());
    if ((0x8 & this.bitField0_) == 8)
      k += CodedOutputStream.computeBoolSize(4, this.transcribe_);
    if ((0x10 & this.bitField0_) == 16)
      k += CodedOutputStream.computeBoolSize(5, this.storeAudio_);
    if ((0x20 & this.bitField0_) == 32)
      k += CodedOutputStream.computeBoolSize(6, this.storeTranscript_);
    if ((0x40 & this.bitField0_) == 64)
      k += CodedOutputStream.computeBytesSize(7, getClientPlatformBytes());
    if ((0x80 & this.bitField0_) == 128)
      k += CodedOutputStream.computeBoolSize(8, this.storeRawAudio_);
    int m = k + getUnknownFields().getSerializedSize();
    this.memoizedSerializedSize = m;
    return m;
  }

  public boolean getStoreAudio()
  {
    return this.storeAudio_;
  }

  public boolean getStoreRawAudio()
  {
    return this.storeRawAudio_;
  }

  public boolean getStoreTranscript()
  {
    return this.storeTranscript_;
  }

  public boolean getTranscribe()
  {
    return this.transcribe_;
  }

  public final UnknownFieldSet getUnknownFields()
  {
    return this.unknownFields;
  }

  public boolean hasAudioFormat()
  {
    return (0x4 & this.bitField0_) == 4;
  }

  public boolean hasClientPlatform()
  {
    return (0x40 & this.bitField0_) == 64;
  }

  public boolean hasId()
  {
    return (0x1 & this.bitField0_) == 1;
  }

  public boolean hasRawAudio()
  {
    return (0x2 & this.bitField0_) == 2;
  }

  public boolean hasStoreAudio()
  {
    return (0x10 & this.bitField0_) == 16;
  }

  public boolean hasStoreRawAudio()
  {
    return (0x80 & this.bitField0_) == 128;
  }

  public boolean hasStoreTranscript()
  {
    return (0x20 & this.bitField0_) == 32;
  }

  public boolean hasTranscribe()
  {
    return (0x8 & this.bitField0_) == 8;
  }

  protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
  {
    return AudioClip.internal_static_googlex_glass_common_proto_PostAudioClipRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(PostAudioClipRequest.class, Builder.class);
  }

  protected MutableMessage internalMutableDefault()
  {
    if (mutableDefault == null)
      mutableDefault = internalMutableDefault("com.google.googlex.glass.common.proto.MutableAudioClip$PostAudioClipRequest");
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
      paramCodedOutputStream.writeMessage(1, this.id_);
    if ((0x2 & this.bitField0_) == 2)
      paramCodedOutputStream.writeBytes(2, this.rawAudio_);
    if ((0x4 & this.bitField0_) == 4)
      paramCodedOutputStream.writeEnum(3, this.audioFormat_.getNumber());
    if ((0x8 & this.bitField0_) == 8)
      paramCodedOutputStream.writeBool(4, this.transcribe_);
    if ((0x10 & this.bitField0_) == 16)
      paramCodedOutputStream.writeBool(5, this.storeAudio_);
    if ((0x20 & this.bitField0_) == 32)
      paramCodedOutputStream.writeBool(6, this.storeTranscript_);
    if ((0x40 & this.bitField0_) == 64)
      paramCodedOutputStream.writeBytes(7, getClientPlatformBytes());
    if ((0x80 & this.bitField0_) == 128)
      paramCodedOutputStream.writeBool(8, this.storeRawAudio_);
    getUnknownFields().writeTo(paramCodedOutputStream);
  }

  public static final class Builder extends GeneratedMessage.Builder<Builder>
    implements PostAudioClipRequestOrBuilder
  {
    private AudioFormat audioFormat_ = AudioFormat.AMR;
    private int bitField0_;
    private Object clientPlatform_ = "";
    private SingleFieldBuilder<AudioClipId, AudioClipId.Builder, AudioClipIdOrBuilder> idBuilder_;
    private AudioClipId id_ = AudioClipId.getDefaultInstance();
    private ByteString rawAudio_ = ByteString.EMPTY;
    private boolean storeAudio_;
    private boolean storeRawAudio_;
    private boolean storeTranscript_;
    private boolean transcribe_;

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
      return AudioClip.internal_static_googlex_glass_common_proto_PostAudioClipRequest_descriptor;
    }

    private SingleFieldBuilder<AudioClipId, AudioClipId.Builder, AudioClipIdOrBuilder> getIdFieldBuilder()
    {
      if (this.idBuilder_ == null)
      {
        this.idBuilder_ = new SingleFieldBuilder(this.id_, getParentForChildren(), isClean());
        this.id_ = null;
      }
      return this.idBuilder_;
    }

    private void maybeForceBuilderInitialization()
    {
      if (PostAudioClipRequest.alwaysUseFieldBuilders)
        getIdFieldBuilder();
    }

    public PostAudioClipRequest build()
    {
      PostAudioClipRequest localPostAudioClipRequest = buildPartial();
      if (!localPostAudioClipRequest.isInitialized())
        throw newUninitializedMessageException(localPostAudioClipRequest);
      return localPostAudioClipRequest;
    }

    public PostAudioClipRequest buildPartial()
    {
      PostAudioClipRequest localPostAudioClipRequest = new PostAudioClipRequest(this, null);
      int i = this.bitField0_;
      int j = i & 0x1;
      int k = 0;
      if (j == 1)
        k = 0x0 | 0x1;
      if (this.idBuilder_ == null)
        PostAudioClipRequest.access$502(localPostAudioClipRequest, this.id_);
      while (true)
      {
        if ((i & 0x2) == 2)
          k |= 2;
        PostAudioClipRequest.access$602(localPostAudioClipRequest, this.rawAudio_);
        if ((i & 0x4) == 4)
          k |= 4;
        PostAudioClipRequest.access$702(localPostAudioClipRequest, this.audioFormat_);
        if ((i & 0x8) == 8)
          k |= 8;
        PostAudioClipRequest.access$802(localPostAudioClipRequest, this.transcribe_);
        if ((i & 0x10) == 16)
          k |= 16;
        PostAudioClipRequest.access$902(localPostAudioClipRequest, this.storeAudio_);
        if ((i & 0x20) == 32)
          k |= 32;
        PostAudioClipRequest.access$1002(localPostAudioClipRequest, this.storeTranscript_);
        if ((i & 0x40) == 64)
          k |= 64;
        PostAudioClipRequest.access$1102(localPostAudioClipRequest, this.clientPlatform_);
        if ((i & 0x80) == 128)
          k |= 128;
        PostAudioClipRequest.access$1202(localPostAudioClipRequest, this.storeRawAudio_);
        PostAudioClipRequest.access$1302(localPostAudioClipRequest, k);
        onBuilt();
        return localPostAudioClipRequest;
        PostAudioClipRequest.access$502(localPostAudioClipRequest, (AudioClipId)this.idBuilder_.build());
      }
    }

    public Builder clear()
    {
      super.clear();
      if (this.idBuilder_ == null)
        this.id_ = AudioClipId.getDefaultInstance();
      while (true)
      {
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        this.rawAudio_ = ByteString.EMPTY;
        this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        this.audioFormat_ = AudioFormat.AMR;
        this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
        this.transcribe_ = false;
        this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
        this.storeAudio_ = false;
        this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
        this.storeTranscript_ = false;
        this.bitField0_ = (0xFFFFFFDF & this.bitField0_);
        this.clientPlatform_ = "";
        this.bitField0_ = (0xFFFFFFBF & this.bitField0_);
        this.storeRawAudio_ = false;
        this.bitField0_ = (0xFFFFFF7F & this.bitField0_);
        return this;
        this.idBuilder_.clear();
      }
    }

    public Builder clearAudioFormat()
    {
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      this.audioFormat_ = AudioFormat.AMR;
      onChanged();
      return this;
    }

    public Builder clearClientPlatform()
    {
      this.bitField0_ = (0xFFFFFFBF & this.bitField0_);
      this.clientPlatform_ = PostAudioClipRequest.getDefaultInstance().getClientPlatform();
      onChanged();
      return this;
    }

    public Builder clearId()
    {
      if (this.idBuilder_ == null)
      {
        this.id_ = AudioClipId.getDefaultInstance();
        onChanged();
      }
      while (true)
      {
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        return this;
        this.idBuilder_.clear();
      }
    }

    public Builder clearRawAudio()
    {
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      this.rawAudio_ = PostAudioClipRequest.getDefaultInstance().getRawAudio();
      onChanged();
      return this;
    }

    public Builder clearStoreAudio()
    {
      this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
      this.storeAudio_ = false;
      onChanged();
      return this;
    }

    public Builder clearStoreRawAudio()
    {
      this.bitField0_ = (0xFFFFFF7F & this.bitField0_);
      this.storeRawAudio_ = false;
      onChanged();
      return this;
    }

    public Builder clearStoreTranscript()
    {
      this.bitField0_ = (0xFFFFFFDF & this.bitField0_);
      this.storeTranscript_ = false;
      onChanged();
      return this;
    }

    public Builder clearTranscribe()
    {
      this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
      this.transcribe_ = false;
      onChanged();
      return this;
    }

    public Builder clone()
    {
      return create().mergeFrom(buildPartial());
    }

    public AudioFormat getAudioFormat()
    {
      return this.audioFormat_;
    }

    public String getClientPlatform()
    {
      Object localObject = this.clientPlatform_;
      if (!(localObject instanceof String))
      {
        String str = ((ByteString)localObject).toStringUtf8();
        this.clientPlatform_ = str;
        return str;
      }
      return (String)localObject;
    }

    public ByteString getClientPlatformBytes()
    {
      Object localObject = this.clientPlatform_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.clientPlatform_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public PostAudioClipRequest getDefaultInstanceForType()
    {
      return PostAudioClipRequest.getDefaultInstance();
    }

    public Descriptors.Descriptor getDescriptorForType()
    {
      return AudioClip.internal_static_googlex_glass_common_proto_PostAudioClipRequest_descriptor;
    }

    public AudioClipId getId()
    {
      if (this.idBuilder_ == null)
        return this.id_;
      return (AudioClipId)this.idBuilder_.getMessage();
    }

    public AudioClipId.Builder getIdBuilder()
    {
      this.bitField0_ = (0x1 | this.bitField0_);
      onChanged();
      return (AudioClipId.Builder)getIdFieldBuilder().getBuilder();
    }

    public AudioClipIdOrBuilder getIdOrBuilder()
    {
      if (this.idBuilder_ != null)
        return (AudioClipIdOrBuilder)this.idBuilder_.getMessageOrBuilder();
      return this.id_;
    }

    public ByteString getRawAudio()
    {
      return this.rawAudio_;
    }

    public boolean getStoreAudio()
    {
      return this.storeAudio_;
    }

    public boolean getStoreRawAudio()
    {
      return this.storeRawAudio_;
    }

    public boolean getStoreTranscript()
    {
      return this.storeTranscript_;
    }

    public boolean getTranscribe()
    {
      return this.transcribe_;
    }

    public boolean hasAudioFormat()
    {
      return (0x4 & this.bitField0_) == 4;
    }

    public boolean hasClientPlatform()
    {
      return (0x40 & this.bitField0_) == 64;
    }

    public boolean hasId()
    {
      return (0x1 & this.bitField0_) == 1;
    }

    public boolean hasRawAudio()
    {
      return (0x2 & this.bitField0_) == 2;
    }

    public boolean hasStoreAudio()
    {
      return (0x10 & this.bitField0_) == 16;
    }

    public boolean hasStoreRawAudio()
    {
      return (0x80 & this.bitField0_) == 128;
    }

    public boolean hasStoreTranscript()
    {
      return (0x20 & this.bitField0_) == 32;
    }

    public boolean hasTranscribe()
    {
      return (0x8 & this.bitField0_) == 8;
    }

    protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return AudioClip.internal_static_googlex_glass_common_proto_PostAudioClipRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(PostAudioClipRequest.class, Builder.class);
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Builder mergeFrom(PostAudioClipRequest paramPostAudioClipRequest)
    {
      if (paramPostAudioClipRequest == PostAudioClipRequest.getDefaultInstance())
        return this;
      if (paramPostAudioClipRequest.hasId())
        mergeId(paramPostAudioClipRequest.getId());
      if (paramPostAudioClipRequest.hasRawAudio())
        setRawAudio(paramPostAudioClipRequest.getRawAudio());
      if (paramPostAudioClipRequest.hasAudioFormat())
        setAudioFormat(paramPostAudioClipRequest.getAudioFormat());
      if (paramPostAudioClipRequest.hasTranscribe())
        setTranscribe(paramPostAudioClipRequest.getTranscribe());
      if (paramPostAudioClipRequest.hasStoreAudio())
        setStoreAudio(paramPostAudioClipRequest.getStoreAudio());
      if (paramPostAudioClipRequest.hasStoreTranscript())
        setStoreTranscript(paramPostAudioClipRequest.getStoreTranscript());
      if (paramPostAudioClipRequest.hasClientPlatform())
      {
        this.bitField0_ = (0x40 | this.bitField0_);
        this.clientPlatform_ = paramPostAudioClipRequest.clientPlatform_;
        onChanged();
      }
      if (paramPostAudioClipRequest.hasStoreRawAudio())
        setStoreRawAudio(paramPostAudioClipRequest.getStoreRawAudio());
      mergeUnknownFields(paramPostAudioClipRequest.getUnknownFields());
      return this;
    }

    public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      PostAudioClipRequest localPostAudioClipRequest1 = null;
      try
      {
        PostAudioClipRequest localPostAudioClipRequest2 = (PostAudioClipRequest)PostAudioClipRequest.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
        return this;
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        localPostAudioClipRequest1 = (PostAudioClipRequest)localInvalidProtocolBufferException.getUnfinishedMessage();
        throw localInvalidProtocolBufferException;
      }
      finally
      {
        if (localPostAudioClipRequest1 != null)
          mergeFrom(localPostAudioClipRequest1);
      }
    }

    public Builder mergeFrom(Message paramMessage)
    {
      if ((paramMessage instanceof PostAudioClipRequest))
        return mergeFrom((PostAudioClipRequest)paramMessage);
      super.mergeFrom(paramMessage);
      return this;
    }

    public Builder mergeId(AudioClipId paramAudioClipId)
    {
      if (this.idBuilder_ == null)
        if (((0x1 & this.bitField0_) == 1) && (this.id_ != AudioClipId.getDefaultInstance()))
        {
          this.id_ = AudioClipId.newBuilder(this.id_).mergeFrom(paramAudioClipId).buildPartial();
          onChanged();
        }
      while (true)
      {
        this.bitField0_ = (0x1 | this.bitField0_);
        return this;
        this.id_ = paramAudioClipId;
        break;
        this.idBuilder_.mergeFrom(paramAudioClipId);
      }
    }

    public Builder setAudioFormat(AudioFormat paramAudioFormat)
    {
      if (paramAudioFormat == null)
        throw new NullPointerException();
      this.bitField0_ = (0x4 | this.bitField0_);
      this.audioFormat_ = paramAudioFormat;
      onChanged();
      return this;
    }

    public Builder setClientPlatform(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x40 | this.bitField0_);
      this.clientPlatform_ = paramString;
      onChanged();
      return this;
    }

    public Builder setClientPlatformBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x40 | this.bitField0_);
      this.clientPlatform_ = paramByteString;
      onChanged();
      return this;
    }

    public Builder setId(AudioClipId.Builder paramBuilder)
    {
      if (this.idBuilder_ == null)
      {
        this.id_ = paramBuilder.build();
        onChanged();
      }
      while (true)
      {
        this.bitField0_ = (0x1 | this.bitField0_);
        return this;
        this.idBuilder_.setMessage(paramBuilder.build());
      }
    }

    public Builder setId(AudioClipId paramAudioClipId)
    {
      if (this.idBuilder_ == null)
      {
        if (paramAudioClipId == null)
          throw new NullPointerException();
        this.id_ = paramAudioClipId;
        onChanged();
      }
      while (true)
      {
        this.bitField0_ = (0x1 | this.bitField0_);
        return this;
        this.idBuilder_.setMessage(paramAudioClipId);
      }
    }

    public Builder setRawAudio(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x2 | this.bitField0_);
      this.rawAudio_ = paramByteString;
      onChanged();
      return this;
    }

    public Builder setStoreAudio(boolean paramBoolean)
    {
      this.bitField0_ = (0x10 | this.bitField0_);
      this.storeAudio_ = paramBoolean;
      onChanged();
      return this;
    }

    public Builder setStoreRawAudio(boolean paramBoolean)
    {
      this.bitField0_ = (0x80 | this.bitField0_);
      this.storeRawAudio_ = paramBoolean;
      onChanged();
      return this;
    }

    public Builder setStoreTranscript(boolean paramBoolean)
    {
      this.bitField0_ = (0x20 | this.bitField0_);
      this.storeTranscript_ = paramBoolean;
      onChanged();
      return this;
    }

    public Builder setTranscribe(boolean paramBoolean)
    {
      this.bitField0_ = (0x8 | this.bitField0_);
      this.transcribe_ = paramBoolean;
      onChanged();
      return this;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.PostAudioClipRequest
 * JD-Core Version:    0.6.2
 */