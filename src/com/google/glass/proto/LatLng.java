package com.google.glass.proto;

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

public final class LatLng extends GeneratedMessage
  implements LatLngOrBuilder
{
  public static final int LAT_FIELD_NUMBER = 1;
  public static final int LNG_FIELD_NUMBER = 2;
  public static Parser<LatLng> PARSER = new AbstractParser()
  {
    public LatLng parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return new LatLng(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
    }
  };
  private static final LatLng defaultInstance;
  private static volatile MutableMessage mutableDefault = null;
  private static final long serialVersionUID;
  private int bitField0_;
  private double lat_;
  private double lng_;
  private byte memoizedIsInitialized = -1;
  private int memoizedSerializedSize = -1;
  private final UnknownFieldSet unknownFields;

  static
  {
    defaultInstance = new LatLng(true);
    defaultInstance.initFields();
  }

  // ERROR //
  private LatLng(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 54	com/google/protobuf/GeneratedMessage:<init>	()V
    //   4: aload_0
    //   5: iconst_m1
    //   6: putfield 56	com/google/glass/proto/LatLng:memoizedIsInitialized	B
    //   9: aload_0
    //   10: iconst_m1
    //   11: putfield 58	com/google/glass/proto/LatLng:memoizedSerializedSize	I
    //   14: aload_0
    //   15: invokespecial 48	com/google/glass/proto/LatLng:initFields	()V
    //   18: invokestatic 64	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
    //   21: astore_3
    //   22: iconst_0
    //   23: istore 4
    //   25: iload 4
    //   27: ifne +150 -> 177
    //   30: aload_1
    //   31: invokevirtual 70	com/google/protobuf/CodedInputStream:readTag	()I
    //   34: istore 8
    //   36: iload 8
    //   38: lookupswitch	default:+34->72, 0:+152->190, 9:+52->90, 17:+99->137
    //   73: aload_1
    //   74: aload_3
    //   75: aload_2
    //   76: iload 8
    //   78: invokevirtual 74	com/google/glass/proto/LatLng:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    //   81: ifne -56 -> 25
    //   84: iconst_1
    //   85: istore 4
    //   87: goto -62 -> 25
    //   90: aload_0
    //   91: iconst_1
    //   92: aload_0
    //   93: getfield 76	com/google/glass/proto/LatLng:bitField0_	I
    //   96: ior
    //   97: putfield 76	com/google/glass/proto/LatLng:bitField0_	I
    //   100: aload_0
    //   101: aload_1
    //   102: invokevirtual 80	com/google/protobuf/CodedInputStream:readDouble	()D
    //   105: putfield 82	com/google/glass/proto/LatLng:lat_	D
    //   108: goto -83 -> 25
    //   111: astore 7
    //   113: aload 7
    //   115: aload_0
    //   116: invokevirtual 86	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   119: athrow
    //   120: astore 6
    //   122: aload_0
    //   123: aload_3
    //   124: invokevirtual 92	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   127: putfield 94	com/google/glass/proto/LatLng:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   130: aload_0
    //   131: invokevirtual 97	com/google/glass/proto/LatLng:makeExtensionsImmutable	()V
    //   134: aload 6
    //   136: athrow
    //   137: aload_0
    //   138: iconst_2
    //   139: aload_0
    //   140: getfield 76	com/google/glass/proto/LatLng:bitField0_	I
    //   143: ior
    //   144: putfield 76	com/google/glass/proto/LatLng:bitField0_	I
    //   147: aload_0
    //   148: aload_1
    //   149: invokevirtual 80	com/google/protobuf/CodedInputStream:readDouble	()D
    //   152: putfield 99	com/google/glass/proto/LatLng:lng_	D
    //   155: goto -130 -> 25
    //   158: astore 5
    //   160: new 51	com/google/protobuf/InvalidProtocolBufferException
    //   163: dup
    //   164: aload 5
    //   166: invokevirtual 103	java/io/IOException:getMessage	()Ljava/lang/String;
    //   169: invokespecial 106	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
    //   172: aload_0
    //   173: invokevirtual 86	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   176: athrow
    //   177: aload_0
    //   178: aload_3
    //   179: invokevirtual 92	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   182: putfield 94	com/google/glass/proto/LatLng:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   185: aload_0
    //   186: invokevirtual 97	com/google/glass/proto/LatLng:makeExtensionsImmutable	()V
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

  private LatLng(GeneratedMessage.Builder<?> paramBuilder)
  {
    super(paramBuilder);
    this.unknownFields = paramBuilder.getUnknownFields();
  }

  private LatLng(boolean paramBoolean)
  {
    this.unknownFields = UnknownFieldSet.getDefaultInstance();
  }

  public static LatLng getDefaultInstance()
  {
    return defaultInstance;
  }

  public static final Descriptors.Descriptor getDescriptor()
  {
    return MapRenderingService.internal_static_glass_proto_LatLng_descriptor;
  }

  private void initFields()
  {
    this.lat_ = 0.0D;
    this.lng_ = 0.0D;
  }

  public static Builder newBuilder()
  {
    return Builder.access$100();
  }

  public static Builder newBuilder(LatLng paramLatLng)
  {
    return newBuilder().mergeFrom(paramLatLng);
  }

  public static LatLng parseDelimitedFrom(InputStream paramInputStream)
    throws IOException
  {
    return (LatLng)PARSER.parseDelimitedFrom(paramInputStream);
  }

  public static LatLng parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (LatLng)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static LatLng parseFrom(ByteString paramByteString)
    throws InvalidProtocolBufferException
  {
    return (LatLng)PARSER.parseFrom(paramByteString);
  }

  public static LatLng parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (LatLng)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
  }

  public static LatLng parseFrom(CodedInputStream paramCodedInputStream)
    throws IOException
  {
    return (LatLng)PARSER.parseFrom(paramCodedInputStream);
  }

  public static LatLng parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (LatLng)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
  }

  public static LatLng parseFrom(InputStream paramInputStream)
    throws IOException
  {
    return (LatLng)PARSER.parseFrom(paramInputStream);
  }

  public static LatLng parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (LatLng)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static LatLng parseFrom(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    return (LatLng)PARSER.parseFrom(paramArrayOfByte);
  }

  public static LatLng parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (LatLng)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
  }

  public LatLng getDefaultInstanceForType()
  {
    return defaultInstance;
  }

  public double getLat()
  {
    return this.lat_;
  }

  public double getLng()
  {
    return this.lng_;
  }

  public Parser<LatLng> getParserForType()
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
      k = 0 + CodedOutputStream.computeDoubleSize(1, this.lat_);
    if ((0x2 & this.bitField0_) == 2)
      k += CodedOutputStream.computeDoubleSize(2, this.lng_);
    int m = k + getUnknownFields().getSerializedSize();
    this.memoizedSerializedSize = m;
    return m;
  }

  public final UnknownFieldSet getUnknownFields()
  {
    return this.unknownFields;
  }

  public boolean hasLat()
  {
    return (0x1 & this.bitField0_) == 1;
  }

  public boolean hasLng()
  {
    return (0x2 & this.bitField0_) == 2;
  }

  protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
  {
    return MapRenderingService.internal_static_glass_proto_LatLng_fieldAccessorTable.ensureFieldAccessorsInitialized(LatLng.class, Builder.class);
  }

  protected MutableMessage internalMutableDefault()
  {
    if (mutableDefault == null)
      mutableDefault = internalMutableDefault("com.google.glass.proto.MutableMapRenderingService$LatLng");
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
      paramCodedOutputStream.writeDouble(1, this.lat_);
    if ((0x2 & this.bitField0_) == 2)
      paramCodedOutputStream.writeDouble(2, this.lng_);
    getUnknownFields().writeTo(paramCodedOutputStream);
  }

  public static final class Builder extends GeneratedMessage.Builder<Builder>
    implements LatLngOrBuilder
  {
    private int bitField0_;
    private double lat_;
    private double lng_;

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
      return MapRenderingService.internal_static_glass_proto_LatLng_descriptor;
    }

    private void maybeForceBuilderInitialization()
    {
      if (LatLng.alwaysUseFieldBuilders);
    }

    public LatLng build()
    {
      LatLng localLatLng = buildPartial();
      if (!localLatLng.isInitialized())
        throw newUninitializedMessageException(localLatLng);
      return localLatLng;
    }

    public LatLng buildPartial()
    {
      LatLng localLatLng = new LatLng(this, null);
      int i = this.bitField0_;
      int j = i & 0x1;
      int k = 0;
      if (j == 1)
        k = 0x0 | 0x1;
      LatLng.access$502(localLatLng, this.lat_);
      if ((i & 0x2) == 2)
        k |= 2;
      LatLng.access$602(localLatLng, this.lng_);
      LatLng.access$702(localLatLng, k);
      onBuilt();
      return localLatLng;
    }

    public Builder clear()
    {
      super.clear();
      this.lat_ = 0.0D;
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      this.lng_ = 0.0D;
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      return this;
    }

    public Builder clearLat()
    {
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      this.lat_ = 0.0D;
      onChanged();
      return this;
    }

    public Builder clearLng()
    {
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      this.lng_ = 0.0D;
      onChanged();
      return this;
    }

    public Builder clone()
    {
      return create().mergeFrom(buildPartial());
    }

    public LatLng getDefaultInstanceForType()
    {
      return LatLng.getDefaultInstance();
    }

    public Descriptors.Descriptor getDescriptorForType()
    {
      return MapRenderingService.internal_static_glass_proto_LatLng_descriptor;
    }

    public double getLat()
    {
      return this.lat_;
    }

    public double getLng()
    {
      return this.lng_;
    }

    public boolean hasLat()
    {
      return (0x1 & this.bitField0_) == 1;
    }

    public boolean hasLng()
    {
      return (0x2 & this.bitField0_) == 2;
    }

    protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return MapRenderingService.internal_static_glass_proto_LatLng_fieldAccessorTable.ensureFieldAccessorsInitialized(LatLng.class, Builder.class);
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Builder mergeFrom(LatLng paramLatLng)
    {
      if (paramLatLng == LatLng.getDefaultInstance())
        return this;
      if (paramLatLng.hasLat())
        setLat(paramLatLng.getLat());
      if (paramLatLng.hasLng())
        setLng(paramLatLng.getLng());
      mergeUnknownFields(paramLatLng.getUnknownFields());
      return this;
    }

    public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      LatLng localLatLng1 = null;
      try
      {
        LatLng localLatLng2 = (LatLng)LatLng.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
        return this;
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        localLatLng1 = (LatLng)localInvalidProtocolBufferException.getUnfinishedMessage();
        throw localInvalidProtocolBufferException;
      }
      finally
      {
        if (localLatLng1 != null)
          mergeFrom(localLatLng1);
      }
    }

    public Builder mergeFrom(Message paramMessage)
    {
      if ((paramMessage instanceof LatLng))
        return mergeFrom((LatLng)paramMessage);
      super.mergeFrom(paramMessage);
      return this;
    }

    public Builder setLat(double paramDouble)
    {
      this.bitField0_ = (0x1 | this.bitField0_);
      this.lat_ = paramDouble;
      onChanged();
      return this;
    }

    public Builder setLng(double paramDouble)
    {
      this.bitField0_ = (0x2 | this.bitField0_);
      this.lng_ = paramDouble;
      onChanged();
      return this;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.proto.LatLng
 * JD-Core Version:    0.6.2
 */