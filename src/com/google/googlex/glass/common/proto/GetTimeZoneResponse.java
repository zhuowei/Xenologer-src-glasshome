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

public final class GetTimeZoneResponse extends GeneratedMessage
  implements GetTimeZoneResponseOrBuilder
{
  public static Parser<GetTimeZoneResponse> PARSER = new AbstractParser()
  {
    public GetTimeZoneResponse parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return new GetTimeZoneResponse(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
    }
  };
  public static final int REVERSE_SUCCESSFUL_FIELD_NUMBER = 2;
  public static final int TIME_ZONE_FIELD_NUMBER = 1;
  private static final GetTimeZoneResponse defaultInstance;
  private static volatile MutableMessage mutableDefault = null;
  private static final long serialVersionUID;
  private int bitField0_;
  private byte memoizedIsInitialized = -1;
  private int memoizedSerializedSize = -1;
  private boolean reverseSuccessful_;
  private Object timeZone_;
  private final UnknownFieldSet unknownFields;

  static
  {
    defaultInstance = new GetTimeZoneResponse(true);
    defaultInstance.initFields();
  }

  // ERROR //
  private GetTimeZoneResponse(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 55	com/google/protobuf/GeneratedMessage:<init>	()V
    //   4: aload_0
    //   5: iconst_m1
    //   6: putfield 57	com/google/googlex/glass/common/proto/GetTimeZoneResponse:memoizedIsInitialized	B
    //   9: aload_0
    //   10: iconst_m1
    //   11: putfield 59	com/google/googlex/glass/common/proto/GetTimeZoneResponse:memoizedSerializedSize	I
    //   14: aload_0
    //   15: invokespecial 49	com/google/googlex/glass/common/proto/GetTimeZoneResponse:initFields	()V
    //   18: invokestatic 65	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
    //   21: astore_3
    //   22: iconst_0
    //   23: istore 4
    //   25: iload 4
    //   27: ifne +150 -> 177
    //   30: aload_1
    //   31: invokevirtual 71	com/google/protobuf/CodedInputStream:readTag	()I
    //   34: istore 8
    //   36: iload 8
    //   38: lookupswitch	default:+34->72, 0:+152->190, 10:+52->90, 16:+99->137
    //   73: aload_1
    //   74: aload_3
    //   75: aload_2
    //   76: iload 8
    //   78: invokevirtual 75	com/google/googlex/glass/common/proto/GetTimeZoneResponse:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    //   81: ifne -56 -> 25
    //   84: iconst_1
    //   85: istore 4
    //   87: goto -62 -> 25
    //   90: aload_0
    //   91: iconst_1
    //   92: aload_0
    //   93: getfield 77	com/google/googlex/glass/common/proto/GetTimeZoneResponse:bitField0_	I
    //   96: ior
    //   97: putfield 77	com/google/googlex/glass/common/proto/GetTimeZoneResponse:bitField0_	I
    //   100: aload_0
    //   101: aload_1
    //   102: invokevirtual 81	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   105: putfield 83	com/google/googlex/glass/common/proto/GetTimeZoneResponse:timeZone_	Ljava/lang/Object;
    //   108: goto -83 -> 25
    //   111: astore 7
    //   113: aload 7
    //   115: aload_0
    //   116: invokevirtual 87	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   119: athrow
    //   120: astore 6
    //   122: aload_0
    //   123: aload_3
    //   124: invokevirtual 93	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   127: putfield 95	com/google/googlex/glass/common/proto/GetTimeZoneResponse:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   130: aload_0
    //   131: invokevirtual 98	com/google/googlex/glass/common/proto/GetTimeZoneResponse:makeExtensionsImmutable	()V
    //   134: aload 6
    //   136: athrow
    //   137: aload_0
    //   138: iconst_2
    //   139: aload_0
    //   140: getfield 77	com/google/googlex/glass/common/proto/GetTimeZoneResponse:bitField0_	I
    //   143: ior
    //   144: putfield 77	com/google/googlex/glass/common/proto/GetTimeZoneResponse:bitField0_	I
    //   147: aload_0
    //   148: aload_1
    //   149: invokevirtual 102	com/google/protobuf/CodedInputStream:readBool	()Z
    //   152: putfield 104	com/google/googlex/glass/common/proto/GetTimeZoneResponse:reverseSuccessful_	Z
    //   155: goto -130 -> 25
    //   158: astore 5
    //   160: new 52	com/google/protobuf/InvalidProtocolBufferException
    //   163: dup
    //   164: aload 5
    //   166: invokevirtual 108	java/io/IOException:getMessage	()Ljava/lang/String;
    //   169: invokespecial 111	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
    //   172: aload_0
    //   173: invokevirtual 87	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   176: athrow
    //   177: aload_0
    //   178: aload_3
    //   179: invokevirtual 93	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   182: putfield 95	com/google/googlex/glass/common/proto/GetTimeZoneResponse:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   185: aload_0
    //   186: invokevirtual 98	com/google/googlex/glass/common/proto/GetTimeZoneResponse:makeExtensionsImmutable	()V
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

  private GetTimeZoneResponse(GeneratedMessage.Builder<?> paramBuilder)
  {
    super(paramBuilder);
    this.unknownFields = paramBuilder.getUnknownFields();
  }

  private GetTimeZoneResponse(boolean paramBoolean)
  {
    this.unknownFields = UnknownFieldSet.getDefaultInstance();
  }

  public static GetTimeZoneResponse getDefaultInstance()
  {
    return defaultInstance;
  }

  public static final Descriptors.Descriptor getDescriptor()
  {
    return Timezone.internal_static_googlex_glass_common_proto_GetTimeZoneResponse_descriptor;
  }

  private void initFields()
  {
    this.timeZone_ = "";
    this.reverseSuccessful_ = false;
  }

  public static Builder newBuilder()
  {
    return Builder.access$100();
  }

  public static Builder newBuilder(GetTimeZoneResponse paramGetTimeZoneResponse)
  {
    return newBuilder().mergeFrom(paramGetTimeZoneResponse);
  }

  public static GetTimeZoneResponse parseDelimitedFrom(InputStream paramInputStream)
    throws IOException
  {
    return (GetTimeZoneResponse)PARSER.parseDelimitedFrom(paramInputStream);
  }

  public static GetTimeZoneResponse parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (GetTimeZoneResponse)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static GetTimeZoneResponse parseFrom(ByteString paramByteString)
    throws InvalidProtocolBufferException
  {
    return (GetTimeZoneResponse)PARSER.parseFrom(paramByteString);
  }

  public static GetTimeZoneResponse parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (GetTimeZoneResponse)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
  }

  public static GetTimeZoneResponse parseFrom(CodedInputStream paramCodedInputStream)
    throws IOException
  {
    return (GetTimeZoneResponse)PARSER.parseFrom(paramCodedInputStream);
  }

  public static GetTimeZoneResponse parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (GetTimeZoneResponse)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
  }

  public static GetTimeZoneResponse parseFrom(InputStream paramInputStream)
    throws IOException
  {
    return (GetTimeZoneResponse)PARSER.parseFrom(paramInputStream);
  }

  public static GetTimeZoneResponse parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (GetTimeZoneResponse)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static GetTimeZoneResponse parseFrom(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    return (GetTimeZoneResponse)PARSER.parseFrom(paramArrayOfByte);
  }

  public static GetTimeZoneResponse parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (GetTimeZoneResponse)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
  }

  public GetTimeZoneResponse getDefaultInstanceForType()
  {
    return defaultInstance;
  }

  public Parser<GetTimeZoneResponse> getParserForType()
  {
    return PARSER;
  }

  public boolean getReverseSuccessful()
  {
    return this.reverseSuccessful_;
  }

  public int getSerializedSize()
  {
    int i = this.memoizedSerializedSize;
    if (i != -1)
      return i;
    int j = 0x1 & this.bitField0_;
    int k = 0;
    if (j == 1)
      k = 0 + CodedOutputStream.computeBytesSize(1, getTimeZoneBytes());
    if ((0x2 & this.bitField0_) == 2)
      k += CodedOutputStream.computeBoolSize(2, this.reverseSuccessful_);
    int m = k + getUnknownFields().getSerializedSize();
    this.memoizedSerializedSize = m;
    return m;
  }

  public String getTimeZone()
  {
    Object localObject = this.timeZone_;
    if ((localObject instanceof String))
      return (String)localObject;
    ByteString localByteString = (ByteString)localObject;
    String str = localByteString.toStringUtf8();
    if (localByteString.isValidUtf8())
      this.timeZone_ = str;
    return str;
  }

  public ByteString getTimeZoneBytes()
  {
    Object localObject = this.timeZone_;
    if ((localObject instanceof String))
    {
      ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
      this.timeZone_ = localByteString;
      return localByteString;
    }
    return (ByteString)localObject;
  }

  public final UnknownFieldSet getUnknownFields()
  {
    return this.unknownFields;
  }

  public boolean hasReverseSuccessful()
  {
    return (0x2 & this.bitField0_) == 2;
  }

  public boolean hasTimeZone()
  {
    return (0x1 & this.bitField0_) == 1;
  }

  protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
  {
    return Timezone.internal_static_googlex_glass_common_proto_GetTimeZoneResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(GetTimeZoneResponse.class, Builder.class);
  }

  protected MutableMessage internalMutableDefault()
  {
    if (mutableDefault == null)
      mutableDefault = internalMutableDefault("com.google.googlex.glass.common.proto.MutableTimezone$GetTimeZoneResponse");
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
      paramCodedOutputStream.writeBytes(1, getTimeZoneBytes());
    if ((0x2 & this.bitField0_) == 2)
      paramCodedOutputStream.writeBool(2, this.reverseSuccessful_);
    getUnknownFields().writeTo(paramCodedOutputStream);
  }

  public static final class Builder extends GeneratedMessage.Builder<Builder>
    implements GetTimeZoneResponseOrBuilder
  {
    private int bitField0_;
    private boolean reverseSuccessful_;
    private Object timeZone_ = "";

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
      return Timezone.internal_static_googlex_glass_common_proto_GetTimeZoneResponse_descriptor;
    }

    private void maybeForceBuilderInitialization()
    {
      if (GetTimeZoneResponse.alwaysUseFieldBuilders);
    }

    public GetTimeZoneResponse build()
    {
      GetTimeZoneResponse localGetTimeZoneResponse = buildPartial();
      if (!localGetTimeZoneResponse.isInitialized())
        throw newUninitializedMessageException(localGetTimeZoneResponse);
      return localGetTimeZoneResponse;
    }

    public GetTimeZoneResponse buildPartial()
    {
      GetTimeZoneResponse localGetTimeZoneResponse = new GetTimeZoneResponse(this, null);
      int i = this.bitField0_;
      int j = i & 0x1;
      int k = 0;
      if (j == 1)
        k = 0x0 | 0x1;
      GetTimeZoneResponse.access$502(localGetTimeZoneResponse, this.timeZone_);
      if ((i & 0x2) == 2)
        k |= 2;
      GetTimeZoneResponse.access$602(localGetTimeZoneResponse, this.reverseSuccessful_);
      GetTimeZoneResponse.access$702(localGetTimeZoneResponse, k);
      onBuilt();
      return localGetTimeZoneResponse;
    }

    public Builder clear()
    {
      super.clear();
      this.timeZone_ = "";
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      this.reverseSuccessful_ = false;
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      return this;
    }

    public Builder clearReverseSuccessful()
    {
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      this.reverseSuccessful_ = false;
      onChanged();
      return this;
    }

    public Builder clearTimeZone()
    {
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      this.timeZone_ = GetTimeZoneResponse.getDefaultInstance().getTimeZone();
      onChanged();
      return this;
    }

    public Builder clone()
    {
      return create().mergeFrom(buildPartial());
    }

    public GetTimeZoneResponse getDefaultInstanceForType()
    {
      return GetTimeZoneResponse.getDefaultInstance();
    }

    public Descriptors.Descriptor getDescriptorForType()
    {
      return Timezone.internal_static_googlex_glass_common_proto_GetTimeZoneResponse_descriptor;
    }

    public boolean getReverseSuccessful()
    {
      return this.reverseSuccessful_;
    }

    public String getTimeZone()
    {
      Object localObject = this.timeZone_;
      if (!(localObject instanceof String))
      {
        String str = ((ByteString)localObject).toStringUtf8();
        this.timeZone_ = str;
        return str;
      }
      return (String)localObject;
    }

    public ByteString getTimeZoneBytes()
    {
      Object localObject = this.timeZone_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.timeZone_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public boolean hasReverseSuccessful()
    {
      return (0x2 & this.bitField0_) == 2;
    }

    public boolean hasTimeZone()
    {
      return (0x1 & this.bitField0_) == 1;
    }

    protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return Timezone.internal_static_googlex_glass_common_proto_GetTimeZoneResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(GetTimeZoneResponse.class, Builder.class);
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Builder mergeFrom(GetTimeZoneResponse paramGetTimeZoneResponse)
    {
      if (paramGetTimeZoneResponse == GetTimeZoneResponse.getDefaultInstance())
        return this;
      if (paramGetTimeZoneResponse.hasTimeZone())
      {
        this.bitField0_ = (0x1 | this.bitField0_);
        this.timeZone_ = paramGetTimeZoneResponse.timeZone_;
        onChanged();
      }
      if (paramGetTimeZoneResponse.hasReverseSuccessful())
        setReverseSuccessful(paramGetTimeZoneResponse.getReverseSuccessful());
      mergeUnknownFields(paramGetTimeZoneResponse.getUnknownFields());
      return this;
    }

    public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      GetTimeZoneResponse localGetTimeZoneResponse1 = null;
      try
      {
        GetTimeZoneResponse localGetTimeZoneResponse2 = (GetTimeZoneResponse)GetTimeZoneResponse.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
        return this;
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        localGetTimeZoneResponse1 = (GetTimeZoneResponse)localInvalidProtocolBufferException.getUnfinishedMessage();
        throw localInvalidProtocolBufferException;
      }
      finally
      {
        if (localGetTimeZoneResponse1 != null)
          mergeFrom(localGetTimeZoneResponse1);
      }
    }

    public Builder mergeFrom(Message paramMessage)
    {
      if ((paramMessage instanceof GetTimeZoneResponse))
        return mergeFrom((GetTimeZoneResponse)paramMessage);
      super.mergeFrom(paramMessage);
      return this;
    }

    public Builder setReverseSuccessful(boolean paramBoolean)
    {
      this.bitField0_ = (0x2 | this.bitField0_);
      this.reverseSuccessful_ = paramBoolean;
      onChanged();
      return this;
    }

    public Builder setTimeZone(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x1 | this.bitField0_);
      this.timeZone_ = paramString;
      onChanged();
      return this;
    }

    public Builder setTimeZoneBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x1 | this.bitField0_);
      this.timeZone_ = paramByteString;
      onChanged();
      return this;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.GetTimeZoneResponse
 * JD-Core Version:    0.6.2
 */