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

public final class GetSessionIdResponse extends GeneratedMessage
  implements GetSessionIdResponseOrBuilder
{
  public static Parser<GetSessionIdResponse> PARSER = new AbstractParser()
  {
    public GetSessionIdResponse parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return new GetSessionIdResponse(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
    }
  };
  public static final int SESSION_ID_FIELD_NUMBER = 1;
  private static final GetSessionIdResponse defaultInstance;
  private static volatile MutableMessage mutableDefault = null;
  private static final long serialVersionUID;
  private int bitField0_;
  private byte memoizedIsInitialized = -1;
  private int memoizedSerializedSize = -1;
  private Object sessionId_;
  private final UnknownFieldSet unknownFields;

  static
  {
    defaultInstance = new GetSessionIdResponse(true);
    defaultInstance.initFields();
  }

  // ERROR //
  private GetSessionIdResponse(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 51	com/google/protobuf/GeneratedMessage:<init>	()V
    //   4: aload_0
    //   5: iconst_m1
    //   6: putfield 53	com/google/googlex/glass/common/proto/GetSessionIdResponse:memoizedIsInitialized	B
    //   9: aload_0
    //   10: iconst_m1
    //   11: putfield 55	com/google/googlex/glass/common/proto/GetSessionIdResponse:memoizedSerializedSize	I
    //   14: aload_0
    //   15: invokespecial 45	com/google/googlex/glass/common/proto/GetSessionIdResponse:initFields	()V
    //   18: invokestatic 61	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
    //   21: astore_3
    //   22: iconst_0
    //   23: istore 4
    //   25: iload 4
    //   27: ifne +102 -> 129
    //   30: aload_1
    //   31: invokevirtual 67	com/google/protobuf/CodedInputStream:readTag	()I
    //   34: istore 8
    //   36: iload 8
    //   38: lookupswitch	default:+26->64, 0:+123->161, 10:+44->82
    //   65: aload_1
    //   66: aload_3
    //   67: aload_2
    //   68: iload 8
    //   70: invokevirtual 71	com/google/googlex/glass/common/proto/GetSessionIdResponse:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    //   73: ifne -48 -> 25
    //   76: iconst_1
    //   77: istore 4
    //   79: goto -54 -> 25
    //   82: aload_0
    //   83: iconst_1
    //   84: aload_0
    //   85: getfield 73	com/google/googlex/glass/common/proto/GetSessionIdResponse:bitField0_	I
    //   88: ior
    //   89: putfield 73	com/google/googlex/glass/common/proto/GetSessionIdResponse:bitField0_	I
    //   92: aload_0
    //   93: aload_1
    //   94: invokevirtual 77	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   97: putfield 79	com/google/googlex/glass/common/proto/GetSessionIdResponse:sessionId_	Ljava/lang/Object;
    //   100: goto -75 -> 25
    //   103: astore 7
    //   105: aload 7
    //   107: aload_0
    //   108: invokevirtual 83	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   111: athrow
    //   112: astore 6
    //   114: aload_0
    //   115: aload_3
    //   116: invokevirtual 89	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   119: putfield 91	com/google/googlex/glass/common/proto/GetSessionIdResponse:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   122: aload_0
    //   123: invokevirtual 94	com/google/googlex/glass/common/proto/GetSessionIdResponse:makeExtensionsImmutable	()V
    //   126: aload 6
    //   128: athrow
    //   129: aload_0
    //   130: aload_3
    //   131: invokevirtual 89	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   134: putfield 91	com/google/googlex/glass/common/proto/GetSessionIdResponse:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   137: aload_0
    //   138: invokevirtual 94	com/google/googlex/glass/common/proto/GetSessionIdResponse:makeExtensionsImmutable	()V
    //   141: return
    //   142: astore 5
    //   144: new 48	com/google/protobuf/InvalidProtocolBufferException
    //   147: dup
    //   148: aload 5
    //   150: invokevirtual 98	java/io/IOException:getMessage	()Ljava/lang/String;
    //   153: invokespecial 101	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
    //   156: aload_0
    //   157: invokevirtual 83	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   160: athrow
    //   161: iconst_1
    //   162: istore 4
    //   164: goto -139 -> 25
    //
    // Exception table:
    //   from	to	target	type
    //   30	36	103	com/google/protobuf/InvalidProtocolBufferException
    //   64	76	103	com/google/protobuf/InvalidProtocolBufferException
    //   82	100	103	com/google/protobuf/InvalidProtocolBufferException
    //   30	36	112	finally
    //   64	76	112	finally
    //   82	100	112	finally
    //   105	112	112	finally
    //   144	161	112	finally
    //   30	36	142	java/io/IOException
    //   64	76	142	java/io/IOException
    //   82	100	142	java/io/IOException
  }

  private GetSessionIdResponse(GeneratedMessage.Builder<?> paramBuilder)
  {
    super(paramBuilder);
    this.unknownFields = paramBuilder.getUnknownFields();
  }

  private GetSessionIdResponse(boolean paramBoolean)
  {
    this.unknownFields = UnknownFieldSet.getDefaultInstance();
  }

  public static GetSessionIdResponse getDefaultInstance()
  {
    return defaultInstance;
  }

  public static final Descriptors.Descriptor getDescriptor()
  {
    return Logging.internal_static_googlex_glass_common_proto_GetSessionIdResponse_descriptor;
  }

  private void initFields()
  {
    this.sessionId_ = "";
  }

  public static Builder newBuilder()
  {
    return Builder.access$100();
  }

  public static Builder newBuilder(GetSessionIdResponse paramGetSessionIdResponse)
  {
    return newBuilder().mergeFrom(paramGetSessionIdResponse);
  }

  public static GetSessionIdResponse parseDelimitedFrom(InputStream paramInputStream)
    throws IOException
  {
    return (GetSessionIdResponse)PARSER.parseDelimitedFrom(paramInputStream);
  }

  public static GetSessionIdResponse parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (GetSessionIdResponse)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static GetSessionIdResponse parseFrom(ByteString paramByteString)
    throws InvalidProtocolBufferException
  {
    return (GetSessionIdResponse)PARSER.parseFrom(paramByteString);
  }

  public static GetSessionIdResponse parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (GetSessionIdResponse)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
  }

  public static GetSessionIdResponse parseFrom(CodedInputStream paramCodedInputStream)
    throws IOException
  {
    return (GetSessionIdResponse)PARSER.parseFrom(paramCodedInputStream);
  }

  public static GetSessionIdResponse parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (GetSessionIdResponse)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
  }

  public static GetSessionIdResponse parseFrom(InputStream paramInputStream)
    throws IOException
  {
    return (GetSessionIdResponse)PARSER.parseFrom(paramInputStream);
  }

  public static GetSessionIdResponse parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (GetSessionIdResponse)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static GetSessionIdResponse parseFrom(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    return (GetSessionIdResponse)PARSER.parseFrom(paramArrayOfByte);
  }

  public static GetSessionIdResponse parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (GetSessionIdResponse)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
  }

  public GetSessionIdResponse getDefaultInstanceForType()
  {
    return defaultInstance;
  }

  public Parser<GetSessionIdResponse> getParserForType()
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
      k = 0 + CodedOutputStream.computeBytesSize(1, getSessionIdBytes());
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

  public final UnknownFieldSet getUnknownFields()
  {
    return this.unknownFields;
  }

  public boolean hasSessionId()
  {
    return (0x1 & this.bitField0_) == 1;
  }

  protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
  {
    return Logging.internal_static_googlex_glass_common_proto_GetSessionIdResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(GetSessionIdResponse.class, Builder.class);
  }

  protected MutableMessage internalMutableDefault()
  {
    if (mutableDefault == null)
      mutableDefault = internalMutableDefault("com.google.googlex.glass.common.proto.MutableLogging$GetSessionIdResponse");
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
      paramCodedOutputStream.writeBytes(1, getSessionIdBytes());
    getUnknownFields().writeTo(paramCodedOutputStream);
  }

  public static final class Builder extends GeneratedMessage.Builder<Builder>
    implements GetSessionIdResponseOrBuilder
  {
    private int bitField0_;
    private Object sessionId_ = "";

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
      return Logging.internal_static_googlex_glass_common_proto_GetSessionIdResponse_descriptor;
    }

    private void maybeForceBuilderInitialization()
    {
      if (GetSessionIdResponse.alwaysUseFieldBuilders);
    }

    public GetSessionIdResponse build()
    {
      GetSessionIdResponse localGetSessionIdResponse = buildPartial();
      if (!localGetSessionIdResponse.isInitialized())
        throw newUninitializedMessageException(localGetSessionIdResponse);
      return localGetSessionIdResponse;
    }

    public GetSessionIdResponse buildPartial()
    {
      GetSessionIdResponse localGetSessionIdResponse = new GetSessionIdResponse(this, null);
      int i = 0x1 & this.bitField0_;
      int j = 0;
      if (i == 1)
        j = 0x0 | 0x1;
      GetSessionIdResponse.access$502(localGetSessionIdResponse, this.sessionId_);
      GetSessionIdResponse.access$602(localGetSessionIdResponse, j);
      onBuilt();
      return localGetSessionIdResponse;
    }

    public Builder clear()
    {
      super.clear();
      this.sessionId_ = "";
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      return this;
    }

    public Builder clearSessionId()
    {
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      this.sessionId_ = GetSessionIdResponse.getDefaultInstance().getSessionId();
      onChanged();
      return this;
    }

    public Builder clone()
    {
      return create().mergeFrom(buildPartial());
    }

    public GetSessionIdResponse getDefaultInstanceForType()
    {
      return GetSessionIdResponse.getDefaultInstance();
    }

    public Descriptors.Descriptor getDescriptorForType()
    {
      return Logging.internal_static_googlex_glass_common_proto_GetSessionIdResponse_descriptor;
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

    public boolean hasSessionId()
    {
      return (0x1 & this.bitField0_) == 1;
    }

    protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return Logging.internal_static_googlex_glass_common_proto_GetSessionIdResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(GetSessionIdResponse.class, Builder.class);
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Builder mergeFrom(GetSessionIdResponse paramGetSessionIdResponse)
    {
      if (paramGetSessionIdResponse == GetSessionIdResponse.getDefaultInstance())
        return this;
      if (paramGetSessionIdResponse.hasSessionId())
      {
        this.bitField0_ = (0x1 | this.bitField0_);
        this.sessionId_ = paramGetSessionIdResponse.sessionId_;
        onChanged();
      }
      mergeUnknownFields(paramGetSessionIdResponse.getUnknownFields());
      return this;
    }

    public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      GetSessionIdResponse localGetSessionIdResponse1 = null;
      try
      {
        GetSessionIdResponse localGetSessionIdResponse2 = (GetSessionIdResponse)GetSessionIdResponse.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
        return this;
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        localGetSessionIdResponse1 = (GetSessionIdResponse)localInvalidProtocolBufferException.getUnfinishedMessage();
        throw localInvalidProtocolBufferException;
      }
      finally
      {
        if (localGetSessionIdResponse1 != null)
          mergeFrom(localGetSessionIdResponse1);
      }
    }

    public Builder mergeFrom(Message paramMessage)
    {
      if ((paramMessage instanceof GetSessionIdResponse))
        return mergeFrom((GetSessionIdResponse)paramMessage);
      super.mergeFrom(paramMessage);
      return this;
    }

    public Builder setSessionId(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x1 | this.bitField0_);
      this.sessionId_ = paramString;
      onChanged();
      return this;
    }

    public Builder setSessionIdBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x1 | this.bitField0_);
      this.sessionId_ = paramByteString;
      onChanged();
      return this;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.GetSessionIdResponse
 * JD-Core Version:    0.6.2
 */