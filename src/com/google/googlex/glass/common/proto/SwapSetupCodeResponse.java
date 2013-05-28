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

public final class SwapSetupCodeResponse extends GeneratedMessage
  implements SwapSetupCodeResponseOrBuilder
{
  public static final int ACCESS_TOKEN_FIELD_NUMBER = 2;
  public static Parser<SwapSetupCodeResponse> PARSER = new AbstractParser()
  {
    public SwapSetupCodeResponse parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return new SwapSetupCodeResponse(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
    }
  };
  public static final int REFRESH_TOKEN_FIELD_NUMBER = 3;
  public static final int SUCCESS_FIELD_NUMBER = 1;
  private static final SwapSetupCodeResponse defaultInstance;
  private static volatile MutableMessage mutableDefault = null;
  private static final long serialVersionUID;
  private Object accessToken_;
  private int bitField0_;
  private byte memoizedIsInitialized = -1;
  private int memoizedSerializedSize = -1;
  private Object refreshToken_;
  private boolean success_;
  private final UnknownFieldSet unknownFields;

  static
  {
    defaultInstance = new SwapSetupCodeResponse(true);
    defaultInstance.initFields();
  }

  // ERROR //
  private SwapSetupCodeResponse(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 58	com/google/protobuf/GeneratedMessage:<init>	()V
    //   4: aload_0
    //   5: iconst_m1
    //   6: putfield 60	com/google/googlex/glass/common/proto/SwapSetupCodeResponse:memoizedIsInitialized	B
    //   9: aload_0
    //   10: iconst_m1
    //   11: putfield 62	com/google/googlex/glass/common/proto/SwapSetupCodeResponse:memoizedSerializedSize	I
    //   14: aload_0
    //   15: invokespecial 52	com/google/googlex/glass/common/proto/SwapSetupCodeResponse:initFields	()V
    //   18: invokestatic 68	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
    //   21: astore_3
    //   22: iconst_0
    //   23: istore 4
    //   25: iload 4
    //   27: ifne +179 -> 206
    //   30: aload_1
    //   31: invokevirtual 74	com/google/protobuf/CodedInputStream:readTag	()I
    //   34: istore 8
    //   36: iload 8
    //   38: lookupswitch	default:+42->80, 0:+181->219, 8:+60->98, 18:+107->145, 26:+147->185
    //   81: aload_1
    //   82: aload_3
    //   83: aload_2
    //   84: iload 8
    //   86: invokevirtual 78	com/google/googlex/glass/common/proto/SwapSetupCodeResponse:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    //   89: ifne -64 -> 25
    //   92: iconst_1
    //   93: istore 4
    //   95: goto -70 -> 25
    //   98: aload_0
    //   99: iconst_1
    //   100: aload_0
    //   101: getfield 80	com/google/googlex/glass/common/proto/SwapSetupCodeResponse:bitField0_	I
    //   104: ior
    //   105: putfield 80	com/google/googlex/glass/common/proto/SwapSetupCodeResponse:bitField0_	I
    //   108: aload_0
    //   109: aload_1
    //   110: invokevirtual 84	com/google/protobuf/CodedInputStream:readBool	()Z
    //   113: putfield 86	com/google/googlex/glass/common/proto/SwapSetupCodeResponse:success_	Z
    //   116: goto -91 -> 25
    //   119: astore 7
    //   121: aload 7
    //   123: aload_0
    //   124: invokevirtual 90	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   127: athrow
    //   128: astore 6
    //   130: aload_0
    //   131: aload_3
    //   132: invokevirtual 96	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   135: putfield 98	com/google/googlex/glass/common/proto/SwapSetupCodeResponse:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   138: aload_0
    //   139: invokevirtual 101	com/google/googlex/glass/common/proto/SwapSetupCodeResponse:makeExtensionsImmutable	()V
    //   142: aload 6
    //   144: athrow
    //   145: aload_0
    //   146: iconst_2
    //   147: aload_0
    //   148: getfield 80	com/google/googlex/glass/common/proto/SwapSetupCodeResponse:bitField0_	I
    //   151: ior
    //   152: putfield 80	com/google/googlex/glass/common/proto/SwapSetupCodeResponse:bitField0_	I
    //   155: aload_0
    //   156: aload_1
    //   157: invokevirtual 105	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   160: putfield 107	com/google/googlex/glass/common/proto/SwapSetupCodeResponse:accessToken_	Ljava/lang/Object;
    //   163: goto -138 -> 25
    //   166: astore 5
    //   168: new 55	com/google/protobuf/InvalidProtocolBufferException
    //   171: dup
    //   172: aload 5
    //   174: invokevirtual 111	java/io/IOException:getMessage	()Ljava/lang/String;
    //   177: invokespecial 114	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
    //   180: aload_0
    //   181: invokevirtual 90	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   184: athrow
    //   185: aload_0
    //   186: iconst_4
    //   187: aload_0
    //   188: getfield 80	com/google/googlex/glass/common/proto/SwapSetupCodeResponse:bitField0_	I
    //   191: ior
    //   192: putfield 80	com/google/googlex/glass/common/proto/SwapSetupCodeResponse:bitField0_	I
    //   195: aload_0
    //   196: aload_1
    //   197: invokevirtual 105	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   200: putfield 116	com/google/googlex/glass/common/proto/SwapSetupCodeResponse:refreshToken_	Ljava/lang/Object;
    //   203: goto -178 -> 25
    //   206: aload_0
    //   207: aload_3
    //   208: invokevirtual 96	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   211: putfield 98	com/google/googlex/glass/common/proto/SwapSetupCodeResponse:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   214: aload_0
    //   215: invokevirtual 101	com/google/googlex/glass/common/proto/SwapSetupCodeResponse:makeExtensionsImmutable	()V
    //   218: return
    //   219: iconst_1
    //   220: istore 4
    //   222: goto -197 -> 25
    //
    // Exception table:
    //   from	to	target	type
    //   30	36	119	com/google/protobuf/InvalidProtocolBufferException
    //   80	92	119	com/google/protobuf/InvalidProtocolBufferException
    //   98	116	119	com/google/protobuf/InvalidProtocolBufferException
    //   145	163	119	com/google/protobuf/InvalidProtocolBufferException
    //   185	203	119	com/google/protobuf/InvalidProtocolBufferException
    //   30	36	128	finally
    //   80	92	128	finally
    //   98	116	128	finally
    //   121	128	128	finally
    //   145	163	128	finally
    //   168	185	128	finally
    //   185	203	128	finally
    //   30	36	166	java/io/IOException
    //   80	92	166	java/io/IOException
    //   98	116	166	java/io/IOException
    //   145	163	166	java/io/IOException
    //   185	203	166	java/io/IOException
  }

  private SwapSetupCodeResponse(GeneratedMessage.Builder<?> paramBuilder)
  {
    super(paramBuilder);
    this.unknownFields = paramBuilder.getUnknownFields();
  }

  private SwapSetupCodeResponse(boolean paramBoolean)
  {
    this.unknownFields = UnknownFieldSet.getDefaultInstance();
  }

  public static SwapSetupCodeResponse getDefaultInstance()
  {
    return defaultInstance;
  }

  public static final Descriptors.Descriptor getDescriptor()
  {
    return SwapSetupCode.internal_static_googlex_glass_common_proto_SwapSetupCodeResponse_descriptor;
  }

  private void initFields()
  {
    this.success_ = false;
    this.accessToken_ = "";
    this.refreshToken_ = "";
  }

  public static Builder newBuilder()
  {
    return Builder.access$100();
  }

  public static Builder newBuilder(SwapSetupCodeResponse paramSwapSetupCodeResponse)
  {
    return newBuilder().mergeFrom(paramSwapSetupCodeResponse);
  }

  public static SwapSetupCodeResponse parseDelimitedFrom(InputStream paramInputStream)
    throws IOException
  {
    return (SwapSetupCodeResponse)PARSER.parseDelimitedFrom(paramInputStream);
  }

  public static SwapSetupCodeResponse parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (SwapSetupCodeResponse)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static SwapSetupCodeResponse parseFrom(ByteString paramByteString)
    throws InvalidProtocolBufferException
  {
    return (SwapSetupCodeResponse)PARSER.parseFrom(paramByteString);
  }

  public static SwapSetupCodeResponse parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (SwapSetupCodeResponse)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
  }

  public static SwapSetupCodeResponse parseFrom(CodedInputStream paramCodedInputStream)
    throws IOException
  {
    return (SwapSetupCodeResponse)PARSER.parseFrom(paramCodedInputStream);
  }

  public static SwapSetupCodeResponse parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (SwapSetupCodeResponse)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
  }

  public static SwapSetupCodeResponse parseFrom(InputStream paramInputStream)
    throws IOException
  {
    return (SwapSetupCodeResponse)PARSER.parseFrom(paramInputStream);
  }

  public static SwapSetupCodeResponse parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (SwapSetupCodeResponse)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static SwapSetupCodeResponse parseFrom(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    return (SwapSetupCodeResponse)PARSER.parseFrom(paramArrayOfByte);
  }

  public static SwapSetupCodeResponse parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (SwapSetupCodeResponse)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
  }

  public String getAccessToken()
  {
    Object localObject = this.accessToken_;
    if ((localObject instanceof String))
      return (String)localObject;
    ByteString localByteString = (ByteString)localObject;
    String str = localByteString.toStringUtf8();
    if (localByteString.isValidUtf8())
      this.accessToken_ = str;
    return str;
  }

  public ByteString getAccessTokenBytes()
  {
    Object localObject = this.accessToken_;
    if ((localObject instanceof String))
    {
      ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
      this.accessToken_ = localByteString;
      return localByteString;
    }
    return (ByteString)localObject;
  }

  public SwapSetupCodeResponse getDefaultInstanceForType()
  {
    return defaultInstance;
  }

  public Parser<SwapSetupCodeResponse> getParserForType()
  {
    return PARSER;
  }

  public String getRefreshToken()
  {
    Object localObject = this.refreshToken_;
    if ((localObject instanceof String))
      return (String)localObject;
    ByteString localByteString = (ByteString)localObject;
    String str = localByteString.toStringUtf8();
    if (localByteString.isValidUtf8())
      this.refreshToken_ = str;
    return str;
  }

  public ByteString getRefreshTokenBytes()
  {
    Object localObject = this.refreshToken_;
    if ((localObject instanceof String))
    {
      ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
      this.refreshToken_ = localByteString;
      return localByteString;
    }
    return (ByteString)localObject;
  }

  public int getSerializedSize()
  {
    int i = this.memoizedSerializedSize;
    if (i != -1)
      return i;
    int j = 0x1 & this.bitField0_;
    int k = 0;
    if (j == 1)
      k = 0 + CodedOutputStream.computeBoolSize(1, this.success_);
    if ((0x2 & this.bitField0_) == 2)
      k += CodedOutputStream.computeBytesSize(2, getAccessTokenBytes());
    if ((0x4 & this.bitField0_) == 4)
      k += CodedOutputStream.computeBytesSize(3, getRefreshTokenBytes());
    int m = k + getUnknownFields().getSerializedSize();
    this.memoizedSerializedSize = m;
    return m;
  }

  public boolean getSuccess()
  {
    return this.success_;
  }

  public final UnknownFieldSet getUnknownFields()
  {
    return this.unknownFields;
  }

  public boolean hasAccessToken()
  {
    return (0x2 & this.bitField0_) == 2;
  }

  public boolean hasRefreshToken()
  {
    return (0x4 & this.bitField0_) == 4;
  }

  public boolean hasSuccess()
  {
    return (0x1 & this.bitField0_) == 1;
  }

  protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
  {
    return SwapSetupCode.internal_static_googlex_glass_common_proto_SwapSetupCodeResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(SwapSetupCodeResponse.class, Builder.class);
  }

  protected MutableMessage internalMutableDefault()
  {
    if (mutableDefault == null)
      mutableDefault = internalMutableDefault("com.google.googlex.glass.common.proto.MutableSwapSetupCode$SwapSetupCodeResponse");
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
      paramCodedOutputStream.writeBool(1, this.success_);
    if ((0x2 & this.bitField0_) == 2)
      paramCodedOutputStream.writeBytes(2, getAccessTokenBytes());
    if ((0x4 & this.bitField0_) == 4)
      paramCodedOutputStream.writeBytes(3, getRefreshTokenBytes());
    getUnknownFields().writeTo(paramCodedOutputStream);
  }

  public static final class Builder extends GeneratedMessage.Builder<Builder>
    implements SwapSetupCodeResponseOrBuilder
  {
    private Object accessToken_ = "";
    private int bitField0_;
    private Object refreshToken_ = "";
    private boolean success_;

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
      return SwapSetupCode.internal_static_googlex_glass_common_proto_SwapSetupCodeResponse_descriptor;
    }

    private void maybeForceBuilderInitialization()
    {
      if (SwapSetupCodeResponse.alwaysUseFieldBuilders);
    }

    public SwapSetupCodeResponse build()
    {
      SwapSetupCodeResponse localSwapSetupCodeResponse = buildPartial();
      if (!localSwapSetupCodeResponse.isInitialized())
        throw newUninitializedMessageException(localSwapSetupCodeResponse);
      return localSwapSetupCodeResponse;
    }

    public SwapSetupCodeResponse buildPartial()
    {
      SwapSetupCodeResponse localSwapSetupCodeResponse = new SwapSetupCodeResponse(this, null);
      int i = this.bitField0_;
      int j = i & 0x1;
      int k = 0;
      if (j == 1)
        k = 0x0 | 0x1;
      SwapSetupCodeResponse.access$502(localSwapSetupCodeResponse, this.success_);
      if ((i & 0x2) == 2)
        k |= 2;
      SwapSetupCodeResponse.access$602(localSwapSetupCodeResponse, this.accessToken_);
      if ((i & 0x4) == 4)
        k |= 4;
      SwapSetupCodeResponse.access$702(localSwapSetupCodeResponse, this.refreshToken_);
      SwapSetupCodeResponse.access$802(localSwapSetupCodeResponse, k);
      onBuilt();
      return localSwapSetupCodeResponse;
    }

    public Builder clear()
    {
      super.clear();
      this.success_ = false;
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      this.accessToken_ = "";
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      this.refreshToken_ = "";
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      return this;
    }

    public Builder clearAccessToken()
    {
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      this.accessToken_ = SwapSetupCodeResponse.getDefaultInstance().getAccessToken();
      onChanged();
      return this;
    }

    public Builder clearRefreshToken()
    {
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      this.refreshToken_ = SwapSetupCodeResponse.getDefaultInstance().getRefreshToken();
      onChanged();
      return this;
    }

    public Builder clearSuccess()
    {
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      this.success_ = false;
      onChanged();
      return this;
    }

    public Builder clone()
    {
      return create().mergeFrom(buildPartial());
    }

    public String getAccessToken()
    {
      Object localObject = this.accessToken_;
      if (!(localObject instanceof String))
      {
        String str = ((ByteString)localObject).toStringUtf8();
        this.accessToken_ = str;
        return str;
      }
      return (String)localObject;
    }

    public ByteString getAccessTokenBytes()
    {
      Object localObject = this.accessToken_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.accessToken_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public SwapSetupCodeResponse getDefaultInstanceForType()
    {
      return SwapSetupCodeResponse.getDefaultInstance();
    }

    public Descriptors.Descriptor getDescriptorForType()
    {
      return SwapSetupCode.internal_static_googlex_glass_common_proto_SwapSetupCodeResponse_descriptor;
    }

    public String getRefreshToken()
    {
      Object localObject = this.refreshToken_;
      if (!(localObject instanceof String))
      {
        String str = ((ByteString)localObject).toStringUtf8();
        this.refreshToken_ = str;
        return str;
      }
      return (String)localObject;
    }

    public ByteString getRefreshTokenBytes()
    {
      Object localObject = this.refreshToken_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.refreshToken_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public boolean getSuccess()
    {
      return this.success_;
    }

    public boolean hasAccessToken()
    {
      return (0x2 & this.bitField0_) == 2;
    }

    public boolean hasRefreshToken()
    {
      return (0x4 & this.bitField0_) == 4;
    }

    public boolean hasSuccess()
    {
      return (0x1 & this.bitField0_) == 1;
    }

    protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return SwapSetupCode.internal_static_googlex_glass_common_proto_SwapSetupCodeResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(SwapSetupCodeResponse.class, Builder.class);
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Builder mergeFrom(SwapSetupCodeResponse paramSwapSetupCodeResponse)
    {
      if (paramSwapSetupCodeResponse == SwapSetupCodeResponse.getDefaultInstance())
        return this;
      if (paramSwapSetupCodeResponse.hasSuccess())
        setSuccess(paramSwapSetupCodeResponse.getSuccess());
      if (paramSwapSetupCodeResponse.hasAccessToken())
      {
        this.bitField0_ = (0x2 | this.bitField0_);
        this.accessToken_ = paramSwapSetupCodeResponse.accessToken_;
        onChanged();
      }
      if (paramSwapSetupCodeResponse.hasRefreshToken())
      {
        this.bitField0_ = (0x4 | this.bitField0_);
        this.refreshToken_ = paramSwapSetupCodeResponse.refreshToken_;
        onChanged();
      }
      mergeUnknownFields(paramSwapSetupCodeResponse.getUnknownFields());
      return this;
    }

    public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      SwapSetupCodeResponse localSwapSetupCodeResponse1 = null;
      try
      {
        SwapSetupCodeResponse localSwapSetupCodeResponse2 = (SwapSetupCodeResponse)SwapSetupCodeResponse.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
        return this;
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        localSwapSetupCodeResponse1 = (SwapSetupCodeResponse)localInvalidProtocolBufferException.getUnfinishedMessage();
        throw localInvalidProtocolBufferException;
      }
      finally
      {
        if (localSwapSetupCodeResponse1 != null)
          mergeFrom(localSwapSetupCodeResponse1);
      }
    }

    public Builder mergeFrom(Message paramMessage)
    {
      if ((paramMessage instanceof SwapSetupCodeResponse))
        return mergeFrom((SwapSetupCodeResponse)paramMessage);
      super.mergeFrom(paramMessage);
      return this;
    }

    public Builder setAccessToken(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x2 | this.bitField0_);
      this.accessToken_ = paramString;
      onChanged();
      return this;
    }

    public Builder setAccessTokenBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x2 | this.bitField0_);
      this.accessToken_ = paramByteString;
      onChanged();
      return this;
    }

    public Builder setRefreshToken(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x4 | this.bitField0_);
      this.refreshToken_ = paramString;
      onChanged();
      return this;
    }

    public Builder setRefreshTokenBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x4 | this.bitField0_);
      this.refreshToken_ = paramByteString;
      onChanged();
      return this;
    }

    public Builder setSuccess(boolean paramBoolean)
    {
      this.bitField0_ = (0x1 | this.bitField0_);
      this.success_ = paramBoolean;
      onChanged();
      return this;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.SwapSetupCodeResponse
 * JD-Core Version:    0.6.2
 */