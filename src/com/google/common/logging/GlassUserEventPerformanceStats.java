package com.google.common.logging;

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

public final class GlassUserEventPerformanceStats extends GeneratedMessage
  implements GlassUserEventPerformanceStatsOrBuilder
{
  public static final int BATTERY_CHARGE_WHEN_FULL_MAH_FIELD_NUMBER = 5;
  public static final int BATTERY_STATE_OF_CHARGE_MAH_FIELD_NUMBER = 4;
  public static final int BATTERY_TEMPERATURE_MILLI_CENTIGRADE_FIELD_NUMBER = 6;
  public static final int BOARD_TEMPERATURE_MILLI_CENTIGRADE_FIELD_NUMBER = 3;
  public static final int FREQUENCY_STAT_FIELD_NUMBER = 1;
  public static Parser<GlassUserEventPerformanceStats> PARSER = new AbstractParser()
  {
    public GlassUserEventPerformanceStats parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return new GlassUserEventPerformanceStats(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
    }
  };
  public static final int TOTAL_BYTES_SENT_FIELD_NUMBER = 7;
  public static final int TOTAL_KERNEL_MS_FIELD_NUMBER = 2;
  private static final GlassUserEventPerformanceStats defaultInstance;
  private static volatile MutableMessage mutableDefault = null;
  private static final long serialVersionUID;
  private int batteryChargeWhenFullMah_;
  private int batteryStateOfChargeMah_;
  private int batteryTemperatureMilliCentigrade_;
  private int bitField0_;
  private int boardTemperatureMilliCentigrade_;
  private List<GlassUserEventFrequencyStat> frequencyStat_;
  private byte memoizedIsInitialized = -1;
  private int memoizedSerializedSize = -1;
  private long totalBytesSent_;
  private long totalKernelMs_;
  private final UnknownFieldSet unknownFields;

  static
  {
    defaultInstance = new GlassUserEventPerformanceStats(true);
    defaultInstance.initFields();
  }

  // ERROR //
  private GlassUserEventPerformanceStats(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 70	com/google/protobuf/GeneratedMessage:<init>	()V
    //   4: aload_0
    //   5: iconst_m1
    //   6: putfield 72	com/google/common/logging/GlassUserEventPerformanceStats:memoizedIsInitialized	B
    //   9: aload_0
    //   10: iconst_m1
    //   11: putfield 74	com/google/common/logging/GlassUserEventPerformanceStats:memoizedSerializedSize	I
    //   14: aload_0
    //   15: invokespecial 64	com/google/common/logging/GlassUserEventPerformanceStats:initFields	()V
    //   18: iconst_0
    //   19: istore_3
    //   20: invokestatic 80	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
    //   23: astore 4
    //   25: iconst_0
    //   26: istore 5
    //   28: iload 5
    //   30: ifne +341 -> 371
    //   33: aload_1
    //   34: invokevirtual 86	com/google/protobuf/CodedInputStream:readTag	()I
    //   37: istore 9
    //   39: iload 9
    //   41: lookupswitch	default:+75->116, 0:+362->403, 10:+94->135, 16:+182->223, 24:+222->263, 32:+243->284, 40:+264->305, 48:+286->327, 56:+308->349
    //   117: aload_1
    //   118: aload 4
    //   120: aload_2
    //   121: iload 9
    //   123: invokevirtual 90	com/google/common/logging/GlassUserEventPerformanceStats:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    //   126: ifne -98 -> 28
    //   129: iconst_1
    //   130: istore 5
    //   132: goto -104 -> 28
    //   135: iload_3
    //   136: iconst_1
    //   137: iand
    //   138: iconst_1
    //   139: if_icmpeq +18 -> 157
    //   142: aload_0
    //   143: new 92	java/util/ArrayList
    //   146: dup
    //   147: invokespecial 93	java/util/ArrayList:<init>	()V
    //   150: putfield 95	com/google/common/logging/GlassUserEventPerformanceStats:frequencyStat_	Ljava/util/List;
    //   153: iload_3
    //   154: iconst_1
    //   155: ior
    //   156: istore_3
    //   157: aload_0
    //   158: getfield 95	com/google/common/logging/GlassUserEventPerformanceStats:frequencyStat_	Ljava/util/List;
    //   161: aload_1
    //   162: getstatic 98	com/google/common/logging/GlassUserEventFrequencyStat:PARSER	Lcom/google/protobuf/Parser;
    //   165: aload_2
    //   166: invokevirtual 102	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
    //   169: invokeinterface 108 2 0
    //   174: pop
    //   175: goto -147 -> 28
    //   178: astore 8
    //   180: aload 8
    //   182: aload_0
    //   183: invokevirtual 112	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   186: athrow
    //   187: astore 7
    //   189: iload_3
    //   190: iconst_1
    //   191: iand
    //   192: iconst_1
    //   193: if_icmpne +14 -> 207
    //   196: aload_0
    //   197: aload_0
    //   198: getfield 95	com/google/common/logging/GlassUserEventPerformanceStats:frequencyStat_	Ljava/util/List;
    //   201: invokestatic 118	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   204: putfield 95	com/google/common/logging/GlassUserEventPerformanceStats:frequencyStat_	Ljava/util/List;
    //   207: aload_0
    //   208: aload 4
    //   210: invokevirtual 124	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   213: putfield 126	com/google/common/logging/GlassUserEventPerformanceStats:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   216: aload_0
    //   217: invokevirtual 129	com/google/common/logging/GlassUserEventPerformanceStats:makeExtensionsImmutable	()V
    //   220: aload 7
    //   222: athrow
    //   223: aload_0
    //   224: iconst_1
    //   225: aload_0
    //   226: getfield 131	com/google/common/logging/GlassUserEventPerformanceStats:bitField0_	I
    //   229: ior
    //   230: putfield 131	com/google/common/logging/GlassUserEventPerformanceStats:bitField0_	I
    //   233: aload_0
    //   234: aload_1
    //   235: invokevirtual 135	com/google/protobuf/CodedInputStream:readInt64	()J
    //   238: putfield 137	com/google/common/logging/GlassUserEventPerformanceStats:totalKernelMs_	J
    //   241: goto -213 -> 28
    //   244: astore 6
    //   246: new 67	com/google/protobuf/InvalidProtocolBufferException
    //   249: dup
    //   250: aload 6
    //   252: invokevirtual 141	java/io/IOException:getMessage	()Ljava/lang/String;
    //   255: invokespecial 144	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
    //   258: aload_0
    //   259: invokevirtual 112	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   262: athrow
    //   263: aload_0
    //   264: iconst_2
    //   265: aload_0
    //   266: getfield 131	com/google/common/logging/GlassUserEventPerformanceStats:bitField0_	I
    //   269: ior
    //   270: putfield 131	com/google/common/logging/GlassUserEventPerformanceStats:bitField0_	I
    //   273: aload_0
    //   274: aload_1
    //   275: invokevirtual 147	com/google/protobuf/CodedInputStream:readInt32	()I
    //   278: putfield 149	com/google/common/logging/GlassUserEventPerformanceStats:boardTemperatureMilliCentigrade_	I
    //   281: goto -253 -> 28
    //   284: aload_0
    //   285: iconst_4
    //   286: aload_0
    //   287: getfield 131	com/google/common/logging/GlassUserEventPerformanceStats:bitField0_	I
    //   290: ior
    //   291: putfield 131	com/google/common/logging/GlassUserEventPerformanceStats:bitField0_	I
    //   294: aload_0
    //   295: aload_1
    //   296: invokevirtual 147	com/google/protobuf/CodedInputStream:readInt32	()I
    //   299: putfield 151	com/google/common/logging/GlassUserEventPerformanceStats:batteryStateOfChargeMah_	I
    //   302: goto -274 -> 28
    //   305: aload_0
    //   306: bipush 8
    //   308: aload_0
    //   309: getfield 131	com/google/common/logging/GlassUserEventPerformanceStats:bitField0_	I
    //   312: ior
    //   313: putfield 131	com/google/common/logging/GlassUserEventPerformanceStats:bitField0_	I
    //   316: aload_0
    //   317: aload_1
    //   318: invokevirtual 147	com/google/protobuf/CodedInputStream:readInt32	()I
    //   321: putfield 153	com/google/common/logging/GlassUserEventPerformanceStats:batteryChargeWhenFullMah_	I
    //   324: goto -296 -> 28
    //   327: aload_0
    //   328: bipush 16
    //   330: aload_0
    //   331: getfield 131	com/google/common/logging/GlassUserEventPerformanceStats:bitField0_	I
    //   334: ior
    //   335: putfield 131	com/google/common/logging/GlassUserEventPerformanceStats:bitField0_	I
    //   338: aload_0
    //   339: aload_1
    //   340: invokevirtual 147	com/google/protobuf/CodedInputStream:readInt32	()I
    //   343: putfield 155	com/google/common/logging/GlassUserEventPerformanceStats:batteryTemperatureMilliCentigrade_	I
    //   346: goto -318 -> 28
    //   349: aload_0
    //   350: bipush 32
    //   352: aload_0
    //   353: getfield 131	com/google/common/logging/GlassUserEventPerformanceStats:bitField0_	I
    //   356: ior
    //   357: putfield 131	com/google/common/logging/GlassUserEventPerformanceStats:bitField0_	I
    //   360: aload_0
    //   361: aload_1
    //   362: invokevirtual 135	com/google/protobuf/CodedInputStream:readInt64	()J
    //   365: putfield 157	com/google/common/logging/GlassUserEventPerformanceStats:totalBytesSent_	J
    //   368: goto -340 -> 28
    //   371: iload_3
    //   372: iconst_1
    //   373: iand
    //   374: iconst_1
    //   375: if_icmpne +14 -> 389
    //   378: aload_0
    //   379: aload_0
    //   380: getfield 95	com/google/common/logging/GlassUserEventPerformanceStats:frequencyStat_	Ljava/util/List;
    //   383: invokestatic 118	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   386: putfield 95	com/google/common/logging/GlassUserEventPerformanceStats:frequencyStat_	Ljava/util/List;
    //   389: aload_0
    //   390: aload 4
    //   392: invokevirtual 124	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   395: putfield 126	com/google/common/logging/GlassUserEventPerformanceStats:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   398: aload_0
    //   399: invokevirtual 129	com/google/common/logging/GlassUserEventPerformanceStats:makeExtensionsImmutable	()V
    //   402: return
    //   403: iconst_1
    //   404: istore 5
    //   406: goto -378 -> 28
    //
    // Exception table:
    //   from	to	target	type
    //   33	39	178	com/google/protobuf/InvalidProtocolBufferException
    //   116	129	178	com/google/protobuf/InvalidProtocolBufferException
    //   142	153	178	com/google/protobuf/InvalidProtocolBufferException
    //   157	175	178	com/google/protobuf/InvalidProtocolBufferException
    //   223	241	178	com/google/protobuf/InvalidProtocolBufferException
    //   263	281	178	com/google/protobuf/InvalidProtocolBufferException
    //   284	302	178	com/google/protobuf/InvalidProtocolBufferException
    //   305	324	178	com/google/protobuf/InvalidProtocolBufferException
    //   327	346	178	com/google/protobuf/InvalidProtocolBufferException
    //   349	368	178	com/google/protobuf/InvalidProtocolBufferException
    //   33	39	187	finally
    //   116	129	187	finally
    //   142	153	187	finally
    //   157	175	187	finally
    //   180	187	187	finally
    //   223	241	187	finally
    //   246	263	187	finally
    //   263	281	187	finally
    //   284	302	187	finally
    //   305	324	187	finally
    //   327	346	187	finally
    //   349	368	187	finally
    //   33	39	244	java/io/IOException
    //   116	129	244	java/io/IOException
    //   142	153	244	java/io/IOException
    //   157	175	244	java/io/IOException
    //   223	241	244	java/io/IOException
    //   263	281	244	java/io/IOException
    //   284	302	244	java/io/IOException
    //   305	324	244	java/io/IOException
    //   327	346	244	java/io/IOException
    //   349	368	244	java/io/IOException
  }

  private GlassUserEventPerformanceStats(GeneratedMessage.Builder<?> paramBuilder)
  {
    super(paramBuilder);
    this.unknownFields = paramBuilder.getUnknownFields();
  }

  private GlassUserEventPerformanceStats(boolean paramBoolean)
  {
    this.unknownFields = UnknownFieldSet.getDefaultInstance();
  }

  public static GlassUserEventPerformanceStats getDefaultInstance()
  {
    return defaultInstance;
  }

  public static final Descriptors.Descriptor getDescriptor()
  {
    return GlassExtensions.internal_static_googlex_glass_GlassUserEventPerformanceStats_descriptor;
  }

  private void initFields()
  {
    this.frequencyStat_ = Collections.emptyList();
    this.totalKernelMs_ = 0L;
    this.boardTemperatureMilliCentigrade_ = 0;
    this.batteryStateOfChargeMah_ = 0;
    this.batteryChargeWhenFullMah_ = 0;
    this.batteryTemperatureMilliCentigrade_ = 0;
    this.totalBytesSent_ = 0L;
  }

  public static Builder newBuilder()
  {
    return Builder.access$100();
  }

  public static Builder newBuilder(GlassUserEventPerformanceStats paramGlassUserEventPerformanceStats)
  {
    return newBuilder().mergeFrom(paramGlassUserEventPerformanceStats);
  }

  public static GlassUserEventPerformanceStats parseDelimitedFrom(InputStream paramInputStream)
    throws IOException
  {
    return (GlassUserEventPerformanceStats)PARSER.parseDelimitedFrom(paramInputStream);
  }

  public static GlassUserEventPerformanceStats parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (GlassUserEventPerformanceStats)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static GlassUserEventPerformanceStats parseFrom(ByteString paramByteString)
    throws InvalidProtocolBufferException
  {
    return (GlassUserEventPerformanceStats)PARSER.parseFrom(paramByteString);
  }

  public static GlassUserEventPerformanceStats parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (GlassUserEventPerformanceStats)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
  }

  public static GlassUserEventPerformanceStats parseFrom(CodedInputStream paramCodedInputStream)
    throws IOException
  {
    return (GlassUserEventPerformanceStats)PARSER.parseFrom(paramCodedInputStream);
  }

  public static GlassUserEventPerformanceStats parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (GlassUserEventPerformanceStats)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
  }

  public static GlassUserEventPerformanceStats parseFrom(InputStream paramInputStream)
    throws IOException
  {
    return (GlassUserEventPerformanceStats)PARSER.parseFrom(paramInputStream);
  }

  public static GlassUserEventPerformanceStats parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (GlassUserEventPerformanceStats)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static GlassUserEventPerformanceStats parseFrom(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    return (GlassUserEventPerformanceStats)PARSER.parseFrom(paramArrayOfByte);
  }

  public static GlassUserEventPerformanceStats parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (GlassUserEventPerformanceStats)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
  }

  public int getBatteryChargeWhenFullMah()
  {
    return this.batteryChargeWhenFullMah_;
  }

  public int getBatteryStateOfChargeMah()
  {
    return this.batteryStateOfChargeMah_;
  }

  public int getBatteryTemperatureMilliCentigrade()
  {
    return this.batteryTemperatureMilliCentigrade_;
  }

  public int getBoardTemperatureMilliCentigrade()
  {
    return this.boardTemperatureMilliCentigrade_;
  }

  public GlassUserEventPerformanceStats getDefaultInstanceForType()
  {
    return defaultInstance;
  }

  public GlassUserEventFrequencyStat getFrequencyStat(int paramInt)
  {
    return (GlassUserEventFrequencyStat)this.frequencyStat_.get(paramInt);
  }

  public int getFrequencyStatCount()
  {
    return this.frequencyStat_.size();
  }

  public List<GlassUserEventFrequencyStat> getFrequencyStatList()
  {
    return this.frequencyStat_;
  }

  public GlassUserEventFrequencyStatOrBuilder getFrequencyStatOrBuilder(int paramInt)
  {
    return (GlassUserEventFrequencyStatOrBuilder)this.frequencyStat_.get(paramInt);
  }

  public List<? extends GlassUserEventFrequencyStatOrBuilder> getFrequencyStatOrBuilderList()
  {
    return this.frequencyStat_;
  }

  public Parser<GlassUserEventPerformanceStats> getParserForType()
  {
    return PARSER;
  }

  public int getSerializedSize()
  {
    int i = this.memoizedSerializedSize;
    if (i != -1)
      return i;
    int j = 0;
    for (int k = 0; k < this.frequencyStat_.size(); k++)
      j += CodedOutputStream.computeMessageSize(1, (MessageLite)this.frequencyStat_.get(k));
    if ((0x1 & this.bitField0_) == 1)
      j += CodedOutputStream.computeInt64Size(2, this.totalKernelMs_);
    if ((0x2 & this.bitField0_) == 2)
      j += CodedOutputStream.computeInt32Size(3, this.boardTemperatureMilliCentigrade_);
    if ((0x4 & this.bitField0_) == 4)
      j += CodedOutputStream.computeInt32Size(4, this.batteryStateOfChargeMah_);
    if ((0x8 & this.bitField0_) == 8)
      j += CodedOutputStream.computeInt32Size(5, this.batteryChargeWhenFullMah_);
    if ((0x10 & this.bitField0_) == 16)
      j += CodedOutputStream.computeInt32Size(6, this.batteryTemperatureMilliCentigrade_);
    if ((0x20 & this.bitField0_) == 32)
      j += CodedOutputStream.computeInt64Size(7, this.totalBytesSent_);
    int m = j + getUnknownFields().getSerializedSize();
    this.memoizedSerializedSize = m;
    return m;
  }

  public long getTotalBytesSent()
  {
    return this.totalBytesSent_;
  }

  public long getTotalKernelMs()
  {
    return this.totalKernelMs_;
  }

  public final UnknownFieldSet getUnknownFields()
  {
    return this.unknownFields;
  }

  public boolean hasBatteryChargeWhenFullMah()
  {
    return (0x8 & this.bitField0_) == 8;
  }

  public boolean hasBatteryStateOfChargeMah()
  {
    return (0x4 & this.bitField0_) == 4;
  }

  public boolean hasBatteryTemperatureMilliCentigrade()
  {
    return (0x10 & this.bitField0_) == 16;
  }

  public boolean hasBoardTemperatureMilliCentigrade()
  {
    return (0x2 & this.bitField0_) == 2;
  }

  public boolean hasTotalBytesSent()
  {
    return (0x20 & this.bitField0_) == 32;
  }

  public boolean hasTotalKernelMs()
  {
    return (0x1 & this.bitField0_) == 1;
  }

  protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
  {
    return GlassExtensions.internal_static_googlex_glass_GlassUserEventPerformanceStats_fieldAccessorTable.ensureFieldAccessorsInitialized(GlassUserEventPerformanceStats.class, Builder.class);
  }

  protected MutableMessage internalMutableDefault()
  {
    if (mutableDefault == null)
      mutableDefault = internalMutableDefault("com.google.common.logging.MutableGlassExtensions$GlassUserEventPerformanceStats");
    return mutableDefault;
  }

  public final boolean isInitialized()
  {
    int i = this.memoizedIsInitialized;
    if (i != -1)
      return i == 1;
    for (int j = 0; j < getFrequencyStatCount(); j++)
      if (!getFrequencyStat(j).isInitialized())
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
    for (int i = 0; i < this.frequencyStat_.size(); i++)
      paramCodedOutputStream.writeMessage(1, (MessageLite)this.frequencyStat_.get(i));
    if ((0x1 & this.bitField0_) == 1)
      paramCodedOutputStream.writeInt64(2, this.totalKernelMs_);
    if ((0x2 & this.bitField0_) == 2)
      paramCodedOutputStream.writeInt32(3, this.boardTemperatureMilliCentigrade_);
    if ((0x4 & this.bitField0_) == 4)
      paramCodedOutputStream.writeInt32(4, this.batteryStateOfChargeMah_);
    if ((0x8 & this.bitField0_) == 8)
      paramCodedOutputStream.writeInt32(5, this.batteryChargeWhenFullMah_);
    if ((0x10 & this.bitField0_) == 16)
      paramCodedOutputStream.writeInt32(6, this.batteryTemperatureMilliCentigrade_);
    if ((0x20 & this.bitField0_) == 32)
      paramCodedOutputStream.writeInt64(7, this.totalBytesSent_);
    getUnknownFields().writeTo(paramCodedOutputStream);
  }

  public static final class Builder extends GeneratedMessage.Builder<Builder>
    implements GlassUserEventPerformanceStatsOrBuilder
  {
    private int batteryChargeWhenFullMah_;
    private int batteryStateOfChargeMah_;
    private int batteryTemperatureMilliCentigrade_;
    private int bitField0_;
    private int boardTemperatureMilliCentigrade_;
    private RepeatedFieldBuilder<GlassUserEventFrequencyStat, GlassUserEventFrequencyStat.Builder, GlassUserEventFrequencyStatOrBuilder> frequencyStatBuilder_;
    private List<GlassUserEventFrequencyStat> frequencyStat_ = Collections.emptyList();
    private long totalBytesSent_;
    private long totalKernelMs_;

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

    private void ensureFrequencyStatIsMutable()
    {
      if ((0x1 & this.bitField0_) != 1)
      {
        this.frequencyStat_ = new ArrayList(this.frequencyStat_);
        this.bitField0_ = (0x1 | this.bitField0_);
      }
    }

    public static final Descriptors.Descriptor getDescriptor()
    {
      return GlassExtensions.internal_static_googlex_glass_GlassUserEventPerformanceStats_descriptor;
    }

    private RepeatedFieldBuilder<GlassUserEventFrequencyStat, GlassUserEventFrequencyStat.Builder, GlassUserEventFrequencyStatOrBuilder> getFrequencyStatFieldBuilder()
    {
      int i = 1;
      List localList;
      if (this.frequencyStatBuilder_ == null)
      {
        localList = this.frequencyStat_;
        if ((0x1 & this.bitField0_) != i)
          break label55;
      }
      while (true)
      {
        this.frequencyStatBuilder_ = new RepeatedFieldBuilder(localList, i, getParentForChildren(), isClean());
        this.frequencyStat_ = null;
        return this.frequencyStatBuilder_;
        label55: int j = 0;
      }
    }

    private void maybeForceBuilderInitialization()
    {
      if (GlassUserEventPerformanceStats.alwaysUseFieldBuilders)
        getFrequencyStatFieldBuilder();
    }

    public Builder addAllFrequencyStat(Iterable<? extends GlassUserEventFrequencyStat> paramIterable)
    {
      if (this.frequencyStatBuilder_ == null)
      {
        ensureFrequencyStatIsMutable();
        AbstractMessageLite.Builder.addAll(paramIterable, this.frequencyStat_);
        onChanged();
        return this;
      }
      this.frequencyStatBuilder_.addAllMessages(paramIterable);
      return this;
    }

    public Builder addFrequencyStat(int paramInt, GlassUserEventFrequencyStat.Builder paramBuilder)
    {
      if (this.frequencyStatBuilder_ == null)
      {
        ensureFrequencyStatIsMutable();
        this.frequencyStat_.add(paramInt, paramBuilder.build());
        onChanged();
        return this;
      }
      this.frequencyStatBuilder_.addMessage(paramInt, paramBuilder.build());
      return this;
    }

    public Builder addFrequencyStat(int paramInt, GlassUserEventFrequencyStat paramGlassUserEventFrequencyStat)
    {
      if (this.frequencyStatBuilder_ == null)
      {
        if (paramGlassUserEventFrequencyStat == null)
          throw new NullPointerException();
        ensureFrequencyStatIsMutable();
        this.frequencyStat_.add(paramInt, paramGlassUserEventFrequencyStat);
        onChanged();
        return this;
      }
      this.frequencyStatBuilder_.addMessage(paramInt, paramGlassUserEventFrequencyStat);
      return this;
    }

    public Builder addFrequencyStat(GlassUserEventFrequencyStat.Builder paramBuilder)
    {
      if (this.frequencyStatBuilder_ == null)
      {
        ensureFrequencyStatIsMutable();
        this.frequencyStat_.add(paramBuilder.build());
        onChanged();
        return this;
      }
      this.frequencyStatBuilder_.addMessage(paramBuilder.build());
      return this;
    }

    public Builder addFrequencyStat(GlassUserEventFrequencyStat paramGlassUserEventFrequencyStat)
    {
      if (this.frequencyStatBuilder_ == null)
      {
        if (paramGlassUserEventFrequencyStat == null)
          throw new NullPointerException();
        ensureFrequencyStatIsMutable();
        this.frequencyStat_.add(paramGlassUserEventFrequencyStat);
        onChanged();
        return this;
      }
      this.frequencyStatBuilder_.addMessage(paramGlassUserEventFrequencyStat);
      return this;
    }

    public GlassUserEventFrequencyStat.Builder addFrequencyStatBuilder()
    {
      return (GlassUserEventFrequencyStat.Builder)getFrequencyStatFieldBuilder().addBuilder(GlassUserEventFrequencyStat.getDefaultInstance());
    }

    public GlassUserEventFrequencyStat.Builder addFrequencyStatBuilder(int paramInt)
    {
      return (GlassUserEventFrequencyStat.Builder)getFrequencyStatFieldBuilder().addBuilder(paramInt, GlassUserEventFrequencyStat.getDefaultInstance());
    }

    public GlassUserEventPerformanceStats build()
    {
      GlassUserEventPerformanceStats localGlassUserEventPerformanceStats = buildPartial();
      if (!localGlassUserEventPerformanceStats.isInitialized())
        throw newUninitializedMessageException(localGlassUserEventPerformanceStats);
      return localGlassUserEventPerformanceStats;
    }

    public GlassUserEventPerformanceStats buildPartial()
    {
      GlassUserEventPerformanceStats localGlassUserEventPerformanceStats = new GlassUserEventPerformanceStats(this, null);
      int i = this.bitField0_;
      if (this.frequencyStatBuilder_ == null)
      {
        if ((0x1 & this.bitField0_) == 1)
        {
          this.frequencyStat_ = Collections.unmodifiableList(this.frequencyStat_);
          this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        }
        GlassUserEventPerformanceStats.access$502(localGlassUserEventPerformanceStats, this.frequencyStat_);
      }
      while (true)
      {
        int j = i & 0x2;
        int k = 0;
        if (j == 2)
          k = 0x0 | 0x1;
        GlassUserEventPerformanceStats.access$602(localGlassUserEventPerformanceStats, this.totalKernelMs_);
        if ((i & 0x4) == 4)
          k |= 2;
        GlassUserEventPerformanceStats.access$702(localGlassUserEventPerformanceStats, this.boardTemperatureMilliCentigrade_);
        if ((i & 0x8) == 8)
          k |= 4;
        GlassUserEventPerformanceStats.access$802(localGlassUserEventPerformanceStats, this.batteryStateOfChargeMah_);
        if ((i & 0x10) == 16)
          k |= 8;
        GlassUserEventPerformanceStats.access$902(localGlassUserEventPerformanceStats, this.batteryChargeWhenFullMah_);
        if ((i & 0x20) == 32)
          k |= 16;
        GlassUserEventPerformanceStats.access$1002(localGlassUserEventPerformanceStats, this.batteryTemperatureMilliCentigrade_);
        if ((i & 0x40) == 64)
          k |= 32;
        GlassUserEventPerformanceStats.access$1102(localGlassUserEventPerformanceStats, this.totalBytesSent_);
        GlassUserEventPerformanceStats.access$1202(localGlassUserEventPerformanceStats, k);
        onBuilt();
        return localGlassUserEventPerformanceStats;
        GlassUserEventPerformanceStats.access$502(localGlassUserEventPerformanceStats, this.frequencyStatBuilder_.build());
      }
    }

    public Builder clear()
    {
      super.clear();
      if (this.frequencyStatBuilder_ == null)
      {
        this.frequencyStat_ = Collections.emptyList();
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      }
      while (true)
      {
        this.totalKernelMs_ = 0L;
        this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        this.boardTemperatureMilliCentigrade_ = 0;
        this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
        this.batteryStateOfChargeMah_ = 0;
        this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
        this.batteryChargeWhenFullMah_ = 0;
        this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
        this.batteryTemperatureMilliCentigrade_ = 0;
        this.bitField0_ = (0xFFFFFFDF & this.bitField0_);
        this.totalBytesSent_ = 0L;
        this.bitField0_ = (0xFFFFFFBF & this.bitField0_);
        return this;
        this.frequencyStatBuilder_.clear();
      }
    }

    public Builder clearBatteryChargeWhenFullMah()
    {
      this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
      this.batteryChargeWhenFullMah_ = 0;
      onChanged();
      return this;
    }

    public Builder clearBatteryStateOfChargeMah()
    {
      this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
      this.batteryStateOfChargeMah_ = 0;
      onChanged();
      return this;
    }

    public Builder clearBatteryTemperatureMilliCentigrade()
    {
      this.bitField0_ = (0xFFFFFFDF & this.bitField0_);
      this.batteryTemperatureMilliCentigrade_ = 0;
      onChanged();
      return this;
    }

    public Builder clearBoardTemperatureMilliCentigrade()
    {
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      this.boardTemperatureMilliCentigrade_ = 0;
      onChanged();
      return this;
    }

    public Builder clearFrequencyStat()
    {
      if (this.frequencyStatBuilder_ == null)
      {
        this.frequencyStat_ = Collections.emptyList();
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        onChanged();
        return this;
      }
      this.frequencyStatBuilder_.clear();
      return this;
    }

    public Builder clearTotalBytesSent()
    {
      this.bitField0_ = (0xFFFFFFBF & this.bitField0_);
      this.totalBytesSent_ = 0L;
      onChanged();
      return this;
    }

    public Builder clearTotalKernelMs()
    {
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      this.totalKernelMs_ = 0L;
      onChanged();
      return this;
    }

    public Builder clone()
    {
      return create().mergeFrom(buildPartial());
    }

    public int getBatteryChargeWhenFullMah()
    {
      return this.batteryChargeWhenFullMah_;
    }

    public int getBatteryStateOfChargeMah()
    {
      return this.batteryStateOfChargeMah_;
    }

    public int getBatteryTemperatureMilliCentigrade()
    {
      return this.batteryTemperatureMilliCentigrade_;
    }

    public int getBoardTemperatureMilliCentigrade()
    {
      return this.boardTemperatureMilliCentigrade_;
    }

    public GlassUserEventPerformanceStats getDefaultInstanceForType()
    {
      return GlassUserEventPerformanceStats.getDefaultInstance();
    }

    public Descriptors.Descriptor getDescriptorForType()
    {
      return GlassExtensions.internal_static_googlex_glass_GlassUserEventPerformanceStats_descriptor;
    }

    public GlassUserEventFrequencyStat getFrequencyStat(int paramInt)
    {
      if (this.frequencyStatBuilder_ == null)
        return (GlassUserEventFrequencyStat)this.frequencyStat_.get(paramInt);
      return (GlassUserEventFrequencyStat)this.frequencyStatBuilder_.getMessage(paramInt);
    }

    public GlassUserEventFrequencyStat.Builder getFrequencyStatBuilder(int paramInt)
    {
      return (GlassUserEventFrequencyStat.Builder)getFrequencyStatFieldBuilder().getBuilder(paramInt);
    }

    public List<GlassUserEventFrequencyStat.Builder> getFrequencyStatBuilderList()
    {
      return getFrequencyStatFieldBuilder().getBuilderList();
    }

    public int getFrequencyStatCount()
    {
      if (this.frequencyStatBuilder_ == null)
        return this.frequencyStat_.size();
      return this.frequencyStatBuilder_.getCount();
    }

    public List<GlassUserEventFrequencyStat> getFrequencyStatList()
    {
      if (this.frequencyStatBuilder_ == null)
        return Collections.unmodifiableList(this.frequencyStat_);
      return this.frequencyStatBuilder_.getMessageList();
    }

    public GlassUserEventFrequencyStatOrBuilder getFrequencyStatOrBuilder(int paramInt)
    {
      if (this.frequencyStatBuilder_ == null)
        return (GlassUserEventFrequencyStatOrBuilder)this.frequencyStat_.get(paramInt);
      return (GlassUserEventFrequencyStatOrBuilder)this.frequencyStatBuilder_.getMessageOrBuilder(paramInt);
    }

    public List<? extends GlassUserEventFrequencyStatOrBuilder> getFrequencyStatOrBuilderList()
    {
      if (this.frequencyStatBuilder_ != null)
        return this.frequencyStatBuilder_.getMessageOrBuilderList();
      return Collections.unmodifiableList(this.frequencyStat_);
    }

    public long getTotalBytesSent()
    {
      return this.totalBytesSent_;
    }

    public long getTotalKernelMs()
    {
      return this.totalKernelMs_;
    }

    public boolean hasBatteryChargeWhenFullMah()
    {
      return (0x10 & this.bitField0_) == 16;
    }

    public boolean hasBatteryStateOfChargeMah()
    {
      return (0x8 & this.bitField0_) == 8;
    }

    public boolean hasBatteryTemperatureMilliCentigrade()
    {
      return (0x20 & this.bitField0_) == 32;
    }

    public boolean hasBoardTemperatureMilliCentigrade()
    {
      return (0x4 & this.bitField0_) == 4;
    }

    public boolean hasTotalBytesSent()
    {
      return (0x40 & this.bitField0_) == 64;
    }

    public boolean hasTotalKernelMs()
    {
      return (0x2 & this.bitField0_) == 2;
    }

    protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return GlassExtensions.internal_static_googlex_glass_GlassUserEventPerformanceStats_fieldAccessorTable.ensureFieldAccessorsInitialized(GlassUserEventPerformanceStats.class, Builder.class);
    }

    public final boolean isInitialized()
    {
      for (int i = 0; i < getFrequencyStatCount(); i++)
        if (!getFrequencyStat(i).isInitialized())
          return false;
      return true;
    }

    public Builder mergeFrom(GlassUserEventPerformanceStats paramGlassUserEventPerformanceStats)
    {
      if (paramGlassUserEventPerformanceStats == GlassUserEventPerformanceStats.getDefaultInstance())
        return this;
      if (this.frequencyStatBuilder_ == null)
        if (!paramGlassUserEventPerformanceStats.frequencyStat_.isEmpty())
        {
          if (!this.frequencyStat_.isEmpty())
            break label170;
          this.frequencyStat_ = paramGlassUserEventPerformanceStats.frequencyStat_;
          this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
          onChanged();
        }
      while (true)
      {
        if (paramGlassUserEventPerformanceStats.hasTotalKernelMs())
          setTotalKernelMs(paramGlassUserEventPerformanceStats.getTotalKernelMs());
        if (paramGlassUserEventPerformanceStats.hasBoardTemperatureMilliCentigrade())
          setBoardTemperatureMilliCentigrade(paramGlassUserEventPerformanceStats.getBoardTemperatureMilliCentigrade());
        if (paramGlassUserEventPerformanceStats.hasBatteryStateOfChargeMah())
          setBatteryStateOfChargeMah(paramGlassUserEventPerformanceStats.getBatteryStateOfChargeMah());
        if (paramGlassUserEventPerformanceStats.hasBatteryChargeWhenFullMah())
          setBatteryChargeWhenFullMah(paramGlassUserEventPerformanceStats.getBatteryChargeWhenFullMah());
        if (paramGlassUserEventPerformanceStats.hasBatteryTemperatureMilliCentigrade())
          setBatteryTemperatureMilliCentigrade(paramGlassUserEventPerformanceStats.getBatteryTemperatureMilliCentigrade());
        if (paramGlassUserEventPerformanceStats.hasTotalBytesSent())
          setTotalBytesSent(paramGlassUserEventPerformanceStats.getTotalBytesSent());
        mergeUnknownFields(paramGlassUserEventPerformanceStats.getUnknownFields());
        return this;
        label170: ensureFrequencyStatIsMutable();
        this.frequencyStat_.addAll(paramGlassUserEventPerformanceStats.frequencyStat_);
        break;
        if (!paramGlassUserEventPerformanceStats.frequencyStat_.isEmpty())
          if (this.frequencyStatBuilder_.isEmpty())
          {
            this.frequencyStatBuilder_.dispose();
            this.frequencyStatBuilder_ = null;
            this.frequencyStat_ = paramGlassUserEventPerformanceStats.frequencyStat_;
            this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
            boolean bool = GlassUserEventPerformanceStats.alwaysUseFieldBuilders;
            RepeatedFieldBuilder localRepeatedFieldBuilder = null;
            if (bool)
              localRepeatedFieldBuilder = getFrequencyStatFieldBuilder();
            this.frequencyStatBuilder_ = localRepeatedFieldBuilder;
          }
          else
          {
            this.frequencyStatBuilder_.addAllMessages(paramGlassUserEventPerformanceStats.frequencyStat_);
          }
      }
    }

    public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      GlassUserEventPerformanceStats localGlassUserEventPerformanceStats1 = null;
      try
      {
        GlassUserEventPerformanceStats localGlassUserEventPerformanceStats2 = (GlassUserEventPerformanceStats)GlassUserEventPerformanceStats.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
        return this;
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        localGlassUserEventPerformanceStats1 = (GlassUserEventPerformanceStats)localInvalidProtocolBufferException.getUnfinishedMessage();
        throw localInvalidProtocolBufferException;
      }
      finally
      {
        if (localGlassUserEventPerformanceStats1 != null)
          mergeFrom(localGlassUserEventPerformanceStats1);
      }
    }

    public Builder mergeFrom(Message paramMessage)
    {
      if ((paramMessage instanceof GlassUserEventPerformanceStats))
        return mergeFrom((GlassUserEventPerformanceStats)paramMessage);
      super.mergeFrom(paramMessage);
      return this;
    }

    public Builder removeFrequencyStat(int paramInt)
    {
      if (this.frequencyStatBuilder_ == null)
      {
        ensureFrequencyStatIsMutable();
        this.frequencyStat_.remove(paramInt);
        onChanged();
        return this;
      }
      this.frequencyStatBuilder_.remove(paramInt);
      return this;
    }

    public Builder setBatteryChargeWhenFullMah(int paramInt)
    {
      this.bitField0_ = (0x10 | this.bitField0_);
      this.batteryChargeWhenFullMah_ = paramInt;
      onChanged();
      return this;
    }

    public Builder setBatteryStateOfChargeMah(int paramInt)
    {
      this.bitField0_ = (0x8 | this.bitField0_);
      this.batteryStateOfChargeMah_ = paramInt;
      onChanged();
      return this;
    }

    public Builder setBatteryTemperatureMilliCentigrade(int paramInt)
    {
      this.bitField0_ = (0x20 | this.bitField0_);
      this.batteryTemperatureMilliCentigrade_ = paramInt;
      onChanged();
      return this;
    }

    public Builder setBoardTemperatureMilliCentigrade(int paramInt)
    {
      this.bitField0_ = (0x4 | this.bitField0_);
      this.boardTemperatureMilliCentigrade_ = paramInt;
      onChanged();
      return this;
    }

    public Builder setFrequencyStat(int paramInt, GlassUserEventFrequencyStat.Builder paramBuilder)
    {
      if (this.frequencyStatBuilder_ == null)
      {
        ensureFrequencyStatIsMutable();
        this.frequencyStat_.set(paramInt, paramBuilder.build());
        onChanged();
        return this;
      }
      this.frequencyStatBuilder_.setMessage(paramInt, paramBuilder.build());
      return this;
    }

    public Builder setFrequencyStat(int paramInt, GlassUserEventFrequencyStat paramGlassUserEventFrequencyStat)
    {
      if (this.frequencyStatBuilder_ == null)
      {
        if (paramGlassUserEventFrequencyStat == null)
          throw new NullPointerException();
        ensureFrequencyStatIsMutable();
        this.frequencyStat_.set(paramInt, paramGlassUserEventFrequencyStat);
        onChanged();
        return this;
      }
      this.frequencyStatBuilder_.setMessage(paramInt, paramGlassUserEventFrequencyStat);
      return this;
    }

    public Builder setTotalBytesSent(long paramLong)
    {
      this.bitField0_ = (0x40 | this.bitField0_);
      this.totalBytesSent_ = paramLong;
      onChanged();
      return this;
    }

    public Builder setTotalKernelMs(long paramLong)
    {
      this.bitField0_ = (0x2 | this.bitField0_);
      this.totalKernelMs_ = paramLong;
      onChanged();
      return this;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.logging.GlassUserEventPerformanceStats
 * JD-Core Version:    0.6.2
 */