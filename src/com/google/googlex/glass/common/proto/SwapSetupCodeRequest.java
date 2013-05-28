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

public final class SwapSetupCodeRequest extends GeneratedMessage
  implements SwapSetupCodeRequestOrBuilder
{
  public static final int CODE_FIELD_NUMBER = 1;
  public static Parser<SwapSetupCodeRequest> PARSER = new AbstractParser()
  {
    public SwapSetupCodeRequest parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return new SwapSetupCodeRequest(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
    }
  };
  public static final int REDIRECT_URL_FIELD_NUMBER = 2;
  private static final SwapSetupCodeRequest defaultInstance;
  private static volatile MutableMessage mutableDefault = null;
  private static final long serialVersionUID;
  private int bitField0_;
  private Object code_;
  private byte memoizedIsInitialized = -1;
  private int memoizedSerializedSize = -1;
  private Object redirectUrl_;
  private final UnknownFieldSet unknownFields;

  static
  {
    defaultInstance = new SwapSetupCodeRequest(true);
    defaultInstance.initFields();
  }

  // ERROR //
  private SwapSetupCodeRequest(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 54	com/google/protobuf/GeneratedMessage:<init>	()V
    //   4: aload_0
    //   5: iconst_m1
    //   6: putfield 56	com/google/googlex/glass/common/proto/SwapSetupCodeRequest:memoizedIsInitialized	B
    //   9: aload_0
    //   10: iconst_m1
    //   11: putfield 58	com/google/googlex/glass/common/proto/SwapSetupCodeRequest:memoizedSerializedSize	I
    //   14: aload_0
    //   15: invokespecial 48	com/google/googlex/glass/common/proto/SwapSetupCodeRequest:initFields	()V
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
    //   38: lookupswitch	default:+34->72, 0:+152->190, 10:+52->90, 18:+99->137
    //   73: aload_1
    //   74: aload_3
    //   75: aload_2
    //   76: iload 8
    //   78: invokevirtual 74	com/google/googlex/glass/common/proto/SwapSetupCodeRequest:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    //   81: ifne -56 -> 25
    //   84: iconst_1
    //   85: istore 4
    //   87: goto -62 -> 25
    //   90: aload_0
    //   91: iconst_1
    //   92: aload_0
    //   93: getfield 76	com/google/googlex/glass/common/proto/SwapSetupCodeRequest:bitField0_	I
    //   96: ior
    //   97: putfield 76	com/google/googlex/glass/common/proto/SwapSetupCodeRequest:bitField0_	I
    //   100: aload_0
    //   101: aload_1
    //   102: invokevirtual 80	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   105: putfield 82	com/google/googlex/glass/common/proto/SwapSetupCodeRequest:code_	Ljava/lang/Object;
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
    //   127: putfield 94	com/google/googlex/glass/common/proto/SwapSetupCodeRequest:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   130: aload_0
    //   131: invokevirtual 97	com/google/googlex/glass/common/proto/SwapSetupCodeRequest:makeExtensionsImmutable	()V
    //   134: aload 6
    //   136: athrow
    //   137: aload_0
    //   138: iconst_2
    //   139: aload_0
    //   140: getfield 76	com/google/googlex/glass/common/proto/SwapSetupCodeRequest:bitField0_	I
    //   143: ior
    //   144: putfield 76	com/google/googlex/glass/common/proto/SwapSetupCodeRequest:bitField0_	I
    //   147: aload_0
    //   148: aload_1
    //   149: invokevirtual 80	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   152: putfield 99	com/google/googlex/glass/common/proto/SwapSetupCodeRequest:redirectUrl_	Ljava/lang/Object;
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
    //   182: putfield 94	com/google/googlex/glass/common/proto/SwapSetupCodeRequest:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   185: aload_0
    //   186: invokevirtual 97	com/google/googlex/glass/common/proto/SwapSetupCodeRequest:makeExtensionsImmutable	()V
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

  private SwapSetupCodeRequest(GeneratedMessage.Builder<?> paramBuilder)
  {
    super(paramBuilder);
    this.unknownFields = paramBuilder.getUnknownFields();
  }

  private SwapSetupCodeRequest(boolean paramBoolean)
  {
    this.unknownFields = UnknownFieldSet.getDefaultInstance();
  }

  public static SwapSetupCodeRequest getDefaultInstance()
  {
    return defaultInstance;
  }

  public static final Descriptors.Descriptor getDescriptor()
  {
    return SwapSetupCode.internal_static_googlex_glass_common_proto_SwapSetupCodeRequest_descriptor;
  }

  private void initFields()
  {
    this.code_ = "";
    this.redirectUrl_ = "";
  }

  public static Builder newBuilder()
  {
    return Builder.access$100();
  }

  public static Builder newBuilder(SwapSetupCodeRequest paramSwapSetupCodeRequest)
  {
    return newBuilder().mergeFrom(paramSwapSetupCodeRequest);
  }

  public static SwapSetupCodeRequest parseDelimitedFrom(InputStream paramInputStream)
    throws IOException
  {
    return (SwapSetupCodeRequest)PARSER.parseDelimitedFrom(paramInputStream);
  }

  public static SwapSetupCodeRequest parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (SwapSetupCodeRequest)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static SwapSetupCodeRequest parseFrom(ByteString paramByteString)
    throws InvalidProtocolBufferException
  {
    return (SwapSetupCodeRequest)PARSER.parseFrom(paramByteString);
  }

  public static SwapSetupCodeRequest parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (SwapSetupCodeRequest)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
  }

  public static SwapSetupCodeRequest parseFrom(CodedInputStream paramCodedInputStream)
    throws IOException
  {
    return (SwapSetupCodeRequest)PARSER.parseFrom(paramCodedInputStream);
  }

  public static SwapSetupCodeRequest parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (SwapSetupCodeRequest)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
  }

  public static SwapSetupCodeRequest parseFrom(InputStream paramInputStream)
    throws IOException
  {
    return (SwapSetupCodeRequest)PARSER.parseFrom(paramInputStream);
  }

  public static SwapSetupCodeRequest parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (SwapSetupCodeRequest)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static SwapSetupCodeRequest parseFrom(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    return (SwapSetupCodeRequest)PARSER.parseFrom(paramArrayOfByte);
  }

  public static SwapSetupCodeRequest parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (SwapSetupCodeRequest)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
  }

  public String getCode()
  {
    Object localObject = this.code_;
    if ((localObject instanceof String))
      return (String)localObject;
    ByteString localByteString = (ByteString)localObject;
    String str = localByteString.toStringUtf8();
    if (localByteString.isValidUtf8())
      this.code_ = str;
    return str;
  }

  public ByteString getCodeBytes()
  {
    Object localObject = this.code_;
    if ((localObject instanceof String))
    {
      ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
      this.code_ = localByteString;
      return localByteString;
    }
    return (ByteString)localObject;
  }

  public SwapSetupCodeRequest getDefaultInstanceForType()
  {
    return defaultInstance;
  }

  public Parser<SwapSetupCodeRequest> getParserForType()
  {
    return PARSER;
  }

  public String getRedirectUrl()
  {
    Object localObject = this.redirectUrl_;
    if ((localObject instanceof String))
      return (String)localObject;
    ByteString localByteString = (ByteString)localObject;
    String str = localByteString.toStringUtf8();
    if (localByteString.isValidUtf8())
      this.redirectUrl_ = str;
    return str;
  }

  public ByteString getRedirectUrlBytes()
  {
    Object localObject = this.redirectUrl_;
    if ((localObject instanceof String))
    {
      ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
      this.redirectUrl_ = localByteString;
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
      k = 0 + CodedOutputStream.computeBytesSize(1, getCodeBytes());
    if ((0x2 & this.bitField0_) == 2)
      k += CodedOutputStream.computeBytesSize(2, getRedirectUrlBytes());
    int m = k + getUnknownFields().getSerializedSize();
    this.memoizedSerializedSize = m;
    return m;
  }

  public final UnknownFieldSet getUnknownFields()
  {
    return this.unknownFields;
  }

  public boolean hasCode()
  {
    return (0x1 & this.bitField0_) == 1;
  }

  public boolean hasRedirectUrl()
  {
    return (0x2 & this.bitField0_) == 2;
  }

  protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
  {
    return SwapSetupCode.internal_static_googlex_glass_common_proto_SwapSetupCodeRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(SwapSetupCodeRequest.class, Builder.class);
  }

  protected MutableMessage internalMutableDefault()
  {
    if (mutableDefault == null)
      mutableDefault = internalMutableDefault("com.google.googlex.glass.common.proto.MutableSwapSetupCode$SwapSetupCodeRequest");
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
      paramCodedOutputStream.writeBytes(1, getCodeBytes());
    if ((0x2 & this.bitField0_) == 2)
      paramCodedOutputStream.writeBytes(2, getRedirectUrlBytes());
    getUnknownFields().writeTo(paramCodedOutputStream);
  }

  public static final class Builder extends GeneratedMessage.Builder<Builder>
    implements SwapSetupCodeRequestOrBuilder
  {
    private int bitField0_;
    private Object code_ = "";
    private Object redirectUrl_ = "";

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
      return SwapSetupCode.internal_static_googlex_glass_common_proto_SwapSetupCodeRequest_descriptor;
    }

    private void maybeForceBuilderInitialization()
    {
      if (SwapSetupCodeRequest.alwaysUseFieldBuilders);
    }

    public SwapSetupCodeRequest build()
    {
      SwapSetupCodeRequest localSwapSetupCodeRequest = buildPartial();
      if (!localSwapSetupCodeRequest.isInitialized())
        throw newUninitializedMessageException(localSwapSetupCodeRequest);
      return localSwapSetupCodeRequest;
    }

    public SwapSetupCodeRequest buildPartial()
    {
      SwapSetupCodeRequest localSwapSetupCodeRequest = new SwapSetupCodeRequest(this, null);
      int i = this.bitField0_;
      int j = i & 0x1;
      int k = 0;
      if (j == 1)
        k = 0x0 | 0x1;
      SwapSetupCodeRequest.access$502(localSwapSetupCodeRequest, this.code_);
      if ((i & 0x2) == 2)
        k |= 2;
      SwapSetupCodeRequest.access$602(localSwapSetupCodeRequest, this.redirectUrl_);
      SwapSetupCodeRequest.access$702(localSwapSetupCodeRequest, k);
      onBuilt();
      return localSwapSetupCodeRequest;
    }

    public Builder clear()
    {
      super.clear();
      this.code_ = "";
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      this.redirectUrl_ = "";
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      return this;
    }

    public Builder clearCode()
    {
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      this.code_ = SwapSetupCodeRequest.getDefaultInstance().getCode();
      onChanged();
      return this;
    }

    public Builder clearRedirectUrl()
    {
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      this.redirectUrl_ = SwapSetupCodeRequest.getDefaultInstance().getRedirectUrl();
      onChanged();
      return this;
    }

    public Builder clone()
    {
      return create().mergeFrom(buildPartial());
    }

    public String getCode()
    {
      Object localObject = this.code_;
      if (!(localObject instanceof String))
      {
        String str = ((ByteString)localObject).toStringUtf8();
        this.code_ = str;
        return str;
      }
      return (String)localObject;
    }

    public ByteString getCodeBytes()
    {
      Object localObject = this.code_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.code_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public SwapSetupCodeRequest getDefaultInstanceForType()
    {
      return SwapSetupCodeRequest.getDefaultInstance();
    }

    public Descriptors.Descriptor getDescriptorForType()
    {
      return SwapSetupCode.internal_static_googlex_glass_common_proto_SwapSetupCodeRequest_descriptor;
    }

    public String getRedirectUrl()
    {
      Object localObject = this.redirectUrl_;
      if (!(localObject instanceof String))
      {
        String str = ((ByteString)localObject).toStringUtf8();
        this.redirectUrl_ = str;
        return str;
      }
      return (String)localObject;
    }

    public ByteString getRedirectUrlBytes()
    {
      Object localObject = this.redirectUrl_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.redirectUrl_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public boolean hasCode()
    {
      return (0x1 & this.bitField0_) == 1;
    }

    public boolean hasRedirectUrl()
    {
      return (0x2 & this.bitField0_) == 2;
    }

    protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return SwapSetupCode.internal_static_googlex_glass_common_proto_SwapSetupCodeRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(SwapSetupCodeRequest.class, Builder.class);
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Builder mergeFrom(SwapSetupCodeRequest paramSwapSetupCodeRequest)
    {
      if (paramSwapSetupCodeRequest == SwapSetupCodeRequest.getDefaultInstance())
        return this;
      if (paramSwapSetupCodeRequest.hasCode())
      {
        this.bitField0_ = (0x1 | this.bitField0_);
        this.code_ = paramSwapSetupCodeRequest.code_;
        onChanged();
      }
      if (paramSwapSetupCodeRequest.hasRedirectUrl())
      {
        this.bitField0_ = (0x2 | this.bitField0_);
        this.redirectUrl_ = paramSwapSetupCodeRequest.redirectUrl_;
        onChanged();
      }
      mergeUnknownFields(paramSwapSetupCodeRequest.getUnknownFields());
      return this;
    }

    public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      SwapSetupCodeRequest localSwapSetupCodeRequest1 = null;
      try
      {
        SwapSetupCodeRequest localSwapSetupCodeRequest2 = (SwapSetupCodeRequest)SwapSetupCodeRequest.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
        return this;
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        localSwapSetupCodeRequest1 = (SwapSetupCodeRequest)localInvalidProtocolBufferException.getUnfinishedMessage();
        throw localInvalidProtocolBufferException;
      }
      finally
      {
        if (localSwapSetupCodeRequest1 != null)
          mergeFrom(localSwapSetupCodeRequest1);
      }
    }

    public Builder mergeFrom(Message paramMessage)
    {
      if ((paramMessage instanceof SwapSetupCodeRequest))
        return mergeFrom((SwapSetupCodeRequest)paramMessage);
      super.mergeFrom(paramMessage);
      return this;
    }

    public Builder setCode(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x1 | this.bitField0_);
      this.code_ = paramString;
      onChanged();
      return this;
    }

    public Builder setCodeBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x1 | this.bitField0_);
      this.code_ = paramByteString;
      onChanged();
      return this;
    }

    public Builder setRedirectUrl(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x2 | this.bitField0_);
      this.redirectUrl_ = paramString;
      onChanged();
      return this;
    }

    public Builder setRedirectUrlBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x2 | this.bitField0_);
      this.redirectUrl_ = paramByteString;
      onChanged();
      return this;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.SwapSetupCodeRequest
 * JD-Core Version:    0.6.2
 */