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

public final class Select extends GeneratedMessage
  implements SelectOrBuilder
{
  public static final int CONTINUATION_TOKEN_FIELD_NUMBER = 4;
  public static final int MAX_ITEMS_FIELD_NUMBER = 1;
  public static final int MODIFIED_AFTER_TIME_FIELD_NUMBER = 7;
  public static final int MODIFIED_BEFORE_TIME_FIELD_NUMBER = 8;
  public static Parser<Select> PARSER = new AbstractParser()
  {
    public Select parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return new Select(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
    }
  };
  public static final int START_TIME_FIELD_NUMBER = 9;
  public static final int WRITE_AFTER_TIME_FIELD_NUMBER = 2;
  public static final int WRITE_BEFORE_TIME_FIELD_NUMBER = 3;
  private static final Select defaultInstance;
  private static volatile MutableMessage mutableDefault = null;
  private static final long serialVersionUID;
  private int bitField0_;
  private ByteString continuationToken_;
  private int maxItems_;
  private byte memoizedIsInitialized = -1;
  private int memoizedSerializedSize = -1;
  private long modifiedAfterTime_;
  private long modifiedBeforeTime_;
  private long startTime_;
  private final UnknownFieldSet unknownFields;
  private long writeAfterTime_;
  private long writeBeforeTime_;

  static
  {
    defaultInstance = new Select(true);
    defaultInstance.initFields();
  }

  // ERROR //
  private Select(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 69	com/google/protobuf/GeneratedMessage:<init>	()V
    //   4: aload_0
    //   5: iconst_m1
    //   6: putfield 71	com/google/googlex/glass/common/proto/Select:memoizedIsInitialized	B
    //   9: aload_0
    //   10: iconst_m1
    //   11: putfield 73	com/google/googlex/glass/common/proto/Select:memoizedSerializedSize	I
    //   14: aload_0
    //   15: invokespecial 63	com/google/googlex/glass/common/proto/Select:initFields	()V
    //   18: invokestatic 79	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
    //   21: astore_3
    //   22: iconst_0
    //   23: istore 4
    //   25: iload 4
    //   27: ifne +299 -> 326
    //   30: aload_1
    //   31: invokevirtual 85	com/google/protobuf/CodedInputStream:readTag	()I
    //   34: istore 8
    //   36: iload 8
    //   38: lookupswitch	default:+74->112, 0:+301->339, 8:+92->130, 16:+139->177, 24:+180->218, 34:+202->240, 56:+224->262, 64:+245->283, 72:+266->304
    //   113: aload_1
    //   114: aload_3
    //   115: aload_2
    //   116: iload 8
    //   118: invokevirtual 89	com/google/googlex/glass/common/proto/Select:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    //   121: ifne -96 -> 25
    //   124: iconst_1
    //   125: istore 4
    //   127: goto -102 -> 25
    //   130: aload_0
    //   131: iconst_1
    //   132: aload_0
    //   133: getfield 91	com/google/googlex/glass/common/proto/Select:bitField0_	I
    //   136: ior
    //   137: putfield 91	com/google/googlex/glass/common/proto/Select:bitField0_	I
    //   140: aload_0
    //   141: aload_1
    //   142: invokevirtual 94	com/google/protobuf/CodedInputStream:readUInt32	()I
    //   145: putfield 96	com/google/googlex/glass/common/proto/Select:maxItems_	I
    //   148: goto -123 -> 25
    //   151: astore 7
    //   153: aload 7
    //   155: aload_0
    //   156: invokevirtual 100	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   159: athrow
    //   160: astore 6
    //   162: aload_0
    //   163: aload_3
    //   164: invokevirtual 106	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   167: putfield 108	com/google/googlex/glass/common/proto/Select:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   170: aload_0
    //   171: invokevirtual 111	com/google/googlex/glass/common/proto/Select:makeExtensionsImmutable	()V
    //   174: aload 6
    //   176: athrow
    //   177: aload_0
    //   178: bipush 8
    //   180: aload_0
    //   181: getfield 91	com/google/googlex/glass/common/proto/Select:bitField0_	I
    //   184: ior
    //   185: putfield 91	com/google/googlex/glass/common/proto/Select:bitField0_	I
    //   188: aload_0
    //   189: aload_1
    //   190: invokevirtual 115	com/google/protobuf/CodedInputStream:readUInt64	()J
    //   193: putfield 117	com/google/googlex/glass/common/proto/Select:writeAfterTime_	J
    //   196: goto -171 -> 25
    //   199: astore 5
    //   201: new 66	com/google/protobuf/InvalidProtocolBufferException
    //   204: dup
    //   205: aload 5
    //   207: invokevirtual 121	java/io/IOException:getMessage	()Ljava/lang/String;
    //   210: invokespecial 124	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
    //   213: aload_0
    //   214: invokevirtual 100	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   217: athrow
    //   218: aload_0
    //   219: bipush 16
    //   221: aload_0
    //   222: getfield 91	com/google/googlex/glass/common/proto/Select:bitField0_	I
    //   225: ior
    //   226: putfield 91	com/google/googlex/glass/common/proto/Select:bitField0_	I
    //   229: aload_0
    //   230: aload_1
    //   231: invokevirtual 115	com/google/protobuf/CodedInputStream:readUInt64	()J
    //   234: putfield 126	com/google/googlex/glass/common/proto/Select:writeBeforeTime_	J
    //   237: goto -212 -> 25
    //   240: aload_0
    //   241: bipush 64
    //   243: aload_0
    //   244: getfield 91	com/google/googlex/glass/common/proto/Select:bitField0_	I
    //   247: ior
    //   248: putfield 91	com/google/googlex/glass/common/proto/Select:bitField0_	I
    //   251: aload_0
    //   252: aload_1
    //   253: invokevirtual 130	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   256: putfield 132	com/google/googlex/glass/common/proto/Select:continuationToken_	Lcom/google/protobuf/ByteString;
    //   259: goto -234 -> 25
    //   262: aload_0
    //   263: iconst_2
    //   264: aload_0
    //   265: getfield 91	com/google/googlex/glass/common/proto/Select:bitField0_	I
    //   268: ior
    //   269: putfield 91	com/google/googlex/glass/common/proto/Select:bitField0_	I
    //   272: aload_0
    //   273: aload_1
    //   274: invokevirtual 115	com/google/protobuf/CodedInputStream:readUInt64	()J
    //   277: putfield 134	com/google/googlex/glass/common/proto/Select:modifiedAfterTime_	J
    //   280: goto -255 -> 25
    //   283: aload_0
    //   284: iconst_4
    //   285: aload_0
    //   286: getfield 91	com/google/googlex/glass/common/proto/Select:bitField0_	I
    //   289: ior
    //   290: putfield 91	com/google/googlex/glass/common/proto/Select:bitField0_	I
    //   293: aload_0
    //   294: aload_1
    //   295: invokevirtual 115	com/google/protobuf/CodedInputStream:readUInt64	()J
    //   298: putfield 136	com/google/googlex/glass/common/proto/Select:modifiedBeforeTime_	J
    //   301: goto -276 -> 25
    //   304: aload_0
    //   305: bipush 32
    //   307: aload_0
    //   308: getfield 91	com/google/googlex/glass/common/proto/Select:bitField0_	I
    //   311: ior
    //   312: putfield 91	com/google/googlex/glass/common/proto/Select:bitField0_	I
    //   315: aload_0
    //   316: aload_1
    //   317: invokevirtual 115	com/google/protobuf/CodedInputStream:readUInt64	()J
    //   320: putfield 138	com/google/googlex/glass/common/proto/Select:startTime_	J
    //   323: goto -298 -> 25
    //   326: aload_0
    //   327: aload_3
    //   328: invokevirtual 106	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   331: putfield 108	com/google/googlex/glass/common/proto/Select:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   334: aload_0
    //   335: invokevirtual 111	com/google/googlex/glass/common/proto/Select:makeExtensionsImmutable	()V
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
    //   177	196	151	com/google/protobuf/InvalidProtocolBufferException
    //   218	237	151	com/google/protobuf/InvalidProtocolBufferException
    //   240	259	151	com/google/protobuf/InvalidProtocolBufferException
    //   262	280	151	com/google/protobuf/InvalidProtocolBufferException
    //   283	301	151	com/google/protobuf/InvalidProtocolBufferException
    //   304	323	151	com/google/protobuf/InvalidProtocolBufferException
    //   30	36	160	finally
    //   112	124	160	finally
    //   130	148	160	finally
    //   153	160	160	finally
    //   177	196	160	finally
    //   201	218	160	finally
    //   218	237	160	finally
    //   240	259	160	finally
    //   262	280	160	finally
    //   283	301	160	finally
    //   304	323	160	finally
    //   30	36	199	java/io/IOException
    //   112	124	199	java/io/IOException
    //   130	148	199	java/io/IOException
    //   177	196	199	java/io/IOException
    //   218	237	199	java/io/IOException
    //   240	259	199	java/io/IOException
    //   262	280	199	java/io/IOException
    //   283	301	199	java/io/IOException
    //   304	323	199	java/io/IOException
  }

  private Select(GeneratedMessage.Builder<?> paramBuilder)
  {
    super(paramBuilder);
    this.unknownFields = paramBuilder.getUnknownFields();
  }

  private Select(boolean paramBoolean)
  {
    this.unknownFields = UnknownFieldSet.getDefaultInstance();
  }

  public static Select getDefaultInstance()
  {
    return defaultInstance;
  }

  public static final Descriptors.Descriptor getDescriptor()
  {
    return Sync.internal_static_googlex_glass_common_proto_Select_descriptor;
  }

  private void initFields()
  {
    this.maxItems_ = 10;
    this.modifiedAfterTime_ = 0L;
    this.modifiedBeforeTime_ = 0L;
    this.writeAfterTime_ = 0L;
    this.writeBeforeTime_ = 0L;
    this.startTime_ = 0L;
    this.continuationToken_ = ByteString.EMPTY;
  }

  public static Builder newBuilder()
  {
    return Builder.access$100();
  }

  public static Builder newBuilder(Select paramSelect)
  {
    return newBuilder().mergeFrom(paramSelect);
  }

  public static Select parseDelimitedFrom(InputStream paramInputStream)
    throws IOException
  {
    return (Select)PARSER.parseDelimitedFrom(paramInputStream);
  }

  public static Select parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (Select)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static Select parseFrom(ByteString paramByteString)
    throws InvalidProtocolBufferException
  {
    return (Select)PARSER.parseFrom(paramByteString);
  }

  public static Select parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (Select)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
  }

  public static Select parseFrom(CodedInputStream paramCodedInputStream)
    throws IOException
  {
    return (Select)PARSER.parseFrom(paramCodedInputStream);
  }

  public static Select parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (Select)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
  }

  public static Select parseFrom(InputStream paramInputStream)
    throws IOException
  {
    return (Select)PARSER.parseFrom(paramInputStream);
  }

  public static Select parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (Select)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static Select parseFrom(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    return (Select)PARSER.parseFrom(paramArrayOfByte);
  }

  public static Select parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (Select)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
  }

  public ByteString getContinuationToken()
  {
    return this.continuationToken_;
  }

  public Select getDefaultInstanceForType()
  {
    return defaultInstance;
  }

  public int getMaxItems()
  {
    return this.maxItems_;
  }

  public long getModifiedAfterTime()
  {
    return this.modifiedAfterTime_;
  }

  public long getModifiedBeforeTime()
  {
    return this.modifiedBeforeTime_;
  }

  public Parser<Select> getParserForType()
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
      k = 0 + CodedOutputStream.computeUInt32Size(1, this.maxItems_);
    if ((0x8 & this.bitField0_) == 8)
      k += CodedOutputStream.computeUInt64Size(2, this.writeAfterTime_);
    if ((0x10 & this.bitField0_) == 16)
      k += CodedOutputStream.computeUInt64Size(3, this.writeBeforeTime_);
    if ((0x40 & this.bitField0_) == 64)
      k += CodedOutputStream.computeBytesSize(4, this.continuationToken_);
    if ((0x2 & this.bitField0_) == 2)
      k += CodedOutputStream.computeUInt64Size(7, this.modifiedAfterTime_);
    if ((0x4 & this.bitField0_) == 4)
      k += CodedOutputStream.computeUInt64Size(8, this.modifiedBeforeTime_);
    if ((0x20 & this.bitField0_) == 32)
      k += CodedOutputStream.computeUInt64Size(9, this.startTime_);
    int m = k + getUnknownFields().getSerializedSize();
    this.memoizedSerializedSize = m;
    return m;
  }

  public long getStartTime()
  {
    return this.startTime_;
  }

  public final UnknownFieldSet getUnknownFields()
  {
    return this.unknownFields;
  }

  public long getWriteAfterTime()
  {
    return this.writeAfterTime_;
  }

  public long getWriteBeforeTime()
  {
    return this.writeBeforeTime_;
  }

  public boolean hasContinuationToken()
  {
    return (0x40 & this.bitField0_) == 64;
  }

  public boolean hasMaxItems()
  {
    return (0x1 & this.bitField0_) == 1;
  }

  public boolean hasModifiedAfterTime()
  {
    return (0x2 & this.bitField0_) == 2;
  }

  public boolean hasModifiedBeforeTime()
  {
    return (0x4 & this.bitField0_) == 4;
  }

  public boolean hasStartTime()
  {
    return (0x20 & this.bitField0_) == 32;
  }

  public boolean hasWriteAfterTime()
  {
    return (0x8 & this.bitField0_) == 8;
  }

  public boolean hasWriteBeforeTime()
  {
    return (0x10 & this.bitField0_) == 16;
  }

  protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
  {
    return Sync.internal_static_googlex_glass_common_proto_Select_fieldAccessorTable.ensureFieldAccessorsInitialized(Select.class, Builder.class);
  }

  protected MutableMessage internalMutableDefault()
  {
    if (mutableDefault == null)
      mutableDefault = internalMutableDefault("com.google.googlex.glass.common.proto.MutableSync$Select");
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
      paramCodedOutputStream.writeUInt32(1, this.maxItems_);
    if ((0x8 & this.bitField0_) == 8)
      paramCodedOutputStream.writeUInt64(2, this.writeAfterTime_);
    if ((0x10 & this.bitField0_) == 16)
      paramCodedOutputStream.writeUInt64(3, this.writeBeforeTime_);
    if ((0x40 & this.bitField0_) == 64)
      paramCodedOutputStream.writeBytes(4, this.continuationToken_);
    if ((0x2 & this.bitField0_) == 2)
      paramCodedOutputStream.writeUInt64(7, this.modifiedAfterTime_);
    if ((0x4 & this.bitField0_) == 4)
      paramCodedOutputStream.writeUInt64(8, this.modifiedBeforeTime_);
    if ((0x20 & this.bitField0_) == 32)
      paramCodedOutputStream.writeUInt64(9, this.startTime_);
    getUnknownFields().writeTo(paramCodedOutputStream);
  }

  public static final class Builder extends GeneratedMessage.Builder<Builder>
    implements SelectOrBuilder
  {
    private int bitField0_;
    private ByteString continuationToken_ = ByteString.EMPTY;
    private int maxItems_ = 10;
    private long modifiedAfterTime_;
    private long modifiedBeforeTime_;
    private long startTime_;
    private long writeAfterTime_;
    private long writeBeforeTime_;

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
      return Sync.internal_static_googlex_glass_common_proto_Select_descriptor;
    }

    private void maybeForceBuilderInitialization()
    {
      if (Select.alwaysUseFieldBuilders);
    }

    public Select build()
    {
      Select localSelect = buildPartial();
      if (!localSelect.isInitialized())
        throw newUninitializedMessageException(localSelect);
      return localSelect;
    }

    public Select buildPartial()
    {
      Select localSelect = new Select(this, null);
      int i = this.bitField0_;
      int j = i & 0x1;
      int k = 0;
      if (j == 1)
        k = 0x0 | 0x1;
      Select.access$502(localSelect, this.maxItems_);
      if ((i & 0x2) == 2)
        k |= 2;
      Select.access$602(localSelect, this.modifiedAfterTime_);
      if ((i & 0x4) == 4)
        k |= 4;
      Select.access$702(localSelect, this.modifiedBeforeTime_);
      if ((i & 0x8) == 8)
        k |= 8;
      Select.access$802(localSelect, this.writeAfterTime_);
      if ((i & 0x10) == 16)
        k |= 16;
      Select.access$902(localSelect, this.writeBeforeTime_);
      if ((i & 0x20) == 32)
        k |= 32;
      Select.access$1002(localSelect, this.startTime_);
      if ((i & 0x40) == 64)
        k |= 64;
      Select.access$1102(localSelect, this.continuationToken_);
      Select.access$1202(localSelect, k);
      onBuilt();
      return localSelect;
    }

    public Builder clear()
    {
      super.clear();
      this.maxItems_ = 10;
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      this.modifiedAfterTime_ = 0L;
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      this.modifiedBeforeTime_ = 0L;
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      this.writeAfterTime_ = 0L;
      this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
      this.writeBeforeTime_ = 0L;
      this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
      this.startTime_ = 0L;
      this.bitField0_ = (0xFFFFFFDF & this.bitField0_);
      this.continuationToken_ = ByteString.EMPTY;
      this.bitField0_ = (0xFFFFFFBF & this.bitField0_);
      return this;
    }

    public Builder clearContinuationToken()
    {
      this.bitField0_ = (0xFFFFFFBF & this.bitField0_);
      this.continuationToken_ = Select.getDefaultInstance().getContinuationToken();
      onChanged();
      return this;
    }

    public Builder clearMaxItems()
    {
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      this.maxItems_ = 10;
      onChanged();
      return this;
    }

    public Builder clearModifiedAfterTime()
    {
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      this.modifiedAfterTime_ = 0L;
      onChanged();
      return this;
    }

    public Builder clearModifiedBeforeTime()
    {
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      this.modifiedBeforeTime_ = 0L;
      onChanged();
      return this;
    }

    public Builder clearStartTime()
    {
      this.bitField0_ = (0xFFFFFFDF & this.bitField0_);
      this.startTime_ = 0L;
      onChanged();
      return this;
    }

    public Builder clearWriteAfterTime()
    {
      this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
      this.writeAfterTime_ = 0L;
      onChanged();
      return this;
    }

    public Builder clearWriteBeforeTime()
    {
      this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
      this.writeBeforeTime_ = 0L;
      onChanged();
      return this;
    }

    public Builder clone()
    {
      return create().mergeFrom(buildPartial());
    }

    public ByteString getContinuationToken()
    {
      return this.continuationToken_;
    }

    public Select getDefaultInstanceForType()
    {
      return Select.getDefaultInstance();
    }

    public Descriptors.Descriptor getDescriptorForType()
    {
      return Sync.internal_static_googlex_glass_common_proto_Select_descriptor;
    }

    public int getMaxItems()
    {
      return this.maxItems_;
    }

    public long getModifiedAfterTime()
    {
      return this.modifiedAfterTime_;
    }

    public long getModifiedBeforeTime()
    {
      return this.modifiedBeforeTime_;
    }

    public long getStartTime()
    {
      return this.startTime_;
    }

    public long getWriteAfterTime()
    {
      return this.writeAfterTime_;
    }

    public long getWriteBeforeTime()
    {
      return this.writeBeforeTime_;
    }

    public boolean hasContinuationToken()
    {
      return (0x40 & this.bitField0_) == 64;
    }

    public boolean hasMaxItems()
    {
      return (0x1 & this.bitField0_) == 1;
    }

    public boolean hasModifiedAfterTime()
    {
      return (0x2 & this.bitField0_) == 2;
    }

    public boolean hasModifiedBeforeTime()
    {
      return (0x4 & this.bitField0_) == 4;
    }

    public boolean hasStartTime()
    {
      return (0x20 & this.bitField0_) == 32;
    }

    public boolean hasWriteAfterTime()
    {
      return (0x8 & this.bitField0_) == 8;
    }

    public boolean hasWriteBeforeTime()
    {
      return (0x10 & this.bitField0_) == 16;
    }

    protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return Sync.internal_static_googlex_glass_common_proto_Select_fieldAccessorTable.ensureFieldAccessorsInitialized(Select.class, Builder.class);
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Builder mergeFrom(Select paramSelect)
    {
      if (paramSelect == Select.getDefaultInstance())
        return this;
      if (paramSelect.hasMaxItems())
        setMaxItems(paramSelect.getMaxItems());
      if (paramSelect.hasModifiedAfterTime())
        setModifiedAfterTime(paramSelect.getModifiedAfterTime());
      if (paramSelect.hasModifiedBeforeTime())
        setModifiedBeforeTime(paramSelect.getModifiedBeforeTime());
      if (paramSelect.hasWriteAfterTime())
        setWriteAfterTime(paramSelect.getWriteAfterTime());
      if (paramSelect.hasWriteBeforeTime())
        setWriteBeforeTime(paramSelect.getWriteBeforeTime());
      if (paramSelect.hasStartTime())
        setStartTime(paramSelect.getStartTime());
      if (paramSelect.hasContinuationToken())
        setContinuationToken(paramSelect.getContinuationToken());
      mergeUnknownFields(paramSelect.getUnknownFields());
      return this;
    }

    public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      Select localSelect1 = null;
      try
      {
        Select localSelect2 = (Select)Select.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
        return this;
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        localSelect1 = (Select)localInvalidProtocolBufferException.getUnfinishedMessage();
        throw localInvalidProtocolBufferException;
      }
      finally
      {
        if (localSelect1 != null)
          mergeFrom(localSelect1);
      }
    }

    public Builder mergeFrom(Message paramMessage)
    {
      if ((paramMessage instanceof Select))
        return mergeFrom((Select)paramMessage);
      super.mergeFrom(paramMessage);
      return this;
    }

    public Builder setContinuationToken(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x40 | this.bitField0_);
      this.continuationToken_ = paramByteString;
      onChanged();
      return this;
    }

    public Builder setMaxItems(int paramInt)
    {
      this.bitField0_ = (0x1 | this.bitField0_);
      this.maxItems_ = paramInt;
      onChanged();
      return this;
    }

    public Builder setModifiedAfterTime(long paramLong)
    {
      this.bitField0_ = (0x2 | this.bitField0_);
      this.modifiedAfterTime_ = paramLong;
      onChanged();
      return this;
    }

    public Builder setModifiedBeforeTime(long paramLong)
    {
      this.bitField0_ = (0x4 | this.bitField0_);
      this.modifiedBeforeTime_ = paramLong;
      onChanged();
      return this;
    }

    public Builder setStartTime(long paramLong)
    {
      this.bitField0_ = (0x20 | this.bitField0_);
      this.startTime_ = paramLong;
      onChanged();
      return this;
    }

    public Builder setWriteAfterTime(long paramLong)
    {
      this.bitField0_ = (0x8 | this.bitField0_);
      this.writeAfterTime_ = paramLong;
      onChanged();
      return this;
    }

    public Builder setWriteBeforeTime(long paramLong)
    {
      this.bitField0_ = (0x10 | this.bitField0_);
      this.writeBeforeTime_ = paramLong;
      onChanged();
      return this;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.Select
 * JD-Core Version:    0.6.2
 */