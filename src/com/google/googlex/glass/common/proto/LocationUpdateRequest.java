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

public final class LocationUpdateRequest extends GeneratedMessage
  implements LocationUpdateRequestOrBuilder
{
  public static final int DEVICE_ID_FIELD_NUMBER = 2;
  public static final int LOCATION_FIELD_NUMBER = 1;
  public static Parser<LocationUpdateRequest> PARSER = new AbstractParser()
  {
    public LocationUpdateRequest parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return new LocationUpdateRequest(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
    }
  };
  private static final LocationUpdateRequest defaultInstance;
  private static volatile MutableMessage mutableDefault = null;
  private static final long serialVersionUID;
  private int bitField0_;
  private Object deviceId_;
  private Location location_;
  private byte memoizedIsInitialized = -1;
  private int memoizedSerializedSize = -1;
  private final UnknownFieldSet unknownFields;

  static
  {
    defaultInstance = new LocationUpdateRequest(true);
    defaultInstance.initFields();
  }

  // ERROR //
  private LocationUpdateRequest(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 55	com/google/protobuf/GeneratedMessage:<init>	()V
    //   4: aload_0
    //   5: iconst_m1
    //   6: putfield 57	com/google/googlex/glass/common/proto/LocationUpdateRequest:memoizedIsInitialized	B
    //   9: aload_0
    //   10: iconst_m1
    //   11: putfield 59	com/google/googlex/glass/common/proto/LocationUpdateRequest:memoizedSerializedSize	I
    //   14: aload_0
    //   15: invokespecial 49	com/google/googlex/glass/common/proto/LocationUpdateRequest:initFields	()V
    //   18: invokestatic 65	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
    //   21: astore_3
    //   22: iconst_0
    //   23: istore 4
    //   25: iload 4
    //   27: ifne +207 -> 234
    //   30: aload_1
    //   31: invokevirtual 71	com/google/protobuf/CodedInputStream:readTag	()I
    //   34: istore 8
    //   36: iload 8
    //   38: lookupswitch	default:+34->72, 0:+209->247, 10:+52->90, 18:+156->194
    //   73: aload_1
    //   74: aload_3
    //   75: aload_2
    //   76: iload 8
    //   78: invokevirtual 75	com/google/googlex/glass/common/proto/LocationUpdateRequest:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    //   81: ifne -56 -> 25
    //   84: iconst_1
    //   85: istore 4
    //   87: goto -62 -> 25
    //   90: iconst_1
    //   91: aload_0
    //   92: getfield 77	com/google/googlex/glass/common/proto/LocationUpdateRequest:bitField0_	I
    //   95: iand
    //   96: istore 9
    //   98: aconst_null
    //   99: astore 10
    //   101: iload 9
    //   103: iconst_1
    //   104: if_icmpne +12 -> 116
    //   107: aload_0
    //   108: getfield 79	com/google/googlex/glass/common/proto/LocationUpdateRequest:location_	Lcom/google/googlex/glass/common/proto/Location;
    //   111: invokevirtual 85	com/google/googlex/glass/common/proto/Location:toBuilder	()Lcom/google/googlex/glass/common/proto/Location$Builder;
    //   114: astore 10
    //   116: aload_0
    //   117: aload_1
    //   118: getstatic 86	com/google/googlex/glass/common/proto/Location:PARSER	Lcom/google/protobuf/Parser;
    //   121: aload_2
    //   122: invokevirtual 90	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
    //   125: checkcast 81	com/google/googlex/glass/common/proto/Location
    //   128: putfield 79	com/google/googlex/glass/common/proto/LocationUpdateRequest:location_	Lcom/google/googlex/glass/common/proto/Location;
    //   131: aload 10
    //   133: ifnull +22 -> 155
    //   136: aload 10
    //   138: aload_0
    //   139: getfield 79	com/google/googlex/glass/common/proto/LocationUpdateRequest:location_	Lcom/google/googlex/glass/common/proto/Location;
    //   142: invokevirtual 96	com/google/googlex/glass/common/proto/Location$Builder:mergeFrom	(Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/Location$Builder;
    //   145: pop
    //   146: aload_0
    //   147: aload 10
    //   149: invokevirtual 100	com/google/googlex/glass/common/proto/Location$Builder:buildPartial	()Lcom/google/googlex/glass/common/proto/Location;
    //   152: putfield 79	com/google/googlex/glass/common/proto/LocationUpdateRequest:location_	Lcom/google/googlex/glass/common/proto/Location;
    //   155: aload_0
    //   156: iconst_1
    //   157: aload_0
    //   158: getfield 77	com/google/googlex/glass/common/proto/LocationUpdateRequest:bitField0_	I
    //   161: ior
    //   162: putfield 77	com/google/googlex/glass/common/proto/LocationUpdateRequest:bitField0_	I
    //   165: goto -140 -> 25
    //   168: astore 7
    //   170: aload 7
    //   172: aload_0
    //   173: invokevirtual 104	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   176: athrow
    //   177: astore 6
    //   179: aload_0
    //   180: aload_3
    //   181: invokevirtual 110	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   184: putfield 112	com/google/googlex/glass/common/proto/LocationUpdateRequest:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   187: aload_0
    //   188: invokevirtual 115	com/google/googlex/glass/common/proto/LocationUpdateRequest:makeExtensionsImmutable	()V
    //   191: aload 6
    //   193: athrow
    //   194: aload_0
    //   195: iconst_2
    //   196: aload_0
    //   197: getfield 77	com/google/googlex/glass/common/proto/LocationUpdateRequest:bitField0_	I
    //   200: ior
    //   201: putfield 77	com/google/googlex/glass/common/proto/LocationUpdateRequest:bitField0_	I
    //   204: aload_0
    //   205: aload_1
    //   206: invokevirtual 119	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   209: putfield 121	com/google/googlex/glass/common/proto/LocationUpdateRequest:deviceId_	Ljava/lang/Object;
    //   212: goto -187 -> 25
    //   215: astore 5
    //   217: new 52	com/google/protobuf/InvalidProtocolBufferException
    //   220: dup
    //   221: aload 5
    //   223: invokevirtual 125	java/io/IOException:getMessage	()Ljava/lang/String;
    //   226: invokespecial 128	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
    //   229: aload_0
    //   230: invokevirtual 104	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   233: athrow
    //   234: aload_0
    //   235: aload_3
    //   236: invokevirtual 110	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   239: putfield 112	com/google/googlex/glass/common/proto/LocationUpdateRequest:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   242: aload_0
    //   243: invokevirtual 115	com/google/googlex/glass/common/proto/LocationUpdateRequest:makeExtensionsImmutable	()V
    //   246: return
    //   247: iconst_1
    //   248: istore 4
    //   250: goto -225 -> 25
    //
    // Exception table:
    //   from	to	target	type
    //   30	36	168	com/google/protobuf/InvalidProtocolBufferException
    //   72	84	168	com/google/protobuf/InvalidProtocolBufferException
    //   90	98	168	com/google/protobuf/InvalidProtocolBufferException
    //   107	116	168	com/google/protobuf/InvalidProtocolBufferException
    //   116	131	168	com/google/protobuf/InvalidProtocolBufferException
    //   136	155	168	com/google/protobuf/InvalidProtocolBufferException
    //   155	165	168	com/google/protobuf/InvalidProtocolBufferException
    //   194	212	168	com/google/protobuf/InvalidProtocolBufferException
    //   30	36	177	finally
    //   72	84	177	finally
    //   90	98	177	finally
    //   107	116	177	finally
    //   116	131	177	finally
    //   136	155	177	finally
    //   155	165	177	finally
    //   170	177	177	finally
    //   194	212	177	finally
    //   217	234	177	finally
    //   30	36	215	java/io/IOException
    //   72	84	215	java/io/IOException
    //   90	98	215	java/io/IOException
    //   107	116	215	java/io/IOException
    //   116	131	215	java/io/IOException
    //   136	155	215	java/io/IOException
    //   155	165	215	java/io/IOException
    //   194	212	215	java/io/IOException
  }

  private LocationUpdateRequest(GeneratedMessage.Builder<?> paramBuilder)
  {
    super(paramBuilder);
    this.unknownFields = paramBuilder.getUnknownFields();
  }

  private LocationUpdateRequest(boolean paramBoolean)
  {
    this.unknownFields = UnknownFieldSet.getDefaultInstance();
  }

  public static LocationUpdateRequest getDefaultInstance()
  {
    return defaultInstance;
  }

  public static final Descriptors.Descriptor getDescriptor()
  {
    return LocationRequest.internal_static_googlex_glass_common_proto_LocationUpdateRequest_descriptor;
  }

  private void initFields()
  {
    this.location_ = Location.getDefaultInstance();
    this.deviceId_ = "";
  }

  public static Builder newBuilder()
  {
    return Builder.access$100();
  }

  public static Builder newBuilder(LocationUpdateRequest paramLocationUpdateRequest)
  {
    return newBuilder().mergeFrom(paramLocationUpdateRequest);
  }

  public static LocationUpdateRequest parseDelimitedFrom(InputStream paramInputStream)
    throws IOException
  {
    return (LocationUpdateRequest)PARSER.parseDelimitedFrom(paramInputStream);
  }

  public static LocationUpdateRequest parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (LocationUpdateRequest)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static LocationUpdateRequest parseFrom(ByteString paramByteString)
    throws InvalidProtocolBufferException
  {
    return (LocationUpdateRequest)PARSER.parseFrom(paramByteString);
  }

  public static LocationUpdateRequest parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (LocationUpdateRequest)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
  }

  public static LocationUpdateRequest parseFrom(CodedInputStream paramCodedInputStream)
    throws IOException
  {
    return (LocationUpdateRequest)PARSER.parseFrom(paramCodedInputStream);
  }

  public static LocationUpdateRequest parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (LocationUpdateRequest)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
  }

  public static LocationUpdateRequest parseFrom(InputStream paramInputStream)
    throws IOException
  {
    return (LocationUpdateRequest)PARSER.parseFrom(paramInputStream);
  }

  public static LocationUpdateRequest parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (LocationUpdateRequest)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static LocationUpdateRequest parseFrom(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    return (LocationUpdateRequest)PARSER.parseFrom(paramArrayOfByte);
  }

  public static LocationUpdateRequest parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (LocationUpdateRequest)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
  }

  public LocationUpdateRequest getDefaultInstanceForType()
  {
    return defaultInstance;
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

  public Location getLocation()
  {
    return this.location_;
  }

  public LocationOrBuilder getLocationOrBuilder()
  {
    return this.location_;
  }

  public Parser<LocationUpdateRequest> getParserForType()
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
      k = 0 + CodedOutputStream.computeMessageSize(1, this.location_);
    if ((0x2 & this.bitField0_) == 2)
      k += CodedOutputStream.computeBytesSize(2, getDeviceIdBytes());
    int m = k + getUnknownFields().getSerializedSize();
    this.memoizedSerializedSize = m;
    return m;
  }

  public final UnknownFieldSet getUnknownFields()
  {
    return this.unknownFields;
  }

  public boolean hasDeviceId()
  {
    return (0x2 & this.bitField0_) == 2;
  }

  public boolean hasLocation()
  {
    return (0x1 & this.bitField0_) == 1;
  }

  protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
  {
    return LocationRequest.internal_static_googlex_glass_common_proto_LocationUpdateRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(LocationUpdateRequest.class, Builder.class);
  }

  protected MutableMessage internalMutableDefault()
  {
    if (mutableDefault == null)
      mutableDefault = internalMutableDefault("com.google.googlex.glass.common.proto.MutableLocationRequest$LocationUpdateRequest");
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
      paramCodedOutputStream.writeMessage(1, this.location_);
    if ((0x2 & this.bitField0_) == 2)
      paramCodedOutputStream.writeBytes(2, getDeviceIdBytes());
    getUnknownFields().writeTo(paramCodedOutputStream);
  }

  public static final class Builder extends GeneratedMessage.Builder<Builder>
    implements LocationUpdateRequestOrBuilder
  {
    private int bitField0_;
    private Object deviceId_ = "";
    private SingleFieldBuilder<Location, Location.Builder, LocationOrBuilder> locationBuilder_;
    private Location location_ = Location.getDefaultInstance();

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
      return LocationRequest.internal_static_googlex_glass_common_proto_LocationUpdateRequest_descriptor;
    }

    private SingleFieldBuilder<Location, Location.Builder, LocationOrBuilder> getLocationFieldBuilder()
    {
      if (this.locationBuilder_ == null)
      {
        this.locationBuilder_ = new SingleFieldBuilder(this.location_, getParentForChildren(), isClean());
        this.location_ = null;
      }
      return this.locationBuilder_;
    }

    private void maybeForceBuilderInitialization()
    {
      if (LocationUpdateRequest.alwaysUseFieldBuilders)
        getLocationFieldBuilder();
    }

    public LocationUpdateRequest build()
    {
      LocationUpdateRequest localLocationUpdateRequest = buildPartial();
      if (!localLocationUpdateRequest.isInitialized())
        throw newUninitializedMessageException(localLocationUpdateRequest);
      return localLocationUpdateRequest;
    }

    public LocationUpdateRequest buildPartial()
    {
      LocationUpdateRequest localLocationUpdateRequest = new LocationUpdateRequest(this, null);
      int i = this.bitField0_;
      int j = i & 0x1;
      int k = 0;
      if (j == 1)
        k = 0x0 | 0x1;
      if (this.locationBuilder_ == null)
        LocationUpdateRequest.access$502(localLocationUpdateRequest, this.location_);
      while (true)
      {
        if ((i & 0x2) == 2)
          k |= 2;
        LocationUpdateRequest.access$602(localLocationUpdateRequest, this.deviceId_);
        LocationUpdateRequest.access$702(localLocationUpdateRequest, k);
        onBuilt();
        return localLocationUpdateRequest;
        LocationUpdateRequest.access$502(localLocationUpdateRequest, (Location)this.locationBuilder_.build());
      }
    }

    public Builder clear()
    {
      super.clear();
      if (this.locationBuilder_ == null)
        this.location_ = Location.getDefaultInstance();
      while (true)
      {
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        this.deviceId_ = "";
        this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        return this;
        this.locationBuilder_.clear();
      }
    }

    public Builder clearDeviceId()
    {
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      this.deviceId_ = LocationUpdateRequest.getDefaultInstance().getDeviceId();
      onChanged();
      return this;
    }

    public Builder clearLocation()
    {
      if (this.locationBuilder_ == null)
      {
        this.location_ = Location.getDefaultInstance();
        onChanged();
      }
      while (true)
      {
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        return this;
        this.locationBuilder_.clear();
      }
    }

    public Builder clone()
    {
      return create().mergeFrom(buildPartial());
    }

    public LocationUpdateRequest getDefaultInstanceForType()
    {
      return LocationUpdateRequest.getDefaultInstance();
    }

    public Descriptors.Descriptor getDescriptorForType()
    {
      return LocationRequest.internal_static_googlex_glass_common_proto_LocationUpdateRequest_descriptor;
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

    public Location getLocation()
    {
      if (this.locationBuilder_ == null)
        return this.location_;
      return (Location)this.locationBuilder_.getMessage();
    }

    public Location.Builder getLocationBuilder()
    {
      this.bitField0_ = (0x1 | this.bitField0_);
      onChanged();
      return (Location.Builder)getLocationFieldBuilder().getBuilder();
    }

    public LocationOrBuilder getLocationOrBuilder()
    {
      if (this.locationBuilder_ != null)
        return (LocationOrBuilder)this.locationBuilder_.getMessageOrBuilder();
      return this.location_;
    }

    public boolean hasDeviceId()
    {
      return (0x2 & this.bitField0_) == 2;
    }

    public boolean hasLocation()
    {
      return (0x1 & this.bitField0_) == 1;
    }

    protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return LocationRequest.internal_static_googlex_glass_common_proto_LocationUpdateRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(LocationUpdateRequest.class, Builder.class);
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Builder mergeFrom(LocationUpdateRequest paramLocationUpdateRequest)
    {
      if (paramLocationUpdateRequest == LocationUpdateRequest.getDefaultInstance())
        return this;
      if (paramLocationUpdateRequest.hasLocation())
        mergeLocation(paramLocationUpdateRequest.getLocation());
      if (paramLocationUpdateRequest.hasDeviceId())
      {
        this.bitField0_ = (0x2 | this.bitField0_);
        this.deviceId_ = paramLocationUpdateRequest.deviceId_;
        onChanged();
      }
      mergeUnknownFields(paramLocationUpdateRequest.getUnknownFields());
      return this;
    }

    public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      LocationUpdateRequest localLocationUpdateRequest1 = null;
      try
      {
        LocationUpdateRequest localLocationUpdateRequest2 = (LocationUpdateRequest)LocationUpdateRequest.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
        return this;
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        localLocationUpdateRequest1 = (LocationUpdateRequest)localInvalidProtocolBufferException.getUnfinishedMessage();
        throw localInvalidProtocolBufferException;
      }
      finally
      {
        if (localLocationUpdateRequest1 != null)
          mergeFrom(localLocationUpdateRequest1);
      }
    }

    public Builder mergeFrom(Message paramMessage)
    {
      if ((paramMessage instanceof LocationUpdateRequest))
        return mergeFrom((LocationUpdateRequest)paramMessage);
      super.mergeFrom(paramMessage);
      return this;
    }

    public Builder mergeLocation(Location paramLocation)
    {
      if (this.locationBuilder_ == null)
        if (((0x1 & this.bitField0_) == 1) && (this.location_ != Location.getDefaultInstance()))
        {
          this.location_ = Location.newBuilder(this.location_).mergeFrom(paramLocation).buildPartial();
          onChanged();
        }
      while (true)
      {
        this.bitField0_ = (0x1 | this.bitField0_);
        return this;
        this.location_ = paramLocation;
        break;
        this.locationBuilder_.mergeFrom(paramLocation);
      }
    }

    public Builder setDeviceId(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x2 | this.bitField0_);
      this.deviceId_ = paramString;
      onChanged();
      return this;
    }

    public Builder setDeviceIdBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x2 | this.bitField0_);
      this.deviceId_ = paramByteString;
      onChanged();
      return this;
    }

    public Builder setLocation(Location.Builder paramBuilder)
    {
      if (this.locationBuilder_ == null)
      {
        this.location_ = paramBuilder.build();
        onChanged();
      }
      while (true)
      {
        this.bitField0_ = (0x1 | this.bitField0_);
        return this;
        this.locationBuilder_.setMessage(paramBuilder.build());
      }
    }

    public Builder setLocation(Location paramLocation)
    {
      if (this.locationBuilder_ == null)
      {
        if (paramLocation == null)
          throw new NullPointerException();
        this.location_ = paramLocation;
        onChanged();
      }
      while (true)
      {
        this.bitField0_ = (0x1 | this.bitField0_);
        return this;
        this.locationBuilder_.setMessage(paramLocation);
      }
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.LocationUpdateRequest
 * JD-Core Version:    0.6.2
 */