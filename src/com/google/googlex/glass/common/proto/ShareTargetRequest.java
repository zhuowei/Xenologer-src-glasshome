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

public final class ShareTargetRequest extends GeneratedMessage
  implements ShareTargetRequestOrBuilder
{
  public static Parser<ShareTargetRequest> PARSER = new AbstractParser()
  {
    public ShareTargetRequest parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return new ShareTargetRequest(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
    }
  };
  private static final ShareTargetRequest defaultInstance;
  private static volatile MutableMessage mutableDefault = null;
  private static final long serialVersionUID;
  private byte memoizedIsInitialized = -1;
  private int memoizedSerializedSize = -1;
  private final UnknownFieldSet unknownFields;

  static
  {
    defaultInstance = new ShareTargetRequest(true);
    defaultInstance.initFields();
  }

  // ERROR //
  private ShareTargetRequest(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 46	com/google/protobuf/GeneratedMessage:<init>	()V
    //   4: aload_0
    //   5: iconst_m1
    //   6: putfield 48	com/google/googlex/glass/common/proto/ShareTargetRequest:memoizedIsInitialized	B
    //   9: aload_0
    //   10: iconst_m1
    //   11: putfield 50	com/google/googlex/glass/common/proto/ShareTargetRequest:memoizedSerializedSize	I
    //   14: aload_0
    //   15: invokespecial 40	com/google/googlex/glass/common/proto/ShareTargetRequest:initFields	()V
    //   18: invokestatic 56	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
    //   21: astore_3
    //   22: iconst_0
    //   23: istore 4
    //   25: iload 4
    //   27: ifne +57 -> 84
    //   30: aload_1
    //   31: invokevirtual 62	com/google/protobuf/CodedInputStream:readTag	()I
    //   34: istore 8
    //   36: iload 8
    //   38: tableswitch	default:+18 -> 56, 0:+40->78
    //   57: aload_1
    //   58: aload_3
    //   59: aload_2
    //   60: iload 8
    //   62: invokevirtual 66	com/google/googlex/glass/common/proto/ShareTargetRequest:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    //   65: istore 9
    //   67: iload 9
    //   69: ifne -44 -> 25
    //   72: iconst_1
    //   73: istore 4
    //   75: goto -50 -> 25
    //   78: iconst_1
    //   79: istore 4
    //   81: goto -56 -> 25
    //   84: aload_0
    //   85: aload_3
    //   86: invokevirtual 72	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   89: putfield 74	com/google/googlex/glass/common/proto/ShareTargetRequest:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   92: aload_0
    //   93: invokevirtual 77	com/google/googlex/glass/common/proto/ShareTargetRequest:makeExtensionsImmutable	()V
    //   96: return
    //   97: astore 7
    //   99: aload 7
    //   101: aload_0
    //   102: invokevirtual 81	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   105: athrow
    //   106: astore 6
    //   108: aload_0
    //   109: aload_3
    //   110: invokevirtual 72	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   113: putfield 74	com/google/googlex/glass/common/proto/ShareTargetRequest:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   116: aload_0
    //   117: invokevirtual 77	com/google/googlex/glass/common/proto/ShareTargetRequest:makeExtensionsImmutable	()V
    //   120: aload 6
    //   122: athrow
    //   123: astore 5
    //   125: new 43	com/google/protobuf/InvalidProtocolBufferException
    //   128: dup
    //   129: aload 5
    //   131: invokevirtual 85	java/io/IOException:getMessage	()Ljava/lang/String;
    //   134: invokespecial 88	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
    //   137: aload_0
    //   138: invokevirtual 81	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   141: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   30	36	97	com/google/protobuf/InvalidProtocolBufferException
    //   56	67	97	com/google/protobuf/InvalidProtocolBufferException
    //   30	36	106	finally
    //   56	67	106	finally
    //   99	106	106	finally
    //   125	142	106	finally
    //   30	36	123	java/io/IOException
    //   56	67	123	java/io/IOException
  }

  private ShareTargetRequest(GeneratedMessage.Builder<?> paramBuilder)
  {
    super(paramBuilder);
    this.unknownFields = paramBuilder.getUnknownFields();
  }

  private ShareTargetRequest(boolean paramBoolean)
  {
    this.unknownFields = UnknownFieldSet.getDefaultInstance();
  }

  public static ShareTargetRequest getDefaultInstance()
  {
    return defaultInstance;
  }

  public static final Descriptors.Descriptor getDescriptor()
  {
    return Sharetargetquery.internal_static_googlex_glass_common_proto_ShareTargetRequest_descriptor;
  }

  private void initFields()
  {
  }

  public static Builder newBuilder()
  {
    return Builder.access$100();
  }

  public static Builder newBuilder(ShareTargetRequest paramShareTargetRequest)
  {
    return newBuilder().mergeFrom(paramShareTargetRequest);
  }

  public static ShareTargetRequest parseDelimitedFrom(InputStream paramInputStream)
    throws IOException
  {
    return (ShareTargetRequest)PARSER.parseDelimitedFrom(paramInputStream);
  }

  public static ShareTargetRequest parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (ShareTargetRequest)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static ShareTargetRequest parseFrom(ByteString paramByteString)
    throws InvalidProtocolBufferException
  {
    return (ShareTargetRequest)PARSER.parseFrom(paramByteString);
  }

  public static ShareTargetRequest parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (ShareTargetRequest)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
  }

  public static ShareTargetRequest parseFrom(CodedInputStream paramCodedInputStream)
    throws IOException
  {
    return (ShareTargetRequest)PARSER.parseFrom(paramCodedInputStream);
  }

  public static ShareTargetRequest parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (ShareTargetRequest)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
  }

  public static ShareTargetRequest parseFrom(InputStream paramInputStream)
    throws IOException
  {
    return (ShareTargetRequest)PARSER.parseFrom(paramInputStream);
  }

  public static ShareTargetRequest parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (ShareTargetRequest)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static ShareTargetRequest parseFrom(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    return (ShareTargetRequest)PARSER.parseFrom(paramArrayOfByte);
  }

  public static ShareTargetRequest parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (ShareTargetRequest)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
  }

  public ShareTargetRequest getDefaultInstanceForType()
  {
    return defaultInstance;
  }

  public Parser<ShareTargetRequest> getParserForType()
  {
    return PARSER;
  }

  public int getSerializedSize()
  {
    int i = this.memoizedSerializedSize;
    if (i != -1)
      return i;
    int j = 0 + getUnknownFields().getSerializedSize();
    this.memoizedSerializedSize = j;
    return j;
  }

  public final UnknownFieldSet getUnknownFields()
  {
    return this.unknownFields;
  }

  protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
  {
    return Sharetargetquery.internal_static_googlex_glass_common_proto_ShareTargetRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(ShareTargetRequest.class, Builder.class);
  }

  protected MutableMessage internalMutableDefault()
  {
    if (mutableDefault == null)
      mutableDefault = internalMutableDefault("com.google.googlex.glass.common.proto.MutableSharetargetquery$ShareTargetRequest");
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
    getUnknownFields().writeTo(paramCodedOutputStream);
  }

  public static final class Builder extends GeneratedMessage.Builder<Builder>
    implements ShareTargetRequestOrBuilder
  {
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
      return Sharetargetquery.internal_static_googlex_glass_common_proto_ShareTargetRequest_descriptor;
    }

    private void maybeForceBuilderInitialization()
    {
      if (ShareTargetRequest.alwaysUseFieldBuilders);
    }

    public ShareTargetRequest build()
    {
      ShareTargetRequest localShareTargetRequest = buildPartial();
      if (!localShareTargetRequest.isInitialized())
        throw newUninitializedMessageException(localShareTargetRequest);
      return localShareTargetRequest;
    }

    public ShareTargetRequest buildPartial()
    {
      ShareTargetRequest localShareTargetRequest = new ShareTargetRequest(this, null);
      onBuilt();
      return localShareTargetRequest;
    }

    public Builder clear()
    {
      super.clear();
      return this;
    }

    public Builder clone()
    {
      return create().mergeFrom(buildPartial());
    }

    public ShareTargetRequest getDefaultInstanceForType()
    {
      return ShareTargetRequest.getDefaultInstance();
    }

    public Descriptors.Descriptor getDescriptorForType()
    {
      return Sharetargetquery.internal_static_googlex_glass_common_proto_ShareTargetRequest_descriptor;
    }

    protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return Sharetargetquery.internal_static_googlex_glass_common_proto_ShareTargetRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(ShareTargetRequest.class, Builder.class);
    }

    public final boolean isInitialized()
    {
      return true;
    }

    public Builder mergeFrom(ShareTargetRequest paramShareTargetRequest)
    {
      if (paramShareTargetRequest == ShareTargetRequest.getDefaultInstance())
        return this;
      mergeUnknownFields(paramShareTargetRequest.getUnknownFields());
      return this;
    }

    public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      ShareTargetRequest localShareTargetRequest1 = null;
      try
      {
        ShareTargetRequest localShareTargetRequest2 = (ShareTargetRequest)ShareTargetRequest.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
        return this;
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        localShareTargetRequest1 = (ShareTargetRequest)localInvalidProtocolBufferException.getUnfinishedMessage();
        throw localInvalidProtocolBufferException;
      }
      finally
      {
        if (localShareTargetRequest1 != null)
          mergeFrom(localShareTargetRequest1);
      }
    }

    public Builder mergeFrom(Message paramMessage)
    {
      if ((paramMessage instanceof ShareTargetRequest))
        return mergeFrom((ShareTargetRequest)paramMessage);
      super.mergeFrom(paramMessage);
      return this;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.ShareTargetRequest
 * JD-Core Version:    0.6.2
 */