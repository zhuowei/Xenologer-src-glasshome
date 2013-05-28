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

public final class RequestWrapper extends GeneratedMessage
  implements RequestWrapperOrBuilder
{
  public static final int DATA_FIELD_NUMBER = 2;
  public static Parser<RequestWrapper> PARSER = new AbstractParser()
  {
    public RequestWrapper parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return new RequestWrapper(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
    }
  };
  public static final int PATH_FIELD_NUMBER = 1;
  private static final RequestWrapper defaultInstance;
  private static volatile MutableMessage mutableDefault = null;
  private static final long serialVersionUID;
  private int bitField0_;
  private ByteString data_;
  private byte memoizedIsInitialized = -1;
  private int memoizedSerializedSize = -1;
  private Object path_;
  private final UnknownFieldSet unknownFields;

  static
  {
    defaultInstance = new RequestWrapper(true);
    defaultInstance.initFields();
  }

  // ERROR //
  private RequestWrapper(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 55	com/google/protobuf/GeneratedMessage:<init>	()V
    //   4: aload_0
    //   5: iconst_m1
    //   6: putfield 57	com/google/googlex/glass/common/proto/RequestWrapper:memoizedIsInitialized	B
    //   9: aload_0
    //   10: iconst_m1
    //   11: putfield 59	com/google/googlex/glass/common/proto/RequestWrapper:memoizedSerializedSize	I
    //   14: aload_0
    //   15: invokespecial 49	com/google/googlex/glass/common/proto/RequestWrapper:initFields	()V
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
    //   38: lookupswitch	default:+34->72, 0:+152->190, 10:+52->90, 18:+99->137
    //   73: aload_1
    //   74: aload_3
    //   75: aload_2
    //   76: iload 8
    //   78: invokevirtual 75	com/google/googlex/glass/common/proto/RequestWrapper:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    //   81: ifne -56 -> 25
    //   84: iconst_1
    //   85: istore 4
    //   87: goto -62 -> 25
    //   90: aload_0
    //   91: iconst_1
    //   92: aload_0
    //   93: getfield 77	com/google/googlex/glass/common/proto/RequestWrapper:bitField0_	I
    //   96: ior
    //   97: putfield 77	com/google/googlex/glass/common/proto/RequestWrapper:bitField0_	I
    //   100: aload_0
    //   101: aload_1
    //   102: invokevirtual 81	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   105: putfield 83	com/google/googlex/glass/common/proto/RequestWrapper:path_	Ljava/lang/Object;
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
    //   127: putfield 95	com/google/googlex/glass/common/proto/RequestWrapper:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   130: aload_0
    //   131: invokevirtual 98	com/google/googlex/glass/common/proto/RequestWrapper:makeExtensionsImmutable	()V
    //   134: aload 6
    //   136: athrow
    //   137: aload_0
    //   138: iconst_2
    //   139: aload_0
    //   140: getfield 77	com/google/googlex/glass/common/proto/RequestWrapper:bitField0_	I
    //   143: ior
    //   144: putfield 77	com/google/googlex/glass/common/proto/RequestWrapper:bitField0_	I
    //   147: aload_0
    //   148: aload_1
    //   149: invokevirtual 81	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   152: putfield 100	com/google/googlex/glass/common/proto/RequestWrapper:data_	Lcom/google/protobuf/ByteString;
    //   155: goto -130 -> 25
    //   158: astore 5
    //   160: new 52	com/google/protobuf/InvalidProtocolBufferException
    //   163: dup
    //   164: aload 5
    //   166: invokevirtual 104	java/io/IOException:getMessage	()Ljava/lang/String;
    //   169: invokespecial 107	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
    //   172: aload_0
    //   173: invokevirtual 87	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   176: athrow
    //   177: aload_0
    //   178: aload_3
    //   179: invokevirtual 93	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   182: putfield 95	com/google/googlex/glass/common/proto/RequestWrapper:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   185: aload_0
    //   186: invokevirtual 98	com/google/googlex/glass/common/proto/RequestWrapper:makeExtensionsImmutable	()V
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

  private RequestWrapper(GeneratedMessage.Builder<?> paramBuilder)
  {
    super(paramBuilder);
    this.unknownFields = paramBuilder.getUnknownFields();
  }

  private RequestWrapper(boolean paramBoolean)
  {
    this.unknownFields = UnknownFieldSet.getDefaultInstance();
  }

  public static RequestWrapper getDefaultInstance()
  {
    return defaultInstance;
  }

  public static final Descriptors.Descriptor getDescriptor()
  {
    return Batch.internal_static_googlex_glass_common_proto_RequestWrapper_descriptor;
  }

  private void initFields()
  {
    this.path_ = "";
    this.data_ = ByteString.EMPTY;
  }

  public static Builder newBuilder()
  {
    return Builder.access$100();
  }

  public static Builder newBuilder(RequestWrapper paramRequestWrapper)
  {
    return newBuilder().mergeFrom(paramRequestWrapper);
  }

  public static RequestWrapper parseDelimitedFrom(InputStream paramInputStream)
    throws IOException
  {
    return (RequestWrapper)PARSER.parseDelimitedFrom(paramInputStream);
  }

  public static RequestWrapper parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (RequestWrapper)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static RequestWrapper parseFrom(ByteString paramByteString)
    throws InvalidProtocolBufferException
  {
    return (RequestWrapper)PARSER.parseFrom(paramByteString);
  }

  public static RequestWrapper parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (RequestWrapper)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
  }

  public static RequestWrapper parseFrom(CodedInputStream paramCodedInputStream)
    throws IOException
  {
    return (RequestWrapper)PARSER.parseFrom(paramCodedInputStream);
  }

  public static RequestWrapper parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (RequestWrapper)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
  }

  public static RequestWrapper parseFrom(InputStream paramInputStream)
    throws IOException
  {
    return (RequestWrapper)PARSER.parseFrom(paramInputStream);
  }

  public static RequestWrapper parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (RequestWrapper)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static RequestWrapper parseFrom(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    return (RequestWrapper)PARSER.parseFrom(paramArrayOfByte);
  }

  public static RequestWrapper parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (RequestWrapper)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
  }

  public ByteString getData()
  {
    return this.data_;
  }

  public RequestWrapper getDefaultInstanceForType()
  {
    return defaultInstance;
  }

  public Parser<RequestWrapper> getParserForType()
  {
    return PARSER;
  }

  public String getPath()
  {
    Object localObject = this.path_;
    if ((localObject instanceof String))
      return (String)localObject;
    ByteString localByteString = (ByteString)localObject;
    String str = localByteString.toStringUtf8();
    if (localByteString.isValidUtf8())
      this.path_ = str;
    return str;
  }

  public ByteString getPathBytes()
  {
    Object localObject = this.path_;
    if ((localObject instanceof String))
    {
      ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
      this.path_ = localByteString;
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
      k = 0 + CodedOutputStream.computeBytesSize(1, getPathBytes());
    if ((0x2 & this.bitField0_) == 2)
      k += CodedOutputStream.computeBytesSize(2, this.data_);
    int m = k + getUnknownFields().getSerializedSize();
    this.memoizedSerializedSize = m;
    return m;
  }

  public final UnknownFieldSet getUnknownFields()
  {
    return this.unknownFields;
  }

  public boolean hasData()
  {
    return (0x2 & this.bitField0_) == 2;
  }

  public boolean hasPath()
  {
    return (0x1 & this.bitField0_) == 1;
  }

  protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
  {
    return Batch.internal_static_googlex_glass_common_proto_RequestWrapper_fieldAccessorTable.ensureFieldAccessorsInitialized(RequestWrapper.class, Builder.class);
  }

  protected MutableMessage internalMutableDefault()
  {
    if (mutableDefault == null)
      mutableDefault = internalMutableDefault("com.google.googlex.glass.common.proto.MutableBatch$RequestWrapper");
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
      paramCodedOutputStream.writeBytes(1, getPathBytes());
    if ((0x2 & this.bitField0_) == 2)
      paramCodedOutputStream.writeBytes(2, this.data_);
    getUnknownFields().writeTo(paramCodedOutputStream);
  }

  public static final class Builder extends GeneratedMessage.Builder<Builder>
    implements RequestWrapperOrBuilder
  {
    private int bitField0_;
    private ByteString data_ = ByteString.EMPTY;
    private Object path_ = "";

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
      return Batch.internal_static_googlex_glass_common_proto_RequestWrapper_descriptor;
    }

    private void maybeForceBuilderInitialization()
    {
      if (RequestWrapper.alwaysUseFieldBuilders);
    }

    public RequestWrapper build()
    {
      RequestWrapper localRequestWrapper = buildPartial();
      if (!localRequestWrapper.isInitialized())
        throw newUninitializedMessageException(localRequestWrapper);
      return localRequestWrapper;
    }

    public RequestWrapper buildPartial()
    {
      RequestWrapper localRequestWrapper = new RequestWrapper(this, null);
      int i = this.bitField0_;
      int j = i & 0x1;
      int k = 0;
      if (j == 1)
        k = 0x0 | 0x1;
      RequestWrapper.access$502(localRequestWrapper, this.path_);
      if ((i & 0x2) == 2)
        k |= 2;
      RequestWrapper.access$602(localRequestWrapper, this.data_);
      RequestWrapper.access$702(localRequestWrapper, k);
      onBuilt();
      return localRequestWrapper;
    }

    public Builder clear()
    {
      super.clear();
      this.path_ = "";
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      this.data_ = ByteString.EMPTY;
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      return this;
    }

    public Builder clearData()
    {
      this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
      this.data_ = RequestWrapper.getDefaultInstance().getData();
      onChanged();
      return this;
    }

    public Builder clearPath()
    {
      this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
      this.path_ = RequestWrapper.getDefaultInstance().getPath();
      onChanged();
      return this;
    }

    public Builder clone()
    {
      return create().mergeFrom(buildPartial());
    }

    public ByteString getData()
    {
      return this.data_;
    }

    public RequestWrapper getDefaultInstanceForType()
    {
      return RequestWrapper.getDefaultInstance();
    }

    public Descriptors.Descriptor getDescriptorForType()
    {
      return Batch.internal_static_googlex_glass_common_proto_RequestWrapper_descriptor;
    }

    public String getPath()
    {
      Object localObject = this.path_;
      if (!(localObject instanceof String))
      {
        String str = ((ByteString)localObject).toStringUtf8();
        this.path_ = str;
        return str;
      }
      return (String)localObject;
    }

    public ByteString getPathBytes()
    {
      Object localObject = this.path_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.path_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public boolean hasData()
    {
      return (0x2 & this.bitField0_) == 2;
    }

    public boolean hasPath()
    {
      return (0x1 & this.bitField0_) == 1;
    }

    protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return Batch.internal_static_googlex_glass_common_proto_RequestWrapper_fieldAccessorTable.ensureFieldAccessorsInitialized(RequestWrapper.class, Builder.class);
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Builder mergeFrom(RequestWrapper paramRequestWrapper)
    {
      if (paramRequestWrapper == RequestWrapper.getDefaultInstance())
        return this;
      if (paramRequestWrapper.hasPath())
      {
        this.bitField0_ = (0x1 | this.bitField0_);
        this.path_ = paramRequestWrapper.path_;
        onChanged();
      }
      if (paramRequestWrapper.hasData())
        setData(paramRequestWrapper.getData());
      mergeUnknownFields(paramRequestWrapper.getUnknownFields());
      return this;
    }

    public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      RequestWrapper localRequestWrapper1 = null;
      try
      {
        RequestWrapper localRequestWrapper2 = (RequestWrapper)RequestWrapper.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
        return this;
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        localRequestWrapper1 = (RequestWrapper)localInvalidProtocolBufferException.getUnfinishedMessage();
        throw localInvalidProtocolBufferException;
      }
      finally
      {
        if (localRequestWrapper1 != null)
          mergeFrom(localRequestWrapper1);
      }
    }

    public Builder mergeFrom(Message paramMessage)
    {
      if ((paramMessage instanceof RequestWrapper))
        return mergeFrom((RequestWrapper)paramMessage);
      super.mergeFrom(paramMessage);
      return this;
    }

    public Builder setData(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x2 | this.bitField0_);
      this.data_ = paramByteString;
      onChanged();
      return this;
    }

    public Builder setPath(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x1 | this.bitField0_);
      this.path_ = paramString;
      onChanged();
      return this;
    }

    public Builder setPathBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x1 | this.bitField0_);
      this.path_ = paramByteString;
      onChanged();
      return this;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.RequestWrapper
 * JD-Core Version:    0.6.2
 */