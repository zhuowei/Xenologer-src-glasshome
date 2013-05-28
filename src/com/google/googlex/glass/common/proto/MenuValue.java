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

public final class MenuValue extends GeneratedMessage
  implements MenuValueOrBuilder
{
  public static final int DISPLAY_NAME_FIELD_NUMBER = 1;
  public static final int ICON_URL_FIELD_NUMBER = 2;
  public static Parser<MenuValue> PARSER = new AbstractParser()
  {
    public MenuValue parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return new MenuValue(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
    }
  };
  public static final int STATE_FIELD_NUMBER = 3;
  private static final MenuValue defaultInstance;
  private static volatile MutableMessage mutableDefault = null;
  private static final long serialVersionUID;
  private int bitField0_;
  private Object displayName_;
  private Object iconUrl_;
  private byte memoizedIsInitialized = -1;
  private int memoizedSerializedSize = -1;
  private MenuItem.State state_;
  private final UnknownFieldSet unknownFields;

  static
  {
    defaultInstance = new MenuValue(true);
    defaultInstance.initFields();
  }

  // ERROR //
  private MenuValue(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 58	com/google/protobuf/GeneratedMessage:<init>	()V
    //   4: aload_0
    //   5: iconst_m1
    //   6: putfield 60	com/google/googlex/glass/common/proto/MenuValue:memoizedIsInitialized	B
    //   9: aload_0
    //   10: iconst_m1
    //   11: putfield 62	com/google/googlex/glass/common/proto/MenuValue:memoizedSerializedSize	I
    //   14: aload_0
    //   15: invokespecial 52	com/google/googlex/glass/common/proto/MenuValue:initFields	()V
    //   18: invokestatic 68	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
    //   21: astore_3
    //   22: iconst_0
    //   23: istore 4
    //   25: iload 4
    //   27: ifne +206 -> 233
    //   30: aload_1
    //   31: invokevirtual 74	com/google/protobuf/CodedInputStream:readTag	()I
    //   34: istore 8
    //   36: iload 8
    //   38: lookupswitch	default:+42->80, 0:+208->246, 10:+60->98, 18:+107->145, 24:+147->185
    //   81: aload_1
    //   82: aload_3
    //   83: aload_2
    //   84: iload 8
    //   86: invokevirtual 78	com/google/googlex/glass/common/proto/MenuValue:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    //   89: ifne -64 -> 25
    //   92: iconst_1
    //   93: istore 4
    //   95: goto -70 -> 25
    //   98: aload_0
    //   99: iconst_2
    //   100: aload_0
    //   101: getfield 80	com/google/googlex/glass/common/proto/MenuValue:bitField0_	I
    //   104: ior
    //   105: putfield 80	com/google/googlex/glass/common/proto/MenuValue:bitField0_	I
    //   108: aload_0
    //   109: aload_1
    //   110: invokevirtual 84	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   113: putfield 86	com/google/googlex/glass/common/proto/MenuValue:displayName_	Ljava/lang/Object;
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
    //   135: putfield 98	com/google/googlex/glass/common/proto/MenuValue:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   138: aload_0
    //   139: invokevirtual 101	com/google/googlex/glass/common/proto/MenuValue:makeExtensionsImmutable	()V
    //   142: aload 6
    //   144: athrow
    //   145: aload_0
    //   146: iconst_4
    //   147: aload_0
    //   148: getfield 80	com/google/googlex/glass/common/proto/MenuValue:bitField0_	I
    //   151: ior
    //   152: putfield 80	com/google/googlex/glass/common/proto/MenuValue:bitField0_	I
    //   155: aload_0
    //   156: aload_1
    //   157: invokevirtual 84	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   160: putfield 103	com/google/googlex/glass/common/proto/MenuValue:iconUrl_	Ljava/lang/Object;
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
    //   185: aload_1
    //   186: invokevirtual 113	com/google/protobuf/CodedInputStream:readEnum	()I
    //   189: istore 9
    //   191: iload 9
    //   193: invokestatic 119	com/google/googlex/glass/common/proto/MenuItem$State:valueOf	(I)Lcom/google/googlex/glass/common/proto/MenuItem$State;
    //   196: astore 10
    //   198: aload 10
    //   200: ifnonnull +14 -> 214
    //   203: aload_3
    //   204: iconst_3
    //   205: iload 9
    //   207: invokevirtual 123	com/google/protobuf/UnknownFieldSet$Builder:mergeVarintField	(II)Lcom/google/protobuf/UnknownFieldSet$Builder;
    //   210: pop
    //   211: goto -186 -> 25
    //   214: aload_0
    //   215: iconst_1
    //   216: aload_0
    //   217: getfield 80	com/google/googlex/glass/common/proto/MenuValue:bitField0_	I
    //   220: ior
    //   221: putfield 80	com/google/googlex/glass/common/proto/MenuValue:bitField0_	I
    //   224: aload_0
    //   225: aload 10
    //   227: putfield 125	com/google/googlex/glass/common/proto/MenuValue:state_	Lcom/google/googlex/glass/common/proto/MenuItem$State;
    //   230: goto -205 -> 25
    //   233: aload_0
    //   234: aload_3
    //   235: invokevirtual 96	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   238: putfield 98	com/google/googlex/glass/common/proto/MenuValue:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   241: aload_0
    //   242: invokevirtual 101	com/google/googlex/glass/common/proto/MenuValue:makeExtensionsImmutable	()V
    //   245: return
    //   246: iconst_1
    //   247: istore 4
    //   249: goto -224 -> 25
    //
    // Exception table:
    //   from	to	target	type
    //   30	36	119	com/google/protobuf/InvalidProtocolBufferException
    //   80	92	119	com/google/protobuf/InvalidProtocolBufferException
    //   98	116	119	com/google/protobuf/InvalidProtocolBufferException
    //   145	163	119	com/google/protobuf/InvalidProtocolBufferException
    //   185	198	119	com/google/protobuf/InvalidProtocolBufferException
    //   203	211	119	com/google/protobuf/InvalidProtocolBufferException
    //   214	230	119	com/google/protobuf/InvalidProtocolBufferException
    //   30	36	128	finally
    //   80	92	128	finally
    //   98	116	128	finally
    //   121	128	128	finally
    //   145	163	128	finally
    //   168	185	128	finally
    //   185	198	128	finally
    //   203	211	128	finally
    //   214	230	128	finally
    //   30	36	166	java/io/IOException
    //   80	92	166	java/io/IOException
    //   98	116	166	java/io/IOException
    //   145	163	166	java/io/IOException
    //   185	198	166	java/io/IOException
    //   203	211	166	java/io/IOException
    //   214	230	166	java/io/IOException
  }

  private MenuValue(GeneratedMessage.Builder<?> paramBuilder)
  {
    super(paramBuilder);
    this.unknownFields = paramBuilder.getUnknownFields();
  }

  private MenuValue(boolean paramBoolean)
  {
    this.unknownFields = UnknownFieldSet.getDefaultInstance();
  }

  public static MenuValue getDefaultInstance()
  {
    return defaultInstance;
  }

  public static final Descriptors.Descriptor getDescriptor()
  {
    return Timeline.internal_static_googlex_glass_common_proto_MenuValue_descriptor;
  }

  private void initFields()
  {
    this.state_ = MenuItem.State.DEFAULT;
    this.displayName_ = "";
    this.iconUrl_ = "";
  }

  public static Builder newBuilder()
  {
    return Builder.access$100();
  }

  public static Builder newBuilder(MenuValue paramMenuValue)
  {
    return newBuilder().mergeFrom(paramMenuValue);
  }

  public static MenuValue parseDelimitedFrom(InputStream paramInputStream)
    throws IOException
  {
    return (MenuValue)PARSER.parseDelimitedFrom(paramInputStream);
  }

  public static MenuValue parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (MenuValue)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static MenuValue parseFrom(ByteString paramByteString)
    throws InvalidProtocolBufferException
  {
    return (MenuValue)PARSER.parseFrom(paramByteString);
  }

  public static MenuValue parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (MenuValue)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
  }

  public static MenuValue parseFrom(CodedInputStream paramCodedInputStream)
    throws IOException
  {
    return (MenuValue)PARSER.parseFrom(paramCodedInputStream);
  }

  public static MenuValue parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (MenuValue)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
  }

  public static MenuValue parseFrom(InputStream paramInputStream)
    throws IOException
  {
    return (MenuValue)PARSER.parseFrom(paramInputStream);
  }

  public static MenuValue parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (MenuValue)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static MenuValue parseFrom(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    return (MenuValue)PARSER.parseFrom(paramArrayOfByte);
  }

  public static MenuValue parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (MenuValue)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
  }

  public MenuValue getDefaultInstanceForType()
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

  public String getIconUrl()
  {
    Object localObject = this.iconUrl_;
    if ((localObject instanceof String))
      return (String)localObject;
    ByteString localByteString = (ByteString)localObject;
    String str = localByteString.toStringUtf8();
    if (localByteString.isValidUtf8())
      this.iconUrl_ = str;
    return str;
  }

  public ByteString getIconUrlBytes()
  {
    Object localObject = this.iconUrl_;
    if ((localObject instanceof String))
    {
      ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
      this.iconUrl_ = localByteString;
      return localByteString;
    }
    return (ByteString)localObject;
  }

  public Parser<MenuValue> getParserForType()
  {
    return PARSER;
  }

  public int getSerializedSize()
  {
    int i = this.memoizedSerializedSize;
    if (i != -1)
      return i;
    int j = 0x2 & this.bitField0_;
    int k = 0;
    if (j == 2)
      k = 0 + CodedOutputStream.computeBytesSize(1, getDisplayNameBytes());
    if ((0x4 & this.bitField0_) == 4)
      k += CodedOutputStream.computeBytesSize(2, getIconUrlBytes());
    if ((0x1 & this.bitField0_) == 1)
      k += CodedOutputStream.computeEnumSize(3, this.state_.getNumber());
    int m = k + getUnknownFields().getSerializedSize();
    this.memoizedSerializedSize = m;
    return m;
  }

  public MenuItem.State getState()
  {
    return this.state_;
  }

  public final UnknownFieldSet getUnknownFields()
  {
    return this.unknownFields;
  }

  public boolean hasDisplayName()
  {
    return (0x2 & this.bitField0_) == 2;
  }

  public boolean hasIconUrl()
  {
    return (0x4 & this.bitField0_) == 4;
  }

  public boolean hasState()
  {
    return (0x1 & this.bitField0_) == 1;
  }

  protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
  {
    return Timeline.internal_static_googlex_glass_common_proto_MenuValue_fieldAccessorTable.ensureFieldAccessorsInitialized(MenuValue.class, Builder.class);
  }

  protected MutableMessage internalMutableDefault()
  {
    if (mutableDefault == null)
      mutableDefault = internalMutableDefault("com.google.googlex.glass.common.proto.MutableTimeline$MenuValue");
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
    if ((0x2 & this.bitField0_) == 2)
      paramCodedOutputStream.writeBytes(1, getDisplayNameBytes());
    if ((0x4 & this.bitField0_) == 4)
      paramCodedOutputStream.writeBytes(2, getIconUrlBytes());
    if ((0x1 & this.bitField0_) == 1)
      paramCodedOutputStream.writeEnum(3, this.state_.getNumber());
    getUnknownFields().writeTo(paramCodedOutputStream);
  }

  public static final class Builder extends GeneratedMessage.Builder<Builder>
    implements MenuValueOrBuilder
  {
    private int bitField0_;
    private Object displayName_ = "";
    private Object iconUrl_ = "";
    private MenuItem.State state_ = MenuItem.State.DEFAULT;

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
      return Timeline.internal_static_googlex_glass_common_proto_MenuValue_descriptor;
    }

    private void maybeForceBuilderInitialization()
    {
      if (MenuValue.alwaysUseFieldBuilders);
    }

    public MenuValue build()
    {
      MenuValue localMenuValue = buildPartial();
      if (!localMenuValue.isInitialized())
        throw newUninitializedMessageException(localMenuValue);
      return localMenuValue;
    }

    public MenuValue buildPartial()
    {
      MenuValue localMenuValue = new MenuValue(this, null);
      int i = this.bitField0_;
      int j = i & 0x1;
      int k = 0;
      if (j == 1)
        k = 0x0 | 0x1;
      MenuValue.access$502(localMenuValue, this.state_);
      if ((i & 0x2) == 2)
        k |= 2;
      MenuValue.access$602(localMenuValue, this.displayName_);
      if ((i & 0x4) == 4)
        k |= 4;
      MenuValue.access$702(localMenuValue, this.iconUrl_);
      MenuValue.access$802(localMenuValue, k);
      onBuilt();
      return localMenuValue;
    }

    public Builder clear()
    {
      super.clear();
      this.state_ = MenuItem.State.DEFAULT;
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      this.displayName_ = "";
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      this.iconUrl_ = "";
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      return this;
    }

    public Builder clearDisplayName()
    {
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      this.displayName_ = MenuValue.getDefaultInstance().getDisplayName();
      onChanged();
      return this;
    }

    public Builder clearIconUrl()
    {
      this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
      this.iconUrl_ = MenuValue.getDefaultInstance().getIconUrl();
      onChanged();
      return this;
    }

    public Builder clearState()
    {
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      this.state_ = MenuItem.State.DEFAULT;
      onChanged();
      return this;
    }

    public Builder clone()
    {
      return create().mergeFrom(buildPartial());
    }

    public MenuValue getDefaultInstanceForType()
    {
      return MenuValue.getDefaultInstance();
    }

    public Descriptors.Descriptor getDescriptorForType()
    {
      return Timeline.internal_static_googlex_glass_common_proto_MenuValue_descriptor;
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

    public String getIconUrl()
    {
      Object localObject = this.iconUrl_;
      if (!(localObject instanceof String))
      {
        String str = ((ByteString)localObject).toStringUtf8();
        this.iconUrl_ = str;
        return str;
      }
      return (String)localObject;
    }

    public ByteString getIconUrlBytes()
    {
      Object localObject = this.iconUrl_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.iconUrl_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public MenuItem.State getState()
    {
      return this.state_;
    }

    public boolean hasDisplayName()
    {
      return (0x2 & this.bitField0_) == 2;
    }

    public boolean hasIconUrl()
    {
      return (0x4 & this.bitField0_) == 4;
    }

    public boolean hasState()
    {
      return (0x1 & this.bitField0_) == 1;
    }

    protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return Timeline.internal_static_googlex_glass_common_proto_MenuValue_fieldAccessorTable.ensureFieldAccessorsInitialized(MenuValue.class, Builder.class);
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Builder mergeFrom(MenuValue paramMenuValue)
    {
      if (paramMenuValue == MenuValue.getDefaultInstance())
        return this;
      if (paramMenuValue.hasState())
        setState(paramMenuValue.getState());
      if (paramMenuValue.hasDisplayName())
      {
        this.bitField0_ = (0x2 | this.bitField0_);
        this.displayName_ = paramMenuValue.displayName_;
        onChanged();
      }
      if (paramMenuValue.hasIconUrl())
      {
        this.bitField0_ = (0x4 | this.bitField0_);
        this.iconUrl_ = paramMenuValue.iconUrl_;
        onChanged();
      }
      mergeUnknownFields(paramMenuValue.getUnknownFields());
      return this;
    }

    public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      MenuValue localMenuValue1 = null;
      try
      {
        MenuValue localMenuValue2 = (MenuValue)MenuValue.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
        return this;
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        localMenuValue1 = (MenuValue)localInvalidProtocolBufferException.getUnfinishedMessage();
        throw localInvalidProtocolBufferException;
      }
      finally
      {
        if (localMenuValue1 != null)
          mergeFrom(localMenuValue1);
      }
    }

    public Builder mergeFrom(Message paramMessage)
    {
      if ((paramMessage instanceof MenuValue))
        return mergeFrom((MenuValue)paramMessage);
      super.mergeFrom(paramMessage);
      return this;
    }

    public Builder setDisplayName(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x2 | this.bitField0_);
      this.displayName_ = paramString;
      onChanged();
      return this;
    }

    public Builder setDisplayNameBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x2 | this.bitField0_);
      this.displayName_ = paramByteString;
      onChanged();
      return this;
    }

    public Builder setIconUrl(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x4 | this.bitField0_);
      this.iconUrl_ = paramString;
      onChanged();
      return this;
    }

    public Builder setIconUrlBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x4 | this.bitField0_);
      this.iconUrl_ = paramByteString;
      onChanged();
      return this;
    }

    public Builder setState(MenuItem.State paramState)
    {
      if (paramState == null)
        throw new NullPointerException();
      this.bitField0_ = (0x1 | this.bitField0_);
      this.state_ = paramState;
      onChanged();
      return this;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.MenuValue
 * JD-Core Version:    0.6.2
 */