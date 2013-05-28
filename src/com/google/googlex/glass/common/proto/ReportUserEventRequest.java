package com.google.googlex.glass.common.proto;

import com.google.common.logging.GlassUserEventProto;
import com.google.common.logging.GlassUserEventProto.Builder;
import com.google.common.logging.GlassUserEventProtoOrBuilder;
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

public final class ReportUserEventRequest extends GeneratedMessage
  implements ReportUserEventRequestOrBuilder
{
  public static final int ACTION_FIELD_NUMBER = 1;
  public static final int DATA_FIELD_NUMBER = 2;
  public static final int HARDWARE_VERSION_FIELD_NUMBER = 6;
  public static Parser<ReportUserEventRequest> PARSER = new AbstractParser()
  {
    public ReportUserEventRequest parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return new ReportUserEventRequest(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
    }
  };
  public static final int SESSION_ID_FIELD_NUMBER = 3;
  public static final int SOFTWARE_VERSION_FIELD_NUMBER = 5;
  public static final int TIMESTAMP_FIELD_NUMBER = 4;
  public static final int USER_EVENT_PROTO_FIELD_NUMBER = 7;
  private static final ReportUserEventRequest defaultInstance;
  private static volatile MutableMessage mutableDefault = null;
  private static final long serialVersionUID;
  private Object action_;
  private int bitField0_;
  private Object data_;
  private Object hardwareVersion_;
  private byte memoizedIsInitialized = -1;
  private int memoizedSerializedSize = -1;
  private Object sessionId_;
  private Object softwareVersion_;
  private long timestamp_;
  private final UnknownFieldSet unknownFields;
  private GlassUserEventProto userEventProto_;

  static
  {
    defaultInstance = new ReportUserEventRequest(true);
    defaultInstance.initFields();
  }

  // ERROR //
  private ReportUserEventRequest(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 70	com/google/protobuf/GeneratedMessage:<init>	()V
    //   4: aload_0
    //   5: iconst_m1
    //   6: putfield 72	com/google/googlex/glass/common/proto/ReportUserEventRequest:memoizedIsInitialized	B
    //   9: aload_0
    //   10: iconst_m1
    //   11: putfield 74	com/google/googlex/glass/common/proto/ReportUserEventRequest:memoizedSerializedSize	I
    //   14: aload_0
    //   15: invokespecial 64	com/google/googlex/glass/common/proto/ReportUserEventRequest:initFields	()V
    //   18: invokestatic 80	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
    //   21: astore_3
    //   22: iconst_0
    //   23: istore 4
    //   25: iload 4
    //   27: ifne +358 -> 385
    //   30: aload_1
    //   31: invokevirtual 86	com/google/protobuf/CodedInputStream:readTag	()I
    //   34: istore 8
    //   36: iload 8
    //   38: lookupswitch	default:+74->112, 0:+360->398, 10:+92->130, 18:+139->177, 26:+179->217, 32:+200->238, 42:+222->260, 50:+244->282, 58:+266->304
    //   113: aload_1
    //   114: aload_3
    //   115: aload_2
    //   116: iload 8
    //   118: invokevirtual 90	com/google/googlex/glass/common/proto/ReportUserEventRequest:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    //   121: ifne -96 -> 25
    //   124: iconst_1
    //   125: istore 4
    //   127: goto -102 -> 25
    //   130: aload_0
    //   131: iconst_1
    //   132: aload_0
    //   133: getfield 92	com/google/googlex/glass/common/proto/ReportUserEventRequest:bitField0_	I
    //   136: ior
    //   137: putfield 92	com/google/googlex/glass/common/proto/ReportUserEventRequest:bitField0_	I
    //   140: aload_0
    //   141: aload_1
    //   142: invokevirtual 96	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   145: putfield 98	com/google/googlex/glass/common/proto/ReportUserEventRequest:action_	Ljava/lang/Object;
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
    //   167: putfield 110	com/google/googlex/glass/common/proto/ReportUserEventRequest:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   170: aload_0
    //   171: invokevirtual 113	com/google/googlex/glass/common/proto/ReportUserEventRequest:makeExtensionsImmutable	()V
    //   174: aload 6
    //   176: athrow
    //   177: aload_0
    //   178: iconst_2
    //   179: aload_0
    //   180: getfield 92	com/google/googlex/glass/common/proto/ReportUserEventRequest:bitField0_	I
    //   183: ior
    //   184: putfield 92	com/google/googlex/glass/common/proto/ReportUserEventRequest:bitField0_	I
    //   187: aload_0
    //   188: aload_1
    //   189: invokevirtual 96	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   192: putfield 115	com/google/googlex/glass/common/proto/ReportUserEventRequest:data_	Ljava/lang/Object;
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
    //   220: getfield 92	com/google/googlex/glass/common/proto/ReportUserEventRequest:bitField0_	I
    //   223: ior
    //   224: putfield 92	com/google/googlex/glass/common/proto/ReportUserEventRequest:bitField0_	I
    //   227: aload_0
    //   228: aload_1
    //   229: invokevirtual 96	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   232: putfield 124	com/google/googlex/glass/common/proto/ReportUserEventRequest:sessionId_	Ljava/lang/Object;
    //   235: goto -210 -> 25
    //   238: aload_0
    //   239: bipush 8
    //   241: aload_0
    //   242: getfield 92	com/google/googlex/glass/common/proto/ReportUserEventRequest:bitField0_	I
    //   245: ior
    //   246: putfield 92	com/google/googlex/glass/common/proto/ReportUserEventRequest:bitField0_	I
    //   249: aload_0
    //   250: aload_1
    //   251: invokevirtual 128	com/google/protobuf/CodedInputStream:readInt64	()J
    //   254: putfield 130	com/google/googlex/glass/common/proto/ReportUserEventRequest:timestamp_	J
    //   257: goto -232 -> 25
    //   260: aload_0
    //   261: bipush 16
    //   263: aload_0
    //   264: getfield 92	com/google/googlex/glass/common/proto/ReportUserEventRequest:bitField0_	I
    //   267: ior
    //   268: putfield 92	com/google/googlex/glass/common/proto/ReportUserEventRequest:bitField0_	I
    //   271: aload_0
    //   272: aload_1
    //   273: invokevirtual 96	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   276: putfield 132	com/google/googlex/glass/common/proto/ReportUserEventRequest:softwareVersion_	Ljava/lang/Object;
    //   279: goto -254 -> 25
    //   282: aload_0
    //   283: bipush 32
    //   285: aload_0
    //   286: getfield 92	com/google/googlex/glass/common/proto/ReportUserEventRequest:bitField0_	I
    //   289: ior
    //   290: putfield 92	com/google/googlex/glass/common/proto/ReportUserEventRequest:bitField0_	I
    //   293: aload_0
    //   294: aload_1
    //   295: invokevirtual 96	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   298: putfield 134	com/google/googlex/glass/common/proto/ReportUserEventRequest:hardwareVersion_	Ljava/lang/Object;
    //   301: goto -276 -> 25
    //   304: bipush 64
    //   306: aload_0
    //   307: getfield 92	com/google/googlex/glass/common/proto/ReportUserEventRequest:bitField0_	I
    //   310: iand
    //   311: istore 9
    //   313: aconst_null
    //   314: astore 10
    //   316: iload 9
    //   318: bipush 64
    //   320: if_icmpne +12 -> 332
    //   323: aload_0
    //   324: getfield 136	com/google/googlex/glass/common/proto/ReportUserEventRequest:userEventProto_	Lcom/google/common/logging/GlassUserEventProto;
    //   327: invokevirtual 142	com/google/common/logging/GlassUserEventProto:toBuilder	()Lcom/google/common/logging/GlassUserEventProto$Builder;
    //   330: astore 10
    //   332: aload_0
    //   333: aload_1
    //   334: getstatic 143	com/google/common/logging/GlassUserEventProto:PARSER	Lcom/google/protobuf/Parser;
    //   337: aload_2
    //   338: invokevirtual 147	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
    //   341: checkcast 138	com/google/common/logging/GlassUserEventProto
    //   344: putfield 136	com/google/googlex/glass/common/proto/ReportUserEventRequest:userEventProto_	Lcom/google/common/logging/GlassUserEventProto;
    //   347: aload 10
    //   349: ifnull +22 -> 371
    //   352: aload 10
    //   354: aload_0
    //   355: getfield 136	com/google/googlex/glass/common/proto/ReportUserEventRequest:userEventProto_	Lcom/google/common/logging/GlassUserEventProto;
    //   358: invokevirtual 153	com/google/common/logging/GlassUserEventProto$Builder:mergeFrom	(Lcom/google/common/logging/GlassUserEventProto;)Lcom/google/common/logging/GlassUserEventProto$Builder;
    //   361: pop
    //   362: aload_0
    //   363: aload 10
    //   365: invokevirtual 157	com/google/common/logging/GlassUserEventProto$Builder:buildPartial	()Lcom/google/common/logging/GlassUserEventProto;
    //   368: putfield 136	com/google/googlex/glass/common/proto/ReportUserEventRequest:userEventProto_	Lcom/google/common/logging/GlassUserEventProto;
    //   371: aload_0
    //   372: bipush 64
    //   374: aload_0
    //   375: getfield 92	com/google/googlex/glass/common/proto/ReportUserEventRequest:bitField0_	I
    //   378: ior
    //   379: putfield 92	com/google/googlex/glass/common/proto/ReportUserEventRequest:bitField0_	I
    //   382: goto -357 -> 25
    //   385: aload_0
    //   386: aload_3
    //   387: invokevirtual 108	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   390: putfield 110	com/google/googlex/glass/common/proto/ReportUserEventRequest:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   393: aload_0
    //   394: invokevirtual 113	com/google/googlex/glass/common/proto/ReportUserEventRequest:makeExtensionsImmutable	()V
    //   397: return
    //   398: iconst_1
    //   399: istore 4
    //   401: goto -376 -> 25
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
    //   304	313	151	com/google/protobuf/InvalidProtocolBufferException
    //   323	332	151	com/google/protobuf/InvalidProtocolBufferException
    //   332	347	151	com/google/protobuf/InvalidProtocolBufferException
    //   352	371	151	com/google/protobuf/InvalidProtocolBufferException
    //   371	382	151	com/google/protobuf/InvalidProtocolBufferException
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
    //   304	313	160	finally
    //   323	332	160	finally
    //   332	347	160	finally
    //   352	371	160	finally
    //   371	382	160	finally
    //   30	36	198	java/io/IOException
    //   112	124	198	java/io/IOException
    //   130	148	198	java/io/IOException
    //   177	195	198	java/io/IOException
    //   217	235	198	java/io/IOException
    //   238	257	198	java/io/IOException
    //   260	279	198	java/io/IOException
    //   282	301	198	java/io/IOException
    //   304	313	198	java/io/IOException
    //   323	332	198	java/io/IOException
    //   332	347	198	java/io/IOException
    //   352	371	198	java/io/IOException
    //   371	382	198	java/io/IOException
  }

  private ReportUserEventRequest(GeneratedMessage.Builder<?> paramBuilder)
  {
    super(paramBuilder);
    this.unknownFields = paramBuilder.getUnknownFields();
  }

  private ReportUserEventRequest(boolean paramBoolean)
  {
    this.unknownFields = UnknownFieldSet.getDefaultInstance();
  }

  public static ReportUserEventRequest getDefaultInstance()
  {
    return defaultInstance;
  }

  public static final Descriptors.Descriptor getDescriptor()
  {
    return Logging.internal_static_googlex_glass_common_proto_ReportUserEventRequest_descriptor;
  }

  private void initFields()
  {
    this.action_ = "";
    this.data_ = "";
    this.sessionId_ = "";
    this.timestamp_ = 0L;
    this.softwareVersion_ = "";
    this.hardwareVersion_ = "";
    this.userEventProto_ = GlassUserEventProto.getDefaultInstance();
  }

  public static Builder newBuilder()
  {
    return Builder.access$100();
  }

  public static Builder newBuilder(ReportUserEventRequest paramReportUserEventRequest)
  {
    return newBuilder().mergeFrom(paramReportUserEventRequest);
  }

  public static ReportUserEventRequest parseDelimitedFrom(InputStream paramInputStream)
    throws IOException
  {
    return (ReportUserEventRequest)PARSER.parseDelimitedFrom(paramInputStream);
  }

  public static ReportUserEventRequest parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (ReportUserEventRequest)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static ReportUserEventRequest parseFrom(ByteString paramByteString)
    throws InvalidProtocolBufferException
  {
    return (ReportUserEventRequest)PARSER.parseFrom(paramByteString);
  }

  public static ReportUserEventRequest parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (ReportUserEventRequest)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
  }

  public static ReportUserEventRequest parseFrom(CodedInputStream paramCodedInputStream)
    throws IOException
  {
    return (ReportUserEventRequest)PARSER.parseFrom(paramCodedInputStream);
  }

  public static ReportUserEventRequest parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (ReportUserEventRequest)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
  }

  public static ReportUserEventRequest parseFrom(InputStream paramInputStream)
    throws IOException
  {
    return (ReportUserEventRequest)PARSER.parseFrom(paramInputStream);
  }

  public static ReportUserEventRequest parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (ReportUserEventRequest)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static ReportUserEventRequest parseFrom(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    return (ReportUserEventRequest)PARSER.parseFrom(paramArrayOfByte);
  }

  public static ReportUserEventRequest parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (ReportUserEventRequest)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
  }

  @Deprecated
  public String getAction()
  {
    Object localObject = this.action_;
    if ((localObject instanceof String))
      return (String)localObject;
    ByteString localByteString = (ByteString)localObject;
    String str = localByteString.toStringUtf8();
    if (localByteString.isValidUtf8())
      this.action_ = str;
    return str;
  }

  @Deprecated
  public ByteString getActionBytes()
  {
    Object localObject = this.action_;
    if ((localObject instanceof String))
    {
      ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
      this.action_ = localByteString;
      return localByteString;
    }
    return (ByteString)localObject;
  }

  @Deprecated
  public String getData()
  {
    Object localObject = this.data_;
    if ((localObject instanceof String))
      return (String)localObject;
    ByteString localByteString = (ByteString)localObject;
    String str = localByteString.toStringUtf8();
    if (localByteString.isValidUtf8())
      this.data_ = str;
    return str;
  }

  @Deprecated
  public ByteString getDataBytes()
  {
    Object localObject = this.data_;
    if ((localObject instanceof String))
    {
      ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
      this.data_ = localByteString;
      return localByteString;
    }
    return (ByteString)localObject;
  }

  public ReportUserEventRequest getDefaultInstanceForType()
  {
    return defaultInstance;
  }

  public String getHardwareVersion()
  {
    Object localObject = this.hardwareVersion_;
    if ((localObject instanceof String))
      return (String)localObject;
    ByteString localByteString = (ByteString)localObject;
    String str = localByteString.toStringUtf8();
    if (localByteString.isValidUtf8())
      this.hardwareVersion_ = str;
    return str;
  }

  public ByteString getHardwareVersionBytes()
  {
    Object localObject = this.hardwareVersion_;
    if ((localObject instanceof String))
    {
      ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
      this.hardwareVersion_ = localByteString;
      return localByteString;
    }
    return (ByteString)localObject;
  }

  public Parser<ReportUserEventRequest> getParserForType()
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
      k = 0 + CodedOutputStream.computeBytesSize(1, getActionBytes());
    if ((0x2 & this.bitField0_) == 2)
      k += CodedOutputStream.computeBytesSize(2, getDataBytes());
    if ((0x4 & this.bitField0_) == 4)
      k += CodedOutputStream.computeBytesSize(3, getSessionIdBytes());
    if ((0x8 & this.bitField0_) == 8)
      k += CodedOutputStream.computeInt64Size(4, this.timestamp_);
    if ((0x10 & this.bitField0_) == 16)
      k += CodedOutputStream.computeBytesSize(5, getSoftwareVersionBytes());
    if ((0x20 & this.bitField0_) == 32)
      k += CodedOutputStream.computeBytesSize(6, getHardwareVersionBytes());
    if ((0x40 & this.bitField0_) == 64)
      k += CodedOutputStream.computeMessageSize(7, this.userEventProto_);
    int m = k + getUnknownFields().getSerializedSize();
    this.memoizedSerializedSize = m;
    return m;
  }

  public String getSessionId()
  {
    Object localObject = this.sessionId_;
    if ((localObject instanceof String))
      return (String)localObject;
    ByteString localByteString = (ByteString)localObject;
    String str = localByteString.toStringUtf8();
    if (localByteString.isValidUtf8())
      this.sessionId_ = str;
    return str;
  }

  public ByteString getSessionIdBytes()
  {
    Object localObject = this.sessionId_;
    if ((localObject instanceof String))
    {
      ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
      this.sessionId_ = localByteString;
      return localByteString;
    }
    return (ByteString)localObject;
  }

  public String getSoftwareVersion()
  {
    Object localObject = this.softwareVersion_;
    if ((localObject instanceof String))
      return (String)localObject;
    ByteString localByteString = (ByteString)localObject;
    String str = localByteString.toStringUtf8();
    if (localByteString.isValidUtf8())
      this.softwareVersion_ = str;
    return str;
  }

  public ByteString getSoftwareVersionBytes()
  {
    Object localObject = this.softwareVersion_;
    if ((localObject instanceof String))
    {
      ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
      this.softwareVersion_ = localByteString;
      return localByteString;
    }
    return (ByteString)localObject;
  }

  @Deprecated
  public long getTimestamp()
  {
    return this.timestamp_;
  }

  public final UnknownFieldSet getUnknownFields()
  {
    return this.unknownFields;
  }

  public GlassUserEventProto getUserEventProto()
  {
    return this.userEventProto_;
  }

  public GlassUserEventProtoOrBuilder getUserEventProtoOrBuilder()
  {
    return this.userEventProto_;
  }

  @Deprecated
  public boolean hasAction()
  {
    return (0x1 & this.bitField0_) == 1;
  }

  @Deprecated
  public boolean hasData()
  {
    return (0x2 & this.bitField0_) == 2;
  }

  public boolean hasHardwareVersion()
  {
    return (0x20 & this.bitField0_) == 32;
  }

  public boolean hasSessionId()
  {
    return (0x4 & this.bitField0_) == 4;
  }

  public boolean hasSoftwareVersion()
  {
    return (0x10 & this.bitField0_) == 16;
  }

  @Deprecated
  public boolean hasTimestamp()
  {
    return (0x8 & this.bitField0_) == 8;
  }

  public boolean hasUserEventProto()
  {
    return (0x40 & this.bitField0_) == 64;
  }

  protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
  {
    return Logging.internal_static_googlex_glass_common_proto_ReportUserEventRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(ReportUserEventRequest.class, Builder.class);
  }

  protected MutableMessage internalMutableDefault()
  {
    if (mutableDefault == null)
      mutableDefault = internalMutableDefault("com.google.googlex.glass.common.proto.MutableLogging$ReportUserEventRequest");
    return mutableDefault;
  }

  public final boolean isInitialized()
  {
    int i = this.memoizedIsInitialized;
    if (i != -1)
      return i == 1;
    if ((hasUserEventProto()) && (!getUserEventProto().isInitialized()))
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
      paramCodedOutputStream.writeBytes(1, getActionBytes());
    if ((0x2 & this.bitField0_) == 2)
      paramCodedOutputStream.writeBytes(2, getDataBytes());
    if ((0x4 & this.bitField0_) == 4)
      paramCodedOutputStream.writeBytes(3, getSessionIdBytes());
    if ((0x8 & this.bitField0_) == 8)
      paramCodedOutputStream.writeInt64(4, this.timestamp_);
    if ((0x10 & this.bitField0_) == 16)
      paramCodedOutputStream.writeBytes(5, getSoftwareVersionBytes());
    if ((0x20 & this.bitField0_) == 32)
      paramCodedOutputStream.writeBytes(6, getHardwareVersionBytes());
    if ((0x40 & this.bitField0_) == 64)
      paramCodedOutputStream.writeMessage(7, this.userEventProto_);
    getUnknownFields().writeTo(paramCodedOutputStream);
  }

  public static final class Builder extends GeneratedMessage.Builder<Builder>
    implements ReportUserEventRequestOrBuilder
  {
    private Object action_ = "";
    private int bitField0_;
    private Object data_ = "";
    private Object hardwareVersion_ = "";
    private Object sessionId_ = "";
    private Object softwareVersion_ = "";
    private long timestamp_;
    private SingleFieldBuilder<GlassUserEventProto, GlassUserEventProto.Builder, GlassUserEventProtoOrBuilder> userEventProtoBuilder_;
    private GlassUserEventProto userEventProto_ = GlassUserEventProto.getDefaultInstance();

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
      return Logging.internal_static_googlex_glass_common_proto_ReportUserEventRequest_descriptor;
    }

    private SingleFieldBuilder<GlassUserEventProto, GlassUserEventProto.Builder, GlassUserEventProtoOrBuilder> getUserEventProtoFieldBuilder()
    {
      if (this.userEventProtoBuilder_ == null)
      {
        this.userEventProtoBuilder_ = new SingleFieldBuilder(this.userEventProto_, getParentForChildren(), isClean());
        this.userEventProto_ = null;
      }
      return this.userEventProtoBuilder_;
    }

    private void maybeForceBuilderInitialization()
    {
      if (ReportUserEventRequest.alwaysUseFieldBuilders)
        getUserEventProtoFieldBuilder();
    }

    public ReportUserEventRequest build()
    {
      ReportUserEventRequest localReportUserEventRequest = buildPartial();
      if (!localReportUserEventRequest.isInitialized())
        throw newUninitializedMessageException(localReportUserEventRequest);
      return localReportUserEventRequest;
    }

    public ReportUserEventRequest buildPartial()
    {
      ReportUserEventRequest localReportUserEventRequest = new ReportUserEventRequest(this, null);
      int i = this.bitField0_;
      int j = i & 0x1;
      int k = 0;
      if (j == 1)
        k = 0x0 | 0x1;
      ReportUserEventRequest.access$502(localReportUserEventRequest, this.action_);
      if ((i & 0x2) == 2)
        k |= 2;
      ReportUserEventRequest.access$602(localReportUserEventRequest, this.data_);
      if ((i & 0x4) == 4)
        k |= 4;
      ReportUserEventRequest.access$702(localReportUserEventRequest, this.sessionId_);
      if ((i & 0x8) == 8)
        k |= 8;
      ReportUserEventRequest.access$802(localReportUserEventRequest, this.timestamp_);
      if ((i & 0x10) == 16)
        k |= 16;
      ReportUserEventRequest.access$902(localReportUserEventRequest, this.softwareVersion_);
      if ((i & 0x20) == 32)
        k |= 32;
      ReportUserEventRequest.access$1002(localReportUserEventRequest, this.hardwareVersion_);
      if ((i & 0x40) == 64)
        k |= 64;
      if (this.userEventProtoBuilder_ == null)
        ReportUserEventRequest.access$1102(localReportUserEventRequest, this.userEventProto_);
      while (true)
      {
        ReportUserEventRequest.access$1202(localReportUserEventRequest, k);
        onBuilt();
        return localReportUserEventRequest;
        ReportUserEventRequest.access$1102(localReportUserEventRequest, (GlassUserEventProto)this.userEventProtoBuilder_.build());
      }
    }

    public Builder clear()
    {
      super.clear();
      this.action_ = "";
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      this.data_ = "";
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      this.sessionId_ = "";
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      this.timestamp_ = 0L;
      this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
      this.softwareVersion_ = "";
      this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
      this.hardwareVersion_ = "";
      this.bitField0_ = (0xFFFFFFDF & this.bitField0_);
      if (this.userEventProtoBuilder_ == null)
        this.userEventProto_ = GlassUserEventProto.getDefaultInstance();
      while (true)
      {
        this.bitField0_ = (0xFFFFFFBF & this.bitField0_);
        return this;
        this.userEventProtoBuilder_.clear();
      }
    }

    @Deprecated
    public Builder clearAction()
    {
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      this.action_ = ReportUserEventRequest.getDefaultInstance().getAction();
      onChanged();
      return this;
    }

    @Deprecated
    public Builder clearData()
    {
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      this.data_ = ReportUserEventRequest.getDefaultInstance().getData();
      onChanged();
      return this;
    }

    public Builder clearHardwareVersion()
    {
      this.bitField0_ = (0xFFFFFFDF & this.bitField0_);
      this.hardwareVersion_ = ReportUserEventRequest.getDefaultInstance().getHardwareVersion();
      onChanged();
      return this;
    }

    public Builder clearSessionId()
    {
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      this.sessionId_ = ReportUserEventRequest.getDefaultInstance().getSessionId();
      onChanged();
      return this;
    }

    public Builder clearSoftwareVersion()
    {
      this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
      this.softwareVersion_ = ReportUserEventRequest.getDefaultInstance().getSoftwareVersion();
      onChanged();
      return this;
    }

    @Deprecated
    public Builder clearTimestamp()
    {
      this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
      this.timestamp_ = 0L;
      onChanged();
      return this;
    }

    public Builder clearUserEventProto()
    {
      if (this.userEventProtoBuilder_ == null)
      {
        this.userEventProto_ = GlassUserEventProto.getDefaultInstance();
        onChanged();
      }
      while (true)
      {
        this.bitField0_ = (0xFFFFFFBF & this.bitField0_);
        return this;
        this.userEventProtoBuilder_.clear();
      }
    }

    public Builder clone()
    {
      return create().mergeFrom(buildPartial());
    }

    @Deprecated
    public String getAction()
    {
      Object localObject = this.action_;
      if (!(localObject instanceof String))
      {
        String str = ((ByteString)localObject).toStringUtf8();
        this.action_ = str;
        return str;
      }
      return (String)localObject;
    }

    @Deprecated
    public ByteString getActionBytes()
    {
      Object localObject = this.action_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.action_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    @Deprecated
    public String getData()
    {
      Object localObject = this.data_;
      if (!(localObject instanceof String))
      {
        String str = ((ByteString)localObject).toStringUtf8();
        this.data_ = str;
        return str;
      }
      return (String)localObject;
    }

    @Deprecated
    public ByteString getDataBytes()
    {
      Object localObject = this.data_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.data_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public ReportUserEventRequest getDefaultInstanceForType()
    {
      return ReportUserEventRequest.getDefaultInstance();
    }

    public Descriptors.Descriptor getDescriptorForType()
    {
      return Logging.internal_static_googlex_glass_common_proto_ReportUserEventRequest_descriptor;
    }

    public String getHardwareVersion()
    {
      Object localObject = this.hardwareVersion_;
      if (!(localObject instanceof String))
      {
        String str = ((ByteString)localObject).toStringUtf8();
        this.hardwareVersion_ = str;
        return str;
      }
      return (String)localObject;
    }

    public ByteString getHardwareVersionBytes()
    {
      Object localObject = this.hardwareVersion_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.hardwareVersion_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public String getSessionId()
    {
      Object localObject = this.sessionId_;
      if (!(localObject instanceof String))
      {
        String str = ((ByteString)localObject).toStringUtf8();
        this.sessionId_ = str;
        return str;
      }
      return (String)localObject;
    }

    public ByteString getSessionIdBytes()
    {
      Object localObject = this.sessionId_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.sessionId_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public String getSoftwareVersion()
    {
      Object localObject = this.softwareVersion_;
      if (!(localObject instanceof String))
      {
        String str = ((ByteString)localObject).toStringUtf8();
        this.softwareVersion_ = str;
        return str;
      }
      return (String)localObject;
    }

    public ByteString getSoftwareVersionBytes()
    {
      Object localObject = this.softwareVersion_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.softwareVersion_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    @Deprecated
    public long getTimestamp()
    {
      return this.timestamp_;
    }

    public GlassUserEventProto getUserEventProto()
    {
      if (this.userEventProtoBuilder_ == null)
        return this.userEventProto_;
      return (GlassUserEventProto)this.userEventProtoBuilder_.getMessage();
    }

    public GlassUserEventProto.Builder getUserEventProtoBuilder()
    {
      this.bitField0_ = (0x40 | this.bitField0_);
      onChanged();
      return (GlassUserEventProto.Builder)getUserEventProtoFieldBuilder().getBuilder();
    }

    public GlassUserEventProtoOrBuilder getUserEventProtoOrBuilder()
    {
      if (this.userEventProtoBuilder_ != null)
        return (GlassUserEventProtoOrBuilder)this.userEventProtoBuilder_.getMessageOrBuilder();
      return this.userEventProto_;
    }

    @Deprecated
    public boolean hasAction()
    {
      return (0x1 & this.bitField0_) == 1;
    }

    @Deprecated
    public boolean hasData()
    {
      return (0x2 & this.bitField0_) == 2;
    }

    public boolean hasHardwareVersion()
    {
      return (0x20 & this.bitField0_) == 32;
    }

    public boolean hasSessionId()
    {
      return (0x4 & this.bitField0_) == 4;
    }

    public boolean hasSoftwareVersion()
    {
      return (0x10 & this.bitField0_) == 16;
    }

    @Deprecated
    public boolean hasTimestamp()
    {
      return (0x8 & this.bitField0_) == 8;
    }

    public boolean hasUserEventProto()
    {
      return (0x40 & this.bitField0_) == 64;
    }

    protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return Logging.internal_static_googlex_glass_common_proto_ReportUserEventRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(ReportUserEventRequest.class, Builder.class);
    }

    public final boolean isInitialized()
    {
      return (!hasUserEventProto()) || (getUserEventProto().isInitialized());
    }

    public Builder mergeFrom(ReportUserEventRequest paramReportUserEventRequest)
    {
      if (paramReportUserEventRequest == ReportUserEventRequest.getDefaultInstance())
        return this;
      if (paramReportUserEventRequest.hasAction())
      {
        this.bitField0_ = (0x1 | this.bitField0_);
        this.action_ = paramReportUserEventRequest.action_;
        onChanged();
      }
      if (paramReportUserEventRequest.hasData())
      {
        this.bitField0_ = (0x2 | this.bitField0_);
        this.data_ = paramReportUserEventRequest.data_;
        onChanged();
      }
      if (paramReportUserEventRequest.hasSessionId())
      {
        this.bitField0_ = (0x4 | this.bitField0_);
        this.sessionId_ = paramReportUserEventRequest.sessionId_;
        onChanged();
      }
      if (paramReportUserEventRequest.hasTimestamp())
        setTimestamp(paramReportUserEventRequest.getTimestamp());
      if (paramReportUserEventRequest.hasSoftwareVersion())
      {
        this.bitField0_ = (0x10 | this.bitField0_);
        this.softwareVersion_ = paramReportUserEventRequest.softwareVersion_;
        onChanged();
      }
      if (paramReportUserEventRequest.hasHardwareVersion())
      {
        this.bitField0_ = (0x20 | this.bitField0_);
        this.hardwareVersion_ = paramReportUserEventRequest.hardwareVersion_;
        onChanged();
      }
      if (paramReportUserEventRequest.hasUserEventProto())
        mergeUserEventProto(paramReportUserEventRequest.getUserEventProto());
      mergeUnknownFields(paramReportUserEventRequest.getUnknownFields());
      return this;
    }

    public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      ReportUserEventRequest localReportUserEventRequest1 = null;
      try
      {
        ReportUserEventRequest localReportUserEventRequest2 = (ReportUserEventRequest)ReportUserEventRequest.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
        return this;
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        localReportUserEventRequest1 = (ReportUserEventRequest)localInvalidProtocolBufferException.getUnfinishedMessage();
        throw localInvalidProtocolBufferException;
      }
      finally
      {
        if (localReportUserEventRequest1 != null)
          mergeFrom(localReportUserEventRequest1);
      }
    }

    public Builder mergeFrom(Message paramMessage)
    {
      if ((paramMessage instanceof ReportUserEventRequest))
        return mergeFrom((ReportUserEventRequest)paramMessage);
      super.mergeFrom(paramMessage);
      return this;
    }

    public Builder mergeUserEventProto(GlassUserEventProto paramGlassUserEventProto)
    {
      if (this.userEventProtoBuilder_ == null)
        if (((0x40 & this.bitField0_) == 64) && (this.userEventProto_ != GlassUserEventProto.getDefaultInstance()))
        {
          this.userEventProto_ = GlassUserEventProto.newBuilder(this.userEventProto_).mergeFrom(paramGlassUserEventProto).buildPartial();
          onChanged();
        }
      while (true)
      {
        this.bitField0_ = (0x40 | this.bitField0_);
        return this;
        this.userEventProto_ = paramGlassUserEventProto;
        break;
        this.userEventProtoBuilder_.mergeFrom(paramGlassUserEventProto);
      }
    }

    @Deprecated
    public Builder setAction(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x1 | this.bitField0_);
      this.action_ = paramString;
      onChanged();
      return this;
    }

    @Deprecated
    public Builder setActionBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x1 | this.bitField0_);
      this.action_ = paramByteString;
      onChanged();
      return this;
    }

    @Deprecated
    public Builder setData(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x2 | this.bitField0_);
      this.data_ = paramString;
      onChanged();
      return this;
    }

    @Deprecated
    public Builder setDataBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x2 | this.bitField0_);
      this.data_ = paramByteString;
      onChanged();
      return this;
    }

    public Builder setHardwareVersion(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x20 | this.bitField0_);
      this.hardwareVersion_ = paramString;
      onChanged();
      return this;
    }

    public Builder setHardwareVersionBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x20 | this.bitField0_);
      this.hardwareVersion_ = paramByteString;
      onChanged();
      return this;
    }

    public Builder setSessionId(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x4 | this.bitField0_);
      this.sessionId_ = paramString;
      onChanged();
      return this;
    }

    public Builder setSessionIdBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x4 | this.bitField0_);
      this.sessionId_ = paramByteString;
      onChanged();
      return this;
    }

    public Builder setSoftwareVersion(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x10 | this.bitField0_);
      this.softwareVersion_ = paramString;
      onChanged();
      return this;
    }

    public Builder setSoftwareVersionBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x10 | this.bitField0_);
      this.softwareVersion_ = paramByteString;
      onChanged();
      return this;
    }

    @Deprecated
    public Builder setTimestamp(long paramLong)
    {
      this.bitField0_ = (0x8 | this.bitField0_);
      this.timestamp_ = paramLong;
      onChanged();
      return this;
    }

    public Builder setUserEventProto(GlassUserEventProto.Builder paramBuilder)
    {
      if (this.userEventProtoBuilder_ == null)
      {
        this.userEventProto_ = paramBuilder.build();
        onChanged();
      }
      while (true)
      {
        this.bitField0_ = (0x40 | this.bitField0_);
        return this;
        this.userEventProtoBuilder_.setMessage(paramBuilder.build());
      }
    }

    public Builder setUserEventProto(GlassUserEventProto paramGlassUserEventProto)
    {
      if (this.userEventProtoBuilder_ == null)
      {
        if (paramGlassUserEventProto == null)
          throw new NullPointerException();
        this.userEventProto_ = paramGlassUserEventProto;
        onChanged();
      }
      while (true)
      {
        this.bitField0_ = (0x40 | this.bitField0_);
        return this;
        this.userEventProtoBuilder_.setMessage(paramGlassUserEventProto);
      }
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.ReportUserEventRequest
 * JD-Core Version:    0.6.2
 */