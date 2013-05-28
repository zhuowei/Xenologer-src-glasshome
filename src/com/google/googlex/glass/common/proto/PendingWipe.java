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

public final class PendingWipe extends GeneratedMessage
  implements PendingWipeOrBuilder
{
  public static final int DEVICE_ID_FIELD_NUMBER = 2;
  public static Parser<PendingWipe> PARSER = new AbstractParser()
  {
    public PendingWipe parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return new PendingWipe(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
    }
  };
  public static final int TIMESTAMP_FIELD_NUMBER = 1;
  public static final int WIPE_EXTERNAL_STORAGE_FIELD_NUMBER = 3;
  private static final PendingWipe defaultInstance;
  private static volatile MutableMessage mutableDefault = null;
  private static final long serialVersionUID;
  private int bitField0_;
  private Object deviceId_;
  private byte memoizedIsInitialized = -1;
  private int memoizedSerializedSize = -1;
  private long timestamp_;
  private final UnknownFieldSet unknownFields;
  private boolean wipeExternalStorage_;

  static
  {
    defaultInstance = new PendingWipe(true);
    defaultInstance.initFields();
  }

  // ERROR //
  private PendingWipe(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 58	com/google/protobuf/GeneratedMessage:<init>	()V
    //   4: aload_0
    //   5: iconst_m1
    //   6: putfield 60	com/google/googlex/glass/common/proto/PendingWipe:memoizedIsInitialized	B
    //   9: aload_0
    //   10: iconst_m1
    //   11: putfield 62	com/google/googlex/glass/common/proto/PendingWipe:memoizedSerializedSize	I
    //   14: aload_0
    //   15: invokespecial 52	com/google/googlex/glass/common/proto/PendingWipe:initFields	()V
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
    //   38: lookupswitch	default:+42->80, 0:+181->219, 8:+60->98, 18:+107->145, 24:+147->185
    //   81: aload_1
    //   82: aload_3
    //   83: aload_2
    //   84: iload 8
    //   86: invokevirtual 78	com/google/googlex/glass/common/proto/PendingWipe:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    //   89: ifne -64 -> 25
    //   92: iconst_1
    //   93: istore 4
    //   95: goto -70 -> 25
    //   98: aload_0
    //   99: iconst_1
    //   100: aload_0
    //   101: getfield 80	com/google/googlex/glass/common/proto/PendingWipe:bitField0_	I
    //   104: ior
    //   105: putfield 80	com/google/googlex/glass/common/proto/PendingWipe:bitField0_	I
    //   108: aload_0
    //   109: aload_1
    //   110: invokevirtual 84	com/google/protobuf/CodedInputStream:readUInt64	()J
    //   113: putfield 86	com/google/googlex/glass/common/proto/PendingWipe:timestamp_	J
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
    //   135: putfield 98	com/google/googlex/glass/common/proto/PendingWipe:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   138: aload_0
    //   139: invokevirtual 101	com/google/googlex/glass/common/proto/PendingWipe:makeExtensionsImmutable	()V
    //   142: aload 6
    //   144: athrow
    //   145: aload_0
    //   146: iconst_2
    //   147: aload_0
    //   148: getfield 80	com/google/googlex/glass/common/proto/PendingWipe:bitField0_	I
    //   151: ior
    //   152: putfield 80	com/google/googlex/glass/common/proto/PendingWipe:bitField0_	I
    //   155: aload_0
    //   156: aload_1
    //   157: invokevirtual 105	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   160: putfield 107	com/google/googlex/glass/common/proto/PendingWipe:deviceId_	Ljava/lang/Object;
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
    //   188: getfield 80	com/google/googlex/glass/common/proto/PendingWipe:bitField0_	I
    //   191: ior
    //   192: putfield 80	com/google/googlex/glass/common/proto/PendingWipe:bitField0_	I
    //   195: aload_0
    //   196: aload_1
    //   197: invokevirtual 118	com/google/protobuf/CodedInputStream:readBool	()Z
    //   200: putfield 120	com/google/googlex/glass/common/proto/PendingWipe:wipeExternalStorage_	Z
    //   203: goto -178 -> 25
    //   206: aload_0
    //   207: aload_3
    //   208: invokevirtual 96	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   211: putfield 98	com/google/googlex/glass/common/proto/PendingWipe:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   214: aload_0
    //   215: invokevirtual 101	com/google/googlex/glass/common/proto/PendingWipe:makeExtensionsImmutable	()V
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

  private PendingWipe(GeneratedMessage.Builder<?> paramBuilder)
  {
    super(paramBuilder);
    this.unknownFields = paramBuilder.getUnknownFields();
  }

  private PendingWipe(boolean paramBoolean)
  {
    this.unknownFields = UnknownFieldSet.getDefaultInstance();
  }

  public static PendingWipe getDefaultInstance()
  {
    return defaultInstance;
  }

  public static final Descriptors.Descriptor getDescriptor()
  {
    return Admin.internal_static_googlex_glass_common_proto_PendingWipe_descriptor;
  }

  private void initFields()
  {
    this.timestamp_ = 0L;
    this.deviceId_ = "";
    this.wipeExternalStorage_ = false;
  }

  public static Builder newBuilder()
  {
    return Builder.access$100();
  }

  public static Builder newBuilder(PendingWipe paramPendingWipe)
  {
    return newBuilder().mergeFrom(paramPendingWipe);
  }

  public static PendingWipe parseDelimitedFrom(InputStream paramInputStream)
    throws IOException
  {
    return (PendingWipe)PARSER.parseDelimitedFrom(paramInputStream);
  }

  public static PendingWipe parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (PendingWipe)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static PendingWipe parseFrom(ByteString paramByteString)
    throws InvalidProtocolBufferException
  {
    return (PendingWipe)PARSER.parseFrom(paramByteString);
  }

  public static PendingWipe parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (PendingWipe)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
  }

  public static PendingWipe parseFrom(CodedInputStream paramCodedInputStream)
    throws IOException
  {
    return (PendingWipe)PARSER.parseFrom(paramCodedInputStream);
  }

  public static PendingWipe parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (PendingWipe)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
  }

  public static PendingWipe parseFrom(InputStream paramInputStream)
    throws IOException
  {
    return (PendingWipe)PARSER.parseFrom(paramInputStream);
  }

  public static PendingWipe parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (PendingWipe)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static PendingWipe parseFrom(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    return (PendingWipe)PARSER.parseFrom(paramArrayOfByte);
  }

  public static PendingWipe parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (PendingWipe)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
  }

  public PendingWipe getDefaultInstanceForType()
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

  public Parser<PendingWipe> getParserForType()
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
      k = 0 + CodedOutputStream.computeUInt64Size(1, this.timestamp_);
    if ((0x2 & this.bitField0_) == 2)
      k += CodedOutputStream.computeBytesSize(2, getDeviceIdBytes());
    if ((0x4 & this.bitField0_) == 4)
      k += CodedOutputStream.computeBoolSize(3, this.wipeExternalStorage_);
    int m = k + getUnknownFields().getSerializedSize();
    this.memoizedSerializedSize = m;
    return m;
  }

  public long getTimestamp()
  {
    return this.timestamp_;
  }

  public final UnknownFieldSet getUnknownFields()
  {
    return this.unknownFields;
  }

  public boolean getWipeExternalStorage()
  {
    return this.wipeExternalStorage_;
  }

  public boolean hasDeviceId()
  {
    return (0x2 & this.bitField0_) == 2;
  }

  public boolean hasTimestamp()
  {
    return (0x1 & this.bitField0_) == 1;
  }

  public boolean hasWipeExternalStorage()
  {
    return (0x4 & this.bitField0_) == 4;
  }

  protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
  {
    return Admin.internal_static_googlex_glass_common_proto_PendingWipe_fieldAccessorTable.ensureFieldAccessorsInitialized(PendingWipe.class, Builder.class);
  }

  protected MutableMessage internalMutableDefault()
  {
    if (mutableDefault == null)
      mutableDefault = internalMutableDefault("com.google.googlex.glass.common.proto.MutableAdmin$PendingWipe");
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
      paramCodedOutputStream.writeUInt64(1, this.timestamp_);
    if ((0x2 & this.bitField0_) == 2)
      paramCodedOutputStream.writeBytes(2, getDeviceIdBytes());
    if ((0x4 & this.bitField0_) == 4)
      paramCodedOutputStream.writeBool(3, this.wipeExternalStorage_);
    getUnknownFields().writeTo(paramCodedOutputStream);
  }

  public static final class Builder extends GeneratedMessage.Builder<Builder>
    implements PendingWipeOrBuilder
  {
    private int bitField0_;
    private Object deviceId_ = "";
    private long timestamp_;
    private boolean wipeExternalStorage_;

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
      return Admin.internal_static_googlex_glass_common_proto_PendingWipe_descriptor;
    }

    private void maybeForceBuilderInitialization()
    {
      if (PendingWipe.alwaysUseFieldBuilders);
    }

    public PendingWipe build()
    {
      PendingWipe localPendingWipe = buildPartial();
      if (!localPendingWipe.isInitialized())
        throw newUninitializedMessageException(localPendingWipe);
      return localPendingWipe;
    }

    public PendingWipe buildPartial()
    {
      PendingWipe localPendingWipe = new PendingWipe(this, null);
      int i = this.bitField0_;
      int j = i & 0x1;
      int k = 0;
      if (j == 1)
        k = 0x0 | 0x1;
      PendingWipe.access$502(localPendingWipe, this.timestamp_);
      if ((i & 0x2) == 2)
        k |= 2;
      PendingWipe.access$602(localPendingWipe, this.deviceId_);
      if ((i & 0x4) == 4)
        k |= 4;
      PendingWipe.access$702(localPendingWipe, this.wipeExternalStorage_);
      PendingWipe.access$802(localPendingWipe, k);
      onBuilt();
      return localPendingWipe;
    }

    public Builder clear()
    {
      super.clear();
      this.timestamp_ = 0L;
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      this.deviceId_ = "";
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      this.wipeExternalStorage_ = false;
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      return this;
    }

    public Builder clearDeviceId()
    {
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      this.deviceId_ = PendingWipe.getDefaultInstance().getDeviceId();
      onChanged();
      return this;
    }

    public Builder clearTimestamp()
    {
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      this.timestamp_ = 0L;
      onChanged();
      return this;
    }

    public Builder clearWipeExternalStorage()
    {
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      this.wipeExternalStorage_ = false;
      onChanged();
      return this;
    }

    public Builder clone()
    {
      return create().mergeFrom(buildPartial());
    }

    public PendingWipe getDefaultInstanceForType()
    {
      return PendingWipe.getDefaultInstance();
    }

    public Descriptors.Descriptor getDescriptorForType()
    {
      return Admin.internal_static_googlex_glass_common_proto_PendingWipe_descriptor;
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

    public long getTimestamp()
    {
      return this.timestamp_;
    }

    public boolean getWipeExternalStorage()
    {
      return this.wipeExternalStorage_;
    }

    public boolean hasDeviceId()
    {
      return (0x2 & this.bitField0_) == 2;
    }

    public boolean hasTimestamp()
    {
      return (0x1 & this.bitField0_) == 1;
    }

    public boolean hasWipeExternalStorage()
    {
      return (0x4 & this.bitField0_) == 4;
    }

    protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return Admin.internal_static_googlex_glass_common_proto_PendingWipe_fieldAccessorTable.ensureFieldAccessorsInitialized(PendingWipe.class, Builder.class);
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Builder mergeFrom(PendingWipe paramPendingWipe)
    {
      if (paramPendingWipe == PendingWipe.getDefaultInstance())
        return this;
      if (paramPendingWipe.hasTimestamp())
        setTimestamp(paramPendingWipe.getTimestamp());
      if (paramPendingWipe.hasDeviceId())
      {
        this.bitField0_ = (0x2 | this.bitField0_);
        this.deviceId_ = paramPendingWipe.deviceId_;
        onChanged();
      }
      if (paramPendingWipe.hasWipeExternalStorage())
        setWipeExternalStorage(paramPendingWipe.getWipeExternalStorage());
      mergeUnknownFields(paramPendingWipe.getUnknownFields());
      return this;
    }

    public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      PendingWipe localPendingWipe1 = null;
      try
      {
        PendingWipe localPendingWipe2 = (PendingWipe)PendingWipe.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
        return this;
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        localPendingWipe1 = (PendingWipe)localInvalidProtocolBufferException.getUnfinishedMessage();
        throw localInvalidProtocolBufferException;
      }
      finally
      {
        if (localPendingWipe1 != null)
          mergeFrom(localPendingWipe1);
      }
    }

    public Builder mergeFrom(Message paramMessage)
    {
      if ((paramMessage instanceof PendingWipe))
        return mergeFrom((PendingWipe)paramMessage);
      super.mergeFrom(paramMessage);
      return this;
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

    public Builder setTimestamp(long paramLong)
    {
      this.bitField0_ = (0x1 | this.bitField0_);
      this.timestamp_ = paramLong;
      onChanged();
      return this;
    }

    public Builder setWipeExternalStorage(boolean paramBoolean)
    {
      this.bitField0_ = (0x4 | this.bitField0_);
      this.wipeExternalStorage_ = paramBoolean;
      onChanged();
      return this;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.PendingWipe
 * JD-Core Version:    0.6.2
 */