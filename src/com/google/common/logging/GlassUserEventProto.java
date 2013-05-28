package com.google.common.logging;

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

public final class GlassUserEventProto extends GeneratedMessage
  implements GlassUserEventProtoOrBuilder
{
  public static final int EVENT_DATA_FIELD_NUMBER = 3;
  public static final int EVENT_TIME_MS_FIELD_NUMBER = 1;
  public static final int EVENT_TYPE_FIELD_NUMBER = 2;
  public static Parser<GlassUserEventProto> PARSER = new AbstractParser()
  {
    public GlassUserEventProto parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return new GlassUserEventProto(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
    }
  };
  public static final int PERFORMANCE_STATS_FIELD_NUMBER = 4;
  private static final GlassUserEventProto defaultInstance;
  private static volatile MutableMessage mutableDefault = null;
  private static final long serialVersionUID;
  private int bitField0_;
  private Object eventData_;
  private long eventTimeMs_;
  private Object eventType_;
  private byte memoizedIsInitialized = -1;
  private int memoizedSerializedSize = -1;
  private GlassUserEventPerformanceStats performanceStats_;
  private final UnknownFieldSet unknownFields;

  static
  {
    defaultInstance = new GlassUserEventProto(true);
    defaultInstance.initFields();
  }

  // ERROR //
  private GlassUserEventProto(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 61	com/google/protobuf/GeneratedMessage:<init>	()V
    //   4: aload_0
    //   5: iconst_m1
    //   6: putfield 63	com/google/common/logging/GlassUserEventProto:memoizedIsInitialized	B
    //   9: aload_0
    //   10: iconst_m1
    //   11: putfield 65	com/google/common/logging/GlassUserEventProto:memoizedSerializedSize	I
    //   14: aload_0
    //   15: invokespecial 55	com/google/common/logging/GlassUserEventProto:initFields	()V
    //   18: invokestatic 71	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
    //   21: astore_3
    //   22: iconst_0
    //   23: istore 4
    //   25: iload 4
    //   27: ifne +268 -> 295
    //   30: aload_1
    //   31: invokevirtual 77	com/google/protobuf/CodedInputStream:readTag	()I
    //   34: istore 8
    //   36: iload 8
    //   38: lookupswitch	default:+50->88, 0:+270->308, 8:+68->106, 18:+115->153, 26:+155->193, 34:+176->214
    //   89: aload_1
    //   90: aload_3
    //   91: aload_2
    //   92: iload 8
    //   94: invokevirtual 81	com/google/common/logging/GlassUserEventProto:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    //   97: ifne -72 -> 25
    //   100: iconst_1
    //   101: istore 4
    //   103: goto -78 -> 25
    //   106: aload_0
    //   107: iconst_1
    //   108: aload_0
    //   109: getfield 83	com/google/common/logging/GlassUserEventProto:bitField0_	I
    //   112: ior
    //   113: putfield 83	com/google/common/logging/GlassUserEventProto:bitField0_	I
    //   116: aload_0
    //   117: aload_1
    //   118: invokevirtual 87	com/google/protobuf/CodedInputStream:readInt64	()J
    //   121: putfield 89	com/google/common/logging/GlassUserEventProto:eventTimeMs_	J
    //   124: goto -99 -> 25
    //   127: astore 7
    //   129: aload 7
    //   131: aload_0
    //   132: invokevirtual 93	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   135: athrow
    //   136: astore 6
    //   138: aload_0
    //   139: aload_3
    //   140: invokevirtual 99	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   143: putfield 101	com/google/common/logging/GlassUserEventProto:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   146: aload_0
    //   147: invokevirtual 104	com/google/common/logging/GlassUserEventProto:makeExtensionsImmutable	()V
    //   150: aload 6
    //   152: athrow
    //   153: aload_0
    //   154: iconst_2
    //   155: aload_0
    //   156: getfield 83	com/google/common/logging/GlassUserEventProto:bitField0_	I
    //   159: ior
    //   160: putfield 83	com/google/common/logging/GlassUserEventProto:bitField0_	I
    //   163: aload_0
    //   164: aload_1
    //   165: invokevirtual 108	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   168: putfield 110	com/google/common/logging/GlassUserEventProto:eventType_	Ljava/lang/Object;
    //   171: goto -146 -> 25
    //   174: astore 5
    //   176: new 58	com/google/protobuf/InvalidProtocolBufferException
    //   179: dup
    //   180: aload 5
    //   182: invokevirtual 114	java/io/IOException:getMessage	()Ljava/lang/String;
    //   185: invokespecial 117	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
    //   188: aload_0
    //   189: invokevirtual 93	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   192: athrow
    //   193: aload_0
    //   194: iconst_4
    //   195: aload_0
    //   196: getfield 83	com/google/common/logging/GlassUserEventProto:bitField0_	I
    //   199: ior
    //   200: putfield 83	com/google/common/logging/GlassUserEventProto:bitField0_	I
    //   203: aload_0
    //   204: aload_1
    //   205: invokevirtual 108	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   208: putfield 119	com/google/common/logging/GlassUserEventProto:eventData_	Ljava/lang/Object;
    //   211: goto -186 -> 25
    //   214: bipush 8
    //   216: aload_0
    //   217: getfield 83	com/google/common/logging/GlassUserEventProto:bitField0_	I
    //   220: iand
    //   221: istore 9
    //   223: aconst_null
    //   224: astore 10
    //   226: iload 9
    //   228: bipush 8
    //   230: if_icmpne +12 -> 242
    //   233: aload_0
    //   234: getfield 121	com/google/common/logging/GlassUserEventProto:performanceStats_	Lcom/google/common/logging/GlassUserEventPerformanceStats;
    //   237: invokevirtual 127	com/google/common/logging/GlassUserEventPerformanceStats:toBuilder	()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    //   240: astore 10
    //   242: aload_0
    //   243: aload_1
    //   244: getstatic 128	com/google/common/logging/GlassUserEventPerformanceStats:PARSER	Lcom/google/protobuf/Parser;
    //   247: aload_2
    //   248: invokevirtual 132	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
    //   251: checkcast 123	com/google/common/logging/GlassUserEventPerformanceStats
    //   254: putfield 121	com/google/common/logging/GlassUserEventProto:performanceStats_	Lcom/google/common/logging/GlassUserEventPerformanceStats;
    //   257: aload 10
    //   259: ifnull +22 -> 281
    //   262: aload 10
    //   264: aload_0
    //   265: getfield 121	com/google/common/logging/GlassUserEventProto:performanceStats_	Lcom/google/common/logging/GlassUserEventPerformanceStats;
    //   268: invokevirtual 138	com/google/common/logging/GlassUserEventPerformanceStats$Builder:mergeFrom	(Lcom/google/common/logging/GlassUserEventPerformanceStats;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    //   271: pop
    //   272: aload_0
    //   273: aload 10
    //   275: invokevirtual 142	com/google/common/logging/GlassUserEventPerformanceStats$Builder:buildPartial	()Lcom/google/common/logging/GlassUserEventPerformanceStats;
    //   278: putfield 121	com/google/common/logging/GlassUserEventProto:performanceStats_	Lcom/google/common/logging/GlassUserEventPerformanceStats;
    //   281: aload_0
    //   282: bipush 8
    //   284: aload_0
    //   285: getfield 83	com/google/common/logging/GlassUserEventProto:bitField0_	I
    //   288: ior
    //   289: putfield 83	com/google/common/logging/GlassUserEventProto:bitField0_	I
    //   292: goto -267 -> 25
    //   295: aload_0
    //   296: aload_3
    //   297: invokevirtual 99	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   300: putfield 101	com/google/common/logging/GlassUserEventProto:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   303: aload_0
    //   304: invokevirtual 104	com/google/common/logging/GlassUserEventProto:makeExtensionsImmutable	()V
    //   307: return
    //   308: iconst_1
    //   309: istore 4
    //   311: goto -286 -> 25
    //
    // Exception table:
    //   from	to	target	type
    //   30	36	127	com/google/protobuf/InvalidProtocolBufferException
    //   88	100	127	com/google/protobuf/InvalidProtocolBufferException
    //   106	124	127	com/google/protobuf/InvalidProtocolBufferException
    //   153	171	127	com/google/protobuf/InvalidProtocolBufferException
    //   193	211	127	com/google/protobuf/InvalidProtocolBufferException
    //   214	223	127	com/google/protobuf/InvalidProtocolBufferException
    //   233	242	127	com/google/protobuf/InvalidProtocolBufferException
    //   242	257	127	com/google/protobuf/InvalidProtocolBufferException
    //   262	281	127	com/google/protobuf/InvalidProtocolBufferException
    //   281	292	127	com/google/protobuf/InvalidProtocolBufferException
    //   30	36	136	finally
    //   88	100	136	finally
    //   106	124	136	finally
    //   129	136	136	finally
    //   153	171	136	finally
    //   176	193	136	finally
    //   193	211	136	finally
    //   214	223	136	finally
    //   233	242	136	finally
    //   242	257	136	finally
    //   262	281	136	finally
    //   281	292	136	finally
    //   30	36	174	java/io/IOException
    //   88	100	174	java/io/IOException
    //   106	124	174	java/io/IOException
    //   153	171	174	java/io/IOException
    //   193	211	174	java/io/IOException
    //   214	223	174	java/io/IOException
    //   233	242	174	java/io/IOException
    //   242	257	174	java/io/IOException
    //   262	281	174	java/io/IOException
    //   281	292	174	java/io/IOException
  }

  private GlassUserEventProto(GeneratedMessage.Builder<?> paramBuilder)
  {
    super(paramBuilder);
    this.unknownFields = paramBuilder.getUnknownFields();
  }

  private GlassUserEventProto(boolean paramBoolean)
  {
    this.unknownFields = UnknownFieldSet.getDefaultInstance();
  }

  public static GlassUserEventProto getDefaultInstance()
  {
    return defaultInstance;
  }

  public static final Descriptors.Descriptor getDescriptor()
  {
    return GlassExtensions.internal_static_googlex_glass_GlassUserEventProto_descriptor;
  }

  private void initFields()
  {
    this.eventTimeMs_ = 0L;
    this.eventType_ = "";
    this.eventData_ = "";
    this.performanceStats_ = GlassUserEventPerformanceStats.getDefaultInstance();
  }

  public static Builder newBuilder()
  {
    return Builder.access$100();
  }

  public static Builder newBuilder(GlassUserEventProto paramGlassUserEventProto)
  {
    return newBuilder().mergeFrom(paramGlassUserEventProto);
  }

  public static GlassUserEventProto parseDelimitedFrom(InputStream paramInputStream)
    throws IOException
  {
    return (GlassUserEventProto)PARSER.parseDelimitedFrom(paramInputStream);
  }

  public static GlassUserEventProto parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (GlassUserEventProto)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static GlassUserEventProto parseFrom(ByteString paramByteString)
    throws InvalidProtocolBufferException
  {
    return (GlassUserEventProto)PARSER.parseFrom(paramByteString);
  }

  public static GlassUserEventProto parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (GlassUserEventProto)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
  }

  public static GlassUserEventProto parseFrom(CodedInputStream paramCodedInputStream)
    throws IOException
  {
    return (GlassUserEventProto)PARSER.parseFrom(paramCodedInputStream);
  }

  public static GlassUserEventProto parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (GlassUserEventProto)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
  }

  public static GlassUserEventProto parseFrom(InputStream paramInputStream)
    throws IOException
  {
    return (GlassUserEventProto)PARSER.parseFrom(paramInputStream);
  }

  public static GlassUserEventProto parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (GlassUserEventProto)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static GlassUserEventProto parseFrom(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    return (GlassUserEventProto)PARSER.parseFrom(paramArrayOfByte);
  }

  public static GlassUserEventProto parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (GlassUserEventProto)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
  }

  public GlassUserEventProto getDefaultInstanceForType()
  {
    return defaultInstance;
  }

  public String getEventData()
  {
    Object localObject = this.eventData_;
    if ((localObject instanceof String))
      return (String)localObject;
    ByteString localByteString = (ByteString)localObject;
    String str = localByteString.toStringUtf8();
    if (localByteString.isValidUtf8())
      this.eventData_ = str;
    return str;
  }

  public ByteString getEventDataBytes()
  {
    Object localObject = this.eventData_;
    if ((localObject instanceof String))
    {
      ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
      this.eventData_ = localByteString;
      return localByteString;
    }
    return (ByteString)localObject;
  }

  public long getEventTimeMs()
  {
    return this.eventTimeMs_;
  }

  public String getEventType()
  {
    Object localObject = this.eventType_;
    if ((localObject instanceof String))
      return (String)localObject;
    ByteString localByteString = (ByteString)localObject;
    String str = localByteString.toStringUtf8();
    if (localByteString.isValidUtf8())
      this.eventType_ = str;
    return str;
  }

  public ByteString getEventTypeBytes()
  {
    Object localObject = this.eventType_;
    if ((localObject instanceof String))
    {
      ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
      this.eventType_ = localByteString;
      return localByteString;
    }
    return (ByteString)localObject;
  }

  public Parser<GlassUserEventProto> getParserForType()
  {
    return PARSER;
  }

  public GlassUserEventPerformanceStats getPerformanceStats()
  {
    return this.performanceStats_;
  }

  public GlassUserEventPerformanceStatsOrBuilder getPerformanceStatsOrBuilder()
  {
    return this.performanceStats_;
  }

  public int getSerializedSize()
  {
    int i = this.memoizedSerializedSize;
    if (i != -1)
      return i;
    int j = 0x1 & this.bitField0_;
    int k = 0;
    if (j == 1)
      k = 0 + CodedOutputStream.computeInt64Size(1, this.eventTimeMs_);
    if ((0x2 & this.bitField0_) == 2)
      k += CodedOutputStream.computeBytesSize(2, getEventTypeBytes());
    if ((0x4 & this.bitField0_) == 4)
      k += CodedOutputStream.computeBytesSize(3, getEventDataBytes());
    if ((0x8 & this.bitField0_) == 8)
      k += CodedOutputStream.computeMessageSize(4, this.performanceStats_);
    int m = k + getUnknownFields().getSerializedSize();
    this.memoizedSerializedSize = m;
    return m;
  }

  public final UnknownFieldSet getUnknownFields()
  {
    return this.unknownFields;
  }

  public boolean hasEventData()
  {
    return (0x4 & this.bitField0_) == 4;
  }

  public boolean hasEventTimeMs()
  {
    return (0x1 & this.bitField0_) == 1;
  }

  public boolean hasEventType()
  {
    return (0x2 & this.bitField0_) == 2;
  }

  public boolean hasPerformanceStats()
  {
    return (0x8 & this.bitField0_) == 8;
  }

  protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
  {
    return GlassExtensions.internal_static_googlex_glass_GlassUserEventProto_fieldAccessorTable.ensureFieldAccessorsInitialized(GlassUserEventProto.class, Builder.class);
  }

  protected MutableMessage internalMutableDefault()
  {
    if (mutableDefault == null)
      mutableDefault = internalMutableDefault("com.google.common.logging.MutableGlassExtensions$GlassUserEventProto");
    return mutableDefault;
  }

  public final boolean isInitialized()
  {
    int i = this.memoizedIsInitialized;
    if (i != -1)
      return i == 1;
    if ((hasPerformanceStats()) && (!getPerformanceStats().isInitialized()))
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
      paramCodedOutputStream.writeInt64(1, this.eventTimeMs_);
    if ((0x2 & this.bitField0_) == 2)
      paramCodedOutputStream.writeBytes(2, getEventTypeBytes());
    if ((0x4 & this.bitField0_) == 4)
      paramCodedOutputStream.writeBytes(3, getEventDataBytes());
    if ((0x8 & this.bitField0_) == 8)
      paramCodedOutputStream.writeMessage(4, this.performanceStats_);
    getUnknownFields().writeTo(paramCodedOutputStream);
  }

  public static final class Builder extends GeneratedMessage.Builder<Builder>
    implements GlassUserEventProtoOrBuilder
  {
    private int bitField0_;
    private Object eventData_ = "";
    private long eventTimeMs_;
    private Object eventType_ = "";
    private SingleFieldBuilder<GlassUserEventPerformanceStats, GlassUserEventPerformanceStats.Builder, GlassUserEventPerformanceStatsOrBuilder> performanceStatsBuilder_;
    private GlassUserEventPerformanceStats performanceStats_ = GlassUserEventPerformanceStats.getDefaultInstance();

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
      return GlassExtensions.internal_static_googlex_glass_GlassUserEventProto_descriptor;
    }

    private SingleFieldBuilder<GlassUserEventPerformanceStats, GlassUserEventPerformanceStats.Builder, GlassUserEventPerformanceStatsOrBuilder> getPerformanceStatsFieldBuilder()
    {
      if (this.performanceStatsBuilder_ == null)
      {
        this.performanceStatsBuilder_ = new SingleFieldBuilder(this.performanceStats_, getParentForChildren(), isClean());
        this.performanceStats_ = null;
      }
      return this.performanceStatsBuilder_;
    }

    private void maybeForceBuilderInitialization()
    {
      if (GlassUserEventProto.alwaysUseFieldBuilders)
        getPerformanceStatsFieldBuilder();
    }

    public GlassUserEventProto build()
    {
      GlassUserEventProto localGlassUserEventProto = buildPartial();
      if (!localGlassUserEventProto.isInitialized())
        throw newUninitializedMessageException(localGlassUserEventProto);
      return localGlassUserEventProto;
    }

    public GlassUserEventProto buildPartial()
    {
      GlassUserEventProto localGlassUserEventProto = new GlassUserEventProto(this, null);
      int i = this.bitField0_;
      int j = i & 0x1;
      int k = 0;
      if (j == 1)
        k = 0x0 | 0x1;
      GlassUserEventProto.access$502(localGlassUserEventProto, this.eventTimeMs_);
      if ((i & 0x2) == 2)
        k |= 2;
      GlassUserEventProto.access$602(localGlassUserEventProto, this.eventType_);
      if ((i & 0x4) == 4)
        k |= 4;
      GlassUserEventProto.access$702(localGlassUserEventProto, this.eventData_);
      if ((i & 0x8) == 8)
        k |= 8;
      if (this.performanceStatsBuilder_ == null)
        GlassUserEventProto.access$802(localGlassUserEventProto, this.performanceStats_);
      while (true)
      {
        GlassUserEventProto.access$902(localGlassUserEventProto, k);
        onBuilt();
        return localGlassUserEventProto;
        GlassUserEventProto.access$802(localGlassUserEventProto, (GlassUserEventPerformanceStats)this.performanceStatsBuilder_.build());
      }
    }

    public Builder clear()
    {
      super.clear();
      this.eventTimeMs_ = 0L;
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      this.eventType_ = "";
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      this.eventData_ = "";
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      if (this.performanceStatsBuilder_ == null)
        this.performanceStats_ = GlassUserEventPerformanceStats.getDefaultInstance();
      while (true)
      {
        this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
        return this;
        this.performanceStatsBuilder_.clear();
      }
    }

    public Builder clearEventData()
    {
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      this.eventData_ = GlassUserEventProto.getDefaultInstance().getEventData();
      onChanged();
      return this;
    }

    public Builder clearEventTimeMs()
    {
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      this.eventTimeMs_ = 0L;
      onChanged();
      return this;
    }

    public Builder clearEventType()
    {
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      this.eventType_ = GlassUserEventProto.getDefaultInstance().getEventType();
      onChanged();
      return this;
    }

    public Builder clearPerformanceStats()
    {
      if (this.performanceStatsBuilder_ == null)
      {
        this.performanceStats_ = GlassUserEventPerformanceStats.getDefaultInstance();
        onChanged();
      }
      while (true)
      {
        this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
        return this;
        this.performanceStatsBuilder_.clear();
      }
    }

    public Builder clone()
    {
      return create().mergeFrom(buildPartial());
    }

    public GlassUserEventProto getDefaultInstanceForType()
    {
      return GlassUserEventProto.getDefaultInstance();
    }

    public Descriptors.Descriptor getDescriptorForType()
    {
      return GlassExtensions.internal_static_googlex_glass_GlassUserEventProto_descriptor;
    }

    public String getEventData()
    {
      Object localObject = this.eventData_;
      if (!(localObject instanceof String))
      {
        String str = ((ByteString)localObject).toStringUtf8();
        this.eventData_ = str;
        return str;
      }
      return (String)localObject;
    }

    public ByteString getEventDataBytes()
    {
      Object localObject = this.eventData_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.eventData_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public long getEventTimeMs()
    {
      return this.eventTimeMs_;
    }

    public String getEventType()
    {
      Object localObject = this.eventType_;
      if (!(localObject instanceof String))
      {
        String str = ((ByteString)localObject).toStringUtf8();
        this.eventType_ = str;
        return str;
      }
      return (String)localObject;
    }

    public ByteString getEventTypeBytes()
    {
      Object localObject = this.eventType_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.eventType_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public GlassUserEventPerformanceStats getPerformanceStats()
    {
      if (this.performanceStatsBuilder_ == null)
        return this.performanceStats_;
      return (GlassUserEventPerformanceStats)this.performanceStatsBuilder_.getMessage();
    }

    public GlassUserEventPerformanceStats.Builder getPerformanceStatsBuilder()
    {
      this.bitField0_ = (0x8 | this.bitField0_);
      onChanged();
      return (GlassUserEventPerformanceStats.Builder)getPerformanceStatsFieldBuilder().getBuilder();
    }

    public GlassUserEventPerformanceStatsOrBuilder getPerformanceStatsOrBuilder()
    {
      if (this.performanceStatsBuilder_ != null)
        return (GlassUserEventPerformanceStatsOrBuilder)this.performanceStatsBuilder_.getMessageOrBuilder();
      return this.performanceStats_;
    }

    public boolean hasEventData()
    {
      return (0x4 & this.bitField0_) == 4;
    }

    public boolean hasEventTimeMs()
    {
      return (0x1 & this.bitField0_) == 1;
    }

    public boolean hasEventType()
    {
      return (0x2 & this.bitField0_) == 2;
    }

    public boolean hasPerformanceStats()
    {
      return (0x8 & this.bitField0_) == 8;
    }

    protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return GlassExtensions.internal_static_googlex_glass_GlassUserEventProto_fieldAccessorTable.ensureFieldAccessorsInitialized(GlassUserEventProto.class, Builder.class);
    }

    public final boolean isInitialized()
    {
      return (!hasPerformanceStats()) || (getPerformanceStats().isInitialized());
    }

    public Builder mergeFrom(GlassUserEventProto paramGlassUserEventProto)
    {
      if (paramGlassUserEventProto == GlassUserEventProto.getDefaultInstance())
        return this;
      if (paramGlassUserEventProto.hasEventTimeMs())
        setEventTimeMs(paramGlassUserEventProto.getEventTimeMs());
      if (paramGlassUserEventProto.hasEventType())
      {
        this.bitField0_ = (0x2 | this.bitField0_);
        this.eventType_ = paramGlassUserEventProto.eventType_;
        onChanged();
      }
      if (paramGlassUserEventProto.hasEventData())
      {
        this.bitField0_ = (0x4 | this.bitField0_);
        this.eventData_ = paramGlassUserEventProto.eventData_;
        onChanged();
      }
      if (paramGlassUserEventProto.hasPerformanceStats())
        mergePerformanceStats(paramGlassUserEventProto.getPerformanceStats());
      mergeUnknownFields(paramGlassUserEventProto.getUnknownFields());
      return this;
    }

    public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      GlassUserEventProto localGlassUserEventProto1 = null;
      try
      {
        GlassUserEventProto localGlassUserEventProto2 = (GlassUserEventProto)GlassUserEventProto.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
        return this;
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        localGlassUserEventProto1 = (GlassUserEventProto)localInvalidProtocolBufferException.getUnfinishedMessage();
        throw localInvalidProtocolBufferException;
      }
      finally
      {
        if (localGlassUserEventProto1 != null)
          mergeFrom(localGlassUserEventProto1);
      }
    }

    public Builder mergeFrom(Message paramMessage)
    {
      if ((paramMessage instanceof GlassUserEventProto))
        return mergeFrom((GlassUserEventProto)paramMessage);
      super.mergeFrom(paramMessage);
      return this;
    }

    public Builder mergePerformanceStats(GlassUserEventPerformanceStats paramGlassUserEventPerformanceStats)
    {
      if (this.performanceStatsBuilder_ == null)
        if (((0x8 & this.bitField0_) == 8) && (this.performanceStats_ != GlassUserEventPerformanceStats.getDefaultInstance()))
        {
          this.performanceStats_ = GlassUserEventPerformanceStats.newBuilder(this.performanceStats_).mergeFrom(paramGlassUserEventPerformanceStats).buildPartial();
          onChanged();
        }
      while (true)
      {
        this.bitField0_ = (0x8 | this.bitField0_);
        return this;
        this.performanceStats_ = paramGlassUserEventPerformanceStats;
        break;
        this.performanceStatsBuilder_.mergeFrom(paramGlassUserEventPerformanceStats);
      }
    }

    public Builder setEventData(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x4 | this.bitField0_);
      this.eventData_ = paramString;
      onChanged();
      return this;
    }

    public Builder setEventDataBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x4 | this.bitField0_);
      this.eventData_ = paramByteString;
      onChanged();
      return this;
    }

    public Builder setEventTimeMs(long paramLong)
    {
      this.bitField0_ = (0x1 | this.bitField0_);
      this.eventTimeMs_ = paramLong;
      onChanged();
      return this;
    }

    public Builder setEventType(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x2 | this.bitField0_);
      this.eventType_ = paramString;
      onChanged();
      return this;
    }

    public Builder setEventTypeBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x2 | this.bitField0_);
      this.eventType_ = paramByteString;
      onChanged();
      return this;
    }

    public Builder setPerformanceStats(GlassUserEventPerformanceStats.Builder paramBuilder)
    {
      if (this.performanceStatsBuilder_ == null)
      {
        this.performanceStats_ = paramBuilder.build();
        onChanged();
      }
      while (true)
      {
        this.bitField0_ = (0x8 | this.bitField0_);
        return this;
        this.performanceStatsBuilder_.setMessage(paramBuilder.build());
      }
    }

    public Builder setPerformanceStats(GlassUserEventPerformanceStats paramGlassUserEventPerformanceStats)
    {
      if (this.performanceStatsBuilder_ == null)
      {
        if (paramGlassUserEventPerformanceStats == null)
          throw new NullPointerException();
        this.performanceStats_ = paramGlassUserEventPerformanceStats;
        onChanged();
      }
      while (true)
      {
        this.bitField0_ = (0x8 | this.bitField0_);
        return this;
        this.performanceStatsBuilder_.setMessage(paramGlassUserEventPerformanceStats);
      }
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.logging.GlassUserEventProto
 * JD-Core Version:    0.6.2
 */