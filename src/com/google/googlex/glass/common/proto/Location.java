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

public final class Location extends GeneratedMessage
  implements LocationOrBuilder
{
  public static final int ACCURACY_FIELD_NUMBER = 6;
  public static final int ADDRESS_FIELD_NUMBER = 4;
  public static final int DISPLAY_NAME_FIELD_NUMBER = 3;
  public static final int ID_FIELD_NUMBER = 7;
  public static final int LATITUDE_FIELD_NUMBER = 1;
  public static final int LEVEL_ID_FIELD_NUMBER = 8;
  public static final int LEVEL_NUMBER_FIELD_NUMBER = 9;
  public static final int LONGITUDE_FIELD_NUMBER = 2;
  public static Parser<Location> PARSER = new AbstractParser()
  {
    public Location parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return new Location(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
    }
  };
  public static final int SOURCE_FIELD_NUMBER = 10;
  public static final int TIMESTAMP_FIELD_NUMBER = 5;
  private static final Location defaultInstance;
  private static volatile MutableMessage mutableDefault = null;
  private static final long serialVersionUID;
  private double accuracy_;
  private Object address_;
  private int bitField0_;
  private Object displayName_;
  private Object id_;
  private double latitude_;
  private Object levelId_;
  private float levelNumber_;
  private double longitude_;
  private byte memoizedIsInitialized = -1;
  private int memoizedSerializedSize = -1;
  private Object source_;
  private long timestamp_;
  private final UnknownFieldSet unknownFields;

  static
  {
    defaultInstance = new Location(true);
    defaultInstance.initFields();
  }

  // ERROR //
  private Location(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 80	com/google/protobuf/GeneratedMessage:<init>	()V
    //   4: aload_0
    //   5: iconst_m1
    //   6: putfield 82	com/google/googlex/glass/common/proto/Location:memoizedIsInitialized	B
    //   9: aload_0
    //   10: iconst_m1
    //   11: putfield 84	com/google/googlex/glass/common/proto/Location:memoizedSerializedSize	I
    //   14: aload_0
    //   15: invokespecial 74	com/google/googlex/glass/common/proto/Location:initFields	()V
    //   18: invokestatic 90	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
    //   21: astore_3
    //   22: iconst_0
    //   23: istore 4
    //   25: iload 4
    //   27: ifne +392 -> 419
    //   30: aload_1
    //   31: invokevirtual 96	com/google/protobuf/CodedInputStream:readTag	()I
    //   34: istore 8
    //   36: iload 8
    //   38: lookupswitch	default:+98->136, 0:+394->432, 9:+116->154, 17:+164->202, 26:+205->243, 34:+228->266, 40:+251->289, 49:+272->310, 58:+294->332, 66:+315->353, 77:+337->375, 82:+360->398
    //   137: aload_1
    //   138: aload_3
    //   139: aload_2
    //   140: iload 8
    //   142: invokevirtual 100	com/google/googlex/glass/common/proto/Location:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    //   145: ifne -120 -> 25
    //   148: iconst_1
    //   149: istore 4
    //   151: goto -126 -> 25
    //   154: aload_0
    //   155: bipush 8
    //   157: aload_0
    //   158: getfield 102	com/google/googlex/glass/common/proto/Location:bitField0_	I
    //   161: ior
    //   162: putfield 102	com/google/googlex/glass/common/proto/Location:bitField0_	I
    //   165: aload_0
    //   166: aload_1
    //   167: invokevirtual 106	com/google/protobuf/CodedInputStream:readDouble	()D
    //   170: putfield 108	com/google/googlex/glass/common/proto/Location:latitude_	D
    //   173: goto -148 -> 25
    //   176: astore 7
    //   178: aload 7
    //   180: aload_0
    //   181: invokevirtual 112	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   184: athrow
    //   185: astore 6
    //   187: aload_0
    //   188: aload_3
    //   189: invokevirtual 118	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   192: putfield 120	com/google/googlex/glass/common/proto/Location:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   195: aload_0
    //   196: invokevirtual 123	com/google/googlex/glass/common/proto/Location:makeExtensionsImmutable	()V
    //   199: aload 6
    //   201: athrow
    //   202: aload_0
    //   203: bipush 16
    //   205: aload_0
    //   206: getfield 102	com/google/googlex/glass/common/proto/Location:bitField0_	I
    //   209: ior
    //   210: putfield 102	com/google/googlex/glass/common/proto/Location:bitField0_	I
    //   213: aload_0
    //   214: aload_1
    //   215: invokevirtual 106	com/google/protobuf/CodedInputStream:readDouble	()D
    //   218: putfield 125	com/google/googlex/glass/common/proto/Location:longitude_	D
    //   221: goto -196 -> 25
    //   224: astore 5
    //   226: new 77	com/google/protobuf/InvalidProtocolBufferException
    //   229: dup
    //   230: aload 5
    //   232: invokevirtual 129	java/io/IOException:getMessage	()Ljava/lang/String;
    //   235: invokespecial 132	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
    //   238: aload_0
    //   239: invokevirtual 112	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   242: athrow
    //   243: aload_0
    //   244: sipush 256
    //   247: aload_0
    //   248: getfield 102	com/google/googlex/glass/common/proto/Location:bitField0_	I
    //   251: ior
    //   252: putfield 102	com/google/googlex/glass/common/proto/Location:bitField0_	I
    //   255: aload_0
    //   256: aload_1
    //   257: invokevirtual 136	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   260: putfield 138	com/google/googlex/glass/common/proto/Location:displayName_	Ljava/lang/Object;
    //   263: goto -238 -> 25
    //   266: aload_0
    //   267: sipush 512
    //   270: aload_0
    //   271: getfield 102	com/google/googlex/glass/common/proto/Location:bitField0_	I
    //   274: ior
    //   275: putfield 102	com/google/googlex/glass/common/proto/Location:bitField0_	I
    //   278: aload_0
    //   279: aload_1
    //   280: invokevirtual 136	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   283: putfield 140	com/google/googlex/glass/common/proto/Location:address_	Ljava/lang/Object;
    //   286: goto -261 -> 25
    //   289: aload_0
    //   290: iconst_4
    //   291: aload_0
    //   292: getfield 102	com/google/googlex/glass/common/proto/Location:bitField0_	I
    //   295: ior
    //   296: putfield 102	com/google/googlex/glass/common/proto/Location:bitField0_	I
    //   299: aload_0
    //   300: aload_1
    //   301: invokevirtual 144	com/google/protobuf/CodedInputStream:readUInt64	()J
    //   304: putfield 146	com/google/googlex/glass/common/proto/Location:timestamp_	J
    //   307: goto -282 -> 25
    //   310: aload_0
    //   311: bipush 32
    //   313: aload_0
    //   314: getfield 102	com/google/googlex/glass/common/proto/Location:bitField0_	I
    //   317: ior
    //   318: putfield 102	com/google/googlex/glass/common/proto/Location:bitField0_	I
    //   321: aload_0
    //   322: aload_1
    //   323: invokevirtual 106	com/google/protobuf/CodedInputStream:readDouble	()D
    //   326: putfield 148	com/google/googlex/glass/common/proto/Location:accuracy_	D
    //   329: goto -304 -> 25
    //   332: aload_0
    //   333: iconst_1
    //   334: aload_0
    //   335: getfield 102	com/google/googlex/glass/common/proto/Location:bitField0_	I
    //   338: ior
    //   339: putfield 102	com/google/googlex/glass/common/proto/Location:bitField0_	I
    //   342: aload_0
    //   343: aload_1
    //   344: invokevirtual 136	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   347: putfield 150	com/google/googlex/glass/common/proto/Location:id_	Ljava/lang/Object;
    //   350: goto -325 -> 25
    //   353: aload_0
    //   354: bipush 64
    //   356: aload_0
    //   357: getfield 102	com/google/googlex/glass/common/proto/Location:bitField0_	I
    //   360: ior
    //   361: putfield 102	com/google/googlex/glass/common/proto/Location:bitField0_	I
    //   364: aload_0
    //   365: aload_1
    //   366: invokevirtual 136	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   369: putfield 152	com/google/googlex/glass/common/proto/Location:levelId_	Ljava/lang/Object;
    //   372: goto -347 -> 25
    //   375: aload_0
    //   376: sipush 128
    //   379: aload_0
    //   380: getfield 102	com/google/googlex/glass/common/proto/Location:bitField0_	I
    //   383: ior
    //   384: putfield 102	com/google/googlex/glass/common/proto/Location:bitField0_	I
    //   387: aload_0
    //   388: aload_1
    //   389: invokevirtual 156	com/google/protobuf/CodedInputStream:readFloat	()F
    //   392: putfield 158	com/google/googlex/glass/common/proto/Location:levelNumber_	F
    //   395: goto -370 -> 25
    //   398: aload_0
    //   399: iconst_2
    //   400: aload_0
    //   401: getfield 102	com/google/googlex/glass/common/proto/Location:bitField0_	I
    //   404: ior
    //   405: putfield 102	com/google/googlex/glass/common/proto/Location:bitField0_	I
    //   408: aload_0
    //   409: aload_1
    //   410: invokevirtual 136	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   413: putfield 160	com/google/googlex/glass/common/proto/Location:source_	Ljava/lang/Object;
    //   416: goto -391 -> 25
    //   419: aload_0
    //   420: aload_3
    //   421: invokevirtual 118	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   424: putfield 120	com/google/googlex/glass/common/proto/Location:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   427: aload_0
    //   428: invokevirtual 123	com/google/googlex/glass/common/proto/Location:makeExtensionsImmutable	()V
    //   431: return
    //   432: iconst_1
    //   433: istore 4
    //   435: goto -410 -> 25
    //
    // Exception table:
    //   from	to	target	type
    //   30	36	176	com/google/protobuf/InvalidProtocolBufferException
    //   136	148	176	com/google/protobuf/InvalidProtocolBufferException
    //   154	173	176	com/google/protobuf/InvalidProtocolBufferException
    //   202	221	176	com/google/protobuf/InvalidProtocolBufferException
    //   243	263	176	com/google/protobuf/InvalidProtocolBufferException
    //   266	286	176	com/google/protobuf/InvalidProtocolBufferException
    //   289	307	176	com/google/protobuf/InvalidProtocolBufferException
    //   310	329	176	com/google/protobuf/InvalidProtocolBufferException
    //   332	350	176	com/google/protobuf/InvalidProtocolBufferException
    //   353	372	176	com/google/protobuf/InvalidProtocolBufferException
    //   375	395	176	com/google/protobuf/InvalidProtocolBufferException
    //   398	416	176	com/google/protobuf/InvalidProtocolBufferException
    //   30	36	185	finally
    //   136	148	185	finally
    //   154	173	185	finally
    //   178	185	185	finally
    //   202	221	185	finally
    //   226	243	185	finally
    //   243	263	185	finally
    //   266	286	185	finally
    //   289	307	185	finally
    //   310	329	185	finally
    //   332	350	185	finally
    //   353	372	185	finally
    //   375	395	185	finally
    //   398	416	185	finally
    //   30	36	224	java/io/IOException
    //   136	148	224	java/io/IOException
    //   154	173	224	java/io/IOException
    //   202	221	224	java/io/IOException
    //   243	263	224	java/io/IOException
    //   266	286	224	java/io/IOException
    //   289	307	224	java/io/IOException
    //   310	329	224	java/io/IOException
    //   332	350	224	java/io/IOException
    //   353	372	224	java/io/IOException
    //   375	395	224	java/io/IOException
    //   398	416	224	java/io/IOException
  }

  private Location(GeneratedMessage.Builder<?> paramBuilder)
  {
    super(paramBuilder);
    this.unknownFields = paramBuilder.getUnknownFields();
  }

  private Location(boolean paramBoolean)
  {
    this.unknownFields = UnknownFieldSet.getDefaultInstance();
  }

  public static Location getDefaultInstance()
  {
    return defaultInstance;
  }

  public static final Descriptors.Descriptor getDescriptor()
  {
    return Timeline.internal_static_googlex_glass_common_proto_Location_descriptor;
  }

  private void initFields()
  {
    this.id_ = "";
    this.source_ = "";
    this.timestamp_ = 0L;
    this.latitude_ = 0.0D;
    this.longitude_ = 0.0D;
    this.accuracy_ = 0.0D;
    this.levelId_ = "";
    this.levelNumber_ = 0.0F;
    this.displayName_ = "";
    this.address_ = "";
  }

  public static Builder newBuilder()
  {
    return Builder.access$100();
  }

  public static Builder newBuilder(Location paramLocation)
  {
    return newBuilder().mergeFrom(paramLocation);
  }

  public static Location parseDelimitedFrom(InputStream paramInputStream)
    throws IOException
  {
    return (Location)PARSER.parseDelimitedFrom(paramInputStream);
  }

  public static Location parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (Location)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static Location parseFrom(ByteString paramByteString)
    throws InvalidProtocolBufferException
  {
    return (Location)PARSER.parseFrom(paramByteString);
  }

  public static Location parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (Location)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
  }

  public static Location parseFrom(CodedInputStream paramCodedInputStream)
    throws IOException
  {
    return (Location)PARSER.parseFrom(paramCodedInputStream);
  }

  public static Location parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (Location)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
  }

  public static Location parseFrom(InputStream paramInputStream)
    throws IOException
  {
    return (Location)PARSER.parseFrom(paramInputStream);
  }

  public static Location parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (Location)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static Location parseFrom(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    return (Location)PARSER.parseFrom(paramArrayOfByte);
  }

  public static Location parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (Location)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
  }

  public double getAccuracy()
  {
    return this.accuracy_;
  }

  public String getAddress()
  {
    Object localObject = this.address_;
    if ((localObject instanceof String))
      return (String)localObject;
    ByteString localByteString = (ByteString)localObject;
    String str = localByteString.toStringUtf8();
    if (localByteString.isValidUtf8())
      this.address_ = str;
    return str;
  }

  public ByteString getAddressBytes()
  {
    Object localObject = this.address_;
    if ((localObject instanceof String))
    {
      ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
      this.address_ = localByteString;
      return localByteString;
    }
    return (ByteString)localObject;
  }

  public Location getDefaultInstanceForType()
  {
    return defaultInstance;
  }

  public String getDisplayName()
  {
    Object localObject = this.displayName_;
    if ((localObject instanceof String))
      return (String)localObject;
    ByteString localByteString = (ByteString)localObject;
    String str = localByteString.toStringUtf8();
    if (localByteString.isValidUtf8())
      this.displayName_ = str;
    return str;
  }

  public ByteString getDisplayNameBytes()
  {
    Object localObject = this.displayName_;
    if ((localObject instanceof String))
    {
      ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
      this.displayName_ = localByteString;
      return localByteString;
    }
    return (ByteString)localObject;
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

  public double getLatitude()
  {
    return this.latitude_;
  }

  public String getLevelId()
  {
    Object localObject = this.levelId_;
    if ((localObject instanceof String))
      return (String)localObject;
    ByteString localByteString = (ByteString)localObject;
    String str = localByteString.toStringUtf8();
    if (localByteString.isValidUtf8())
      this.levelId_ = str;
    return str;
  }

  public ByteString getLevelIdBytes()
  {
    Object localObject = this.levelId_;
    if ((localObject instanceof String))
    {
      ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
      this.levelId_ = localByteString;
      return localByteString;
    }
    return (ByteString)localObject;
  }

  public float getLevelNumber()
  {
    return this.levelNumber_;
  }

  public double getLongitude()
  {
    return this.longitude_;
  }

  public Parser<Location> getParserForType()
  {
    return PARSER;
  }

  public int getSerializedSize()
  {
    int i = this.memoizedSerializedSize;
    if (i != -1)
      return i;
    int j = 0x8 & this.bitField0_;
    int k = 0;
    if (j == 8)
      k = 0 + CodedOutputStream.computeDoubleSize(1, this.latitude_);
    if ((0x10 & this.bitField0_) == 16)
      k += CodedOutputStream.computeDoubleSize(2, this.longitude_);
    if ((0x100 & this.bitField0_) == 256)
      k += CodedOutputStream.computeBytesSize(3, getDisplayNameBytes());
    if ((0x200 & this.bitField0_) == 512)
      k += CodedOutputStream.computeBytesSize(4, getAddressBytes());
    if ((0x4 & this.bitField0_) == 4)
      k += CodedOutputStream.computeUInt64Size(5, this.timestamp_);
    if ((0x20 & this.bitField0_) == 32)
      k += CodedOutputStream.computeDoubleSize(6, this.accuracy_);
    if ((0x1 & this.bitField0_) == 1)
      k += CodedOutputStream.computeBytesSize(7, getIdBytes());
    if ((0x40 & this.bitField0_) == 64)
      k += CodedOutputStream.computeBytesSize(8, getLevelIdBytes());
    if ((0x80 & this.bitField0_) == 128)
      k += CodedOutputStream.computeFloatSize(9, this.levelNumber_);
    if ((0x2 & this.bitField0_) == 2)
      k += CodedOutputStream.computeBytesSize(10, getSourceBytes());
    int m = k + getUnknownFields().getSerializedSize();
    this.memoizedSerializedSize = m;
    return m;
  }

  public String getSource()
  {
    Object localObject = this.source_;
    if ((localObject instanceof String))
      return (String)localObject;
    ByteString localByteString = (ByteString)localObject;
    String str = localByteString.toStringUtf8();
    if (localByteString.isValidUtf8())
      this.source_ = str;
    return str;
  }

  public ByteString getSourceBytes()
  {
    Object localObject = this.source_;
    if ((localObject instanceof String))
    {
      ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
      this.source_ = localByteString;
      return localByteString;
    }
    return (ByteString)localObject;
  }

  public long getTimestamp()
  {
    return this.timestamp_;
  }

  public final UnknownFieldSet getUnknownFields()
  {
    return this.unknownFields;
  }

  public boolean hasAccuracy()
  {
    return (0x20 & this.bitField0_) == 32;
  }

  public boolean hasAddress()
  {
    return (0x200 & this.bitField0_) == 512;
  }

  public boolean hasDisplayName()
  {
    return (0x100 & this.bitField0_) == 256;
  }

  public boolean hasId()
  {
    return (0x1 & this.bitField0_) == 1;
  }

  public boolean hasLatitude()
  {
    return (0x8 & this.bitField0_) == 8;
  }

  public boolean hasLevelId()
  {
    return (0x40 & this.bitField0_) == 64;
  }

  public boolean hasLevelNumber()
  {
    return (0x80 & this.bitField0_) == 128;
  }

  public boolean hasLongitude()
  {
    return (0x10 & this.bitField0_) == 16;
  }

  public boolean hasSource()
  {
    return (0x2 & this.bitField0_) == 2;
  }

  public boolean hasTimestamp()
  {
    return (0x4 & this.bitField0_) == 4;
  }

  protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
  {
    return Timeline.internal_static_googlex_glass_common_proto_Location_fieldAccessorTable.ensureFieldAccessorsInitialized(Location.class, Builder.class);
  }

  protected MutableMessage internalMutableDefault()
  {
    if (mutableDefault == null)
      mutableDefault = internalMutableDefault("com.google.googlex.glass.common.proto.MutableTimeline$Location");
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
    if ((0x8 & this.bitField0_) == 8)
      paramCodedOutputStream.writeDouble(1, this.latitude_);
    if ((0x10 & this.bitField0_) == 16)
      paramCodedOutputStream.writeDouble(2, this.longitude_);
    if ((0x100 & this.bitField0_) == 256)
      paramCodedOutputStream.writeBytes(3, getDisplayNameBytes());
    if ((0x200 & this.bitField0_) == 512)
      paramCodedOutputStream.writeBytes(4, getAddressBytes());
    if ((0x4 & this.bitField0_) == 4)
      paramCodedOutputStream.writeUInt64(5, this.timestamp_);
    if ((0x20 & this.bitField0_) == 32)
      paramCodedOutputStream.writeDouble(6, this.accuracy_);
    if ((0x1 & this.bitField0_) == 1)
      paramCodedOutputStream.writeBytes(7, getIdBytes());
    if ((0x40 & this.bitField0_) == 64)
      paramCodedOutputStream.writeBytes(8, getLevelIdBytes());
    if ((0x80 & this.bitField0_) == 128)
      paramCodedOutputStream.writeFloat(9, this.levelNumber_);
    if ((0x2 & this.bitField0_) == 2)
      paramCodedOutputStream.writeBytes(10, getSourceBytes());
    getUnknownFields().writeTo(paramCodedOutputStream);
  }

  public static final class Builder extends GeneratedMessage.Builder<Builder>
    implements LocationOrBuilder
  {
    private double accuracy_;
    private Object address_ = "";
    private int bitField0_;
    private Object displayName_ = "";
    private Object id_ = "";
    private double latitude_;
    private Object levelId_ = "";
    private float levelNumber_;
    private double longitude_;
    private Object source_ = "";
    private long timestamp_;

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
      return Timeline.internal_static_googlex_glass_common_proto_Location_descriptor;
    }

    private void maybeForceBuilderInitialization()
    {
      if (Location.alwaysUseFieldBuilders);
    }

    public Location build()
    {
      Location localLocation = buildPartial();
      if (!localLocation.isInitialized())
        throw newUninitializedMessageException(localLocation);
      return localLocation;
    }

    public Location buildPartial()
    {
      Location localLocation = new Location(this, null);
      int i = this.bitField0_;
      int j = i & 0x1;
      int k = 0;
      if (j == 1)
        k = 0x0 | 0x1;
      Location.access$502(localLocation, this.id_);
      if ((i & 0x2) == 2)
        k |= 2;
      Location.access$602(localLocation, this.source_);
      if ((i & 0x4) == 4)
        k |= 4;
      Location.access$702(localLocation, this.timestamp_);
      if ((i & 0x8) == 8)
        k |= 8;
      Location.access$802(localLocation, this.latitude_);
      if ((i & 0x10) == 16)
        k |= 16;
      Location.access$902(localLocation, this.longitude_);
      if ((i & 0x20) == 32)
        k |= 32;
      Location.access$1002(localLocation, this.accuracy_);
      if ((i & 0x40) == 64)
        k |= 64;
      Location.access$1102(localLocation, this.levelId_);
      if ((i & 0x80) == 128)
        k |= 128;
      Location.access$1202(localLocation, this.levelNumber_);
      if ((i & 0x100) == 256)
        k |= 256;
      Location.access$1302(localLocation, this.displayName_);
      if ((i & 0x200) == 512)
        k |= 512;
      Location.access$1402(localLocation, this.address_);
      Location.access$1502(localLocation, k);
      onBuilt();
      return localLocation;
    }

    public Builder clear()
    {
      super.clear();
      this.id_ = "";
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      this.source_ = "";
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      this.timestamp_ = 0L;
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      this.latitude_ = 0.0D;
      this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
      this.longitude_ = 0.0D;
      this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
      this.accuracy_ = 0.0D;
      this.bitField0_ = (0xFFFFFFDF & this.bitField0_);
      this.levelId_ = "";
      this.bitField0_ = (0xFFFFFFBF & this.bitField0_);
      this.levelNumber_ = 0.0F;
      this.bitField0_ = (0xFFFFFF7F & this.bitField0_);
      this.displayName_ = "";
      this.bitField0_ = (0xFFFFFEFF & this.bitField0_);
      this.address_ = "";
      this.bitField0_ = (0xFFFFFDFF & this.bitField0_);
      return this;
    }

    public Builder clearAccuracy()
    {
      this.bitField0_ = (0xFFFFFFDF & this.bitField0_);
      this.accuracy_ = 0.0D;
      onChanged();
      return this;
    }

    public Builder clearAddress()
    {
      this.bitField0_ = (0xFFFFFDFF & this.bitField0_);
      this.address_ = Location.getDefaultInstance().getAddress();
      onChanged();
      return this;
    }

    public Builder clearDisplayName()
    {
      this.bitField0_ = (0xFFFFFEFF & this.bitField0_);
      this.displayName_ = Location.getDefaultInstance().getDisplayName();
      onChanged();
      return this;
    }

    public Builder clearId()
    {
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      this.id_ = Location.getDefaultInstance().getId();
      onChanged();
      return this;
    }

    public Builder clearLatitude()
    {
      this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
      this.latitude_ = 0.0D;
      onChanged();
      return this;
    }

    public Builder clearLevelId()
    {
      this.bitField0_ = (0xFFFFFFBF & this.bitField0_);
      this.levelId_ = Location.getDefaultInstance().getLevelId();
      onChanged();
      return this;
    }

    public Builder clearLevelNumber()
    {
      this.bitField0_ = (0xFFFFFF7F & this.bitField0_);
      this.levelNumber_ = 0.0F;
      onChanged();
      return this;
    }

    public Builder clearLongitude()
    {
      this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
      this.longitude_ = 0.0D;
      onChanged();
      return this;
    }

    public Builder clearSource()
    {
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      this.source_ = Location.getDefaultInstance().getSource();
      onChanged();
      return this;
    }

    public Builder clearTimestamp()
    {
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      this.timestamp_ = 0L;
      onChanged();
      return this;
    }

    public Builder clone()
    {
      return create().mergeFrom(buildPartial());
    }

    public double getAccuracy()
    {
      return this.accuracy_;
    }

    public String getAddress()
    {
      Object localObject = this.address_;
      if (!(localObject instanceof String))
      {
        String str = ((ByteString)localObject).toStringUtf8();
        this.address_ = str;
        return str;
      }
      return (String)localObject;
    }

    public ByteString getAddressBytes()
    {
      Object localObject = this.address_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.address_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public Location getDefaultInstanceForType()
    {
      return Location.getDefaultInstance();
    }

    public Descriptors.Descriptor getDescriptorForType()
    {
      return Timeline.internal_static_googlex_glass_common_proto_Location_descriptor;
    }

    public String getDisplayName()
    {
      Object localObject = this.displayName_;
      if (!(localObject instanceof String))
      {
        String str = ((ByteString)localObject).toStringUtf8();
        this.displayName_ = str;
        return str;
      }
      return (String)localObject;
    }

    public ByteString getDisplayNameBytes()
    {
      Object localObject = this.displayName_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.displayName_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
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

    public double getLatitude()
    {
      return this.latitude_;
    }

    public String getLevelId()
    {
      Object localObject = this.levelId_;
      if (!(localObject instanceof String))
      {
        String str = ((ByteString)localObject).toStringUtf8();
        this.levelId_ = str;
        return str;
      }
      return (String)localObject;
    }

    public ByteString getLevelIdBytes()
    {
      Object localObject = this.levelId_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.levelId_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public float getLevelNumber()
    {
      return this.levelNumber_;
    }

    public double getLongitude()
    {
      return this.longitude_;
    }

    public String getSource()
    {
      Object localObject = this.source_;
      if (!(localObject instanceof String))
      {
        String str = ((ByteString)localObject).toStringUtf8();
        this.source_ = str;
        return str;
      }
      return (String)localObject;
    }

    public ByteString getSourceBytes()
    {
      Object localObject = this.source_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.source_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public long getTimestamp()
    {
      return this.timestamp_;
    }

    public boolean hasAccuracy()
    {
      return (0x20 & this.bitField0_) == 32;
    }

    public boolean hasAddress()
    {
      return (0x200 & this.bitField0_) == 512;
    }

    public boolean hasDisplayName()
    {
      return (0x100 & this.bitField0_) == 256;
    }

    public boolean hasId()
    {
      return (0x1 & this.bitField0_) == 1;
    }

    public boolean hasLatitude()
    {
      return (0x8 & this.bitField0_) == 8;
    }

    public boolean hasLevelId()
    {
      return (0x40 & this.bitField0_) == 64;
    }

    public boolean hasLevelNumber()
    {
      return (0x80 & this.bitField0_) == 128;
    }

    public boolean hasLongitude()
    {
      return (0x10 & this.bitField0_) == 16;
    }

    public boolean hasSource()
    {
      return (0x2 & this.bitField0_) == 2;
    }

    public boolean hasTimestamp()
    {
      return (0x4 & this.bitField0_) == 4;
    }

    protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return Timeline.internal_static_googlex_glass_common_proto_Location_fieldAccessorTable.ensureFieldAccessorsInitialized(Location.class, Builder.class);
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Builder mergeFrom(Location paramLocation)
    {
      if (paramLocation == Location.getDefaultInstance())
        return this;
      if (paramLocation.hasId())
      {
        this.bitField0_ = (0x1 | this.bitField0_);
        this.id_ = paramLocation.id_;
        onChanged();
      }
      if (paramLocation.hasSource())
      {
        this.bitField0_ = (0x2 | this.bitField0_);
        this.source_ = paramLocation.source_;
        onChanged();
      }
      if (paramLocation.hasTimestamp())
        setTimestamp(paramLocation.getTimestamp());
      if (paramLocation.hasLatitude())
        setLatitude(paramLocation.getLatitude());
      if (paramLocation.hasLongitude())
        setLongitude(paramLocation.getLongitude());
      if (paramLocation.hasAccuracy())
        setAccuracy(paramLocation.getAccuracy());
      if (paramLocation.hasLevelId())
      {
        this.bitField0_ = (0x40 | this.bitField0_);
        this.levelId_ = paramLocation.levelId_;
        onChanged();
      }
      if (paramLocation.hasLevelNumber())
        setLevelNumber(paramLocation.getLevelNumber());
      if (paramLocation.hasDisplayName())
      {
        this.bitField0_ = (0x100 | this.bitField0_);
        this.displayName_ = paramLocation.displayName_;
        onChanged();
      }
      if (paramLocation.hasAddress())
      {
        this.bitField0_ = (0x200 | this.bitField0_);
        this.address_ = paramLocation.address_;
        onChanged();
      }
      mergeUnknownFields(paramLocation.getUnknownFields());
      return this;
    }

    public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      Location localLocation1 = null;
      try
      {
        Location localLocation2 = (Location)Location.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
        return this;
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        localLocation1 = (Location)localInvalidProtocolBufferException.getUnfinishedMessage();
        throw localInvalidProtocolBufferException;
      }
      finally
      {
        if (localLocation1 != null)
          mergeFrom(localLocation1);
      }
    }

    public Builder mergeFrom(Message paramMessage)
    {
      if ((paramMessage instanceof Location))
        return mergeFrom((Location)paramMessage);
      super.mergeFrom(paramMessage);
      return this;
    }

    public Builder setAccuracy(double paramDouble)
    {
      this.bitField0_ = (0x20 | this.bitField0_);
      this.accuracy_ = paramDouble;
      onChanged();
      return this;
    }

    public Builder setAddress(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x200 | this.bitField0_);
      this.address_ = paramString;
      onChanged();
      return this;
    }

    public Builder setAddressBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x200 | this.bitField0_);
      this.address_ = paramByteString;
      onChanged();
      return this;
    }

    public Builder setDisplayName(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x100 | this.bitField0_);
      this.displayName_ = paramString;
      onChanged();
      return this;
    }

    public Builder setDisplayNameBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x100 | this.bitField0_);
      this.displayName_ = paramByteString;
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

    public Builder setLatitude(double paramDouble)
    {
      this.bitField0_ = (0x8 | this.bitField0_);
      this.latitude_ = paramDouble;
      onChanged();
      return this;
    }

    public Builder setLevelId(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x40 | this.bitField0_);
      this.levelId_ = paramString;
      onChanged();
      return this;
    }

    public Builder setLevelIdBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x40 | this.bitField0_);
      this.levelId_ = paramByteString;
      onChanged();
      return this;
    }

    public Builder setLevelNumber(float paramFloat)
    {
      this.bitField0_ = (0x80 | this.bitField0_);
      this.levelNumber_ = paramFloat;
      onChanged();
      return this;
    }

    public Builder setLongitude(double paramDouble)
    {
      this.bitField0_ = (0x10 | this.bitField0_);
      this.longitude_ = paramDouble;
      onChanged();
      return this;
    }

    public Builder setSource(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x2 | this.bitField0_);
      this.source_ = paramString;
      onChanged();
      return this;
    }

    public Builder setSourceBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x2 | this.bitField0_);
      this.source_ = paramByteString;
      onChanged();
      return this;
    }

    public Builder setTimestamp(long paramLong)
    {
      this.bitField0_ = (0x4 | this.bitField0_);
      this.timestamp_ = paramLong;
      onChanged();
      return this;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.Location
 * JD-Core Version:    0.6.2
 */