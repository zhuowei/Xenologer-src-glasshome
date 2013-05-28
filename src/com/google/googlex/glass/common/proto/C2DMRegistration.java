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

public final class C2DMRegistration extends GeneratedMessage
  implements C2DMRegistrationOrBuilder
{
  public static final int DEVICE_ID_FIELD_NUMBER = 3;
  public static final int ID_FIELD_NUMBER = 1;
  public static Parser<C2DMRegistration> PARSER = new AbstractParser()
  {
    public C2DMRegistration parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return new C2DMRegistration(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
    }
  };
  public static final int REGISTRATION_TIME_FIELD_NUMBER = 2;
  private static final C2DMRegistration defaultInstance;
  private static volatile MutableMessage mutableDefault = null;
  private static final long serialVersionUID;
  private int bitField0_;
  private Object deviceId_;
  private Object id_;
  private byte memoizedIsInitialized = -1;
  private int memoizedSerializedSize = -1;
  private long registrationTime_;
  private final UnknownFieldSet unknownFields;

  static
  {
    defaultInstance = new C2DMRegistration(true);
    defaultInstance.initFields();
  }

  // ERROR //
  private C2DMRegistration(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 57	com/google/protobuf/GeneratedMessage:<init>	()V
    //   4: aload_0
    //   5: iconst_m1
    //   6: putfield 59	com/google/googlex/glass/common/proto/C2DMRegistration:memoizedIsInitialized	B
    //   9: aload_0
    //   10: iconst_m1
    //   11: putfield 61	com/google/googlex/glass/common/proto/C2DMRegistration:memoizedSerializedSize	I
    //   14: aload_0
    //   15: invokespecial 51	com/google/googlex/glass/common/proto/C2DMRegistration:initFields	()V
    //   18: invokestatic 67	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
    //   21: astore_3
    //   22: iconst_0
    //   23: istore 4
    //   25: iload 4
    //   27: ifne +179 -> 206
    //   30: aload_1
    //   31: invokevirtual 73	com/google/protobuf/CodedInputStream:readTag	()I
    //   34: istore 8
    //   36: iload 8
    //   38: lookupswitch	default:+42->80, 0:+181->219, 10:+60->98, 16:+107->145, 26:+147->185
    //   81: aload_1
    //   82: aload_3
    //   83: aload_2
    //   84: iload 8
    //   86: invokevirtual 77	com/google/googlex/glass/common/proto/C2DMRegistration:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    //   89: ifne -64 -> 25
    //   92: iconst_1
    //   93: istore 4
    //   95: goto -70 -> 25
    //   98: aload_0
    //   99: iconst_1
    //   100: aload_0
    //   101: getfield 79	com/google/googlex/glass/common/proto/C2DMRegistration:bitField0_	I
    //   104: ior
    //   105: putfield 79	com/google/googlex/glass/common/proto/C2DMRegistration:bitField0_	I
    //   108: aload_0
    //   109: aload_1
    //   110: invokevirtual 83	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   113: putfield 85	com/google/googlex/glass/common/proto/C2DMRegistration:id_	Ljava/lang/Object;
    //   116: goto -91 -> 25
    //   119: astore 7
    //   121: aload 7
    //   123: aload_0
    //   124: invokevirtual 89	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   127: athrow
    //   128: astore 6
    //   130: aload_0
    //   131: aload_3
    //   132: invokevirtual 95	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   135: putfield 97	com/google/googlex/glass/common/proto/C2DMRegistration:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   138: aload_0
    //   139: invokevirtual 100	com/google/googlex/glass/common/proto/C2DMRegistration:makeExtensionsImmutable	()V
    //   142: aload 6
    //   144: athrow
    //   145: aload_0
    //   146: iconst_2
    //   147: aload_0
    //   148: getfield 79	com/google/googlex/glass/common/proto/C2DMRegistration:bitField0_	I
    //   151: ior
    //   152: putfield 79	com/google/googlex/glass/common/proto/C2DMRegistration:bitField0_	I
    //   155: aload_0
    //   156: aload_1
    //   157: invokevirtual 104	com/google/protobuf/CodedInputStream:readInt64	()J
    //   160: putfield 106	com/google/googlex/glass/common/proto/C2DMRegistration:registrationTime_	J
    //   163: goto -138 -> 25
    //   166: astore 5
    //   168: new 54	com/google/protobuf/InvalidProtocolBufferException
    //   171: dup
    //   172: aload 5
    //   174: invokevirtual 110	java/io/IOException:getMessage	()Ljava/lang/String;
    //   177: invokespecial 113	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
    //   180: aload_0
    //   181: invokevirtual 89	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   184: athrow
    //   185: aload_0
    //   186: iconst_4
    //   187: aload_0
    //   188: getfield 79	com/google/googlex/glass/common/proto/C2DMRegistration:bitField0_	I
    //   191: ior
    //   192: putfield 79	com/google/googlex/glass/common/proto/C2DMRegistration:bitField0_	I
    //   195: aload_0
    //   196: aload_1
    //   197: invokevirtual 83	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   200: putfield 115	com/google/googlex/glass/common/proto/C2DMRegistration:deviceId_	Ljava/lang/Object;
    //   203: goto -178 -> 25
    //   206: aload_0
    //   207: aload_3
    //   208: invokevirtual 95	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   211: putfield 97	com/google/googlex/glass/common/proto/C2DMRegistration:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   214: aload_0
    //   215: invokevirtual 100	com/google/googlex/glass/common/proto/C2DMRegistration:makeExtensionsImmutable	()V
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

  private C2DMRegistration(GeneratedMessage.Builder<?> paramBuilder)
  {
    super(paramBuilder);
    this.unknownFields = paramBuilder.getUnknownFields();
  }

  private C2DMRegistration(boolean paramBoolean)
  {
    this.unknownFields = UnknownFieldSet.getDefaultInstance();
  }

  public static C2DMRegistration getDefaultInstance()
  {
    return defaultInstance;
  }

  public static final Descriptors.Descriptor getDescriptor()
  {
    return C2DmRegister.internal_static_googlex_glass_common_proto_C2DMRegistration_descriptor;
  }

  private void initFields()
  {
    this.id_ = "";
    this.registrationTime_ = 0L;
    this.deviceId_ = "";
  }

  public static Builder newBuilder()
  {
    return Builder.access$100();
  }

  public static Builder newBuilder(C2DMRegistration paramC2DMRegistration)
  {
    return newBuilder().mergeFrom(paramC2DMRegistration);
  }

  public static C2DMRegistration parseDelimitedFrom(InputStream paramInputStream)
    throws IOException
  {
    return (C2DMRegistration)PARSER.parseDelimitedFrom(paramInputStream);
  }

  public static C2DMRegistration parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (C2DMRegistration)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static C2DMRegistration parseFrom(ByteString paramByteString)
    throws InvalidProtocolBufferException
  {
    return (C2DMRegistration)PARSER.parseFrom(paramByteString);
  }

  public static C2DMRegistration parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (C2DMRegistration)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
  }

  public static C2DMRegistration parseFrom(CodedInputStream paramCodedInputStream)
    throws IOException
  {
    return (C2DMRegistration)PARSER.parseFrom(paramCodedInputStream);
  }

  public static C2DMRegistration parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (C2DMRegistration)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
  }

  public static C2DMRegistration parseFrom(InputStream paramInputStream)
    throws IOException
  {
    return (C2DMRegistration)PARSER.parseFrom(paramInputStream);
  }

  public static C2DMRegistration parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (C2DMRegistration)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static C2DMRegistration parseFrom(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    return (C2DMRegistration)PARSER.parseFrom(paramArrayOfByte);
  }

  public static C2DMRegistration parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (C2DMRegistration)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
  }

  public C2DMRegistration getDefaultInstanceForType()
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

  public Parser<C2DMRegistration> getParserForType()
  {
    return PARSER;
  }

  public long getRegistrationTime()
  {
    return this.registrationTime_;
  }

  public int getSerializedSize()
  {
    int i = this.memoizedSerializedSize;
    if (i != -1)
      return i;
    int j = 0x1 & this.bitField0_;
    int k = 0;
    if (j == 1)
      k = 0 + CodedOutputStream.computeBytesSize(1, getIdBytes());
    if ((0x2 & this.bitField0_) == 2)
      k += CodedOutputStream.computeInt64Size(2, this.registrationTime_);
    if ((0x4 & this.bitField0_) == 4)
      k += CodedOutputStream.computeBytesSize(3, getDeviceIdBytes());
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
    return (0x4 & this.bitField0_) == 4;
  }

  public boolean hasId()
  {
    return (0x1 & this.bitField0_) == 1;
  }

  public boolean hasRegistrationTime()
  {
    return (0x2 & this.bitField0_) == 2;
  }

  protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
  {
    return C2DmRegister.internal_static_googlex_glass_common_proto_C2DMRegistration_fieldAccessorTable.ensureFieldAccessorsInitialized(C2DMRegistration.class, Builder.class);
  }

  protected MutableMessage internalMutableDefault()
  {
    if (mutableDefault == null)
      mutableDefault = internalMutableDefault("com.google.googlex.glass.common.proto.MutableC2DmRegister$C2DMRegistration");
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
      paramCodedOutputStream.writeBytes(1, getIdBytes());
    if ((0x2 & this.bitField0_) == 2)
      paramCodedOutputStream.writeInt64(2, this.registrationTime_);
    if ((0x4 & this.bitField0_) == 4)
      paramCodedOutputStream.writeBytes(3, getDeviceIdBytes());
    getUnknownFields().writeTo(paramCodedOutputStream);
  }

  public static final class Builder extends GeneratedMessage.Builder<Builder>
    implements C2DMRegistrationOrBuilder
  {
    private int bitField0_;
    private Object deviceId_ = "";
    private Object id_ = "";
    private long registrationTime_;

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
      return C2DmRegister.internal_static_googlex_glass_common_proto_C2DMRegistration_descriptor;
    }

    private void maybeForceBuilderInitialization()
    {
      if (C2DMRegistration.alwaysUseFieldBuilders);
    }

    public C2DMRegistration build()
    {
      C2DMRegistration localC2DMRegistration = buildPartial();
      if (!localC2DMRegistration.isInitialized())
        throw newUninitializedMessageException(localC2DMRegistration);
      return localC2DMRegistration;
    }

    public C2DMRegistration buildPartial()
    {
      C2DMRegistration localC2DMRegistration = new C2DMRegistration(this, null);
      int i = this.bitField0_;
      int j = i & 0x1;
      int k = 0;
      if (j == 1)
        k = 0x0 | 0x1;
      C2DMRegistration.access$502(localC2DMRegistration, this.id_);
      if ((i & 0x2) == 2)
        k |= 2;
      C2DMRegistration.access$602(localC2DMRegistration, this.registrationTime_);
      if ((i & 0x4) == 4)
        k |= 4;
      C2DMRegistration.access$702(localC2DMRegistration, this.deviceId_);
      C2DMRegistration.access$802(localC2DMRegistration, k);
      onBuilt();
      return localC2DMRegistration;
    }

    public Builder clear()
    {
      super.clear();
      this.id_ = "";
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      this.registrationTime_ = 0L;
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      this.deviceId_ = "";
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      return this;
    }

    public Builder clearDeviceId()
    {
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      this.deviceId_ = C2DMRegistration.getDefaultInstance().getDeviceId();
      onChanged();
      return this;
    }

    public Builder clearId()
    {
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      this.id_ = C2DMRegistration.getDefaultInstance().getId();
      onChanged();
      return this;
    }

    public Builder clearRegistrationTime()
    {
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      this.registrationTime_ = 0L;
      onChanged();
      return this;
    }

    public Builder clone()
    {
      return create().mergeFrom(buildPartial());
    }

    public C2DMRegistration getDefaultInstanceForType()
    {
      return C2DMRegistration.getDefaultInstance();
    }

    public Descriptors.Descriptor getDescriptorForType()
    {
      return C2DmRegister.internal_static_googlex_glass_common_proto_C2DMRegistration_descriptor;
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

    public long getRegistrationTime()
    {
      return this.registrationTime_;
    }

    public boolean hasDeviceId()
    {
      return (0x4 & this.bitField0_) == 4;
    }

    public boolean hasId()
    {
      return (0x1 & this.bitField0_) == 1;
    }

    public boolean hasRegistrationTime()
    {
      return (0x2 & this.bitField0_) == 2;
    }

    protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return C2DmRegister.internal_static_googlex_glass_common_proto_C2DMRegistration_fieldAccessorTable.ensureFieldAccessorsInitialized(C2DMRegistration.class, Builder.class);
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Builder mergeFrom(C2DMRegistration paramC2DMRegistration)
    {
      if (paramC2DMRegistration == C2DMRegistration.getDefaultInstance())
        return this;
      if (paramC2DMRegistration.hasId())
      {
        this.bitField0_ = (0x1 | this.bitField0_);
        this.id_ = paramC2DMRegistration.id_;
        onChanged();
      }
      if (paramC2DMRegistration.hasRegistrationTime())
        setRegistrationTime(paramC2DMRegistration.getRegistrationTime());
      if (paramC2DMRegistration.hasDeviceId())
      {
        this.bitField0_ = (0x4 | this.bitField0_);
        this.deviceId_ = paramC2DMRegistration.deviceId_;
        onChanged();
      }
      mergeUnknownFields(paramC2DMRegistration.getUnknownFields());
      return this;
    }

    public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      C2DMRegistration localC2DMRegistration1 = null;
      try
      {
        C2DMRegistration localC2DMRegistration2 = (C2DMRegistration)C2DMRegistration.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
        return this;
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        localC2DMRegistration1 = (C2DMRegistration)localInvalidProtocolBufferException.getUnfinishedMessage();
        throw localInvalidProtocolBufferException;
      }
      finally
      {
        if (localC2DMRegistration1 != null)
          mergeFrom(localC2DMRegistration1);
      }
    }

    public Builder mergeFrom(Message paramMessage)
    {
      if ((paramMessage instanceof C2DMRegistration))
        return mergeFrom((C2DMRegistration)paramMessage);
      super.mergeFrom(paramMessage);
      return this;
    }

    public Builder setDeviceId(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x4 | this.bitField0_);
      this.deviceId_ = paramString;
      onChanged();
      return this;
    }

    public Builder setDeviceIdBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x4 | this.bitField0_);
      this.deviceId_ = paramByteString;
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

    public Builder setRegistrationTime(long paramLong)
    {
      this.bitField0_ = (0x2 | this.bitField0_);
      this.registrationTime_ = paramLong;
      onChanged();
      return this;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.C2DMRegistration
 * JD-Core Version:    0.6.2
 */