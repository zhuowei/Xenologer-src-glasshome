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

public final class AuthToken extends GeneratedMessage
  implements AuthTokenOrBuilder
{
  public static Parser<AuthToken> PARSER = new AbstractParser()
  {
    public AuthToken parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return new AuthToken(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
    }
  };
  public static final int TYPE_FIELD_NUMBER = 1;
  public static final int VALUE_FIELD_NUMBER = 2;
  private static final AuthToken defaultInstance;
  private static volatile MutableMessage mutableDefault = null;
  private static final long serialVersionUID;
  private int bitField0_;
  private byte memoizedIsInitialized = -1;
  private int memoizedSerializedSize = -1;
  private AuthTokenType type_;
  private final UnknownFieldSet unknownFields;
  private Object value_;

  static
  {
    defaultInstance = new AuthToken(true);
    defaultInstance.initFields();
  }

  // ERROR //
  private AuthToken(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 55	com/google/protobuf/GeneratedMessage:<init>	()V
    //   4: aload_0
    //   5: iconst_m1
    //   6: putfield 57	com/google/googlex/glass/common/proto/AuthToken:memoizedIsInitialized	B
    //   9: aload_0
    //   10: iconst_m1
    //   11: putfield 59	com/google/googlex/glass/common/proto/AuthToken:memoizedSerializedSize	I
    //   14: aload_0
    //   15: invokespecial 49	com/google/googlex/glass/common/proto/AuthToken:initFields	()V
    //   18: invokestatic 65	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
    //   21: astore_3
    //   22: iconst_0
    //   23: istore 4
    //   25: iload 4
    //   27: ifne +177 -> 204
    //   30: aload_1
    //   31: invokevirtual 71	com/google/protobuf/CodedInputStream:readTag	()I
    //   34: istore 8
    //   36: iload 8
    //   38: lookupswitch	default:+34->72, 0:+179->217, 8:+52->90, 18:+145->183
    //   73: aload_1
    //   74: aload_3
    //   75: aload_2
    //   76: iload 8
    //   78: invokevirtual 75	com/google/googlex/glass/common/proto/AuthToken:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    //   81: ifne -56 -> 25
    //   84: iconst_1
    //   85: istore 4
    //   87: goto -62 -> 25
    //   90: aload_1
    //   91: invokevirtual 78	com/google/protobuf/CodedInputStream:readEnum	()I
    //   94: istore 9
    //   96: iload 9
    //   98: invokestatic 84	com/google/googlex/glass/common/proto/AuthTokenType:valueOf	(I)Lcom/google/googlex/glass/common/proto/AuthTokenType;
    //   101: astore 10
    //   103: aload 10
    //   105: ifnonnull +40 -> 145
    //   108: aload_3
    //   109: iconst_1
    //   110: iload 9
    //   112: invokevirtual 90	com/google/protobuf/UnknownFieldSet$Builder:mergeVarintField	(II)Lcom/google/protobuf/UnknownFieldSet$Builder;
    //   115: pop
    //   116: goto -91 -> 25
    //   119: astore 7
    //   121: aload 7
    //   123: aload_0
    //   124: invokevirtual 94	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   127: athrow
    //   128: astore 6
    //   130: aload_0
    //   131: aload_3
    //   132: invokevirtual 98	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   135: putfield 100	com/google/googlex/glass/common/proto/AuthToken:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   138: aload_0
    //   139: invokevirtual 103	com/google/googlex/glass/common/proto/AuthToken:makeExtensionsImmutable	()V
    //   142: aload 6
    //   144: athrow
    //   145: aload_0
    //   146: iconst_1
    //   147: aload_0
    //   148: getfield 105	com/google/googlex/glass/common/proto/AuthToken:bitField0_	I
    //   151: ior
    //   152: putfield 105	com/google/googlex/glass/common/proto/AuthToken:bitField0_	I
    //   155: aload_0
    //   156: aload 10
    //   158: putfield 107	com/google/googlex/glass/common/proto/AuthToken:type_	Lcom/google/googlex/glass/common/proto/AuthTokenType;
    //   161: goto -136 -> 25
    //   164: astore 5
    //   166: new 52	com/google/protobuf/InvalidProtocolBufferException
    //   169: dup
    //   170: aload 5
    //   172: invokevirtual 111	java/io/IOException:getMessage	()Ljava/lang/String;
    //   175: invokespecial 114	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
    //   178: aload_0
    //   179: invokevirtual 94	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   182: athrow
    //   183: aload_0
    //   184: iconst_2
    //   185: aload_0
    //   186: getfield 105	com/google/googlex/glass/common/proto/AuthToken:bitField0_	I
    //   189: ior
    //   190: putfield 105	com/google/googlex/glass/common/proto/AuthToken:bitField0_	I
    //   193: aload_0
    //   194: aload_1
    //   195: invokevirtual 118	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   198: putfield 120	com/google/googlex/glass/common/proto/AuthToken:value_	Ljava/lang/Object;
    //   201: goto -176 -> 25
    //   204: aload_0
    //   205: aload_3
    //   206: invokevirtual 98	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   209: putfield 100	com/google/googlex/glass/common/proto/AuthToken:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   212: aload_0
    //   213: invokevirtual 103	com/google/googlex/glass/common/proto/AuthToken:makeExtensionsImmutable	()V
    //   216: return
    //   217: iconst_1
    //   218: istore 4
    //   220: goto -195 -> 25
    //
    // Exception table:
    //   from	to	target	type
    //   30	36	119	com/google/protobuf/InvalidProtocolBufferException
    //   72	84	119	com/google/protobuf/InvalidProtocolBufferException
    //   90	103	119	com/google/protobuf/InvalidProtocolBufferException
    //   108	116	119	com/google/protobuf/InvalidProtocolBufferException
    //   145	161	119	com/google/protobuf/InvalidProtocolBufferException
    //   183	201	119	com/google/protobuf/InvalidProtocolBufferException
    //   30	36	128	finally
    //   72	84	128	finally
    //   90	103	128	finally
    //   108	116	128	finally
    //   121	128	128	finally
    //   145	161	128	finally
    //   166	183	128	finally
    //   183	201	128	finally
    //   30	36	164	java/io/IOException
    //   72	84	164	java/io/IOException
    //   90	103	164	java/io/IOException
    //   108	116	164	java/io/IOException
    //   145	161	164	java/io/IOException
    //   183	201	164	java/io/IOException
  }

  private AuthToken(GeneratedMessage.Builder<?> paramBuilder)
  {
    super(paramBuilder);
    this.unknownFields = paramBuilder.getUnknownFields();
  }

  private AuthToken(boolean paramBoolean)
  {
    this.unknownFields = UnknownFieldSet.getDefaultInstance();
  }

  public static AuthToken getDefaultInstance()
  {
    return defaultInstance;
  }

  public static final Descriptors.Descriptor getDescriptor()
  {
    return Batch.internal_static_googlex_glass_common_proto_AuthToken_descriptor;
  }

  private void initFields()
  {
    this.type_ = AuthTokenType.ANDROID_SERVICE;
    this.value_ = "";
  }

  public static Builder newBuilder()
  {
    return Builder.access$100();
  }

  public static Builder newBuilder(AuthToken paramAuthToken)
  {
    return newBuilder().mergeFrom(paramAuthToken);
  }

  public static AuthToken parseDelimitedFrom(InputStream paramInputStream)
    throws IOException
  {
    return (AuthToken)PARSER.parseDelimitedFrom(paramInputStream);
  }

  public static AuthToken parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (AuthToken)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static AuthToken parseFrom(ByteString paramByteString)
    throws InvalidProtocolBufferException
  {
    return (AuthToken)PARSER.parseFrom(paramByteString);
  }

  public static AuthToken parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (AuthToken)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
  }

  public static AuthToken parseFrom(CodedInputStream paramCodedInputStream)
    throws IOException
  {
    return (AuthToken)PARSER.parseFrom(paramCodedInputStream);
  }

  public static AuthToken parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (AuthToken)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
  }

  public static AuthToken parseFrom(InputStream paramInputStream)
    throws IOException
  {
    return (AuthToken)PARSER.parseFrom(paramInputStream);
  }

  public static AuthToken parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (AuthToken)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static AuthToken parseFrom(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    return (AuthToken)PARSER.parseFrom(paramArrayOfByte);
  }

  public static AuthToken parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (AuthToken)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
  }

  public AuthToken getDefaultInstanceForType()
  {
    return defaultInstance;
  }

  public Parser<AuthToken> getParserForType()
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
      k = 0 + CodedOutputStream.computeEnumSize(1, this.type_.getNumber());
    if ((0x2 & this.bitField0_) == 2)
      k += CodedOutputStream.computeBytesSize(2, getValueBytes());
    int m = k + getUnknownFields().getSerializedSize();
    this.memoizedSerializedSize = m;
    return m;
  }

  public AuthTokenType getType()
  {
    return this.type_;
  }

  public final UnknownFieldSet getUnknownFields()
  {
    return this.unknownFields;
  }

  public String getValue()
  {
    Object localObject = this.value_;
    if ((localObject instanceof String))
      return (String)localObject;
    ByteString localByteString = (ByteString)localObject;
    String str = localByteString.toStringUtf8();
    if (localByteString.isValidUtf8())
      this.value_ = str;
    return str;
  }

  public ByteString getValueBytes()
  {
    Object localObject = this.value_;
    if ((localObject instanceof String))
    {
      ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
      this.value_ = localByteString;
      return localByteString;
    }
    return (ByteString)localObject;
  }

  public boolean hasType()
  {
    return (0x1 & this.bitField0_) == 1;
  }

  public boolean hasValue()
  {
    return (0x2 & this.bitField0_) == 2;
  }

  protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
  {
    return Batch.internal_static_googlex_glass_common_proto_AuthToken_fieldAccessorTable.ensureFieldAccessorsInitialized(AuthToken.class, Builder.class);
  }

  protected MutableMessage internalMutableDefault()
  {
    if (mutableDefault == null)
      mutableDefault = internalMutableDefault("com.google.googlex.glass.common.proto.MutableBatch$AuthToken");
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
      paramCodedOutputStream.writeEnum(1, this.type_.getNumber());
    if ((0x2 & this.bitField0_) == 2)
      paramCodedOutputStream.writeBytes(2, getValueBytes());
    getUnknownFields().writeTo(paramCodedOutputStream);
  }

  public static final class Builder extends GeneratedMessage.Builder<Builder>
    implements AuthTokenOrBuilder
  {
    private int bitField0_;
    private AuthTokenType type_ = AuthTokenType.ANDROID_SERVICE;
    private Object value_ = "";

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
      return Batch.internal_static_googlex_glass_common_proto_AuthToken_descriptor;
    }

    private void maybeForceBuilderInitialization()
    {
      if (AuthToken.alwaysUseFieldBuilders);
    }

    public AuthToken build()
    {
      AuthToken localAuthToken = buildPartial();
      if (!localAuthToken.isInitialized())
        throw newUninitializedMessageException(localAuthToken);
      return localAuthToken;
    }

    public AuthToken buildPartial()
    {
      AuthToken localAuthToken = new AuthToken(this, null);
      int i = this.bitField0_;
      int j = i & 0x1;
      int k = 0;
      if (j == 1)
        k = 0x0 | 0x1;
      AuthToken.access$502(localAuthToken, this.type_);
      if ((i & 0x2) == 2)
        k |= 2;
      AuthToken.access$602(localAuthToken, this.value_);
      AuthToken.access$702(localAuthToken, k);
      onBuilt();
      return localAuthToken;
    }

    public Builder clear()
    {
      super.clear();
      this.type_ = AuthTokenType.ANDROID_SERVICE;
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      this.value_ = "";
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      return this;
    }

    public Builder clearType()
    {
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      this.type_ = AuthTokenType.ANDROID_SERVICE;
      onChanged();
      return this;
    }

    public Builder clearValue()
    {
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      this.value_ = AuthToken.getDefaultInstance().getValue();
      onChanged();
      return this;
    }

    public Builder clone()
    {
      return create().mergeFrom(buildPartial());
    }

    public AuthToken getDefaultInstanceForType()
    {
      return AuthToken.getDefaultInstance();
    }

    public Descriptors.Descriptor getDescriptorForType()
    {
      return Batch.internal_static_googlex_glass_common_proto_AuthToken_descriptor;
    }

    public AuthTokenType getType()
    {
      return this.type_;
    }

    public String getValue()
    {
      Object localObject = this.value_;
      if (!(localObject instanceof String))
      {
        String str = ((ByteString)localObject).toStringUtf8();
        this.value_ = str;
        return str;
      }
      return (String)localObject;
    }

    public ByteString getValueBytes()
    {
      Object localObject = this.value_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.value_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public boolean hasType()
    {
      return (0x1 & this.bitField0_) == 1;
    }

    public boolean hasValue()
    {
      return (0x2 & this.bitField0_) == 2;
    }

    protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return Batch.internal_static_googlex_glass_common_proto_AuthToken_fieldAccessorTable.ensureFieldAccessorsInitialized(AuthToken.class, Builder.class);
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Builder mergeFrom(AuthToken paramAuthToken)
    {
      if (paramAuthToken == AuthToken.getDefaultInstance())
        return this;
      if (paramAuthToken.hasType())
        setType(paramAuthToken.getType());
      if (paramAuthToken.hasValue())
      {
        this.bitField0_ = (0x2 | this.bitField0_);
        this.value_ = paramAuthToken.value_;
        onChanged();
      }
      mergeUnknownFields(paramAuthToken.getUnknownFields());
      return this;
    }

    public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      AuthToken localAuthToken1 = null;
      try
      {
        AuthToken localAuthToken2 = (AuthToken)AuthToken.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
        return this;
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        localAuthToken1 = (AuthToken)localInvalidProtocolBufferException.getUnfinishedMessage();
        throw localInvalidProtocolBufferException;
      }
      finally
      {
        if (localAuthToken1 != null)
          mergeFrom(localAuthToken1);
      }
    }

    public Builder mergeFrom(Message paramMessage)
    {
      if ((paramMessage instanceof AuthToken))
        return mergeFrom((AuthToken)paramMessage);
      super.mergeFrom(paramMessage);
      return this;
    }

    public Builder setType(AuthTokenType paramAuthTokenType)
    {
      if (paramAuthTokenType == null)
        throw new NullPointerException();
      this.bitField0_ = (0x1 | this.bitField0_);
      this.type_ = paramAuthTokenType;
      onChanged();
      return this;
    }

    public Builder setValue(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x2 | this.bitField0_);
      this.value_ = paramString;
      onChanged();
      return this;
    }

    public Builder setValueBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x2 | this.bitField0_);
      this.value_ = paramByteString;
      onChanged();
      return this;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.AuthToken
 * JD-Core Version:    0.6.2
 */