package com.google.common.logging;

import com.google.googlex.glass.common.proto.proto2api.HardwareVersion;
import com.google.protobuf.AbstractMessageLite.Builder;
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
import com.google.protobuf.MessageLite;
import com.google.protobuf.MutableMessage;
import com.google.protobuf.Parser;
import com.google.protobuf.RepeatedFieldBuilder;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class GlassExtensionsProto extends GeneratedMessage
  implements GlassExtensionsProtoOrBuilder
{
  public static final int HARDWARE_VERSION_FIELD_NUMBER = 4;
  public static Parser<GlassExtensionsProto> PARSER = new AbstractParser()
  {
    public GlassExtensionsProto parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return new GlassExtensionsProto(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
    }
  };
  public static final int SESSION_ID_FIELD_NUMBER = 1;
  public static final int SOFTWARE_VERSION_FIELD_NUMBER = 2;
  public static final int USER_EVENT_FIELD_NUMBER = 3;
  private static final GlassExtensionsProto defaultInstance;
  private static volatile MutableMessage mutableDefault = null;
  private static final long serialVersionUID;
  private int bitField0_;
  private HardwareVersion hardwareVersion_;
  private byte memoizedIsInitialized = -1;
  private int memoizedSerializedSize = -1;
  private Object sessionId_;
  private Object softwareVersion_;
  private final UnknownFieldSet unknownFields;
  private List<GlassUserEventProto> userEvent_;

  static
  {
    defaultInstance = new GlassExtensionsProto(true);
    defaultInstance.initFields();
  }

  // ERROR //
  private GlassExtensionsProto(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 63	com/google/protobuf/GeneratedMessage:<init>	()V
    //   4: aload_0
    //   5: iconst_m1
    //   6: putfield 65	com/google/common/logging/GlassExtensionsProto:memoizedIsInitialized	B
    //   9: aload_0
    //   10: iconst_m1
    //   11: putfield 67	com/google/common/logging/GlassExtensionsProto:memoizedSerializedSize	I
    //   14: aload_0
    //   15: invokespecial 57	com/google/common/logging/GlassExtensionsProto:initFields	()V
    //   18: iconst_0
    //   19: istore_3
    //   20: invokestatic 73	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
    //   23: astore 4
    //   25: iconst_0
    //   26: istore 5
    //   28: iload 5
    //   30: ifne +279 -> 309
    //   33: aload_1
    //   34: invokevirtual 79	com/google/protobuf/CodedInputStream:readTag	()I
    //   37: istore 9
    //   39: iload 9
    //   41: lookupswitch	default:+51->92, 0:+300->341, 10:+70->111, 18:+136->177, 26:+176->217, 32:+219->260
    //   93: aload_1
    //   94: aload 4
    //   96: aload_2
    //   97: iload 9
    //   99: invokevirtual 83	com/google/common/logging/GlassExtensionsProto:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    //   102: ifne -74 -> 28
    //   105: iconst_1
    //   106: istore 5
    //   108: goto -80 -> 28
    //   111: aload_0
    //   112: iconst_1
    //   113: aload_0
    //   114: getfield 85	com/google/common/logging/GlassExtensionsProto:bitField0_	I
    //   117: ior
    //   118: putfield 85	com/google/common/logging/GlassExtensionsProto:bitField0_	I
    //   121: aload_0
    //   122: aload_1
    //   123: invokevirtual 89	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   126: putfield 91	com/google/common/logging/GlassExtensionsProto:sessionId_	Ljava/lang/Object;
    //   129: goto -101 -> 28
    //   132: astore 8
    //   134: aload 8
    //   136: aload_0
    //   137: invokevirtual 95	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   140: athrow
    //   141: astore 7
    //   143: iload_3
    //   144: iconst_4
    //   145: iand
    //   146: iconst_4
    //   147: if_icmpne +14 -> 161
    //   150: aload_0
    //   151: aload_0
    //   152: getfield 97	com/google/common/logging/GlassExtensionsProto:userEvent_	Ljava/util/List;
    //   155: invokestatic 103	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   158: putfield 97	com/google/common/logging/GlassExtensionsProto:userEvent_	Ljava/util/List;
    //   161: aload_0
    //   162: aload 4
    //   164: invokevirtual 109	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   167: putfield 111	com/google/common/logging/GlassExtensionsProto:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   170: aload_0
    //   171: invokevirtual 114	com/google/common/logging/GlassExtensionsProto:makeExtensionsImmutable	()V
    //   174: aload 7
    //   176: athrow
    //   177: aload_0
    //   178: iconst_2
    //   179: aload_0
    //   180: getfield 85	com/google/common/logging/GlassExtensionsProto:bitField0_	I
    //   183: ior
    //   184: putfield 85	com/google/common/logging/GlassExtensionsProto:bitField0_	I
    //   187: aload_0
    //   188: aload_1
    //   189: invokevirtual 89	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   192: putfield 116	com/google/common/logging/GlassExtensionsProto:softwareVersion_	Ljava/lang/Object;
    //   195: goto -167 -> 28
    //   198: astore 6
    //   200: new 60	com/google/protobuf/InvalidProtocolBufferException
    //   203: dup
    //   204: aload 6
    //   206: invokevirtual 120	java/io/IOException:getMessage	()Ljava/lang/String;
    //   209: invokespecial 123	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
    //   212: aload_0
    //   213: invokevirtual 95	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   216: athrow
    //   217: iload_3
    //   218: iconst_4
    //   219: iand
    //   220: iconst_4
    //   221: if_icmpeq +18 -> 239
    //   224: aload_0
    //   225: new 125	java/util/ArrayList
    //   228: dup
    //   229: invokespecial 126	java/util/ArrayList:<init>	()V
    //   232: putfield 97	com/google/common/logging/GlassExtensionsProto:userEvent_	Ljava/util/List;
    //   235: iload_3
    //   236: iconst_4
    //   237: ior
    //   238: istore_3
    //   239: aload_0
    //   240: getfield 97	com/google/common/logging/GlassExtensionsProto:userEvent_	Ljava/util/List;
    //   243: aload_1
    //   244: getstatic 129	com/google/common/logging/GlassUserEventProto:PARSER	Lcom/google/protobuf/Parser;
    //   247: aload_2
    //   248: invokevirtual 133	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
    //   251: invokeinterface 139 2 0
    //   256: pop
    //   257: goto -229 -> 28
    //   260: aload_1
    //   261: invokevirtual 142	com/google/protobuf/CodedInputStream:readEnum	()I
    //   264: istore 10
    //   266: iload 10
    //   268: invokestatic 148	com/google/googlex/glass/common/proto/proto2api/HardwareVersion:valueOf	(I)Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;
    //   271: astore 11
    //   273: aload 11
    //   275: ifnonnull +15 -> 290
    //   278: aload 4
    //   280: iconst_4
    //   281: iload 10
    //   283: invokevirtual 152	com/google/protobuf/UnknownFieldSet$Builder:mergeVarintField	(II)Lcom/google/protobuf/UnknownFieldSet$Builder;
    //   286: pop
    //   287: goto -259 -> 28
    //   290: aload_0
    //   291: iconst_4
    //   292: aload_0
    //   293: getfield 85	com/google/common/logging/GlassExtensionsProto:bitField0_	I
    //   296: ior
    //   297: putfield 85	com/google/common/logging/GlassExtensionsProto:bitField0_	I
    //   300: aload_0
    //   301: aload 11
    //   303: putfield 154	com/google/common/logging/GlassExtensionsProto:hardwareVersion_	Lcom/google/googlex/glass/common/proto/proto2api/HardwareVersion;
    //   306: goto -278 -> 28
    //   309: iload_3
    //   310: iconst_4
    //   311: iand
    //   312: iconst_4
    //   313: if_icmpne +14 -> 327
    //   316: aload_0
    //   317: aload_0
    //   318: getfield 97	com/google/common/logging/GlassExtensionsProto:userEvent_	Ljava/util/List;
    //   321: invokestatic 103	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   324: putfield 97	com/google/common/logging/GlassExtensionsProto:userEvent_	Ljava/util/List;
    //   327: aload_0
    //   328: aload 4
    //   330: invokevirtual 109	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   333: putfield 111	com/google/common/logging/GlassExtensionsProto:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   336: aload_0
    //   337: invokevirtual 114	com/google/common/logging/GlassExtensionsProto:makeExtensionsImmutable	()V
    //   340: return
    //   341: iconst_1
    //   342: istore 5
    //   344: goto -316 -> 28
    //
    // Exception table:
    //   from	to	target	type
    //   33	39	132	com/google/protobuf/InvalidProtocolBufferException
    //   92	105	132	com/google/protobuf/InvalidProtocolBufferException
    //   111	129	132	com/google/protobuf/InvalidProtocolBufferException
    //   177	195	132	com/google/protobuf/InvalidProtocolBufferException
    //   224	235	132	com/google/protobuf/InvalidProtocolBufferException
    //   239	257	132	com/google/protobuf/InvalidProtocolBufferException
    //   260	273	132	com/google/protobuf/InvalidProtocolBufferException
    //   278	287	132	com/google/protobuf/InvalidProtocolBufferException
    //   290	306	132	com/google/protobuf/InvalidProtocolBufferException
    //   33	39	141	finally
    //   92	105	141	finally
    //   111	129	141	finally
    //   134	141	141	finally
    //   177	195	141	finally
    //   200	217	141	finally
    //   224	235	141	finally
    //   239	257	141	finally
    //   260	273	141	finally
    //   278	287	141	finally
    //   290	306	141	finally
    //   33	39	198	java/io/IOException
    //   92	105	198	java/io/IOException
    //   111	129	198	java/io/IOException
    //   177	195	198	java/io/IOException
    //   224	235	198	java/io/IOException
    //   239	257	198	java/io/IOException
    //   260	273	198	java/io/IOException
    //   278	287	198	java/io/IOException
    //   290	306	198	java/io/IOException
  }

  private GlassExtensionsProto(GeneratedMessage.Builder<?> paramBuilder)
  {
    super(paramBuilder);
    this.unknownFields = paramBuilder.getUnknownFields();
  }

  private GlassExtensionsProto(boolean paramBoolean)
  {
    this.unknownFields = UnknownFieldSet.getDefaultInstance();
  }

  public static GlassExtensionsProto getDefaultInstance()
  {
    return defaultInstance;
  }

  public static final Descriptors.Descriptor getDescriptor()
  {
    return GlassExtensions.internal_static_googlex_glass_GlassExtensionsProto_descriptor;
  }

  private void initFields()
  {
    this.sessionId_ = "";
    this.softwareVersion_ = "";
    this.userEvent_ = Collections.emptyList();
    this.hardwareVersion_ = HardwareVersion.UNVERSIONED;
  }

  public static Builder newBuilder()
  {
    return Builder.access$100();
  }

  public static Builder newBuilder(GlassExtensionsProto paramGlassExtensionsProto)
  {
    return newBuilder().mergeFrom(paramGlassExtensionsProto);
  }

  public static GlassExtensionsProto parseDelimitedFrom(InputStream paramInputStream)
    throws IOException
  {
    return (GlassExtensionsProto)PARSER.parseDelimitedFrom(paramInputStream);
  }

  public static GlassExtensionsProto parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (GlassExtensionsProto)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static GlassExtensionsProto parseFrom(ByteString paramByteString)
    throws InvalidProtocolBufferException
  {
    return (GlassExtensionsProto)PARSER.parseFrom(paramByteString);
  }

  public static GlassExtensionsProto parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (GlassExtensionsProto)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
  }

  public static GlassExtensionsProto parseFrom(CodedInputStream paramCodedInputStream)
    throws IOException
  {
    return (GlassExtensionsProto)PARSER.parseFrom(paramCodedInputStream);
  }

  public static GlassExtensionsProto parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (GlassExtensionsProto)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
  }

  public static GlassExtensionsProto parseFrom(InputStream paramInputStream)
    throws IOException
  {
    return (GlassExtensionsProto)PARSER.parseFrom(paramInputStream);
  }

  public static GlassExtensionsProto parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (GlassExtensionsProto)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static GlassExtensionsProto parseFrom(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    return (GlassExtensionsProto)PARSER.parseFrom(paramArrayOfByte);
  }

  public static GlassExtensionsProto parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (GlassExtensionsProto)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
  }

  public GlassExtensionsProto getDefaultInstanceForType()
  {
    return defaultInstance;
  }

  public HardwareVersion getHardwareVersion()
  {
    return this.hardwareVersion_;
  }

  public Parser<GlassExtensionsProto> getParserForType()
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
    if ((0x2 & this.bitField0_) == 2)
      k += CodedOutputStream.computeBytesSize(2, getSoftwareVersionBytes());
    for (int m = 0; m < this.userEvent_.size(); m++)
      k += CodedOutputStream.computeMessageSize(3, (MessageLite)this.userEvent_.get(m));
    if ((0x4 & this.bitField0_) == 4)
      k += CodedOutputStream.computeEnumSize(4, this.hardwareVersion_.getNumber());
    int n = k + getUnknownFields().getSerializedSize();
    this.memoizedSerializedSize = n;
    return n;
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

  public String getSoftwareVersion()
  {
    Object localObject = this.softwareVersion_;
    if ((localObject instanceof String))
      return (String)localObject;
    ByteString localByteString = (ByteString)localObject;
    String str = localByteString.toStringUtf8();
    if (localByteString.isValidUtf8())
      this.softwareVersion_ = str;
    return str;
  }

  public ByteString getSoftwareVersionBytes()
  {
    Object localObject = this.softwareVersion_;
    if ((localObject instanceof String))
    {
      ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
      this.softwareVersion_ = localByteString;
      return localByteString;
    }
    return (ByteString)localObject;
  }

  public final UnknownFieldSet getUnknownFields()
  {
    return this.unknownFields;
  }

  public GlassUserEventProto getUserEvent(int paramInt)
  {
    return (GlassUserEventProto)this.userEvent_.get(paramInt);
  }

  public int getUserEventCount()
  {
    return this.userEvent_.size();
  }

  public List<GlassUserEventProto> getUserEventList()
  {
    return this.userEvent_;
  }

  public GlassUserEventProtoOrBuilder getUserEventOrBuilder(int paramInt)
  {
    return (GlassUserEventProtoOrBuilder)this.userEvent_.get(paramInt);
  }

  public List<? extends GlassUserEventProtoOrBuilder> getUserEventOrBuilderList()
  {
    return this.userEvent_;
  }

  public boolean hasHardwareVersion()
  {
    return (0x4 & this.bitField0_) == 4;
  }

  public boolean hasSessionId()
  {
    return (0x1 & this.bitField0_) == 1;
  }

  public boolean hasSoftwareVersion()
  {
    return (0x2 & this.bitField0_) == 2;
  }

  protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
  {
    return GlassExtensions.internal_static_googlex_glass_GlassExtensionsProto_fieldAccessorTable.ensureFieldAccessorsInitialized(GlassExtensionsProto.class, Builder.class);
  }

  protected MutableMessage internalMutableDefault()
  {
    if (mutableDefault == null)
      mutableDefault = internalMutableDefault("com.google.common.logging.MutableGlassExtensions$GlassExtensionsProto");
    return mutableDefault;
  }

  public final boolean isInitialized()
  {
    int i = this.memoizedIsInitialized;
    if (i != -1)
      return i == 1;
    for (int j = 0; j < getUserEventCount(); j++)
      if (!getUserEvent(j).isInitialized())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
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
    if ((0x2 & this.bitField0_) == 2)
      paramCodedOutputStream.writeBytes(2, getSoftwareVersionBytes());
    for (int i = 0; i < this.userEvent_.size(); i++)
      paramCodedOutputStream.writeMessage(3, (MessageLite)this.userEvent_.get(i));
    if ((0x4 & this.bitField0_) == 4)
      paramCodedOutputStream.writeEnum(4, this.hardwareVersion_.getNumber());
    getUnknownFields().writeTo(paramCodedOutputStream);
  }

  public static final class Builder extends GeneratedMessage.Builder<Builder>
    implements GlassExtensionsProtoOrBuilder
  {
    private int bitField0_;
    private HardwareVersion hardwareVersion_ = HardwareVersion.UNVERSIONED;
    private Object sessionId_ = "";
    private Object softwareVersion_ = "";
    private RepeatedFieldBuilder<GlassUserEventProto, GlassUserEventProto.Builder, GlassUserEventProtoOrBuilder> userEventBuilder_;
    private List<GlassUserEventProto> userEvent_ = Collections.emptyList();

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

    private void ensureUserEventIsMutable()
    {
      if ((0x4 & this.bitField0_) != 4)
      {
        this.userEvent_ = new ArrayList(this.userEvent_);
        this.bitField0_ = (0x4 | this.bitField0_);
      }
    }

    public static final Descriptors.Descriptor getDescriptor()
    {
      return GlassExtensions.internal_static_googlex_glass_GlassExtensionsProto_descriptor;
    }

    private RepeatedFieldBuilder<GlassUserEventProto, GlassUserEventProto.Builder, GlassUserEventProtoOrBuilder> getUserEventFieldBuilder()
    {
      List localList;
      if (this.userEventBuilder_ == null)
      {
        localList = this.userEvent_;
        if ((0x4 & this.bitField0_) != 4)
          break label55;
      }
      label55: for (boolean bool = true; ; bool = false)
      {
        this.userEventBuilder_ = new RepeatedFieldBuilder(localList, bool, getParentForChildren(), isClean());
        this.userEvent_ = null;
        return this.userEventBuilder_;
      }
    }

    private void maybeForceBuilderInitialization()
    {
      if (GlassExtensionsProto.alwaysUseFieldBuilders)
        getUserEventFieldBuilder();
    }

    public Builder addAllUserEvent(Iterable<? extends GlassUserEventProto> paramIterable)
    {
      if (this.userEventBuilder_ == null)
      {
        ensureUserEventIsMutable();
        AbstractMessageLite.Builder.addAll(paramIterable, this.userEvent_);
        onChanged();
        return this;
      }
      this.userEventBuilder_.addAllMessages(paramIterable);
      return this;
    }

    public Builder addUserEvent(int paramInt, GlassUserEventProto.Builder paramBuilder)
    {
      if (this.userEventBuilder_ == null)
      {
        ensureUserEventIsMutable();
        this.userEvent_.add(paramInt, paramBuilder.build());
        onChanged();
        return this;
      }
      this.userEventBuilder_.addMessage(paramInt, paramBuilder.build());
      return this;
    }

    public Builder addUserEvent(int paramInt, GlassUserEventProto paramGlassUserEventProto)
    {
      if (this.userEventBuilder_ == null)
      {
        if (paramGlassUserEventProto == null)
          throw new NullPointerException();
        ensureUserEventIsMutable();
        this.userEvent_.add(paramInt, paramGlassUserEventProto);
        onChanged();
        return this;
      }
      this.userEventBuilder_.addMessage(paramInt, paramGlassUserEventProto);
      return this;
    }

    public Builder addUserEvent(GlassUserEventProto.Builder paramBuilder)
    {
      if (this.userEventBuilder_ == null)
      {
        ensureUserEventIsMutable();
        this.userEvent_.add(paramBuilder.build());
        onChanged();
        return this;
      }
      this.userEventBuilder_.addMessage(paramBuilder.build());
      return this;
    }

    public Builder addUserEvent(GlassUserEventProto paramGlassUserEventProto)
    {
      if (this.userEventBuilder_ == null)
      {
        if (paramGlassUserEventProto == null)
          throw new NullPointerException();
        ensureUserEventIsMutable();
        this.userEvent_.add(paramGlassUserEventProto);
        onChanged();
        return this;
      }
      this.userEventBuilder_.addMessage(paramGlassUserEventProto);
      return this;
    }

    public GlassUserEventProto.Builder addUserEventBuilder()
    {
      return (GlassUserEventProto.Builder)getUserEventFieldBuilder().addBuilder(GlassUserEventProto.getDefaultInstance());
    }

    public GlassUserEventProto.Builder addUserEventBuilder(int paramInt)
    {
      return (GlassUserEventProto.Builder)getUserEventFieldBuilder().addBuilder(paramInt, GlassUserEventProto.getDefaultInstance());
    }

    public GlassExtensionsProto build()
    {
      GlassExtensionsProto localGlassExtensionsProto = buildPartial();
      if (!localGlassExtensionsProto.isInitialized())
        throw newUninitializedMessageException(localGlassExtensionsProto);
      return localGlassExtensionsProto;
    }

    public GlassExtensionsProto buildPartial()
    {
      GlassExtensionsProto localGlassExtensionsProto = new GlassExtensionsProto(this, null);
      int i = this.bitField0_;
      int j = i & 0x1;
      int k = 0;
      if (j == 1)
        k = 0x0 | 0x1;
      GlassExtensionsProto.access$502(localGlassExtensionsProto, this.sessionId_);
      if ((i & 0x2) == 2)
        k |= 2;
      GlassExtensionsProto.access$602(localGlassExtensionsProto, this.softwareVersion_);
      if (this.userEventBuilder_ == null)
      {
        if ((0x4 & this.bitField0_) == 4)
        {
          this.userEvent_ = Collections.unmodifiableList(this.userEvent_);
          this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
        }
        GlassExtensionsProto.access$702(localGlassExtensionsProto, this.userEvent_);
      }
      while (true)
      {
        if ((i & 0x8) == 8)
          k |= 4;
        GlassExtensionsProto.access$802(localGlassExtensionsProto, this.hardwareVersion_);
        GlassExtensionsProto.access$902(localGlassExtensionsProto, k);
        onBuilt();
        return localGlassExtensionsProto;
        GlassExtensionsProto.access$702(localGlassExtensionsProto, this.userEventBuilder_.build());
      }
    }

    public Builder clear()
    {
      super.clear();
      this.sessionId_ = "";
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      this.softwareVersion_ = "";
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      if (this.userEventBuilder_ == null)
      {
        this.userEvent_ = Collections.emptyList();
        this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      }
      while (true)
      {
        this.hardwareVersion_ = HardwareVersion.UNVERSIONED;
        this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
        return this;
        this.userEventBuilder_.clear();
      }
    }

    public Builder clearHardwareVersion()
    {
      this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
      this.hardwareVersion_ = HardwareVersion.UNVERSIONED;
      onChanged();
      return this;
    }

    public Builder clearSessionId()
    {
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      this.sessionId_ = GlassExtensionsProto.getDefaultInstance().getSessionId();
      onChanged();
      return this;
    }

    public Builder clearSoftwareVersion()
    {
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      this.softwareVersion_ = GlassExtensionsProto.getDefaultInstance().getSoftwareVersion();
      onChanged();
      return this;
    }

    public Builder clearUserEvent()
    {
      if (this.userEventBuilder_ == null)
      {
        this.userEvent_ = Collections.emptyList();
        this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
        onChanged();
        return this;
      }
      this.userEventBuilder_.clear();
      return this;
    }

    public Builder clone()
    {
      return create().mergeFrom(buildPartial());
    }

    public GlassExtensionsProto getDefaultInstanceForType()
    {
      return GlassExtensionsProto.getDefaultInstance();
    }

    public Descriptors.Descriptor getDescriptorForType()
    {
      return GlassExtensions.internal_static_googlex_glass_GlassExtensionsProto_descriptor;
    }

    public HardwareVersion getHardwareVersion()
    {
      return this.hardwareVersion_;
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

    public String getSoftwareVersion()
    {
      Object localObject = this.softwareVersion_;
      if (!(localObject instanceof String))
      {
        String str = ((ByteString)localObject).toStringUtf8();
        this.softwareVersion_ = str;
        return str;
      }
      return (String)localObject;
    }

    public ByteString getSoftwareVersionBytes()
    {
      Object localObject = this.softwareVersion_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.softwareVersion_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public GlassUserEventProto getUserEvent(int paramInt)
    {
      if (this.userEventBuilder_ == null)
        return (GlassUserEventProto)this.userEvent_.get(paramInt);
      return (GlassUserEventProto)this.userEventBuilder_.getMessage(paramInt);
    }

    public GlassUserEventProto.Builder getUserEventBuilder(int paramInt)
    {
      return (GlassUserEventProto.Builder)getUserEventFieldBuilder().getBuilder(paramInt);
    }

    public List<GlassUserEventProto.Builder> getUserEventBuilderList()
    {
      return getUserEventFieldBuilder().getBuilderList();
    }

    public int getUserEventCount()
    {
      if (this.userEventBuilder_ == null)
        return this.userEvent_.size();
      return this.userEventBuilder_.getCount();
    }

    public List<GlassUserEventProto> getUserEventList()
    {
      if (this.userEventBuilder_ == null)
        return Collections.unmodifiableList(this.userEvent_);
      return this.userEventBuilder_.getMessageList();
    }

    public GlassUserEventProtoOrBuilder getUserEventOrBuilder(int paramInt)
    {
      if (this.userEventBuilder_ == null)
        return (GlassUserEventProtoOrBuilder)this.userEvent_.get(paramInt);
      return (GlassUserEventProtoOrBuilder)this.userEventBuilder_.getMessageOrBuilder(paramInt);
    }

    public List<? extends GlassUserEventProtoOrBuilder> getUserEventOrBuilderList()
    {
      if (this.userEventBuilder_ != null)
        return this.userEventBuilder_.getMessageOrBuilderList();
      return Collections.unmodifiableList(this.userEvent_);
    }

    public boolean hasHardwareVersion()
    {
      return (0x8 & this.bitField0_) == 8;
    }

    public boolean hasSessionId()
    {
      return (0x1 & this.bitField0_) == 1;
    }

    public boolean hasSoftwareVersion()
    {
      return (0x2 & this.bitField0_) == 2;
    }

    protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return GlassExtensions.internal_static_googlex_glass_GlassExtensionsProto_fieldAccessorTable.ensureFieldAccessorsInitialized(GlassExtensionsProto.class, Builder.class);
    }

    public final boolean isInitialized()
    {
      for (int i = 0; i < getUserEventCount(); i++)
        if (!getUserEvent(i).isInitialized())
          return false;
      return true;
    }

    public Builder mergeFrom(GlassExtensionsProto paramGlassExtensionsProto)
    {
      if (paramGlassExtensionsProto == GlassExtensionsProto.getDefaultInstance())
        return this;
      if (paramGlassExtensionsProto.hasSessionId())
      {
        this.bitField0_ = (0x1 | this.bitField0_);
        this.sessionId_ = paramGlassExtensionsProto.sessionId_;
        onChanged();
      }
      if (paramGlassExtensionsProto.hasSoftwareVersion())
      {
        this.bitField0_ = (0x2 | this.bitField0_);
        this.softwareVersion_ = paramGlassExtensionsProto.softwareVersion_;
        onChanged();
      }
      if (this.userEventBuilder_ == null)
        if (!paramGlassExtensionsProto.userEvent_.isEmpty())
        {
          if (!this.userEvent_.isEmpty())
            break label148;
          this.userEvent_ = paramGlassExtensionsProto.userEvent_;
          this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
          onChanged();
        }
      while (true)
      {
        if (paramGlassExtensionsProto.hasHardwareVersion())
          setHardwareVersion(paramGlassExtensionsProto.getHardwareVersion());
        mergeUnknownFields(paramGlassExtensionsProto.getUnknownFields());
        return this;
        label148: ensureUserEventIsMutable();
        this.userEvent_.addAll(paramGlassExtensionsProto.userEvent_);
        break;
        if (!paramGlassExtensionsProto.userEvent_.isEmpty())
          if (this.userEventBuilder_.isEmpty())
          {
            this.userEventBuilder_.dispose();
            this.userEventBuilder_ = null;
            this.userEvent_ = paramGlassExtensionsProto.userEvent_;
            this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
            boolean bool = GlassExtensionsProto.alwaysUseFieldBuilders;
            RepeatedFieldBuilder localRepeatedFieldBuilder = null;
            if (bool)
              localRepeatedFieldBuilder = getUserEventFieldBuilder();
            this.userEventBuilder_ = localRepeatedFieldBuilder;
          }
          else
          {
            this.userEventBuilder_.addAllMessages(paramGlassExtensionsProto.userEvent_);
          }
      }
    }

    public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      GlassExtensionsProto localGlassExtensionsProto1 = null;
      try
      {
        GlassExtensionsProto localGlassExtensionsProto2 = (GlassExtensionsProto)GlassExtensionsProto.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
        return this;
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        localGlassExtensionsProto1 = (GlassExtensionsProto)localInvalidProtocolBufferException.getUnfinishedMessage();
        throw localInvalidProtocolBufferException;
      }
      finally
      {
        if (localGlassExtensionsProto1 != null)
          mergeFrom(localGlassExtensionsProto1);
      }
    }

    public Builder mergeFrom(Message paramMessage)
    {
      if ((paramMessage instanceof GlassExtensionsProto))
        return mergeFrom((GlassExtensionsProto)paramMessage);
      super.mergeFrom(paramMessage);
      return this;
    }

    public Builder removeUserEvent(int paramInt)
    {
      if (this.userEventBuilder_ == null)
      {
        ensureUserEventIsMutable();
        this.userEvent_.remove(paramInt);
        onChanged();
        return this;
      }
      this.userEventBuilder_.remove(paramInt);
      return this;
    }

    public Builder setHardwareVersion(HardwareVersion paramHardwareVersion)
    {
      if (paramHardwareVersion == null)
        throw new NullPointerException();
      this.bitField0_ = (0x8 | this.bitField0_);
      this.hardwareVersion_ = paramHardwareVersion;
      onChanged();
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

    public Builder setSoftwareVersion(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x2 | this.bitField0_);
      this.softwareVersion_ = paramString;
      onChanged();
      return this;
    }

    public Builder setSoftwareVersionBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x2 | this.bitField0_);
      this.softwareVersion_ = paramByteString;
      onChanged();
      return this;
    }

    public Builder setUserEvent(int paramInt, GlassUserEventProto.Builder paramBuilder)
    {
      if (this.userEventBuilder_ == null)
      {
        ensureUserEventIsMutable();
        this.userEvent_.set(paramInt, paramBuilder.build());
        onChanged();
        return this;
      }
      this.userEventBuilder_.setMessage(paramInt, paramBuilder.build());
      return this;
    }

    public Builder setUserEvent(int paramInt, GlassUserEventProto paramGlassUserEventProto)
    {
      if (this.userEventBuilder_ == null)
      {
        if (paramGlassUserEventProto == null)
          throw new NullPointerException();
        ensureUserEventIsMutable();
        this.userEvent_.set(paramInt, paramGlassUserEventProto);
        onChanged();
        return this;
      }
      this.userEventBuilder_.setMessage(paramInt, paramGlassUserEventProto);
      return this;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.logging.GlassExtensionsProto
 * JD-Core Version:    0.6.2
 */