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

public final class SetupUserAccountResponse extends GeneratedMessage
  implements SetupUserAccountResponseOrBuilder
{
  public static final int DISPLAY_NAME_FIELD_NUMBER = 1;
  public static Parser<SetupUserAccountResponse> PARSER = new AbstractParser()
  {
    public SetupUserAccountResponse parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return new SetupUserAccountResponse(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
    }
  };
  public static final int PHOTO_URL_FIELD_NUMBER = 2;
  public static final int USE_GOOGLE_VOICE_SMS_FIELD_NUMBER = 3;
  private static final SetupUserAccountResponse defaultInstance;
  private static volatile MutableMessage mutableDefault = null;
  private static final long serialVersionUID;
  private int bitField0_;
  private Object displayName_;
  private byte memoizedIsInitialized = -1;
  private int memoizedSerializedSize = -1;
  private Object photoUrl_;
  private final UnknownFieldSet unknownFields;
  private boolean useGoogleVoiceSms_;

  static
  {
    defaultInstance = new SetupUserAccountResponse(true);
    defaultInstance.initFields();
  }

  // ERROR //
  private SetupUserAccountResponse(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 58	com/google/protobuf/GeneratedMessage:<init>	()V
    //   4: aload_0
    //   5: iconst_m1
    //   6: putfield 60	com/google/googlex/glass/common/proto/SetupUserAccountResponse:memoizedIsInitialized	B
    //   9: aload_0
    //   10: iconst_m1
    //   11: putfield 62	com/google/googlex/glass/common/proto/SetupUserAccountResponse:memoizedSerializedSize	I
    //   14: aload_0
    //   15: invokespecial 52	com/google/googlex/glass/common/proto/SetupUserAccountResponse:initFields	()V
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
    //   38: lookupswitch	default:+42->80, 0:+181->219, 10:+60->98, 18:+107->145, 24:+147->185
    //   81: aload_1
    //   82: aload_3
    //   83: aload_2
    //   84: iload 8
    //   86: invokevirtual 78	com/google/googlex/glass/common/proto/SetupUserAccountResponse:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    //   89: ifne -64 -> 25
    //   92: iconst_1
    //   93: istore 4
    //   95: goto -70 -> 25
    //   98: aload_0
    //   99: iconst_1
    //   100: aload_0
    //   101: getfield 80	com/google/googlex/glass/common/proto/SetupUserAccountResponse:bitField0_	I
    //   104: ior
    //   105: putfield 80	com/google/googlex/glass/common/proto/SetupUserAccountResponse:bitField0_	I
    //   108: aload_0
    //   109: aload_1
    //   110: invokevirtual 84	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   113: putfield 86	com/google/googlex/glass/common/proto/SetupUserAccountResponse:displayName_	Ljava/lang/Object;
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
    //   135: putfield 98	com/google/googlex/glass/common/proto/SetupUserAccountResponse:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   138: aload_0
    //   139: invokevirtual 101	com/google/googlex/glass/common/proto/SetupUserAccountResponse:makeExtensionsImmutable	()V
    //   142: aload 6
    //   144: athrow
    //   145: aload_0
    //   146: iconst_2
    //   147: aload_0
    //   148: getfield 80	com/google/googlex/glass/common/proto/SetupUserAccountResponse:bitField0_	I
    //   151: ior
    //   152: putfield 80	com/google/googlex/glass/common/proto/SetupUserAccountResponse:bitField0_	I
    //   155: aload_0
    //   156: aload_1
    //   157: invokevirtual 84	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   160: putfield 103	com/google/googlex/glass/common/proto/SetupUserAccountResponse:photoUrl_	Ljava/lang/Object;
    //   163: goto -138 -> 25
    //   166: astore 5
    //   168: new 55	com/google/protobuf/InvalidProtocolBufferException
    //   171: dup
    //   172: aload 5
    //   174: invokevirtual 107	java/io/IOException:getMessage	()Ljava/lang/String;
    //   177: invokespecial 110	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
    //   180: aload_0
    //   181: invokevirtual 90	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   184: athrow
    //   185: aload_0
    //   186: iconst_4
    //   187: aload_0
    //   188: getfield 80	com/google/googlex/glass/common/proto/SetupUserAccountResponse:bitField0_	I
    //   191: ior
    //   192: putfield 80	com/google/googlex/glass/common/proto/SetupUserAccountResponse:bitField0_	I
    //   195: aload_0
    //   196: aload_1
    //   197: invokevirtual 114	com/google/protobuf/CodedInputStream:readBool	()Z
    //   200: putfield 116	com/google/googlex/glass/common/proto/SetupUserAccountResponse:useGoogleVoiceSms_	Z
    //   203: goto -178 -> 25
    //   206: aload_0
    //   207: aload_3
    //   208: invokevirtual 96	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   211: putfield 98	com/google/googlex/glass/common/proto/SetupUserAccountResponse:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   214: aload_0
    //   215: invokevirtual 101	com/google/googlex/glass/common/proto/SetupUserAccountResponse:makeExtensionsImmutable	()V
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

  private SetupUserAccountResponse(GeneratedMessage.Builder<?> paramBuilder)
  {
    super(paramBuilder);
    this.unknownFields = paramBuilder.getUnknownFields();
  }

  private SetupUserAccountResponse(boolean paramBoolean)
  {
    this.unknownFields = UnknownFieldSet.getDefaultInstance();
  }

  public static SetupUserAccountResponse getDefaultInstance()
  {
    return defaultInstance;
  }

  public static final Descriptors.Descriptor getDescriptor()
  {
    return Setup.internal_static_googlex_glass_common_proto_SetupUserAccountResponse_descriptor;
  }

  private void initFields()
  {
    this.displayName_ = "";
    this.photoUrl_ = "";
    this.useGoogleVoiceSms_ = true;
  }

  public static Builder newBuilder()
  {
    return Builder.access$100();
  }

  public static Builder newBuilder(SetupUserAccountResponse paramSetupUserAccountResponse)
  {
    return newBuilder().mergeFrom(paramSetupUserAccountResponse);
  }

  public static SetupUserAccountResponse parseDelimitedFrom(InputStream paramInputStream)
    throws IOException
  {
    return (SetupUserAccountResponse)PARSER.parseDelimitedFrom(paramInputStream);
  }

  public static SetupUserAccountResponse parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (SetupUserAccountResponse)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static SetupUserAccountResponse parseFrom(ByteString paramByteString)
    throws InvalidProtocolBufferException
  {
    return (SetupUserAccountResponse)PARSER.parseFrom(paramByteString);
  }

  public static SetupUserAccountResponse parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (SetupUserAccountResponse)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
  }

  public static SetupUserAccountResponse parseFrom(CodedInputStream paramCodedInputStream)
    throws IOException
  {
    return (SetupUserAccountResponse)PARSER.parseFrom(paramCodedInputStream);
  }

  public static SetupUserAccountResponse parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (SetupUserAccountResponse)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
  }

  public static SetupUserAccountResponse parseFrom(InputStream paramInputStream)
    throws IOException
  {
    return (SetupUserAccountResponse)PARSER.parseFrom(paramInputStream);
  }

  public static SetupUserAccountResponse parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (SetupUserAccountResponse)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static SetupUserAccountResponse parseFrom(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    return (SetupUserAccountResponse)PARSER.parseFrom(paramArrayOfByte);
  }

  public static SetupUserAccountResponse parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (SetupUserAccountResponse)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
  }

  public SetupUserAccountResponse getDefaultInstanceForType()
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

  public Parser<SetupUserAccountResponse> getParserForType()
  {
    return PARSER;
  }

  public String getPhotoUrl()
  {
    Object localObject = this.photoUrl_;
    if ((localObject instanceof String))
      return (String)localObject;
    ByteString localByteString = (ByteString)localObject;
    String str = localByteString.toStringUtf8();
    if (localByteString.isValidUtf8())
      this.photoUrl_ = str;
    return str;
  }

  public ByteString getPhotoUrlBytes()
  {
    Object localObject = this.photoUrl_;
    if ((localObject instanceof String))
    {
      ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
      this.photoUrl_ = localByteString;
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
      k = 0 + CodedOutputStream.computeBytesSize(1, getDisplayNameBytes());
    if ((0x2 & this.bitField0_) == 2)
      k += CodedOutputStream.computeBytesSize(2, getPhotoUrlBytes());
    if ((0x4 & this.bitField0_) == 4)
      k += CodedOutputStream.computeBoolSize(3, this.useGoogleVoiceSms_);
    int m = k + getUnknownFields().getSerializedSize();
    this.memoizedSerializedSize = m;
    return m;
  }

  public final UnknownFieldSet getUnknownFields()
  {
    return this.unknownFields;
  }

  public boolean getUseGoogleVoiceSms()
  {
    return this.useGoogleVoiceSms_;
  }

  public boolean hasDisplayName()
  {
    return (0x1 & this.bitField0_) == 1;
  }

  public boolean hasPhotoUrl()
  {
    return (0x2 & this.bitField0_) == 2;
  }

  public boolean hasUseGoogleVoiceSms()
  {
    return (0x4 & this.bitField0_) == 4;
  }

  protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
  {
    return Setup.internal_static_googlex_glass_common_proto_SetupUserAccountResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(SetupUserAccountResponse.class, Builder.class);
  }

  protected MutableMessage internalMutableDefault()
  {
    if (mutableDefault == null)
      mutableDefault = internalMutableDefault("com.google.googlex.glass.common.proto.MutableSetup$SetupUserAccountResponse");
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
      paramCodedOutputStream.writeBytes(1, getDisplayNameBytes());
    if ((0x2 & this.bitField0_) == 2)
      paramCodedOutputStream.writeBytes(2, getPhotoUrlBytes());
    if ((0x4 & this.bitField0_) == 4)
      paramCodedOutputStream.writeBool(3, this.useGoogleVoiceSms_);
    getUnknownFields().writeTo(paramCodedOutputStream);
  }

  public static final class Builder extends GeneratedMessage.Builder<Builder>
    implements SetupUserAccountResponseOrBuilder
  {
    private int bitField0_;
    private Object displayName_ = "";
    private Object photoUrl_ = "";
    private boolean useGoogleVoiceSms_ = true;

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
      return Setup.internal_static_googlex_glass_common_proto_SetupUserAccountResponse_descriptor;
    }

    private void maybeForceBuilderInitialization()
    {
      if (SetupUserAccountResponse.alwaysUseFieldBuilders);
    }

    public SetupUserAccountResponse build()
    {
      SetupUserAccountResponse localSetupUserAccountResponse = buildPartial();
      if (!localSetupUserAccountResponse.isInitialized())
        throw newUninitializedMessageException(localSetupUserAccountResponse);
      return localSetupUserAccountResponse;
    }

    public SetupUserAccountResponse buildPartial()
    {
      SetupUserAccountResponse localSetupUserAccountResponse = new SetupUserAccountResponse(this, null);
      int i = this.bitField0_;
      int j = i & 0x1;
      int k = 0;
      if (j == 1)
        k = 0x0 | 0x1;
      SetupUserAccountResponse.access$502(localSetupUserAccountResponse, this.displayName_);
      if ((i & 0x2) == 2)
        k |= 2;
      SetupUserAccountResponse.access$602(localSetupUserAccountResponse, this.photoUrl_);
      if ((i & 0x4) == 4)
        k |= 4;
      SetupUserAccountResponse.access$702(localSetupUserAccountResponse, this.useGoogleVoiceSms_);
      SetupUserAccountResponse.access$802(localSetupUserAccountResponse, k);
      onBuilt();
      return localSetupUserAccountResponse;
    }

    public Builder clear()
    {
      super.clear();
      this.displayName_ = "";
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      this.photoUrl_ = "";
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      this.useGoogleVoiceSms_ = true;
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      return this;
    }

    public Builder clearDisplayName()
    {
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      this.displayName_ = SetupUserAccountResponse.getDefaultInstance().getDisplayName();
      onChanged();
      return this;
    }

    public Builder clearPhotoUrl()
    {
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      this.photoUrl_ = SetupUserAccountResponse.getDefaultInstance().getPhotoUrl();
      onChanged();
      return this;
    }

    public Builder clearUseGoogleVoiceSms()
    {
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      this.useGoogleVoiceSms_ = true;
      onChanged();
      return this;
    }

    public Builder clone()
    {
      return create().mergeFrom(buildPartial());
    }

    public SetupUserAccountResponse getDefaultInstanceForType()
    {
      return SetupUserAccountResponse.getDefaultInstance();
    }

    public Descriptors.Descriptor getDescriptorForType()
    {
      return Setup.internal_static_googlex_glass_common_proto_SetupUserAccountResponse_descriptor;
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

    public String getPhotoUrl()
    {
      Object localObject = this.photoUrl_;
      if (!(localObject instanceof String))
      {
        String str = ((ByteString)localObject).toStringUtf8();
        this.photoUrl_ = str;
        return str;
      }
      return (String)localObject;
    }

    public ByteString getPhotoUrlBytes()
    {
      Object localObject = this.photoUrl_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.photoUrl_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public boolean getUseGoogleVoiceSms()
    {
      return this.useGoogleVoiceSms_;
    }

    public boolean hasDisplayName()
    {
      return (0x1 & this.bitField0_) == 1;
    }

    public boolean hasPhotoUrl()
    {
      return (0x2 & this.bitField0_) == 2;
    }

    public boolean hasUseGoogleVoiceSms()
    {
      return (0x4 & this.bitField0_) == 4;
    }

    protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return Setup.internal_static_googlex_glass_common_proto_SetupUserAccountResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(SetupUserAccountResponse.class, Builder.class);
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Builder mergeFrom(SetupUserAccountResponse paramSetupUserAccountResponse)
    {
      if (paramSetupUserAccountResponse == SetupUserAccountResponse.getDefaultInstance())
        return this;
      if (paramSetupUserAccountResponse.hasDisplayName())
      {
        this.bitField0_ = (0x1 | this.bitField0_);
        this.displayName_ = paramSetupUserAccountResponse.displayName_;
        onChanged();
      }
      if (paramSetupUserAccountResponse.hasPhotoUrl())
      {
        this.bitField0_ = (0x2 | this.bitField0_);
        this.photoUrl_ = paramSetupUserAccountResponse.photoUrl_;
        onChanged();
      }
      if (paramSetupUserAccountResponse.hasUseGoogleVoiceSms())
        setUseGoogleVoiceSms(paramSetupUserAccountResponse.getUseGoogleVoiceSms());
      mergeUnknownFields(paramSetupUserAccountResponse.getUnknownFields());
      return this;
    }

    public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      SetupUserAccountResponse localSetupUserAccountResponse1 = null;
      try
      {
        SetupUserAccountResponse localSetupUserAccountResponse2 = (SetupUserAccountResponse)SetupUserAccountResponse.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
        return this;
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        localSetupUserAccountResponse1 = (SetupUserAccountResponse)localInvalidProtocolBufferException.getUnfinishedMessage();
        throw localInvalidProtocolBufferException;
      }
      finally
      {
        if (localSetupUserAccountResponse1 != null)
          mergeFrom(localSetupUserAccountResponse1);
      }
    }

    public Builder mergeFrom(Message paramMessage)
    {
      if ((paramMessage instanceof SetupUserAccountResponse))
        return mergeFrom((SetupUserAccountResponse)paramMessage);
      super.mergeFrom(paramMessage);
      return this;
    }

    public Builder setDisplayName(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x1 | this.bitField0_);
      this.displayName_ = paramString;
      onChanged();
      return this;
    }

    public Builder setDisplayNameBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x1 | this.bitField0_);
      this.displayName_ = paramByteString;
      onChanged();
      return this;
    }

    public Builder setPhotoUrl(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x2 | this.bitField0_);
      this.photoUrl_ = paramString;
      onChanged();
      return this;
    }

    public Builder setPhotoUrlBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x2 | this.bitField0_);
      this.photoUrl_ = paramByteString;
      onChanged();
      return this;
    }

    public Builder setUseGoogleVoiceSms(boolean paramBoolean)
    {
      this.bitField0_ = (0x4 | this.bitField0_);
      this.useGoogleVoiceSms_ = paramBoolean;
      onChanged();
      return this;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.SetupUserAccountResponse
 * JD-Core Version:    0.6.2
 */