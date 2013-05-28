package com.google.glass.companion;

import com.google.googlex.glass.common.proto.TimelineItem;
import com.google.googlex.glass.common.proto.TimelineItem.Builder;
import com.google.googlex.glass.common.proto.TimelineItem.SyncStatus;
import com.google.googlex.glass.common.proto.TimelineItemOrBuilder;
import com.google.googlex.glass.common.proto.UserAction;
import com.google.googlex.glass.common.proto.UserAction.Builder;
import com.google.protobuf.AbstractMessageLite.Builder;
import com.google.protobuf.AbstractParser;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.GeneratedMessageLite.Builder;
import com.google.protobuf.Internal.EnumLite;
import com.google.protobuf.Internal.EnumLiteMap;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.MessageLite;
import com.google.protobuf.MessageLiteOrBuilder;
import com.google.protobuf.MutableMessageLite;
import com.google.protobuf.Parser;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class Proto
{
  public static void registerAllExtensions(ExtensionRegistryLite paramExtensionRegistryLite)
  {
  }

  public static final class ApiRequest extends GeneratedMessageLite
    implements Proto.ApiRequestOrBuilder
  {
    public static final int ATTACHMENT_CONTENT_FIELD_NUMBER = 5;
    public static Parser<ApiRequest> PARSER = new AbstractParser()
    {
      public Proto.ApiRequest parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
        throws InvalidProtocolBufferException
      {
        return new Proto.ApiRequest(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
      }
    };
    public static final int PROJECT_ID_FIELD_NUMBER = 1;
    public static final int TIMELINE_ITEM_FIELD_NUMBER = 4;
    public static final int TOKEN_FIELD_NUMBER = 2;
    public static final int TYPE_FIELD_NUMBER = 3;
    private static final ApiRequest defaultInstance;
    private static volatile MutableMessageLite mutableDefault = null;
    private static final long serialVersionUID;
    private List<ByteString> attachmentContent_;
    private int bitField0_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private Object projectId_;
    private TimelineItem timelineItem_;
    private Object token_;
    private RequestType type_;

    static
    {
      defaultInstance = new ApiRequest(true);
      defaultInstance.initFields();
    }

    // ERROR //
    private ApiRequest(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 65	com/google/protobuf/GeneratedMessageLite:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 67	com/google/glass/companion/Proto$ApiRequest:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 69	com/google/glass/companion/Proto$ApiRequest:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 59	com/google/glass/companion/Proto$ApiRequest:initFields	()V
      //   18: iconst_0
      //   19: istore_3
      //   20: iconst_0
      //   21: istore 4
      //   23: iload 4
      //   25: ifne +343 -> 368
      //   28: aload_1
      //   29: invokevirtual 75	com/google/protobuf/CodedInputStream:readTag	()I
      //   32: istore 8
      //   34: iload 8
      //   36: lookupswitch	default:+60->96, 0:+357->393, 10:+77->113, 18:+136->172, 24:+176->212, 34:+209->245, 42:+290->326
      //   97: aload_1
      //   98: aload_2
      //   99: iload 8
      //   101: invokevirtual 79	com/google/glass/companion/Proto$ApiRequest:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   104: ifne -81 -> 23
      //   107: iconst_1
      //   108: istore 4
      //   110: goto -87 -> 23
      //   113: aload_0
      //   114: iconst_1
      //   115: aload_0
      //   116: getfield 81	com/google/glass/companion/Proto$ApiRequest:bitField0_	I
      //   119: ior
      //   120: putfield 81	com/google/glass/companion/Proto$ApiRequest:bitField0_	I
      //   123: aload_0
      //   124: aload_1
      //   125: invokevirtual 85	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   128: putfield 87	com/google/glass/companion/Proto$ApiRequest:projectId_	Ljava/lang/Object;
      //   131: goto -108 -> 23
      //   134: astore 7
      //   136: aload 7
      //   138: aload_0
      //   139: invokevirtual 91	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   142: athrow
      //   143: astore 6
      //   145: iload_3
      //   146: bipush 16
      //   148: iand
      //   149: bipush 16
      //   151: if_icmpne +14 -> 165
      //   154: aload_0
      //   155: aload_0
      //   156: getfield 93	com/google/glass/companion/Proto$ApiRequest:attachmentContent_	Ljava/util/List;
      //   159: invokestatic 99	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
      //   162: putfield 93	com/google/glass/companion/Proto$ApiRequest:attachmentContent_	Ljava/util/List;
      //   165: aload_0
      //   166: invokevirtual 102	com/google/glass/companion/Proto$ApiRequest:makeExtensionsImmutable	()V
      //   169: aload 6
      //   171: athrow
      //   172: aload_0
      //   173: iconst_2
      //   174: aload_0
      //   175: getfield 81	com/google/glass/companion/Proto$ApiRequest:bitField0_	I
      //   178: ior
      //   179: putfield 81	com/google/glass/companion/Proto$ApiRequest:bitField0_	I
      //   182: aload_0
      //   183: aload_1
      //   184: invokevirtual 85	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   187: putfield 104	com/google/glass/companion/Proto$ApiRequest:token_	Ljava/lang/Object;
      //   190: goto -167 -> 23
      //   193: astore 5
      //   195: new 62	com/google/protobuf/InvalidProtocolBufferException
      //   198: dup
      //   199: aload 5
      //   201: invokevirtual 108	java/io/IOException:getMessage	()Ljava/lang/String;
      //   204: invokespecial 111	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   207: aload_0
      //   208: invokevirtual 91	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   211: athrow
      //   212: aload_1
      //   213: invokevirtual 114	com/google/protobuf/CodedInputStream:readEnum	()I
      //   216: invokestatic 120	com/google/glass/companion/Proto$ApiRequest$RequestType:valueOf	(I)Lcom/google/glass/companion/Proto$ApiRequest$RequestType;
      //   219: astore 13
      //   221: aload 13
      //   223: ifnull -200 -> 23
      //   226: aload_0
      //   227: iconst_4
      //   228: aload_0
      //   229: getfield 81	com/google/glass/companion/Proto$ApiRequest:bitField0_	I
      //   232: ior
      //   233: putfield 81	com/google/glass/companion/Proto$ApiRequest:bitField0_	I
      //   236: aload_0
      //   237: aload 13
      //   239: putfield 122	com/google/glass/companion/Proto$ApiRequest:type_	Lcom/google/glass/companion/Proto$ApiRequest$RequestType;
      //   242: goto -219 -> 23
      //   245: bipush 8
      //   247: aload_0
      //   248: getfield 81	com/google/glass/companion/Proto$ApiRequest:bitField0_	I
      //   251: iand
      //   252: istore 10
      //   254: aconst_null
      //   255: astore 11
      //   257: iload 10
      //   259: bipush 8
      //   261: if_icmpne +12 -> 273
      //   264: aload_0
      //   265: getfield 124	com/google/glass/companion/Proto$ApiRequest:timelineItem_	Lcom/google/googlex/glass/common/proto/TimelineItem;
      //   268: invokevirtual 130	com/google/googlex/glass/common/proto/TimelineItem:toBuilder	()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
      //   271: astore 11
      //   273: aload_0
      //   274: aload_1
      //   275: getstatic 131	com/google/googlex/glass/common/proto/TimelineItem:PARSER	Lcom/google/protobuf/Parser;
      //   278: aload_2
      //   279: invokevirtual 135	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
      //   282: checkcast 126	com/google/googlex/glass/common/proto/TimelineItem
      //   285: putfield 124	com/google/glass/companion/Proto$ApiRequest:timelineItem_	Lcom/google/googlex/glass/common/proto/TimelineItem;
      //   288: aload 11
      //   290: ifnull +22 -> 312
      //   293: aload 11
      //   295: aload_0
      //   296: getfield 124	com/google/glass/companion/Proto$ApiRequest:timelineItem_	Lcom/google/googlex/glass/common/proto/TimelineItem;
      //   299: invokevirtual 141	com/google/googlex/glass/common/proto/TimelineItem$Builder:mergeFrom	(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
      //   302: pop
      //   303: aload_0
      //   304: aload 11
      //   306: invokevirtual 145	com/google/googlex/glass/common/proto/TimelineItem$Builder:buildPartial	()Lcom/google/googlex/glass/common/proto/TimelineItem;
      //   309: putfield 124	com/google/glass/companion/Proto$ApiRequest:timelineItem_	Lcom/google/googlex/glass/common/proto/TimelineItem;
      //   312: aload_0
      //   313: bipush 8
      //   315: aload_0
      //   316: getfield 81	com/google/glass/companion/Proto$ApiRequest:bitField0_	I
      //   319: ior
      //   320: putfield 81	com/google/glass/companion/Proto$ApiRequest:bitField0_	I
      //   323: goto -300 -> 23
      //   326: iload_3
      //   327: bipush 16
      //   329: iand
      //   330: bipush 16
      //   332: if_icmpeq +19 -> 351
      //   335: aload_0
      //   336: new 147	java/util/ArrayList
      //   339: dup
      //   340: invokespecial 148	java/util/ArrayList:<init>	()V
      //   343: putfield 93	com/google/glass/companion/Proto$ApiRequest:attachmentContent_	Ljava/util/List;
      //   346: iload_3
      //   347: bipush 16
      //   349: ior
      //   350: istore_3
      //   351: aload_0
      //   352: getfield 93	com/google/glass/companion/Proto$ApiRequest:attachmentContent_	Ljava/util/List;
      //   355: aload_1
      //   356: invokevirtual 85	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   359: invokeinterface 154 2 0
      //   364: pop
      //   365: goto -342 -> 23
      //   368: iload_3
      //   369: bipush 16
      //   371: iand
      //   372: bipush 16
      //   374: if_icmpne +14 -> 388
      //   377: aload_0
      //   378: aload_0
      //   379: getfield 93	com/google/glass/companion/Proto$ApiRequest:attachmentContent_	Ljava/util/List;
      //   382: invokestatic 99	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
      //   385: putfield 93	com/google/glass/companion/Proto$ApiRequest:attachmentContent_	Ljava/util/List;
      //   388: aload_0
      //   389: invokevirtual 102	com/google/glass/companion/Proto$ApiRequest:makeExtensionsImmutable	()V
      //   392: return
      //   393: iconst_1
      //   394: istore 4
      //   396: goto -373 -> 23
      //
      // Exception table:
      //   from	to	target	type
      //   28	34	134	com/google/protobuf/InvalidProtocolBufferException
      //   96	107	134	com/google/protobuf/InvalidProtocolBufferException
      //   113	131	134	com/google/protobuf/InvalidProtocolBufferException
      //   172	190	134	com/google/protobuf/InvalidProtocolBufferException
      //   212	221	134	com/google/protobuf/InvalidProtocolBufferException
      //   226	242	134	com/google/protobuf/InvalidProtocolBufferException
      //   245	254	134	com/google/protobuf/InvalidProtocolBufferException
      //   264	273	134	com/google/protobuf/InvalidProtocolBufferException
      //   273	288	134	com/google/protobuf/InvalidProtocolBufferException
      //   293	312	134	com/google/protobuf/InvalidProtocolBufferException
      //   312	323	134	com/google/protobuf/InvalidProtocolBufferException
      //   335	346	134	com/google/protobuf/InvalidProtocolBufferException
      //   351	365	134	com/google/protobuf/InvalidProtocolBufferException
      //   28	34	143	finally
      //   96	107	143	finally
      //   113	131	143	finally
      //   136	143	143	finally
      //   172	190	143	finally
      //   195	212	143	finally
      //   212	221	143	finally
      //   226	242	143	finally
      //   245	254	143	finally
      //   264	273	143	finally
      //   273	288	143	finally
      //   293	312	143	finally
      //   312	323	143	finally
      //   335	346	143	finally
      //   351	365	143	finally
      //   28	34	193	java/io/IOException
      //   96	107	193	java/io/IOException
      //   113	131	193	java/io/IOException
      //   172	190	193	java/io/IOException
      //   212	221	193	java/io/IOException
      //   226	242	193	java/io/IOException
      //   245	254	193	java/io/IOException
      //   264	273	193	java/io/IOException
      //   273	288	193	java/io/IOException
      //   293	312	193	java/io/IOException
      //   312	323	193	java/io/IOException
      //   335	346	193	java/io/IOException
      //   351	365	193	java/io/IOException
    }

    private ApiRequest(GeneratedMessageLite.Builder paramBuilder)
    {
      super();
    }

    private ApiRequest(boolean paramBoolean)
    {
    }

    public static ApiRequest getDefaultInstance()
    {
      return defaultInstance;
    }

    private void initFields()
    {
      this.projectId_ = "";
      this.token_ = "";
      this.type_ = RequestType.INSERT_OR_UPDATE_TIMELINE_ITEM;
      this.timelineItem_ = TimelineItem.getDefaultInstance();
      this.attachmentContent_ = Collections.emptyList();
    }

    public static Builder newBuilder()
    {
      return Builder.access$9500();
    }

    public static Builder newBuilder(ApiRequest paramApiRequest)
    {
      return newBuilder().mergeFrom(paramApiRequest);
    }

    public static ApiRequest parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (ApiRequest)PARSER.parseDelimitedFrom(paramInputStream);
    }

    public static ApiRequest parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (ApiRequest)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }

    public static ApiRequest parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (ApiRequest)PARSER.parseFrom(paramByteString);
    }

    public static ApiRequest parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (ApiRequest)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }

    public static ApiRequest parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (ApiRequest)PARSER.parseFrom(paramCodedInputStream);
    }

    public static ApiRequest parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (ApiRequest)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }

    public static ApiRequest parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (ApiRequest)PARSER.parseFrom(paramInputStream);
    }

    public static ApiRequest parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (ApiRequest)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }

    public static ApiRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (ApiRequest)PARSER.parseFrom(paramArrayOfByte);
    }

    public static ApiRequest parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (ApiRequest)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }

    public ByteString getAttachmentContent(int paramInt)
    {
      return (ByteString)this.attachmentContent_.get(paramInt);
    }

    public int getAttachmentContentCount()
    {
      return this.attachmentContent_.size();
    }

    public List<ByteString> getAttachmentContentList()
    {
      return this.attachmentContent_;
    }

    public ApiRequest getDefaultInstanceForType()
    {
      return defaultInstance;
    }

    public Parser<ApiRequest> getParserForType()
    {
      return PARSER;
    }

    public String getProjectId()
    {
      Object localObject = this.projectId_;
      if ((localObject instanceof String))
        return (String)localObject;
      ByteString localByteString = (ByteString)localObject;
      String str = localByteString.toStringUtf8();
      if (localByteString.isValidUtf8())
        this.projectId_ = str;
      return str;
    }

    public ByteString getProjectIdBytes()
    {
      Object localObject = this.projectId_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.projectId_ = localByteString;
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
        k = 0 + CodedOutputStream.computeBytesSize(1, getProjectIdBytes());
      if ((0x2 & this.bitField0_) == 2)
        k += CodedOutputStream.computeBytesSize(2, getTokenBytes());
      if ((0x4 & this.bitField0_) == 4)
        k += CodedOutputStream.computeEnumSize(3, this.type_.getNumber());
      if ((0x8 & this.bitField0_) == 8)
        k += CodedOutputStream.computeMessageSize(4, this.timelineItem_);
      int m = 0;
      for (int n = 0; n < this.attachmentContent_.size(); n++)
        m += CodedOutputStream.computeBytesSizeNoTag((ByteString)this.attachmentContent_.get(n));
      int i1 = k + m + 1 * getAttachmentContentList().size();
      this.memoizedSerializedSize = i1;
      return i1;
    }

    public TimelineItem getTimelineItem()
    {
      return this.timelineItem_;
    }

    public String getToken()
    {
      Object localObject = this.token_;
      if ((localObject instanceof String))
        return (String)localObject;
      ByteString localByteString = (ByteString)localObject;
      String str = localByteString.toStringUtf8();
      if (localByteString.isValidUtf8())
        this.token_ = str;
      return str;
    }

    public ByteString getTokenBytes()
    {
      Object localObject = this.token_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.token_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public RequestType getType()
    {
      return this.type_;
    }

    public boolean hasProjectId()
    {
      return (0x1 & this.bitField0_) == 1;
    }

    public boolean hasTimelineItem()
    {
      return (0x8 & this.bitField0_) == 8;
    }

    public boolean hasToken()
    {
      return (0x2 & this.bitField0_) == 2;
    }

    public boolean hasType()
    {
      return (0x4 & this.bitField0_) == 4;
    }

    protected MutableMessageLite internalMutableDefault()
    {
      if (mutableDefault == null)
        mutableDefault = internalMutableDefault("com.google.glass.companion.MutableProto$ApiRequest");
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
        paramCodedOutputStream.writeBytes(1, getProjectIdBytes());
      if ((0x2 & this.bitField0_) == 2)
        paramCodedOutputStream.writeBytes(2, getTokenBytes());
      if ((0x4 & this.bitField0_) == 4)
        paramCodedOutputStream.writeEnum(3, this.type_.getNumber());
      if ((0x8 & this.bitField0_) == 8)
        paramCodedOutputStream.writeMessage(4, this.timelineItem_);
      for (int i = 0; i < this.attachmentContent_.size(); i++)
        paramCodedOutputStream.writeBytes(5, (ByteString)this.attachmentContent_.get(i));
    }

    public static final class Builder extends GeneratedMessageLite.Builder<Proto.ApiRequest, Builder>
      implements Proto.ApiRequestOrBuilder
    {
      private List<ByteString> attachmentContent_ = Collections.emptyList();
      private int bitField0_;
      private Object projectId_ = "";
      private TimelineItem timelineItem_ = TimelineItem.getDefaultInstance();
      private Object token_ = "";
      private Proto.ApiRequest.RequestType type_ = Proto.ApiRequest.RequestType.INSERT_OR_UPDATE_TIMELINE_ITEM;

      private Builder()
      {
        maybeForceBuilderInitialization();
      }

      private static Builder create()
      {
        return new Builder();
      }

      private void ensureAttachmentContentIsMutable()
      {
        if ((0x10 & this.bitField0_) != 16)
        {
          this.attachmentContent_ = new ArrayList(this.attachmentContent_);
          this.bitField0_ = (0x10 | this.bitField0_);
        }
      }

      private void maybeForceBuilderInitialization()
      {
      }

      public Builder addAllAttachmentContent(Iterable<? extends ByteString> paramIterable)
      {
        ensureAttachmentContentIsMutable();
        AbstractMessageLite.Builder.addAll(paramIterable, this.attachmentContent_);
        return this;
      }

      public Builder addAttachmentContent(ByteString paramByteString)
      {
        if (paramByteString == null)
          throw new NullPointerException();
        ensureAttachmentContentIsMutable();
        this.attachmentContent_.add(paramByteString);
        return this;
      }

      public Proto.ApiRequest build()
      {
        Proto.ApiRequest localApiRequest = buildPartial();
        if (!localApiRequest.isInitialized())
          throw newUninitializedMessageException(localApiRequest);
        return localApiRequest;
      }

      public Proto.ApiRequest buildPartial()
      {
        Proto.ApiRequest localApiRequest = new Proto.ApiRequest(this, null);
        int i = this.bitField0_;
        int j = i & 0x1;
        int k = 0;
        if (j == 1)
          k = 0x0 | 0x1;
        Proto.ApiRequest.access$9702(localApiRequest, this.projectId_);
        if ((i & 0x2) == 2)
          k |= 2;
        Proto.ApiRequest.access$9802(localApiRequest, this.token_);
        if ((i & 0x4) == 4)
          k |= 4;
        Proto.ApiRequest.access$9902(localApiRequest, this.type_);
        if ((i & 0x8) == 8)
          k |= 8;
        Proto.ApiRequest.access$10002(localApiRequest, this.timelineItem_);
        if ((0x10 & this.bitField0_) == 16)
        {
          this.attachmentContent_ = Collections.unmodifiableList(this.attachmentContent_);
          this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
        }
        Proto.ApiRequest.access$10102(localApiRequest, this.attachmentContent_);
        Proto.ApiRequest.access$10202(localApiRequest, k);
        return localApiRequest;
      }

      public Builder clear()
      {
        super.clear();
        this.projectId_ = "";
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        this.token_ = "";
        this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        this.type_ = Proto.ApiRequest.RequestType.INSERT_OR_UPDATE_TIMELINE_ITEM;
        this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
        this.timelineItem_ = TimelineItem.getDefaultInstance();
        this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
        this.attachmentContent_ = Collections.emptyList();
        this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
        return this;
      }

      public Builder clearAttachmentContent()
      {
        this.attachmentContent_ = Collections.emptyList();
        this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
        return this;
      }

      public Builder clearProjectId()
      {
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        this.projectId_ = Proto.ApiRequest.getDefaultInstance().getProjectId();
        return this;
      }

      public Builder clearTimelineItem()
      {
        this.timelineItem_ = TimelineItem.getDefaultInstance();
        this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
        return this;
      }

      public Builder clearToken()
      {
        this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        this.token_ = Proto.ApiRequest.getDefaultInstance().getToken();
        return this;
      }

      public Builder clearType()
      {
        this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
        this.type_ = Proto.ApiRequest.RequestType.INSERT_OR_UPDATE_TIMELINE_ITEM;
        return this;
      }

      public Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }

      public ByteString getAttachmentContent(int paramInt)
      {
        return (ByteString)this.attachmentContent_.get(paramInt);
      }

      public int getAttachmentContentCount()
      {
        return this.attachmentContent_.size();
      }

      public List<ByteString> getAttachmentContentList()
      {
        return Collections.unmodifiableList(this.attachmentContent_);
      }

      public Proto.ApiRequest getDefaultInstanceForType()
      {
        return Proto.ApiRequest.getDefaultInstance();
      }

      public String getProjectId()
      {
        Object localObject = this.projectId_;
        if (!(localObject instanceof String))
        {
          String str = ((ByteString)localObject).toStringUtf8();
          this.projectId_ = str;
          return str;
        }
        return (String)localObject;
      }

      public ByteString getProjectIdBytes()
      {
        Object localObject = this.projectId_;
        if ((localObject instanceof String))
        {
          ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
          this.projectId_ = localByteString;
          return localByteString;
        }
        return (ByteString)localObject;
      }

      public TimelineItem getTimelineItem()
      {
        return this.timelineItem_;
      }

      public String getToken()
      {
        Object localObject = this.token_;
        if (!(localObject instanceof String))
        {
          String str = ((ByteString)localObject).toStringUtf8();
          this.token_ = str;
          return str;
        }
        return (String)localObject;
      }

      public ByteString getTokenBytes()
      {
        Object localObject = this.token_;
        if ((localObject instanceof String))
        {
          ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
          this.token_ = localByteString;
          return localByteString;
        }
        return (ByteString)localObject;
      }

      public Proto.ApiRequest.RequestType getType()
      {
        return this.type_;
      }

      public boolean hasProjectId()
      {
        return (0x1 & this.bitField0_) == 1;
      }

      public boolean hasTimelineItem()
      {
        return (0x8 & this.bitField0_) == 8;
      }

      public boolean hasToken()
      {
        return (0x2 & this.bitField0_) == 2;
      }

      public boolean hasType()
      {
        return (0x4 & this.bitField0_) == 4;
      }

      public final boolean isInitialized()
      {
        return true;
      }

      public Builder mergeFrom(Proto.ApiRequest paramApiRequest)
      {
        if (paramApiRequest == Proto.ApiRequest.getDefaultInstance());
        do
        {
          return this;
          if (paramApiRequest.hasProjectId())
          {
            this.bitField0_ = (0x1 | this.bitField0_);
            this.projectId_ = paramApiRequest.projectId_;
          }
          if (paramApiRequest.hasToken())
          {
            this.bitField0_ = (0x2 | this.bitField0_);
            this.token_ = paramApiRequest.token_;
          }
          if (paramApiRequest.hasType())
            setType(paramApiRequest.getType());
          if (paramApiRequest.hasTimelineItem())
            mergeTimelineItem(paramApiRequest.getTimelineItem());
        }
        while (paramApiRequest.attachmentContent_.isEmpty());
        if (this.attachmentContent_.isEmpty())
        {
          this.attachmentContent_ = paramApiRequest.attachmentContent_;
          this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
          return this;
        }
        ensureAttachmentContentIsMutable();
        this.attachmentContent_.addAll(paramApiRequest.attachmentContent_);
        return this;
      }

      public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
        throws IOException
      {
        Proto.ApiRequest localApiRequest1 = null;
        try
        {
          Proto.ApiRequest localApiRequest2 = (Proto.ApiRequest)Proto.ApiRequest.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
          return this;
        }
        catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
        {
          localApiRequest1 = (Proto.ApiRequest)localInvalidProtocolBufferException.getUnfinishedMessage();
          throw localInvalidProtocolBufferException;
        }
        finally
        {
          if (localApiRequest1 != null)
            mergeFrom(localApiRequest1);
        }
      }

      public Builder mergeTimelineItem(TimelineItem paramTimelineItem)
      {
        if (((0x8 & this.bitField0_) == 8) && (this.timelineItem_ != TimelineItem.getDefaultInstance()));
        for (this.timelineItem_ = TimelineItem.newBuilder(this.timelineItem_).mergeFrom(paramTimelineItem).buildPartial(); ; this.timelineItem_ = paramTimelineItem)
        {
          this.bitField0_ = (0x8 | this.bitField0_);
          return this;
        }
      }

      public Builder setAttachmentContent(int paramInt, ByteString paramByteString)
      {
        if (paramByteString == null)
          throw new NullPointerException();
        ensureAttachmentContentIsMutable();
        this.attachmentContent_.set(paramInt, paramByteString);
        return this;
      }

      public Builder setProjectId(String paramString)
      {
        if (paramString == null)
          throw new NullPointerException();
        this.bitField0_ = (0x1 | this.bitField0_);
        this.projectId_ = paramString;
        return this;
      }

      public Builder setProjectIdBytes(ByteString paramByteString)
      {
        if (paramByteString == null)
          throw new NullPointerException();
        this.bitField0_ = (0x1 | this.bitField0_);
        this.projectId_ = paramByteString;
        return this;
      }

      public Builder setTimelineItem(TimelineItem.Builder paramBuilder)
      {
        this.timelineItem_ = paramBuilder.build();
        this.bitField0_ = (0x8 | this.bitField0_);
        return this;
      }

      public Builder setTimelineItem(TimelineItem paramTimelineItem)
      {
        if (paramTimelineItem == null)
          throw new NullPointerException();
        this.timelineItem_ = paramTimelineItem;
        this.bitField0_ = (0x8 | this.bitField0_);
        return this;
      }

      public Builder setToken(String paramString)
      {
        if (paramString == null)
          throw new NullPointerException();
        this.bitField0_ = (0x2 | this.bitField0_);
        this.token_ = paramString;
        return this;
      }

      public Builder setTokenBytes(ByteString paramByteString)
      {
        if (paramByteString == null)
          throw new NullPointerException();
        this.bitField0_ = (0x2 | this.bitField0_);
        this.token_ = paramByteString;
        return this;
      }

      public Builder setType(Proto.ApiRequest.RequestType paramRequestType)
      {
        if (paramRequestType == null)
          throw new NullPointerException();
        this.bitField0_ = (0x4 | this.bitField0_);
        this.type_ = paramRequestType;
        return this;
      }
    }

    public static enum RequestType
      implements Internal.EnumLite
    {
      public static final int DELETE_TIMELINE_ITEM_VALUE = 1;
      public static final int INSERT_OR_UPDATE_TIMELINE_ITEM_VALUE;
      private static Internal.EnumLiteMap<RequestType> internalValueMap = new Internal.EnumLiteMap()
      {
        public Proto.ApiRequest.RequestType findValueByNumber(int paramAnonymousInt)
        {
          return Proto.ApiRequest.RequestType.valueOf(paramAnonymousInt);
        }
      };
      private final int value;

      static
      {
        DELETE_TIMELINE_ITEM = new RequestType("DELETE_TIMELINE_ITEM", 1, 1, 1);
        RequestType[] arrayOfRequestType = new RequestType[2];
        arrayOfRequestType[0] = INSERT_OR_UPDATE_TIMELINE_ITEM;
        arrayOfRequestType[1] = DELETE_TIMELINE_ITEM;
      }

      private RequestType(int paramInt1, int paramInt2)
      {
        this.value = paramInt2;
      }

      public static Internal.EnumLiteMap<RequestType> internalGetValueMap()
      {
        return internalValueMap;
      }

      public static RequestType valueOf(int paramInt)
      {
        switch (paramInt)
        {
        default:
          return null;
        case 0:
          return INSERT_OR_UPDATE_TIMELINE_ITEM;
        case 1:
        }
        return DELETE_TIMELINE_ITEM;
      }

      public final int getNumber()
      {
        return this.value;
      }
    }
  }

  public static abstract interface ApiRequestOrBuilder extends MessageLiteOrBuilder
  {
    public abstract ByteString getAttachmentContent(int paramInt);

    public abstract int getAttachmentContentCount();

    public abstract List<ByteString> getAttachmentContentList();

    public abstract String getProjectId();

    public abstract ByteString getProjectIdBytes();

    public abstract TimelineItem getTimelineItem();

    public abstract String getToken();

    public abstract ByteString getTokenBytes();

    public abstract Proto.ApiRequest.RequestType getType();

    public abstract boolean hasProjectId();

    public abstract boolean hasTimelineItem();

    public abstract boolean hasToken();

    public abstract boolean hasType();
  }

  public static final class ApiResponse extends GeneratedMessageLite
    implements Proto.ApiResponseOrBuilder
  {
    public static Parser<ApiResponse> PARSER = new AbstractParser()
    {
      public Proto.ApiResponse parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
        throws InvalidProtocolBufferException
      {
        return new Proto.ApiResponse(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
      }
    };
    public static final int TIMELINE_ITEM_FIELD_NUMBER = 2;
    public static final int TYPE_FIELD_NUMBER = 1;
    public static final int USER_ACTION_FIELD_NUMBER = 3;
    private static final ApiResponse defaultInstance;
    private static volatile MutableMessageLite mutableDefault = null;
    private static final long serialVersionUID;
    private int bitField0_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private TimelineItem timelineItem_;
    private ResponseType type_;
    private UserAction userAction_;

    static
    {
      defaultInstance = new ApiResponse(true);
      defaultInstance.initFields();
    }

    // ERROR //
    private ApiResponse(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 57	com/google/protobuf/GeneratedMessageLite:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 59	com/google/glass/companion/Proto$ApiResponse:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 61	com/google/glass/companion/Proto$ApiResponse:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 51	com/google/glass/companion/Proto$ApiResponse:initFields	()V
      //   18: iconst_0
      //   19: istore_3
      //   20: iload_3
      //   21: ifne +297 -> 318
      //   24: aload_1
      //   25: invokevirtual 67	com/google/protobuf/CodedInputStream:readTag	()I
      //   28: istore 7
      //   30: iload 7
      //   32: lookupswitch	default:+44->76, 0:+291->323, 8:+60->92, 18:+111->143, 26:+208->240
      //   77: aload_1
      //   78: aload_2
      //   79: iload 7
      //   81: invokevirtual 71	com/google/glass/companion/Proto$ApiResponse:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   84: ifne -64 -> 20
      //   87: iconst_1
      //   88: istore_3
      //   89: goto -69 -> 20
      //   92: aload_1
      //   93: invokevirtual 74	com/google/protobuf/CodedInputStream:readEnum	()I
      //   96: invokestatic 80	com/google/glass/companion/Proto$ApiResponse$ResponseType:valueOf	(I)Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;
      //   99: astore 14
      //   101: aload 14
      //   103: ifnull -83 -> 20
      //   106: aload_0
      //   107: iconst_1
      //   108: aload_0
      //   109: getfield 82	com/google/glass/companion/Proto$ApiResponse:bitField0_	I
      //   112: ior
      //   113: putfield 82	com/google/glass/companion/Proto$ApiResponse:bitField0_	I
      //   116: aload_0
      //   117: aload 14
      //   119: putfield 84	com/google/glass/companion/Proto$ApiResponse:type_	Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;
      //   122: goto -102 -> 20
      //   125: astore 6
      //   127: aload 6
      //   129: aload_0
      //   130: invokevirtual 88	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   133: athrow
      //   134: astore 5
      //   136: aload_0
      //   137: invokevirtual 91	com/google/glass/companion/Proto$ApiResponse:makeExtensionsImmutable	()V
      //   140: aload 5
      //   142: athrow
      //   143: iconst_2
      //   144: aload_0
      //   145: getfield 82	com/google/glass/companion/Proto$ApiResponse:bitField0_	I
      //   148: iand
      //   149: istore 11
      //   151: aconst_null
      //   152: astore 12
      //   154: iload 11
      //   156: iconst_2
      //   157: if_icmpne +12 -> 169
      //   160: aload_0
      //   161: getfield 93	com/google/glass/companion/Proto$ApiResponse:timelineItem_	Lcom/google/googlex/glass/common/proto/TimelineItem;
      //   164: invokevirtual 99	com/google/googlex/glass/common/proto/TimelineItem:toBuilder	()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
      //   167: astore 12
      //   169: aload_0
      //   170: aload_1
      //   171: getstatic 100	com/google/googlex/glass/common/proto/TimelineItem:PARSER	Lcom/google/protobuf/Parser;
      //   174: aload_2
      //   175: invokevirtual 104	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
      //   178: checkcast 95	com/google/googlex/glass/common/proto/TimelineItem
      //   181: putfield 93	com/google/glass/companion/Proto$ApiResponse:timelineItem_	Lcom/google/googlex/glass/common/proto/TimelineItem;
      //   184: aload 12
      //   186: ifnull +22 -> 208
      //   189: aload 12
      //   191: aload_0
      //   192: getfield 93	com/google/glass/companion/Proto$ApiResponse:timelineItem_	Lcom/google/googlex/glass/common/proto/TimelineItem;
      //   195: invokevirtual 110	com/google/googlex/glass/common/proto/TimelineItem$Builder:mergeFrom	(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
      //   198: pop
      //   199: aload_0
      //   200: aload 12
      //   202: invokevirtual 114	com/google/googlex/glass/common/proto/TimelineItem$Builder:buildPartial	()Lcom/google/googlex/glass/common/proto/TimelineItem;
      //   205: putfield 93	com/google/glass/companion/Proto$ApiResponse:timelineItem_	Lcom/google/googlex/glass/common/proto/TimelineItem;
      //   208: aload_0
      //   209: iconst_2
      //   210: aload_0
      //   211: getfield 82	com/google/glass/companion/Proto$ApiResponse:bitField0_	I
      //   214: ior
      //   215: putfield 82	com/google/glass/companion/Proto$ApiResponse:bitField0_	I
      //   218: goto -198 -> 20
      //   221: astore 4
      //   223: new 54	com/google/protobuf/InvalidProtocolBufferException
      //   226: dup
      //   227: aload 4
      //   229: invokevirtual 118	java/io/IOException:getMessage	()Ljava/lang/String;
      //   232: invokespecial 121	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   235: aload_0
      //   236: invokevirtual 88	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   239: athrow
      //   240: iconst_4
      //   241: aload_0
      //   242: getfield 82	com/google/glass/companion/Proto$ApiResponse:bitField0_	I
      //   245: iand
      //   246: istore 8
      //   248: aconst_null
      //   249: astore 9
      //   251: iload 8
      //   253: iconst_4
      //   254: if_icmpne +12 -> 266
      //   257: aload_0
      //   258: getfield 123	com/google/glass/companion/Proto$ApiResponse:userAction_	Lcom/google/googlex/glass/common/proto/UserAction;
      //   261: invokevirtual 128	com/google/googlex/glass/common/proto/UserAction:toBuilder	()Lcom/google/googlex/glass/common/proto/UserAction$Builder;
      //   264: astore 9
      //   266: aload_0
      //   267: aload_1
      //   268: getstatic 129	com/google/googlex/glass/common/proto/UserAction:PARSER	Lcom/google/protobuf/Parser;
      //   271: aload_2
      //   272: invokevirtual 104	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
      //   275: checkcast 125	com/google/googlex/glass/common/proto/UserAction
      //   278: putfield 123	com/google/glass/companion/Proto$ApiResponse:userAction_	Lcom/google/googlex/glass/common/proto/UserAction;
      //   281: aload 9
      //   283: ifnull +22 -> 305
      //   286: aload 9
      //   288: aload_0
      //   289: getfield 123	com/google/glass/companion/Proto$ApiResponse:userAction_	Lcom/google/googlex/glass/common/proto/UserAction;
      //   292: invokevirtual 134	com/google/googlex/glass/common/proto/UserAction$Builder:mergeFrom	(Lcom/google/googlex/glass/common/proto/UserAction;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;
      //   295: pop
      //   296: aload_0
      //   297: aload 9
      //   299: invokevirtual 137	com/google/googlex/glass/common/proto/UserAction$Builder:buildPartial	()Lcom/google/googlex/glass/common/proto/UserAction;
      //   302: putfield 123	com/google/glass/companion/Proto$ApiResponse:userAction_	Lcom/google/googlex/glass/common/proto/UserAction;
      //   305: aload_0
      //   306: iconst_4
      //   307: aload_0
      //   308: getfield 82	com/google/glass/companion/Proto$ApiResponse:bitField0_	I
      //   311: ior
      //   312: putfield 82	com/google/glass/companion/Proto$ApiResponse:bitField0_	I
      //   315: goto -295 -> 20
      //   318: aload_0
      //   319: invokevirtual 91	com/google/glass/companion/Proto$ApiResponse:makeExtensionsImmutable	()V
      //   322: return
      //   323: iconst_1
      //   324: istore_3
      //   325: goto -305 -> 20
      //
      // Exception table:
      //   from	to	target	type
      //   24	30	125	com/google/protobuf/InvalidProtocolBufferException
      //   76	87	125	com/google/protobuf/InvalidProtocolBufferException
      //   92	101	125	com/google/protobuf/InvalidProtocolBufferException
      //   106	122	125	com/google/protobuf/InvalidProtocolBufferException
      //   143	151	125	com/google/protobuf/InvalidProtocolBufferException
      //   160	169	125	com/google/protobuf/InvalidProtocolBufferException
      //   169	184	125	com/google/protobuf/InvalidProtocolBufferException
      //   189	208	125	com/google/protobuf/InvalidProtocolBufferException
      //   208	218	125	com/google/protobuf/InvalidProtocolBufferException
      //   240	248	125	com/google/protobuf/InvalidProtocolBufferException
      //   257	266	125	com/google/protobuf/InvalidProtocolBufferException
      //   266	281	125	com/google/protobuf/InvalidProtocolBufferException
      //   286	305	125	com/google/protobuf/InvalidProtocolBufferException
      //   305	315	125	com/google/protobuf/InvalidProtocolBufferException
      //   24	30	134	finally
      //   76	87	134	finally
      //   92	101	134	finally
      //   106	122	134	finally
      //   127	134	134	finally
      //   143	151	134	finally
      //   160	169	134	finally
      //   169	184	134	finally
      //   189	208	134	finally
      //   208	218	134	finally
      //   223	240	134	finally
      //   240	248	134	finally
      //   257	266	134	finally
      //   266	281	134	finally
      //   286	305	134	finally
      //   305	315	134	finally
      //   24	30	221	java/io/IOException
      //   76	87	221	java/io/IOException
      //   92	101	221	java/io/IOException
      //   106	122	221	java/io/IOException
      //   143	151	221	java/io/IOException
      //   160	169	221	java/io/IOException
      //   169	184	221	java/io/IOException
      //   189	208	221	java/io/IOException
      //   208	218	221	java/io/IOException
      //   240	248	221	java/io/IOException
      //   257	266	221	java/io/IOException
      //   266	281	221	java/io/IOException
      //   286	305	221	java/io/IOException
      //   305	315	221	java/io/IOException
    }

    private ApiResponse(GeneratedMessageLite.Builder paramBuilder)
    {
      super();
    }

    private ApiResponse(boolean paramBoolean)
    {
    }

    public static ApiResponse getDefaultInstance()
    {
      return defaultInstance;
    }

    private void initFields()
    {
      this.type_ = ResponseType.USER_ACTION;
      this.timelineItem_ = TimelineItem.getDefaultInstance();
      this.userAction_ = UserAction.getDefaultInstance();
    }

    public static Builder newBuilder()
    {
      return Builder.access$10400();
    }

    public static Builder newBuilder(ApiResponse paramApiResponse)
    {
      return newBuilder().mergeFrom(paramApiResponse);
    }

    public static ApiResponse parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (ApiResponse)PARSER.parseDelimitedFrom(paramInputStream);
    }

    public static ApiResponse parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (ApiResponse)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }

    public static ApiResponse parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (ApiResponse)PARSER.parseFrom(paramByteString);
    }

    public static ApiResponse parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (ApiResponse)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }

    public static ApiResponse parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (ApiResponse)PARSER.parseFrom(paramCodedInputStream);
    }

    public static ApiResponse parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (ApiResponse)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }

    public static ApiResponse parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (ApiResponse)PARSER.parseFrom(paramInputStream);
    }

    public static ApiResponse parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (ApiResponse)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }

    public static ApiResponse parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (ApiResponse)PARSER.parseFrom(paramArrayOfByte);
    }

    public static ApiResponse parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (ApiResponse)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }

    public ApiResponse getDefaultInstanceForType()
    {
      return defaultInstance;
    }

    public Parser<ApiResponse> getParserForType()
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
        k += CodedOutputStream.computeMessageSize(2, this.timelineItem_);
      if ((0x4 & this.bitField0_) == 4)
        k += CodedOutputStream.computeMessageSize(3, this.userAction_);
      this.memoizedSerializedSize = k;
      return k;
    }

    public TimelineItem getTimelineItem()
    {
      return this.timelineItem_;
    }

    public ResponseType getType()
    {
      return this.type_;
    }

    public UserAction getUserAction()
    {
      return this.userAction_;
    }

    public boolean hasTimelineItem()
    {
      return (0x2 & this.bitField0_) == 2;
    }

    public boolean hasType()
    {
      return (0x1 & this.bitField0_) == 1;
    }

    public boolean hasUserAction()
    {
      return (0x4 & this.bitField0_) == 4;
    }

    protected MutableMessageLite internalMutableDefault()
    {
      if (mutableDefault == null)
        mutableDefault = internalMutableDefault("com.google.glass.companion.MutableProto$ApiResponse");
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
        paramCodedOutputStream.writeMessage(2, this.timelineItem_);
      if ((0x4 & this.bitField0_) == 4)
        paramCodedOutputStream.writeMessage(3, this.userAction_);
    }

    public static final class Builder extends GeneratedMessageLite.Builder<Proto.ApiResponse, Builder>
      implements Proto.ApiResponseOrBuilder
    {
      private int bitField0_;
      private TimelineItem timelineItem_ = TimelineItem.getDefaultInstance();
      private Proto.ApiResponse.ResponseType type_ = Proto.ApiResponse.ResponseType.USER_ACTION;
      private UserAction userAction_ = UserAction.getDefaultInstance();

      private Builder()
      {
        maybeForceBuilderInitialization();
      }

      private static Builder create()
      {
        return new Builder();
      }

      private void maybeForceBuilderInitialization()
      {
      }

      public Proto.ApiResponse build()
      {
        Proto.ApiResponse localApiResponse = buildPartial();
        if (!localApiResponse.isInitialized())
          throw newUninitializedMessageException(localApiResponse);
        return localApiResponse;
      }

      public Proto.ApiResponse buildPartial()
      {
        Proto.ApiResponse localApiResponse = new Proto.ApiResponse(this, null);
        int i = this.bitField0_;
        int j = i & 0x1;
        int k = 0;
        if (j == 1)
          k = 0x0 | 0x1;
        Proto.ApiResponse.access$10602(localApiResponse, this.type_);
        if ((i & 0x2) == 2)
          k |= 2;
        Proto.ApiResponse.access$10702(localApiResponse, this.timelineItem_);
        if ((i & 0x4) == 4)
          k |= 4;
        Proto.ApiResponse.access$10802(localApiResponse, this.userAction_);
        Proto.ApiResponse.access$10902(localApiResponse, k);
        return localApiResponse;
      }

      public Builder clear()
      {
        super.clear();
        this.type_ = Proto.ApiResponse.ResponseType.USER_ACTION;
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        this.timelineItem_ = TimelineItem.getDefaultInstance();
        this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        this.userAction_ = UserAction.getDefaultInstance();
        this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
        return this;
      }

      public Builder clearTimelineItem()
      {
        this.timelineItem_ = TimelineItem.getDefaultInstance();
        this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        return this;
      }

      public Builder clearType()
      {
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        this.type_ = Proto.ApiResponse.ResponseType.USER_ACTION;
        return this;
      }

      public Builder clearUserAction()
      {
        this.userAction_ = UserAction.getDefaultInstance();
        this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
        return this;
      }

      public Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }

      public Proto.ApiResponse getDefaultInstanceForType()
      {
        return Proto.ApiResponse.getDefaultInstance();
      }

      public TimelineItem getTimelineItem()
      {
        return this.timelineItem_;
      }

      public Proto.ApiResponse.ResponseType getType()
      {
        return this.type_;
      }

      public UserAction getUserAction()
      {
        return this.userAction_;
      }

      public boolean hasTimelineItem()
      {
        return (0x2 & this.bitField0_) == 2;
      }

      public boolean hasType()
      {
        return (0x1 & this.bitField0_) == 1;
      }

      public boolean hasUserAction()
      {
        return (0x4 & this.bitField0_) == 4;
      }

      public final boolean isInitialized()
      {
        return true;
      }

      public Builder mergeFrom(Proto.ApiResponse paramApiResponse)
      {
        if (paramApiResponse == Proto.ApiResponse.getDefaultInstance());
        do
        {
          return this;
          if (paramApiResponse.hasType())
            setType(paramApiResponse.getType());
          if (paramApiResponse.hasTimelineItem())
            mergeTimelineItem(paramApiResponse.getTimelineItem());
        }
        while (!paramApiResponse.hasUserAction());
        mergeUserAction(paramApiResponse.getUserAction());
        return this;
      }

      public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
        throws IOException
      {
        Proto.ApiResponse localApiResponse1 = null;
        try
        {
          Proto.ApiResponse localApiResponse2 = (Proto.ApiResponse)Proto.ApiResponse.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
          return this;
        }
        catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
        {
          localApiResponse1 = (Proto.ApiResponse)localInvalidProtocolBufferException.getUnfinishedMessage();
          throw localInvalidProtocolBufferException;
        }
        finally
        {
          if (localApiResponse1 != null)
            mergeFrom(localApiResponse1);
        }
      }

      public Builder mergeTimelineItem(TimelineItem paramTimelineItem)
      {
        if (((0x2 & this.bitField0_) == 2) && (this.timelineItem_ != TimelineItem.getDefaultInstance()));
        for (this.timelineItem_ = TimelineItem.newBuilder(this.timelineItem_).mergeFrom(paramTimelineItem).buildPartial(); ; this.timelineItem_ = paramTimelineItem)
        {
          this.bitField0_ = (0x2 | this.bitField0_);
          return this;
        }
      }

      public Builder mergeUserAction(UserAction paramUserAction)
      {
        if (((0x4 & this.bitField0_) == 4) && (this.userAction_ != UserAction.getDefaultInstance()));
        for (this.userAction_ = UserAction.newBuilder(this.userAction_).mergeFrom(paramUserAction).buildPartial(); ; this.userAction_ = paramUserAction)
        {
          this.bitField0_ = (0x4 | this.bitField0_);
          return this;
        }
      }

      public Builder setTimelineItem(TimelineItem.Builder paramBuilder)
      {
        this.timelineItem_ = paramBuilder.build();
        this.bitField0_ = (0x2 | this.bitField0_);
        return this;
      }

      public Builder setTimelineItem(TimelineItem paramTimelineItem)
      {
        if (paramTimelineItem == null)
          throw new NullPointerException();
        this.timelineItem_ = paramTimelineItem;
        this.bitField0_ = (0x2 | this.bitField0_);
        return this;
      }

      public Builder setType(Proto.ApiResponse.ResponseType paramResponseType)
      {
        if (paramResponseType == null)
          throw new NullPointerException();
        this.bitField0_ = (0x1 | this.bitField0_);
        this.type_ = paramResponseType;
        return this;
      }

      public Builder setUserAction(UserAction.Builder paramBuilder)
      {
        this.userAction_ = paramBuilder.build();
        this.bitField0_ = (0x4 | this.bitField0_);
        return this;
      }

      public Builder setUserAction(UserAction paramUserAction)
      {
        if (paramUserAction == null)
          throw new NullPointerException();
        this.userAction_ = paramUserAction;
        this.bitField0_ = (0x4 | this.bitField0_);
        return this;
      }
    }

    public static enum ResponseType
      implements Internal.EnumLite
    {
      public static final int USER_ACTION_VALUE;
      private static Internal.EnumLiteMap<ResponseType> internalValueMap = new Internal.EnumLiteMap()
      {
        public Proto.ApiResponse.ResponseType findValueByNumber(int paramAnonymousInt)
        {
          return Proto.ApiResponse.ResponseType.valueOf(paramAnonymousInt);
        }
      };
      private final int value;

      static
      {
        ResponseType[] arrayOfResponseType = new ResponseType[1];
        arrayOfResponseType[0] = USER_ACTION;
      }

      private ResponseType(int paramInt1, int paramInt2)
      {
        this.value = paramInt2;
      }

      public static Internal.EnumLiteMap<ResponseType> internalGetValueMap()
      {
        return internalValueMap;
      }

      public static ResponseType valueOf(int paramInt)
      {
        switch (paramInt)
        {
        default:
          return null;
        case 0:
        }
        return USER_ACTION;
      }

      public final int getNumber()
      {
        return this.value;
      }
    }
  }

  public static abstract interface ApiResponseOrBuilder extends MessageLiteOrBuilder
  {
    public abstract TimelineItem getTimelineItem();

    public abstract Proto.ApiResponse.ResponseType getType();

    public abstract UserAction getUserAction();

    public abstract boolean hasTimelineItem();

    public abstract boolean hasType();

    public abstract boolean hasUserAction();
  }

  public static final class Command extends GeneratedMessageLite
    implements Proto.CommandOrBuilder
  {
    public static final int COMMAND_FIELD_NUMBER = 1;
    public static Parser<Command> PARSER = new AbstractParser()
    {
      public Proto.Command parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
        throws InvalidProtocolBufferException
      {
        return new Proto.Command(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
      }
    };
    private static final Command defaultInstance;
    private static volatile MutableMessageLite mutableDefault = null;
    private static final long serialVersionUID;
    private int bitField0_;
    private CommandType command_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;

    static
    {
      defaultInstance = new Command(true);
      defaultInstance.initFields();
    }

    // ERROR //
    private Command(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 49	com/google/protobuf/GeneratedMessageLite:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 51	com/google/glass/companion/Proto$Command:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 53	com/google/glass/companion/Proto$Command:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 43	com/google/glass/companion/Proto$Command:initFields	()V
      //   18: iconst_0
      //   19: istore_3
      //   20: iload_3
      //   21: ifne +106 -> 127
      //   24: aload_1
      //   25: invokevirtual 59	com/google/protobuf/CodedInputStream:readTag	()I
      //   28: istore 7
      //   30: iload 7
      //   32: lookupswitch	default:+28->60, 0:+119->151, 8:+44->76
      //   61: aload_1
      //   62: aload_2
      //   63: iload 7
      //   65: invokevirtual 63	com/google/glass/companion/Proto$Command:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   68: ifne -48 -> 20
      //   71: iconst_1
      //   72: istore_3
      //   73: goto -53 -> 20
      //   76: aload_1
      //   77: invokevirtual 66	com/google/protobuf/CodedInputStream:readEnum	()I
      //   80: invokestatic 72	com/google/glass/companion/Proto$Command$CommandType:valueOf	(I)Lcom/google/glass/companion/Proto$Command$CommandType;
      //   83: astore 8
      //   85: aload 8
      //   87: ifnull -67 -> 20
      //   90: aload_0
      //   91: iconst_1
      //   92: aload_0
      //   93: getfield 74	com/google/glass/companion/Proto$Command:bitField0_	I
      //   96: ior
      //   97: putfield 74	com/google/glass/companion/Proto$Command:bitField0_	I
      //   100: aload_0
      //   101: aload 8
      //   103: putfield 76	com/google/glass/companion/Proto$Command:command_	Lcom/google/glass/companion/Proto$Command$CommandType;
      //   106: goto -86 -> 20
      //   109: astore 6
      //   111: aload 6
      //   113: aload_0
      //   114: invokevirtual 80	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   117: athrow
      //   118: astore 5
      //   120: aload_0
      //   121: invokevirtual 83	com/google/glass/companion/Proto$Command:makeExtensionsImmutable	()V
      //   124: aload 5
      //   126: athrow
      //   127: aload_0
      //   128: invokevirtual 83	com/google/glass/companion/Proto$Command:makeExtensionsImmutable	()V
      //   131: return
      //   132: astore 4
      //   134: new 46	com/google/protobuf/InvalidProtocolBufferException
      //   137: dup
      //   138: aload 4
      //   140: invokevirtual 87	java/io/IOException:getMessage	()Ljava/lang/String;
      //   143: invokespecial 90	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   146: aload_0
      //   147: invokevirtual 80	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   150: athrow
      //   151: iconst_1
      //   152: istore_3
      //   153: goto -133 -> 20
      //
      // Exception table:
      //   from	to	target	type
      //   24	30	109	com/google/protobuf/InvalidProtocolBufferException
      //   60	71	109	com/google/protobuf/InvalidProtocolBufferException
      //   76	85	109	com/google/protobuf/InvalidProtocolBufferException
      //   90	106	109	com/google/protobuf/InvalidProtocolBufferException
      //   24	30	118	finally
      //   60	71	118	finally
      //   76	85	118	finally
      //   90	106	118	finally
      //   111	118	118	finally
      //   134	151	118	finally
      //   24	30	132	java/io/IOException
      //   60	71	132	java/io/IOException
      //   76	85	132	java/io/IOException
      //   90	106	132	java/io/IOException
    }

    private Command(GeneratedMessageLite.Builder paramBuilder)
    {
      super();
    }

    private Command(boolean paramBoolean)
    {
    }

    public static Command getDefaultInstance()
    {
      return defaultInstance;
    }

    private void initFields()
    {
      this.command_ = CommandType.UNPAIR;
    }

    public static Builder newBuilder()
    {
      return Builder.access$8400();
    }

    public static Builder newBuilder(Command paramCommand)
    {
      return newBuilder().mergeFrom(paramCommand);
    }

    public static Command parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (Command)PARSER.parseDelimitedFrom(paramInputStream);
    }

    public static Command parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (Command)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }

    public static Command parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (Command)PARSER.parseFrom(paramByteString);
    }

    public static Command parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (Command)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }

    public static Command parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (Command)PARSER.parseFrom(paramCodedInputStream);
    }

    public static Command parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (Command)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }

    public static Command parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (Command)PARSER.parseFrom(paramInputStream);
    }

    public static Command parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (Command)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }

    public static Command parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (Command)PARSER.parseFrom(paramArrayOfByte);
    }

    public static Command parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (Command)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }

    public CommandType getCommand()
    {
      return this.command_;
    }

    public Command getDefaultInstanceForType()
    {
      return defaultInstance;
    }

    public Parser<Command> getParserForType()
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
        k = 0 + CodedOutputStream.computeEnumSize(1, this.command_.getNumber());
      this.memoizedSerializedSize = k;
      return k;
    }

    public boolean hasCommand()
    {
      return (0x1 & this.bitField0_) == 1;
    }

    protected MutableMessageLite internalMutableDefault()
    {
      if (mutableDefault == null)
        mutableDefault = internalMutableDefault("com.google.glass.companion.MutableProto$Command");
      return mutableDefault;
    }

    public final boolean isInitialized()
    {
      int i = this.memoizedIsInitialized;
      if (i != -1)
        return i == 1;
      if (!hasCommand())
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
        paramCodedOutputStream.writeEnum(1, this.command_.getNumber());
    }

    public static final class Builder extends GeneratedMessageLite.Builder<Proto.Command, Builder>
      implements Proto.CommandOrBuilder
    {
      private int bitField0_;
      private Proto.Command.CommandType command_ = Proto.Command.CommandType.UNPAIR;

      private Builder()
      {
        maybeForceBuilderInitialization();
      }

      private static Builder create()
      {
        return new Builder();
      }

      private void maybeForceBuilderInitialization()
      {
      }

      public Proto.Command build()
      {
        Proto.Command localCommand = buildPartial();
        if (!localCommand.isInitialized())
          throw newUninitializedMessageException(localCommand);
        return localCommand;
      }

      public Proto.Command buildPartial()
      {
        Proto.Command localCommand = new Proto.Command(this, null);
        int i = 0x1 & this.bitField0_;
        int j = 0;
        if (i == 1)
          j = 0x0 | 0x1;
        Proto.Command.access$8602(localCommand, this.command_);
        Proto.Command.access$8702(localCommand, j);
        return localCommand;
      }

      public Builder clear()
      {
        super.clear();
        this.command_ = Proto.Command.CommandType.UNPAIR;
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        return this;
      }

      public Builder clearCommand()
      {
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        this.command_ = Proto.Command.CommandType.UNPAIR;
        return this;
      }

      public Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }

      public Proto.Command.CommandType getCommand()
      {
        return this.command_;
      }

      public Proto.Command getDefaultInstanceForType()
      {
        return Proto.Command.getDefaultInstance();
      }

      public boolean hasCommand()
      {
        return (0x1 & this.bitField0_) == 1;
      }

      public final boolean isInitialized()
      {
        return hasCommand();
      }

      public Builder mergeFrom(Proto.Command paramCommand)
      {
        if (paramCommand == Proto.Command.getDefaultInstance());
        while (!paramCommand.hasCommand())
          return this;
        setCommand(paramCommand.getCommand());
        return this;
      }

      public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
        throws IOException
      {
        Proto.Command localCommand1 = null;
        try
        {
          Proto.Command localCommand2 = (Proto.Command)Proto.Command.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
          return this;
        }
        catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
        {
          localCommand1 = (Proto.Command)localInvalidProtocolBufferException.getUnfinishedMessage();
          throw localInvalidProtocolBufferException;
        }
        finally
        {
          if (localCommand1 != null)
            mergeFrom(localCommand1);
        }
      }

      public Builder setCommand(Proto.Command.CommandType paramCommandType)
      {
        if (paramCommandType == null)
          throw new NullPointerException();
        this.bitField0_ = (0x1 | this.bitField0_);
        this.command_ = paramCommandType;
        return this;
      }
    }

    public static enum CommandType
      implements Internal.EnumLite
    {
      public static final int START_DEBUG_VALUE = 1;
      public static final int STOP_DEBUG_VALUE = 2;
      public static final int UNPAIR_VALUE;
      private static Internal.EnumLiteMap<CommandType> internalValueMap = new Internal.EnumLiteMap()
      {
        public Proto.Command.CommandType findValueByNumber(int paramAnonymousInt)
        {
          return Proto.Command.CommandType.valueOf(paramAnonymousInt);
        }
      };
      private final int value;

      static
      {
        START_DEBUG = new CommandType("START_DEBUG", 1, 1, 1);
        STOP_DEBUG = new CommandType("STOP_DEBUG", 2, 2, 2);
        CommandType[] arrayOfCommandType = new CommandType[3];
        arrayOfCommandType[0] = UNPAIR;
        arrayOfCommandType[1] = START_DEBUG;
        arrayOfCommandType[2] = STOP_DEBUG;
      }

      private CommandType(int paramInt1, int paramInt2)
      {
        this.value = paramInt2;
      }

      public static Internal.EnumLiteMap<CommandType> internalGetValueMap()
      {
        return internalValueMap;
      }

      public static CommandType valueOf(int paramInt)
      {
        switch (paramInt)
        {
        default:
          return null;
        case 0:
          return UNPAIR;
        case 1:
          return START_DEBUG;
        case 2:
        }
        return STOP_DEBUG;
      }

      public final int getNumber()
      {
        return this.value;
      }
    }
  }

  public static abstract interface CommandOrBuilder extends MessageLiteOrBuilder
  {
    public abstract Proto.Command.CommandType getCommand();

    public abstract boolean hasCommand();
  }

  public static final class CompanionInfo extends GeneratedMessageLite
    implements Proto.CompanionInfoOrBuilder
  {
    public static final int ID_FIELD_NUMBER = 1;
    public static Parser<CompanionInfo> PARSER = new AbstractParser()
    {
      public Proto.CompanionInfo parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
        throws InvalidProtocolBufferException
      {
        return new Proto.CompanionInfo(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
      }
    };
    public static final int REQUEST_LOG_FIELD_NUMBER = 5;
    public static final int REQUEST_NETWORK_FIELD_NUMBER = 2;
    public static final int RESPONSE_ANDROID_VERSION_FIELD_NUMBER = 4;
    public static final int RESPONSE_IS_NETWORK_OK_FIELD_NUMBER = 3;
    public static final int RESPONSE_LOG_FIELD_NUMBER = 6;
    private static final CompanionInfo defaultInstance;
    private static volatile MutableMessageLite mutableDefault = null;
    private static final long serialVersionUID;
    private int bitField0_;
    private long id_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private boolean requestLog_;
    private boolean requestNetwork_;
    private int responseAndroidVersion_;
    private boolean responseIsNetworkOk_;
    private Object responseLog_;

    static
    {
      defaultInstance = new CompanionInfo(true);
      defaultInstance.initFields();
    }

    // ERROR //
    private CompanionInfo(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 65	com/google/protobuf/GeneratedMessageLite:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 67	com/google/glass/companion/Proto$CompanionInfo:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 69	com/google/glass/companion/Proto$CompanionInfo:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 59	com/google/glass/companion/Proto$CompanionInfo:initFields	()V
      //   18: iconst_0
      //   19: istore_3
      //   20: iload_3
      //   21: ifne +261 -> 282
      //   24: aload_1
      //   25: invokevirtual 75	com/google/protobuf/CodedInputStream:readTag	()I
      //   28: istore 7
      //   30: iload 7
      //   32: lookupswitch	default:+68->100, 0:+255->287, 8:+84->116, 16:+123->155, 24:+163->195, 32:+184->216, 40:+206->238, 50:+228->260
      //   101: aload_1
      //   102: aload_2
      //   103: iload 7
      //   105: invokevirtual 79	com/google/glass/companion/Proto$CompanionInfo:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   108: ifne -88 -> 20
      //   111: iconst_1
      //   112: istore_3
      //   113: goto -93 -> 20
      //   116: aload_0
      //   117: iconst_1
      //   118: aload_0
      //   119: getfield 81	com/google/glass/companion/Proto$CompanionInfo:bitField0_	I
      //   122: ior
      //   123: putfield 81	com/google/glass/companion/Proto$CompanionInfo:bitField0_	I
      //   126: aload_0
      //   127: aload_1
      //   128: invokevirtual 85	com/google/protobuf/CodedInputStream:readInt64	()J
      //   131: putfield 87	com/google/glass/companion/Proto$CompanionInfo:id_	J
      //   134: goto -114 -> 20
      //   137: astore 6
      //   139: aload 6
      //   141: aload_0
      //   142: invokevirtual 91	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   145: athrow
      //   146: astore 5
      //   148: aload_0
      //   149: invokevirtual 94	com/google/glass/companion/Proto$CompanionInfo:makeExtensionsImmutable	()V
      //   152: aload 5
      //   154: athrow
      //   155: aload_0
      //   156: iconst_2
      //   157: aload_0
      //   158: getfield 81	com/google/glass/companion/Proto$CompanionInfo:bitField0_	I
      //   161: ior
      //   162: putfield 81	com/google/glass/companion/Proto$CompanionInfo:bitField0_	I
      //   165: aload_0
      //   166: aload_1
      //   167: invokevirtual 98	com/google/protobuf/CodedInputStream:readBool	()Z
      //   170: putfield 100	com/google/glass/companion/Proto$CompanionInfo:requestNetwork_	Z
      //   173: goto -153 -> 20
      //   176: astore 4
      //   178: new 62	com/google/protobuf/InvalidProtocolBufferException
      //   181: dup
      //   182: aload 4
      //   184: invokevirtual 104	java/io/IOException:getMessage	()Ljava/lang/String;
      //   187: invokespecial 107	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   190: aload_0
      //   191: invokevirtual 91	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   194: athrow
      //   195: aload_0
      //   196: iconst_4
      //   197: aload_0
      //   198: getfield 81	com/google/glass/companion/Proto$CompanionInfo:bitField0_	I
      //   201: ior
      //   202: putfield 81	com/google/glass/companion/Proto$CompanionInfo:bitField0_	I
      //   205: aload_0
      //   206: aload_1
      //   207: invokevirtual 98	com/google/protobuf/CodedInputStream:readBool	()Z
      //   210: putfield 109	com/google/glass/companion/Proto$CompanionInfo:responseIsNetworkOk_	Z
      //   213: goto -193 -> 20
      //   216: aload_0
      //   217: bipush 8
      //   219: aload_0
      //   220: getfield 81	com/google/glass/companion/Proto$CompanionInfo:bitField0_	I
      //   223: ior
      //   224: putfield 81	com/google/glass/companion/Proto$CompanionInfo:bitField0_	I
      //   227: aload_0
      //   228: aload_1
      //   229: invokevirtual 112	com/google/protobuf/CodedInputStream:readInt32	()I
      //   232: putfield 114	com/google/glass/companion/Proto$CompanionInfo:responseAndroidVersion_	I
      //   235: goto -215 -> 20
      //   238: aload_0
      //   239: bipush 16
      //   241: aload_0
      //   242: getfield 81	com/google/glass/companion/Proto$CompanionInfo:bitField0_	I
      //   245: ior
      //   246: putfield 81	com/google/glass/companion/Proto$CompanionInfo:bitField0_	I
      //   249: aload_0
      //   250: aload_1
      //   251: invokevirtual 98	com/google/protobuf/CodedInputStream:readBool	()Z
      //   254: putfield 116	com/google/glass/companion/Proto$CompanionInfo:requestLog_	Z
      //   257: goto -237 -> 20
      //   260: aload_0
      //   261: bipush 32
      //   263: aload_0
      //   264: getfield 81	com/google/glass/companion/Proto$CompanionInfo:bitField0_	I
      //   267: ior
      //   268: putfield 81	com/google/glass/companion/Proto$CompanionInfo:bitField0_	I
      //   271: aload_0
      //   272: aload_1
      //   273: invokevirtual 120	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   276: putfield 122	com/google/glass/companion/Proto$CompanionInfo:responseLog_	Ljava/lang/Object;
      //   279: goto -259 -> 20
      //   282: aload_0
      //   283: invokevirtual 94	com/google/glass/companion/Proto$CompanionInfo:makeExtensionsImmutable	()V
      //   286: return
      //   287: iconst_1
      //   288: istore_3
      //   289: goto -269 -> 20
      //
      // Exception table:
      //   from	to	target	type
      //   24	30	137	com/google/protobuf/InvalidProtocolBufferException
      //   100	111	137	com/google/protobuf/InvalidProtocolBufferException
      //   116	134	137	com/google/protobuf/InvalidProtocolBufferException
      //   155	173	137	com/google/protobuf/InvalidProtocolBufferException
      //   195	213	137	com/google/protobuf/InvalidProtocolBufferException
      //   216	235	137	com/google/protobuf/InvalidProtocolBufferException
      //   238	257	137	com/google/protobuf/InvalidProtocolBufferException
      //   260	279	137	com/google/protobuf/InvalidProtocolBufferException
      //   24	30	146	finally
      //   100	111	146	finally
      //   116	134	146	finally
      //   139	146	146	finally
      //   155	173	146	finally
      //   178	195	146	finally
      //   195	213	146	finally
      //   216	235	146	finally
      //   238	257	146	finally
      //   260	279	146	finally
      //   24	30	176	java/io/IOException
      //   100	111	176	java/io/IOException
      //   116	134	176	java/io/IOException
      //   155	173	176	java/io/IOException
      //   195	213	176	java/io/IOException
      //   216	235	176	java/io/IOException
      //   238	257	176	java/io/IOException
      //   260	279	176	java/io/IOException
    }

    private CompanionInfo(GeneratedMessageLite.Builder paramBuilder)
    {
      super();
    }

    private CompanionInfo(boolean paramBoolean)
    {
    }

    public static CompanionInfo getDefaultInstance()
    {
      return defaultInstance;
    }

    private void initFields()
    {
      this.id_ = 0L;
      this.requestNetwork_ = false;
      this.responseIsNetworkOk_ = false;
      this.responseAndroidVersion_ = 0;
      this.requestLog_ = false;
      this.responseLog_ = "";
    }

    public static Builder newBuilder()
    {
      return Builder.access$6200();
    }

    public static Builder newBuilder(CompanionInfo paramCompanionInfo)
    {
      return newBuilder().mergeFrom(paramCompanionInfo);
    }

    public static CompanionInfo parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (CompanionInfo)PARSER.parseDelimitedFrom(paramInputStream);
    }

    public static CompanionInfo parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (CompanionInfo)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }

    public static CompanionInfo parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (CompanionInfo)PARSER.parseFrom(paramByteString);
    }

    public static CompanionInfo parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (CompanionInfo)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }

    public static CompanionInfo parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (CompanionInfo)PARSER.parseFrom(paramCodedInputStream);
    }

    public static CompanionInfo parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (CompanionInfo)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }

    public static CompanionInfo parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (CompanionInfo)PARSER.parseFrom(paramInputStream);
    }

    public static CompanionInfo parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (CompanionInfo)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }

    public static CompanionInfo parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (CompanionInfo)PARSER.parseFrom(paramArrayOfByte);
    }

    public static CompanionInfo parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (CompanionInfo)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }

    public CompanionInfo getDefaultInstanceForType()
    {
      return defaultInstance;
    }

    public long getId()
    {
      return this.id_;
    }

    public Parser<CompanionInfo> getParserForType()
    {
      return PARSER;
    }

    public boolean getRequestLog()
    {
      return this.requestLog_;
    }

    public boolean getRequestNetwork()
    {
      return this.requestNetwork_;
    }

    public int getResponseAndroidVersion()
    {
      return this.responseAndroidVersion_;
    }

    public boolean getResponseIsNetworkOk()
    {
      return this.responseIsNetworkOk_;
    }

    public String getResponseLog()
    {
      Object localObject = this.responseLog_;
      if ((localObject instanceof String))
        return (String)localObject;
      ByteString localByteString = (ByteString)localObject;
      String str = localByteString.toStringUtf8();
      if (localByteString.isValidUtf8())
        this.responseLog_ = str;
      return str;
    }

    public ByteString getResponseLogBytes()
    {
      Object localObject = this.responseLog_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.responseLog_ = localByteString;
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
        k = 0 + CodedOutputStream.computeInt64Size(1, this.id_);
      if ((0x2 & this.bitField0_) == 2)
        k += CodedOutputStream.computeBoolSize(2, this.requestNetwork_);
      if ((0x4 & this.bitField0_) == 4)
        k += CodedOutputStream.computeBoolSize(3, this.responseIsNetworkOk_);
      if ((0x8 & this.bitField0_) == 8)
        k += CodedOutputStream.computeInt32Size(4, this.responseAndroidVersion_);
      if ((0x10 & this.bitField0_) == 16)
        k += CodedOutputStream.computeBoolSize(5, this.requestLog_);
      if ((0x20 & this.bitField0_) == 32)
        k += CodedOutputStream.computeBytesSize(6, getResponseLogBytes());
      this.memoizedSerializedSize = k;
      return k;
    }

    public boolean hasId()
    {
      return (0x1 & this.bitField0_) == 1;
    }

    public boolean hasRequestLog()
    {
      return (0x10 & this.bitField0_) == 16;
    }

    public boolean hasRequestNetwork()
    {
      return (0x2 & this.bitField0_) == 2;
    }

    public boolean hasResponseAndroidVersion()
    {
      return (0x8 & this.bitField0_) == 8;
    }

    public boolean hasResponseIsNetworkOk()
    {
      return (0x4 & this.bitField0_) == 4;
    }

    public boolean hasResponseLog()
    {
      return (0x20 & this.bitField0_) == 32;
    }

    protected MutableMessageLite internalMutableDefault()
    {
      if (mutableDefault == null)
        mutableDefault = internalMutableDefault("com.google.glass.companion.MutableProto$CompanionInfo");
      return mutableDefault;
    }

    public final boolean isInitialized()
    {
      int i = this.memoizedIsInitialized;
      if (i != -1)
        return i == 1;
      if (!hasId())
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
        paramCodedOutputStream.writeInt64(1, this.id_);
      if ((0x2 & this.bitField0_) == 2)
        paramCodedOutputStream.writeBool(2, this.requestNetwork_);
      if ((0x4 & this.bitField0_) == 4)
        paramCodedOutputStream.writeBool(3, this.responseIsNetworkOk_);
      if ((0x8 & this.bitField0_) == 8)
        paramCodedOutputStream.writeInt32(4, this.responseAndroidVersion_);
      if ((0x10 & this.bitField0_) == 16)
        paramCodedOutputStream.writeBool(5, this.requestLog_);
      if ((0x20 & this.bitField0_) == 32)
        paramCodedOutputStream.writeBytes(6, getResponseLogBytes());
    }

    public static final class Builder extends GeneratedMessageLite.Builder<Proto.CompanionInfo, Builder>
      implements Proto.CompanionInfoOrBuilder
    {
      private int bitField0_;
      private long id_;
      private boolean requestLog_;
      private boolean requestNetwork_;
      private int responseAndroidVersion_;
      private boolean responseIsNetworkOk_;
      private Object responseLog_ = "";

      private Builder()
      {
        maybeForceBuilderInitialization();
      }

      private static Builder create()
      {
        return new Builder();
      }

      private void maybeForceBuilderInitialization()
      {
      }

      public Proto.CompanionInfo build()
      {
        Proto.CompanionInfo localCompanionInfo = buildPartial();
        if (!localCompanionInfo.isInitialized())
          throw newUninitializedMessageException(localCompanionInfo);
        return localCompanionInfo;
      }

      public Proto.CompanionInfo buildPartial()
      {
        Proto.CompanionInfo localCompanionInfo = new Proto.CompanionInfo(this, null);
        int i = this.bitField0_;
        int j = i & 0x1;
        int k = 0;
        if (j == 1)
          k = 0x0 | 0x1;
        Proto.CompanionInfo.access$6402(localCompanionInfo, this.id_);
        if ((i & 0x2) == 2)
          k |= 2;
        Proto.CompanionInfo.access$6502(localCompanionInfo, this.requestNetwork_);
        if ((i & 0x4) == 4)
          k |= 4;
        Proto.CompanionInfo.access$6602(localCompanionInfo, this.responseIsNetworkOk_);
        if ((i & 0x8) == 8)
          k |= 8;
        Proto.CompanionInfo.access$6702(localCompanionInfo, this.responseAndroidVersion_);
        if ((i & 0x10) == 16)
          k |= 16;
        Proto.CompanionInfo.access$6802(localCompanionInfo, this.requestLog_);
        if ((i & 0x20) == 32)
          k |= 32;
        Proto.CompanionInfo.access$6902(localCompanionInfo, this.responseLog_);
        Proto.CompanionInfo.access$7002(localCompanionInfo, k);
        return localCompanionInfo;
      }

      public Builder clear()
      {
        super.clear();
        this.id_ = 0L;
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        this.requestNetwork_ = false;
        this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        this.responseIsNetworkOk_ = false;
        this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
        this.responseAndroidVersion_ = 0;
        this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
        this.requestLog_ = false;
        this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
        this.responseLog_ = "";
        this.bitField0_ = (0xFFFFFFDF & this.bitField0_);
        return this;
      }

      public Builder clearId()
      {
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        this.id_ = 0L;
        return this;
      }

      public Builder clearRequestLog()
      {
        this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
        this.requestLog_ = false;
        return this;
      }

      public Builder clearRequestNetwork()
      {
        this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        this.requestNetwork_ = false;
        return this;
      }

      public Builder clearResponseAndroidVersion()
      {
        this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
        this.responseAndroidVersion_ = 0;
        return this;
      }

      public Builder clearResponseIsNetworkOk()
      {
        this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
        this.responseIsNetworkOk_ = false;
        return this;
      }

      public Builder clearResponseLog()
      {
        this.bitField0_ = (0xFFFFFFDF & this.bitField0_);
        this.responseLog_ = Proto.CompanionInfo.getDefaultInstance().getResponseLog();
        return this;
      }

      public Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }

      public Proto.CompanionInfo getDefaultInstanceForType()
      {
        return Proto.CompanionInfo.getDefaultInstance();
      }

      public long getId()
      {
        return this.id_;
      }

      public boolean getRequestLog()
      {
        return this.requestLog_;
      }

      public boolean getRequestNetwork()
      {
        return this.requestNetwork_;
      }

      public int getResponseAndroidVersion()
      {
        return this.responseAndroidVersion_;
      }

      public boolean getResponseIsNetworkOk()
      {
        return this.responseIsNetworkOk_;
      }

      public String getResponseLog()
      {
        Object localObject = this.responseLog_;
        if (!(localObject instanceof String))
        {
          String str = ((ByteString)localObject).toStringUtf8();
          this.responseLog_ = str;
          return str;
        }
        return (String)localObject;
      }

      public ByteString getResponseLogBytes()
      {
        Object localObject = this.responseLog_;
        if ((localObject instanceof String))
        {
          ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
          this.responseLog_ = localByteString;
          return localByteString;
        }
        return (ByteString)localObject;
      }

      public boolean hasId()
      {
        return (0x1 & this.bitField0_) == 1;
      }

      public boolean hasRequestLog()
      {
        return (0x10 & this.bitField0_) == 16;
      }

      public boolean hasRequestNetwork()
      {
        return (0x2 & this.bitField0_) == 2;
      }

      public boolean hasResponseAndroidVersion()
      {
        return (0x8 & this.bitField0_) == 8;
      }

      public boolean hasResponseIsNetworkOk()
      {
        return (0x4 & this.bitField0_) == 4;
      }

      public boolean hasResponseLog()
      {
        return (0x20 & this.bitField0_) == 32;
      }

      public final boolean isInitialized()
      {
        return hasId();
      }

      public Builder mergeFrom(Proto.CompanionInfo paramCompanionInfo)
      {
        if (paramCompanionInfo == Proto.CompanionInfo.getDefaultInstance());
        do
        {
          return this;
          if (paramCompanionInfo.hasId())
            setId(paramCompanionInfo.getId());
          if (paramCompanionInfo.hasRequestNetwork())
            setRequestNetwork(paramCompanionInfo.getRequestNetwork());
          if (paramCompanionInfo.hasResponseIsNetworkOk())
            setResponseIsNetworkOk(paramCompanionInfo.getResponseIsNetworkOk());
          if (paramCompanionInfo.hasResponseAndroidVersion())
            setResponseAndroidVersion(paramCompanionInfo.getResponseAndroidVersion());
          if (paramCompanionInfo.hasRequestLog())
            setRequestLog(paramCompanionInfo.getRequestLog());
        }
        while (!paramCompanionInfo.hasResponseLog());
        this.bitField0_ = (0x20 | this.bitField0_);
        this.responseLog_ = paramCompanionInfo.responseLog_;
        return this;
      }

      public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
        throws IOException
      {
        Proto.CompanionInfo localCompanionInfo1 = null;
        try
        {
          Proto.CompanionInfo localCompanionInfo2 = (Proto.CompanionInfo)Proto.CompanionInfo.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
          return this;
        }
        catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
        {
          localCompanionInfo1 = (Proto.CompanionInfo)localInvalidProtocolBufferException.getUnfinishedMessage();
          throw localInvalidProtocolBufferException;
        }
        finally
        {
          if (localCompanionInfo1 != null)
            mergeFrom(localCompanionInfo1);
        }
      }

      public Builder setId(long paramLong)
      {
        this.bitField0_ = (0x1 | this.bitField0_);
        this.id_ = paramLong;
        return this;
      }

      public Builder setRequestLog(boolean paramBoolean)
      {
        this.bitField0_ = (0x10 | this.bitField0_);
        this.requestLog_ = paramBoolean;
        return this;
      }

      public Builder setRequestNetwork(boolean paramBoolean)
      {
        this.bitField0_ = (0x2 | this.bitField0_);
        this.requestNetwork_ = paramBoolean;
        return this;
      }

      public Builder setResponseAndroidVersion(int paramInt)
      {
        this.bitField0_ = (0x8 | this.bitField0_);
        this.responseAndroidVersion_ = paramInt;
        return this;
      }

      public Builder setResponseIsNetworkOk(boolean paramBoolean)
      {
        this.bitField0_ = (0x4 | this.bitField0_);
        this.responseIsNetworkOk_ = paramBoolean;
        return this;
      }

      public Builder setResponseLog(String paramString)
      {
        if (paramString == null)
          throw new NullPointerException();
        this.bitField0_ = (0x20 | this.bitField0_);
        this.responseLog_ = paramString;
        return this;
      }

      public Builder setResponseLogBytes(ByteString paramByteString)
      {
        if (paramByteString == null)
          throw new NullPointerException();
        this.bitField0_ = (0x20 | this.bitField0_);
        this.responseLog_ = paramByteString;
        return this;
      }
    }
  }

  public static abstract interface CompanionInfoOrBuilder extends MessageLiteOrBuilder
  {
    public abstract long getId();

    public abstract boolean getRequestLog();

    public abstract boolean getRequestNetwork();

    public abstract int getResponseAndroidVersion();

    public abstract boolean getResponseIsNetworkOk();

    public abstract String getResponseLog();

    public abstract ByteString getResponseLogBytes();

    public abstract boolean hasId();

    public abstract boolean hasRequestLog();

    public abstract boolean hasRequestNetwork();

    public abstract boolean hasResponseAndroidVersion();

    public abstract boolean hasResponseIsNetworkOk();

    public abstract boolean hasResponseLog();
  }

  public static final class Envelope extends GeneratedMessageLite
    implements Proto.EnvelopeOrBuilder
  {
    public static final int API_REQUEST_C2G_FIELD_NUMBER = 18;
    public static final int API_RESPONSE_G2C_FIELD_NUMBER = 19;
    public static final int COMMAND_FIELD_NUMBER = 16;
    public static final int COMPANION_INFO_FIELD_NUMBER = 13;
    public static final int ERROR_FIELD_NUMBER = 14;
    public static final int LOCATION_MESSAGE_C2G_FIELD_NUMBER = 7;
    public static final int LOCATION_REQUEST_G2C_FIELD_NUMBER = 6;
    public static final int MESSAGE_C2G_FIELD_NUMBER = 8;
    public static final int NAVIGATION_REQUEST_C2G_FIELD_NUMBER = 10;
    public static Parser<Envelope> PARSER = new AbstractParser()
    {
      public Proto.Envelope parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
        throws InvalidProtocolBufferException
      {
        return new Proto.Envelope(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
      }
    };
    public static final int SCREENSHOT_FIELD_NUMBER = 15;
    public static final int SERIAL_NUMBER_FIELD_NUMBER = 2;
    public static final int SETUP_WIFI_C2G_FIELD_NUMBER = 12;
    public static final int TIMELINE_ITEM_FIELD_NUMBER = 5;
    public static final int TIMELINE_ITEM_RESPONSE_C2G_FIELD_NUMBER = 17;
    public static final int TIMEZONE_C2G_FIELD_NUMBER = 9;
    public static final int TIME_MILLIS_FIELD_NUMBER = 3;
    public static final int UPTIME_MILLIS_FIELD_NUMBER = 4;
    public static final int URL_G2C_FIELD_NUMBER = 11;
    public static final int VERSION_FIELD_NUMBER = 1;
    private static final Envelope defaultInstance;
    private static volatile MutableMessageLite mutableDefault = null;
    private static final long serialVersionUID;
    private Proto.ApiRequest apiRequestC2G_;
    private Proto.ApiResponse apiResponseG2C_;
    private int bitField0_;
    private Proto.Command command_;
    private Proto.CompanionInfo companionInfo_;
    private Proto.Error error_;
    private Proto.LocationMessage locationMessageC2G_;
    private Proto.LocationRequest locationRequestG2C_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private Object messageC2G_;
    private Proto.NavigationRequest navigationRequestC2G_;
    private Proto.ScreenShot screenshot_;
    private int serialNumber_;
    private Object setupWifiC2G_;
    private long timeMillis_;
    private List<Proto.TimelineItemResponse> timelineItemResponseC2G_;
    private List<TimelineItem> timelineItem_;
    private Object timezoneC2G_;
    private long uptimeMillis_;
    private Object urlG2C_;
    private int version_;

    static
    {
      defaultInstance = new Envelope(true);
      defaultInstance.initFields();
    }

    // ERROR //
    private Envelope(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 115	com/google/protobuf/GeneratedMessageLite:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 117	com/google/glass/companion/Proto$Envelope:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 119	com/google/glass/companion/Proto$Envelope:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 109	com/google/glass/companion/Proto$Envelope:initFields	()V
      //   18: iconst_0
      //   19: istore_3
      //   20: iconst_0
      //   21: istore 4
      //   23: iload 4
      //   25: ifne +1295 -> 1320
      //   28: aload_1
      //   29: invokevirtual 125	com/google/protobuf/CodedInputStream:readTag	()I
      //   32: istore 8
      //   34: iload 8
      //   36: lookupswitch	default:+172->208, 0:+1329->1365, 8:+189->225, 16:+268->304, 24:+308->344, 32:+329->365, 42:+351->387, 50:+397->433, 58:+478->514, 66:+559->595, 74:+581->617, 82:+604->640, 90:+688->724, 98:+711->747, 106:+734->770, 114:+818->854, 122:+902->938, 130:+986->1022, 138:+1070->1106, 146:+1116->1152, 154:+1200->1236
      //   209: aload_1
      //   210: aload_2
      //   211: iload 8
      //   213: invokevirtual 129	com/google/glass/companion/Proto$Envelope:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   216: ifne -193 -> 23
      //   219: iconst_1
      //   220: istore 4
      //   222: goto -199 -> 23
      //   225: aload_0
      //   226: iconst_1
      //   227: aload_0
      //   228: getfield 131	com/google/glass/companion/Proto$Envelope:bitField0_	I
      //   231: ior
      //   232: putfield 131	com/google/glass/companion/Proto$Envelope:bitField0_	I
      //   235: aload_0
      //   236: aload_1
      //   237: invokevirtual 134	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   240: putfield 136	com/google/glass/companion/Proto$Envelope:version_	I
      //   243: goto -220 -> 23
      //   246: astore 7
      //   248: aload 7
      //   250: aload_0
      //   251: invokevirtual 140	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   254: athrow
      //   255: astore 6
      //   257: iload_3
      //   258: bipush 16
      //   260: iand
      //   261: bipush 16
      //   263: if_icmpne +14 -> 277
      //   266: aload_0
      //   267: aload_0
      //   268: getfield 142	com/google/glass/companion/Proto$Envelope:timelineItem_	Ljava/util/List;
      //   271: invokestatic 148	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
      //   274: putfield 142	com/google/glass/companion/Proto$Envelope:timelineItem_	Ljava/util/List;
      //   277: iload_3
      //   278: bipush 32
      //   280: iand
      //   281: bipush 32
      //   283: if_icmpne +14 -> 297
      //   286: aload_0
      //   287: aload_0
      //   288: getfield 150	com/google/glass/companion/Proto$Envelope:timelineItemResponseC2G_	Ljava/util/List;
      //   291: invokestatic 148	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
      //   294: putfield 150	com/google/glass/companion/Proto$Envelope:timelineItemResponseC2G_	Ljava/util/List;
      //   297: aload_0
      //   298: invokevirtual 153	com/google/glass/companion/Proto$Envelope:makeExtensionsImmutable	()V
      //   301: aload 6
      //   303: athrow
      //   304: aload_0
      //   305: iconst_2
      //   306: aload_0
      //   307: getfield 131	com/google/glass/companion/Proto$Envelope:bitField0_	I
      //   310: ior
      //   311: putfield 131	com/google/glass/companion/Proto$Envelope:bitField0_	I
      //   314: aload_0
      //   315: aload_1
      //   316: invokevirtual 134	com/google/protobuf/CodedInputStream:readUInt32	()I
      //   319: putfield 155	com/google/glass/companion/Proto$Envelope:serialNumber_	I
      //   322: goto -299 -> 23
      //   325: astore 5
      //   327: new 112	com/google/protobuf/InvalidProtocolBufferException
      //   330: dup
      //   331: aload 5
      //   333: invokevirtual 159	java/io/IOException:getMessage	()Ljava/lang/String;
      //   336: invokespecial 162	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   339: aload_0
      //   340: invokevirtual 140	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   343: athrow
      //   344: aload_0
      //   345: iconst_4
      //   346: aload_0
      //   347: getfield 131	com/google/glass/companion/Proto$Envelope:bitField0_	I
      //   350: ior
      //   351: putfield 131	com/google/glass/companion/Proto$Envelope:bitField0_	I
      //   354: aload_0
      //   355: aload_1
      //   356: invokevirtual 166	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   359: putfield 168	com/google/glass/companion/Proto$Envelope:timeMillis_	J
      //   362: goto -339 -> 23
      //   365: aload_0
      //   366: bipush 8
      //   368: aload_0
      //   369: getfield 131	com/google/glass/companion/Proto$Envelope:bitField0_	I
      //   372: ior
      //   373: putfield 131	com/google/glass/companion/Proto$Envelope:bitField0_	I
      //   376: aload_0
      //   377: aload_1
      //   378: invokevirtual 166	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   381: putfield 170	com/google/glass/companion/Proto$Envelope:uptimeMillis_	J
      //   384: goto -361 -> 23
      //   387: iload_3
      //   388: bipush 16
      //   390: iand
      //   391: bipush 16
      //   393: if_icmpeq +19 -> 412
      //   396: aload_0
      //   397: new 172	java/util/ArrayList
      //   400: dup
      //   401: invokespecial 173	java/util/ArrayList:<init>	()V
      //   404: putfield 142	com/google/glass/companion/Proto$Envelope:timelineItem_	Ljava/util/List;
      //   407: iload_3
      //   408: bipush 16
      //   410: ior
      //   411: istore_3
      //   412: aload_0
      //   413: getfield 142	com/google/glass/companion/Proto$Envelope:timelineItem_	Ljava/util/List;
      //   416: aload_1
      //   417: getstatic 176	com/google/googlex/glass/common/proto/TimelineItem:PARSER	Lcom/google/protobuf/Parser;
      //   420: aload_2
      //   421: invokevirtual 180	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
      //   424: invokeinterface 186 2 0
      //   429: pop
      //   430: goto -407 -> 23
      //   433: bipush 16
      //   435: aload_0
      //   436: getfield 131	com/google/glass/companion/Proto$Envelope:bitField0_	I
      //   439: iand
      //   440: istore 34
      //   442: aconst_null
      //   443: astore 35
      //   445: iload 34
      //   447: bipush 16
      //   449: if_icmpne +12 -> 461
      //   452: aload_0
      //   453: getfield 188	com/google/glass/companion/Proto$Envelope:locationRequestG2C_	Lcom/google/glass/companion/Proto$LocationRequest;
      //   456: invokevirtual 194	com/google/glass/companion/Proto$LocationRequest:toBuilder	()Lcom/google/glass/companion/Proto$LocationRequest$Builder;
      //   459: astore 35
      //   461: aload_0
      //   462: aload_1
      //   463: getstatic 195	com/google/glass/companion/Proto$LocationRequest:PARSER	Lcom/google/protobuf/Parser;
      //   466: aload_2
      //   467: invokevirtual 180	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
      //   470: checkcast 190	com/google/glass/companion/Proto$LocationRequest
      //   473: putfield 188	com/google/glass/companion/Proto$Envelope:locationRequestG2C_	Lcom/google/glass/companion/Proto$LocationRequest;
      //   476: aload 35
      //   478: ifnull +22 -> 500
      //   481: aload 35
      //   483: aload_0
      //   484: getfield 188	com/google/glass/companion/Proto$Envelope:locationRequestG2C_	Lcom/google/glass/companion/Proto$LocationRequest;
      //   487: invokevirtual 201	com/google/glass/companion/Proto$LocationRequest$Builder:mergeFrom	(Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/glass/companion/Proto$LocationRequest$Builder;
      //   490: pop
      //   491: aload_0
      //   492: aload 35
      //   494: invokevirtual 205	com/google/glass/companion/Proto$LocationRequest$Builder:buildPartial	()Lcom/google/glass/companion/Proto$LocationRequest;
      //   497: putfield 188	com/google/glass/companion/Proto$Envelope:locationRequestG2C_	Lcom/google/glass/companion/Proto$LocationRequest;
      //   500: aload_0
      //   501: bipush 16
      //   503: aload_0
      //   504: getfield 131	com/google/glass/companion/Proto$Envelope:bitField0_	I
      //   507: ior
      //   508: putfield 131	com/google/glass/companion/Proto$Envelope:bitField0_	I
      //   511: goto -488 -> 23
      //   514: bipush 32
      //   516: aload_0
      //   517: getfield 131	com/google/glass/companion/Proto$Envelope:bitField0_	I
      //   520: iand
      //   521: istore 31
      //   523: aconst_null
      //   524: astore 32
      //   526: iload 31
      //   528: bipush 32
      //   530: if_icmpne +12 -> 542
      //   533: aload_0
      //   534: getfield 207	com/google/glass/companion/Proto$Envelope:locationMessageC2G_	Lcom/google/glass/companion/Proto$LocationMessage;
      //   537: invokevirtual 212	com/google/glass/companion/Proto$LocationMessage:toBuilder	()Lcom/google/glass/companion/Proto$LocationMessage$Builder;
      //   540: astore 32
      //   542: aload_0
      //   543: aload_1
      //   544: getstatic 213	com/google/glass/companion/Proto$LocationMessage:PARSER	Lcom/google/protobuf/Parser;
      //   547: aload_2
      //   548: invokevirtual 180	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
      //   551: checkcast 209	com/google/glass/companion/Proto$LocationMessage
      //   554: putfield 207	com/google/glass/companion/Proto$Envelope:locationMessageC2G_	Lcom/google/glass/companion/Proto$LocationMessage;
      //   557: aload 32
      //   559: ifnull +22 -> 581
      //   562: aload 32
      //   564: aload_0
      //   565: getfield 207	com/google/glass/companion/Proto$Envelope:locationMessageC2G_	Lcom/google/glass/companion/Proto$LocationMessage;
      //   568: invokevirtual 218	com/google/glass/companion/Proto$LocationMessage$Builder:mergeFrom	(Lcom/google/glass/companion/Proto$LocationMessage;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;
      //   571: pop
      //   572: aload_0
      //   573: aload 32
      //   575: invokevirtual 221	com/google/glass/companion/Proto$LocationMessage$Builder:buildPartial	()Lcom/google/glass/companion/Proto$LocationMessage;
      //   578: putfield 207	com/google/glass/companion/Proto$Envelope:locationMessageC2G_	Lcom/google/glass/companion/Proto$LocationMessage;
      //   581: aload_0
      //   582: bipush 32
      //   584: aload_0
      //   585: getfield 131	com/google/glass/companion/Proto$Envelope:bitField0_	I
      //   588: ior
      //   589: putfield 131	com/google/glass/companion/Proto$Envelope:bitField0_	I
      //   592: goto -569 -> 23
      //   595: aload_0
      //   596: bipush 64
      //   598: aload_0
      //   599: getfield 131	com/google/glass/companion/Proto$Envelope:bitField0_	I
      //   602: ior
      //   603: putfield 131	com/google/glass/companion/Proto$Envelope:bitField0_	I
      //   606: aload_0
      //   607: aload_1
      //   608: invokevirtual 225	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   611: putfield 227	com/google/glass/companion/Proto$Envelope:messageC2G_	Ljava/lang/Object;
      //   614: goto -591 -> 23
      //   617: aload_0
      //   618: sipush 128
      //   621: aload_0
      //   622: getfield 131	com/google/glass/companion/Proto$Envelope:bitField0_	I
      //   625: ior
      //   626: putfield 131	com/google/glass/companion/Proto$Envelope:bitField0_	I
      //   629: aload_0
      //   630: aload_1
      //   631: invokevirtual 225	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   634: putfield 229	com/google/glass/companion/Proto$Envelope:timezoneC2G_	Ljava/lang/Object;
      //   637: goto -614 -> 23
      //   640: sipush 256
      //   643: aload_0
      //   644: getfield 131	com/google/glass/companion/Proto$Envelope:bitField0_	I
      //   647: iand
      //   648: istore 28
      //   650: aconst_null
      //   651: astore 29
      //   653: iload 28
      //   655: sipush 256
      //   658: if_icmpne +12 -> 670
      //   661: aload_0
      //   662: getfield 231	com/google/glass/companion/Proto$Envelope:navigationRequestC2G_	Lcom/google/glass/companion/Proto$NavigationRequest;
      //   665: invokevirtual 236	com/google/glass/companion/Proto$NavigationRequest:toBuilder	()Lcom/google/glass/companion/Proto$NavigationRequest$Builder;
      //   668: astore 29
      //   670: aload_0
      //   671: aload_1
      //   672: getstatic 237	com/google/glass/companion/Proto$NavigationRequest:PARSER	Lcom/google/protobuf/Parser;
      //   675: aload_2
      //   676: invokevirtual 180	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
      //   679: checkcast 233	com/google/glass/companion/Proto$NavigationRequest
      //   682: putfield 231	com/google/glass/companion/Proto$Envelope:navigationRequestC2G_	Lcom/google/glass/companion/Proto$NavigationRequest;
      //   685: aload 29
      //   687: ifnull +22 -> 709
      //   690: aload 29
      //   692: aload_0
      //   693: getfield 231	com/google/glass/companion/Proto$Envelope:navigationRequestC2G_	Lcom/google/glass/companion/Proto$NavigationRequest;
      //   696: invokevirtual 242	com/google/glass/companion/Proto$NavigationRequest$Builder:mergeFrom	(Lcom/google/glass/companion/Proto$NavigationRequest;)Lcom/google/glass/companion/Proto$NavigationRequest$Builder;
      //   699: pop
      //   700: aload_0
      //   701: aload 29
      //   703: invokevirtual 245	com/google/glass/companion/Proto$NavigationRequest$Builder:buildPartial	()Lcom/google/glass/companion/Proto$NavigationRequest;
      //   706: putfield 231	com/google/glass/companion/Proto$Envelope:navigationRequestC2G_	Lcom/google/glass/companion/Proto$NavigationRequest;
      //   709: aload_0
      //   710: sipush 256
      //   713: aload_0
      //   714: getfield 131	com/google/glass/companion/Proto$Envelope:bitField0_	I
      //   717: ior
      //   718: putfield 131	com/google/glass/companion/Proto$Envelope:bitField0_	I
      //   721: goto -698 -> 23
      //   724: aload_0
      //   725: sipush 512
      //   728: aload_0
      //   729: getfield 131	com/google/glass/companion/Proto$Envelope:bitField0_	I
      //   732: ior
      //   733: putfield 131	com/google/glass/companion/Proto$Envelope:bitField0_	I
      //   736: aload_0
      //   737: aload_1
      //   738: invokevirtual 225	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   741: putfield 247	com/google/glass/companion/Proto$Envelope:urlG2C_	Ljava/lang/Object;
      //   744: goto -721 -> 23
      //   747: aload_0
      //   748: sipush 1024
      //   751: aload_0
      //   752: getfield 131	com/google/glass/companion/Proto$Envelope:bitField0_	I
      //   755: ior
      //   756: putfield 131	com/google/glass/companion/Proto$Envelope:bitField0_	I
      //   759: aload_0
      //   760: aload_1
      //   761: invokevirtual 225	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   764: putfield 249	com/google/glass/companion/Proto$Envelope:setupWifiC2G_	Ljava/lang/Object;
      //   767: goto -744 -> 23
      //   770: sipush 2048
      //   773: aload_0
      //   774: getfield 131	com/google/glass/companion/Proto$Envelope:bitField0_	I
      //   777: iand
      //   778: istore 25
      //   780: aconst_null
      //   781: astore 26
      //   783: iload 25
      //   785: sipush 2048
      //   788: if_icmpne +12 -> 800
      //   791: aload_0
      //   792: getfield 251	com/google/glass/companion/Proto$Envelope:companionInfo_	Lcom/google/glass/companion/Proto$CompanionInfo;
      //   795: invokevirtual 256	com/google/glass/companion/Proto$CompanionInfo:toBuilder	()Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
      //   798: astore 26
      //   800: aload_0
      //   801: aload_1
      //   802: getstatic 257	com/google/glass/companion/Proto$CompanionInfo:PARSER	Lcom/google/protobuf/Parser;
      //   805: aload_2
      //   806: invokevirtual 180	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
      //   809: checkcast 253	com/google/glass/companion/Proto$CompanionInfo
      //   812: putfield 251	com/google/glass/companion/Proto$Envelope:companionInfo_	Lcom/google/glass/companion/Proto$CompanionInfo;
      //   815: aload 26
      //   817: ifnull +22 -> 839
      //   820: aload 26
      //   822: aload_0
      //   823: getfield 251	com/google/glass/companion/Proto$Envelope:companionInfo_	Lcom/google/glass/companion/Proto$CompanionInfo;
      //   826: invokevirtual 262	com/google/glass/companion/Proto$CompanionInfo$Builder:mergeFrom	(Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/glass/companion/Proto$CompanionInfo$Builder;
      //   829: pop
      //   830: aload_0
      //   831: aload 26
      //   833: invokevirtual 265	com/google/glass/companion/Proto$CompanionInfo$Builder:buildPartial	()Lcom/google/glass/companion/Proto$CompanionInfo;
      //   836: putfield 251	com/google/glass/companion/Proto$Envelope:companionInfo_	Lcom/google/glass/companion/Proto$CompanionInfo;
      //   839: aload_0
      //   840: sipush 2048
      //   843: aload_0
      //   844: getfield 131	com/google/glass/companion/Proto$Envelope:bitField0_	I
      //   847: ior
      //   848: putfield 131	com/google/glass/companion/Proto$Envelope:bitField0_	I
      //   851: goto -828 -> 23
      //   854: sipush 4096
      //   857: aload_0
      //   858: getfield 131	com/google/glass/companion/Proto$Envelope:bitField0_	I
      //   861: iand
      //   862: istore 22
      //   864: aconst_null
      //   865: astore 23
      //   867: iload 22
      //   869: sipush 4096
      //   872: if_icmpne +12 -> 884
      //   875: aload_0
      //   876: getfield 267	com/google/glass/companion/Proto$Envelope:error_	Lcom/google/glass/companion/Proto$Error;
      //   879: invokevirtual 272	com/google/glass/companion/Proto$Error:toBuilder	()Lcom/google/glass/companion/Proto$Error$Builder;
      //   882: astore 23
      //   884: aload_0
      //   885: aload_1
      //   886: getstatic 273	com/google/glass/companion/Proto$Error:PARSER	Lcom/google/protobuf/Parser;
      //   889: aload_2
      //   890: invokevirtual 180	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
      //   893: checkcast 269	com/google/glass/companion/Proto$Error
      //   896: putfield 267	com/google/glass/companion/Proto$Envelope:error_	Lcom/google/glass/companion/Proto$Error;
      //   899: aload 23
      //   901: ifnull +22 -> 923
      //   904: aload 23
      //   906: aload_0
      //   907: getfield 267	com/google/glass/companion/Proto$Envelope:error_	Lcom/google/glass/companion/Proto$Error;
      //   910: invokevirtual 278	com/google/glass/companion/Proto$Error$Builder:mergeFrom	(Lcom/google/glass/companion/Proto$Error;)Lcom/google/glass/companion/Proto$Error$Builder;
      //   913: pop
      //   914: aload_0
      //   915: aload 23
      //   917: invokevirtual 281	com/google/glass/companion/Proto$Error$Builder:buildPartial	()Lcom/google/glass/companion/Proto$Error;
      //   920: putfield 267	com/google/glass/companion/Proto$Envelope:error_	Lcom/google/glass/companion/Proto$Error;
      //   923: aload_0
      //   924: sipush 4096
      //   927: aload_0
      //   928: getfield 131	com/google/glass/companion/Proto$Envelope:bitField0_	I
      //   931: ior
      //   932: putfield 131	com/google/glass/companion/Proto$Envelope:bitField0_	I
      //   935: goto -912 -> 23
      //   938: sipush 8192
      //   941: aload_0
      //   942: getfield 131	com/google/glass/companion/Proto$Envelope:bitField0_	I
      //   945: iand
      //   946: istore 19
      //   948: aconst_null
      //   949: astore 20
      //   951: iload 19
      //   953: sipush 8192
      //   956: if_icmpne +12 -> 968
      //   959: aload_0
      //   960: getfield 283	com/google/glass/companion/Proto$Envelope:screenshot_	Lcom/google/glass/companion/Proto$ScreenShot;
      //   963: invokevirtual 288	com/google/glass/companion/Proto$ScreenShot:toBuilder	()Lcom/google/glass/companion/Proto$ScreenShot$Builder;
      //   966: astore 20
      //   968: aload_0
      //   969: aload_1
      //   970: getstatic 289	com/google/glass/companion/Proto$ScreenShot:PARSER	Lcom/google/protobuf/Parser;
      //   973: aload_2
      //   974: invokevirtual 180	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
      //   977: checkcast 285	com/google/glass/companion/Proto$ScreenShot
      //   980: putfield 283	com/google/glass/companion/Proto$Envelope:screenshot_	Lcom/google/glass/companion/Proto$ScreenShot;
      //   983: aload 20
      //   985: ifnull +22 -> 1007
      //   988: aload 20
      //   990: aload_0
      //   991: getfield 283	com/google/glass/companion/Proto$Envelope:screenshot_	Lcom/google/glass/companion/Proto$ScreenShot;
      //   994: invokevirtual 294	com/google/glass/companion/Proto$ScreenShot$Builder:mergeFrom	(Lcom/google/glass/companion/Proto$ScreenShot;)Lcom/google/glass/companion/Proto$ScreenShot$Builder;
      //   997: pop
      //   998: aload_0
      //   999: aload 20
      //   1001: invokevirtual 297	com/google/glass/companion/Proto$ScreenShot$Builder:buildPartial	()Lcom/google/glass/companion/Proto$ScreenShot;
      //   1004: putfield 283	com/google/glass/companion/Proto$Envelope:screenshot_	Lcom/google/glass/companion/Proto$ScreenShot;
      //   1007: aload_0
      //   1008: sipush 8192
      //   1011: aload_0
      //   1012: getfield 131	com/google/glass/companion/Proto$Envelope:bitField0_	I
      //   1015: ior
      //   1016: putfield 131	com/google/glass/companion/Proto$Envelope:bitField0_	I
      //   1019: goto -996 -> 23
      //   1022: sipush 16384
      //   1025: aload_0
      //   1026: getfield 131	com/google/glass/companion/Proto$Envelope:bitField0_	I
      //   1029: iand
      //   1030: istore 16
      //   1032: aconst_null
      //   1033: astore 17
      //   1035: iload 16
      //   1037: sipush 16384
      //   1040: if_icmpne +12 -> 1052
      //   1043: aload_0
      //   1044: getfield 299	com/google/glass/companion/Proto$Envelope:command_	Lcom/google/glass/companion/Proto$Command;
      //   1047: invokevirtual 304	com/google/glass/companion/Proto$Command:toBuilder	()Lcom/google/glass/companion/Proto$Command$Builder;
      //   1050: astore 17
      //   1052: aload_0
      //   1053: aload_1
      //   1054: getstatic 305	com/google/glass/companion/Proto$Command:PARSER	Lcom/google/protobuf/Parser;
      //   1057: aload_2
      //   1058: invokevirtual 180	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
      //   1061: checkcast 301	com/google/glass/companion/Proto$Command
      //   1064: putfield 299	com/google/glass/companion/Proto$Envelope:command_	Lcom/google/glass/companion/Proto$Command;
      //   1067: aload 17
      //   1069: ifnull +22 -> 1091
      //   1072: aload 17
      //   1074: aload_0
      //   1075: getfield 299	com/google/glass/companion/Proto$Envelope:command_	Lcom/google/glass/companion/Proto$Command;
      //   1078: invokevirtual 310	com/google/glass/companion/Proto$Command$Builder:mergeFrom	(Lcom/google/glass/companion/Proto$Command;)Lcom/google/glass/companion/Proto$Command$Builder;
      //   1081: pop
      //   1082: aload_0
      //   1083: aload 17
      //   1085: invokevirtual 313	com/google/glass/companion/Proto$Command$Builder:buildPartial	()Lcom/google/glass/companion/Proto$Command;
      //   1088: putfield 299	com/google/glass/companion/Proto$Envelope:command_	Lcom/google/glass/companion/Proto$Command;
      //   1091: aload_0
      //   1092: sipush 16384
      //   1095: aload_0
      //   1096: getfield 131	com/google/glass/companion/Proto$Envelope:bitField0_	I
      //   1099: ior
      //   1100: putfield 131	com/google/glass/companion/Proto$Envelope:bitField0_	I
      //   1103: goto -1080 -> 23
      //   1106: iload_3
      //   1107: bipush 32
      //   1109: iand
      //   1110: bipush 32
      //   1112: if_icmpeq +19 -> 1131
      //   1115: aload_0
      //   1116: new 172	java/util/ArrayList
      //   1119: dup
      //   1120: invokespecial 173	java/util/ArrayList:<init>	()V
      //   1123: putfield 150	com/google/glass/companion/Proto$Envelope:timelineItemResponseC2G_	Ljava/util/List;
      //   1126: iload_3
      //   1127: bipush 32
      //   1129: ior
      //   1130: istore_3
      //   1131: aload_0
      //   1132: getfield 150	com/google/glass/companion/Proto$Envelope:timelineItemResponseC2G_	Ljava/util/List;
      //   1135: aload_1
      //   1136: getstatic 316	com/google/glass/companion/Proto$TimelineItemResponse:PARSER	Lcom/google/protobuf/Parser;
      //   1139: aload_2
      //   1140: invokevirtual 180	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
      //   1143: invokeinterface 186 2 0
      //   1148: pop
      //   1149: goto -1126 -> 23
      //   1152: ldc_w 317
      //   1155: aload_0
      //   1156: getfield 131	com/google/glass/companion/Proto$Envelope:bitField0_	I
      //   1159: iand
      //   1160: istore 12
      //   1162: aconst_null
      //   1163: astore 13
      //   1165: iload 12
      //   1167: ldc_w 317
      //   1170: if_icmpne +12 -> 1182
      //   1173: aload_0
      //   1174: getfield 319	com/google/glass/companion/Proto$Envelope:apiRequestC2G_	Lcom/google/glass/companion/Proto$ApiRequest;
      //   1177: invokevirtual 324	com/google/glass/companion/Proto$ApiRequest:toBuilder	()Lcom/google/glass/companion/Proto$ApiRequest$Builder;
      //   1180: astore 13
      //   1182: aload_0
      //   1183: aload_1
      //   1184: getstatic 325	com/google/glass/companion/Proto$ApiRequest:PARSER	Lcom/google/protobuf/Parser;
      //   1187: aload_2
      //   1188: invokevirtual 180	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
      //   1191: checkcast 321	com/google/glass/companion/Proto$ApiRequest
      //   1194: putfield 319	com/google/glass/companion/Proto$Envelope:apiRequestC2G_	Lcom/google/glass/companion/Proto$ApiRequest;
      //   1197: aload 13
      //   1199: ifnull +22 -> 1221
      //   1202: aload 13
      //   1204: aload_0
      //   1205: getfield 319	com/google/glass/companion/Proto$Envelope:apiRequestC2G_	Lcom/google/glass/companion/Proto$ApiRequest;
      //   1208: invokevirtual 330	com/google/glass/companion/Proto$ApiRequest$Builder:mergeFrom	(Lcom/google/glass/companion/Proto$ApiRequest;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;
      //   1211: pop
      //   1212: aload_0
      //   1213: aload 13
      //   1215: invokevirtual 333	com/google/glass/companion/Proto$ApiRequest$Builder:buildPartial	()Lcom/google/glass/companion/Proto$ApiRequest;
      //   1218: putfield 319	com/google/glass/companion/Proto$Envelope:apiRequestC2G_	Lcom/google/glass/companion/Proto$ApiRequest;
      //   1221: aload_0
      //   1222: ldc_w 317
      //   1225: aload_0
      //   1226: getfield 131	com/google/glass/companion/Proto$Envelope:bitField0_	I
      //   1229: ior
      //   1230: putfield 131	com/google/glass/companion/Proto$Envelope:bitField0_	I
      //   1233: goto -1210 -> 23
      //   1236: ldc_w 334
      //   1239: aload_0
      //   1240: getfield 131	com/google/glass/companion/Proto$Envelope:bitField0_	I
      //   1243: iand
      //   1244: istore 9
      //   1246: aconst_null
      //   1247: astore 10
      //   1249: iload 9
      //   1251: ldc_w 334
      //   1254: if_icmpne +12 -> 1266
      //   1257: aload_0
      //   1258: getfield 336	com/google/glass/companion/Proto$Envelope:apiResponseG2C_	Lcom/google/glass/companion/Proto$ApiResponse;
      //   1261: invokevirtual 341	com/google/glass/companion/Proto$ApiResponse:toBuilder	()Lcom/google/glass/companion/Proto$ApiResponse$Builder;
      //   1264: astore 10
      //   1266: aload_0
      //   1267: aload_1
      //   1268: getstatic 342	com/google/glass/companion/Proto$ApiResponse:PARSER	Lcom/google/protobuf/Parser;
      //   1271: aload_2
      //   1272: invokevirtual 180	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
      //   1275: checkcast 338	com/google/glass/companion/Proto$ApiResponse
      //   1278: putfield 336	com/google/glass/companion/Proto$Envelope:apiResponseG2C_	Lcom/google/glass/companion/Proto$ApiResponse;
      //   1281: aload 10
      //   1283: ifnull +22 -> 1305
      //   1286: aload 10
      //   1288: aload_0
      //   1289: getfield 336	com/google/glass/companion/Proto$Envelope:apiResponseG2C_	Lcom/google/glass/companion/Proto$ApiResponse;
      //   1292: invokevirtual 347	com/google/glass/companion/Proto$ApiResponse$Builder:mergeFrom	(Lcom/google/glass/companion/Proto$ApiResponse;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;
      //   1295: pop
      //   1296: aload_0
      //   1297: aload 10
      //   1299: invokevirtual 350	com/google/glass/companion/Proto$ApiResponse$Builder:buildPartial	()Lcom/google/glass/companion/Proto$ApiResponse;
      //   1302: putfield 336	com/google/glass/companion/Proto$Envelope:apiResponseG2C_	Lcom/google/glass/companion/Proto$ApiResponse;
      //   1305: aload_0
      //   1306: ldc_w 334
      //   1309: aload_0
      //   1310: getfield 131	com/google/glass/companion/Proto$Envelope:bitField0_	I
      //   1313: ior
      //   1314: putfield 131	com/google/glass/companion/Proto$Envelope:bitField0_	I
      //   1317: goto -1294 -> 23
      //   1320: iload_3
      //   1321: bipush 16
      //   1323: iand
      //   1324: bipush 16
      //   1326: if_icmpne +14 -> 1340
      //   1329: aload_0
      //   1330: aload_0
      //   1331: getfield 142	com/google/glass/companion/Proto$Envelope:timelineItem_	Ljava/util/List;
      //   1334: invokestatic 148	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
      //   1337: putfield 142	com/google/glass/companion/Proto$Envelope:timelineItem_	Ljava/util/List;
      //   1340: iload_3
      //   1341: bipush 32
      //   1343: iand
      //   1344: bipush 32
      //   1346: if_icmpne +14 -> 1360
      //   1349: aload_0
      //   1350: aload_0
      //   1351: getfield 150	com/google/glass/companion/Proto$Envelope:timelineItemResponseC2G_	Ljava/util/List;
      //   1354: invokestatic 148	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
      //   1357: putfield 150	com/google/glass/companion/Proto$Envelope:timelineItemResponseC2G_	Ljava/util/List;
      //   1360: aload_0
      //   1361: invokevirtual 153	com/google/glass/companion/Proto$Envelope:makeExtensionsImmutable	()V
      //   1364: return
      //   1365: iconst_1
      //   1366: istore 4
      //   1368: goto -1345 -> 23
      //
      // Exception table:
      //   from	to	target	type
      //   28	34	246	com/google/protobuf/InvalidProtocolBufferException
      //   208	219	246	com/google/protobuf/InvalidProtocolBufferException
      //   225	243	246	com/google/protobuf/InvalidProtocolBufferException
      //   304	322	246	com/google/protobuf/InvalidProtocolBufferException
      //   344	362	246	com/google/protobuf/InvalidProtocolBufferException
      //   365	384	246	com/google/protobuf/InvalidProtocolBufferException
      //   396	407	246	com/google/protobuf/InvalidProtocolBufferException
      //   412	430	246	com/google/protobuf/InvalidProtocolBufferException
      //   433	442	246	com/google/protobuf/InvalidProtocolBufferException
      //   452	461	246	com/google/protobuf/InvalidProtocolBufferException
      //   461	476	246	com/google/protobuf/InvalidProtocolBufferException
      //   481	500	246	com/google/protobuf/InvalidProtocolBufferException
      //   500	511	246	com/google/protobuf/InvalidProtocolBufferException
      //   514	523	246	com/google/protobuf/InvalidProtocolBufferException
      //   533	542	246	com/google/protobuf/InvalidProtocolBufferException
      //   542	557	246	com/google/protobuf/InvalidProtocolBufferException
      //   562	581	246	com/google/protobuf/InvalidProtocolBufferException
      //   581	592	246	com/google/protobuf/InvalidProtocolBufferException
      //   595	614	246	com/google/protobuf/InvalidProtocolBufferException
      //   617	637	246	com/google/protobuf/InvalidProtocolBufferException
      //   640	650	246	com/google/protobuf/InvalidProtocolBufferException
      //   661	670	246	com/google/protobuf/InvalidProtocolBufferException
      //   670	685	246	com/google/protobuf/InvalidProtocolBufferException
      //   690	709	246	com/google/protobuf/InvalidProtocolBufferException
      //   709	721	246	com/google/protobuf/InvalidProtocolBufferException
      //   724	744	246	com/google/protobuf/InvalidProtocolBufferException
      //   747	767	246	com/google/protobuf/InvalidProtocolBufferException
      //   770	780	246	com/google/protobuf/InvalidProtocolBufferException
      //   791	800	246	com/google/protobuf/InvalidProtocolBufferException
      //   800	815	246	com/google/protobuf/InvalidProtocolBufferException
      //   820	839	246	com/google/protobuf/InvalidProtocolBufferException
      //   839	851	246	com/google/protobuf/InvalidProtocolBufferException
      //   854	864	246	com/google/protobuf/InvalidProtocolBufferException
      //   875	884	246	com/google/protobuf/InvalidProtocolBufferException
      //   884	899	246	com/google/protobuf/InvalidProtocolBufferException
      //   904	923	246	com/google/protobuf/InvalidProtocolBufferException
      //   923	935	246	com/google/protobuf/InvalidProtocolBufferException
      //   938	948	246	com/google/protobuf/InvalidProtocolBufferException
      //   959	968	246	com/google/protobuf/InvalidProtocolBufferException
      //   968	983	246	com/google/protobuf/InvalidProtocolBufferException
      //   988	1007	246	com/google/protobuf/InvalidProtocolBufferException
      //   1007	1019	246	com/google/protobuf/InvalidProtocolBufferException
      //   1022	1032	246	com/google/protobuf/InvalidProtocolBufferException
      //   1043	1052	246	com/google/protobuf/InvalidProtocolBufferException
      //   1052	1067	246	com/google/protobuf/InvalidProtocolBufferException
      //   1072	1091	246	com/google/protobuf/InvalidProtocolBufferException
      //   1091	1103	246	com/google/protobuf/InvalidProtocolBufferException
      //   1115	1126	246	com/google/protobuf/InvalidProtocolBufferException
      //   1131	1149	246	com/google/protobuf/InvalidProtocolBufferException
      //   1152	1162	246	com/google/protobuf/InvalidProtocolBufferException
      //   1173	1182	246	com/google/protobuf/InvalidProtocolBufferException
      //   1182	1197	246	com/google/protobuf/InvalidProtocolBufferException
      //   1202	1221	246	com/google/protobuf/InvalidProtocolBufferException
      //   1221	1233	246	com/google/protobuf/InvalidProtocolBufferException
      //   1236	1246	246	com/google/protobuf/InvalidProtocolBufferException
      //   1257	1266	246	com/google/protobuf/InvalidProtocolBufferException
      //   1266	1281	246	com/google/protobuf/InvalidProtocolBufferException
      //   1286	1305	246	com/google/protobuf/InvalidProtocolBufferException
      //   1305	1317	246	com/google/protobuf/InvalidProtocolBufferException
      //   28	34	255	finally
      //   208	219	255	finally
      //   225	243	255	finally
      //   248	255	255	finally
      //   304	322	255	finally
      //   327	344	255	finally
      //   344	362	255	finally
      //   365	384	255	finally
      //   396	407	255	finally
      //   412	430	255	finally
      //   433	442	255	finally
      //   452	461	255	finally
      //   461	476	255	finally
      //   481	500	255	finally
      //   500	511	255	finally
      //   514	523	255	finally
      //   533	542	255	finally
      //   542	557	255	finally
      //   562	581	255	finally
      //   581	592	255	finally
      //   595	614	255	finally
      //   617	637	255	finally
      //   640	650	255	finally
      //   661	670	255	finally
      //   670	685	255	finally
      //   690	709	255	finally
      //   709	721	255	finally
      //   724	744	255	finally
      //   747	767	255	finally
      //   770	780	255	finally
      //   791	800	255	finally
      //   800	815	255	finally
      //   820	839	255	finally
      //   839	851	255	finally
      //   854	864	255	finally
      //   875	884	255	finally
      //   884	899	255	finally
      //   904	923	255	finally
      //   923	935	255	finally
      //   938	948	255	finally
      //   959	968	255	finally
      //   968	983	255	finally
      //   988	1007	255	finally
      //   1007	1019	255	finally
      //   1022	1032	255	finally
      //   1043	1052	255	finally
      //   1052	1067	255	finally
      //   1072	1091	255	finally
      //   1091	1103	255	finally
      //   1115	1126	255	finally
      //   1131	1149	255	finally
      //   1152	1162	255	finally
      //   1173	1182	255	finally
      //   1182	1197	255	finally
      //   1202	1221	255	finally
      //   1221	1233	255	finally
      //   1236	1246	255	finally
      //   1257	1266	255	finally
      //   1266	1281	255	finally
      //   1286	1305	255	finally
      //   1305	1317	255	finally
      //   28	34	325	java/io/IOException
      //   208	219	325	java/io/IOException
      //   225	243	325	java/io/IOException
      //   304	322	325	java/io/IOException
      //   344	362	325	java/io/IOException
      //   365	384	325	java/io/IOException
      //   396	407	325	java/io/IOException
      //   412	430	325	java/io/IOException
      //   433	442	325	java/io/IOException
      //   452	461	325	java/io/IOException
      //   461	476	325	java/io/IOException
      //   481	500	325	java/io/IOException
      //   500	511	325	java/io/IOException
      //   514	523	325	java/io/IOException
      //   533	542	325	java/io/IOException
      //   542	557	325	java/io/IOException
      //   562	581	325	java/io/IOException
      //   581	592	325	java/io/IOException
      //   595	614	325	java/io/IOException
      //   617	637	325	java/io/IOException
      //   640	650	325	java/io/IOException
      //   661	670	325	java/io/IOException
      //   670	685	325	java/io/IOException
      //   690	709	325	java/io/IOException
      //   709	721	325	java/io/IOException
      //   724	744	325	java/io/IOException
      //   747	767	325	java/io/IOException
      //   770	780	325	java/io/IOException
      //   791	800	325	java/io/IOException
      //   800	815	325	java/io/IOException
      //   820	839	325	java/io/IOException
      //   839	851	325	java/io/IOException
      //   854	864	325	java/io/IOException
      //   875	884	325	java/io/IOException
      //   884	899	325	java/io/IOException
      //   904	923	325	java/io/IOException
      //   923	935	325	java/io/IOException
      //   938	948	325	java/io/IOException
      //   959	968	325	java/io/IOException
      //   968	983	325	java/io/IOException
      //   988	1007	325	java/io/IOException
      //   1007	1019	325	java/io/IOException
      //   1022	1032	325	java/io/IOException
      //   1043	1052	325	java/io/IOException
      //   1052	1067	325	java/io/IOException
      //   1072	1091	325	java/io/IOException
      //   1091	1103	325	java/io/IOException
      //   1115	1126	325	java/io/IOException
      //   1131	1149	325	java/io/IOException
      //   1152	1162	325	java/io/IOException
      //   1173	1182	325	java/io/IOException
      //   1182	1197	325	java/io/IOException
      //   1202	1221	325	java/io/IOException
      //   1221	1233	325	java/io/IOException
      //   1236	1246	325	java/io/IOException
      //   1257	1266	325	java/io/IOException
      //   1266	1281	325	java/io/IOException
      //   1286	1305	325	java/io/IOException
      //   1305	1317	325	java/io/IOException
    }

    private Envelope(GeneratedMessageLite.Builder paramBuilder)
    {
      super();
    }

    private Envelope(boolean paramBoolean)
    {
    }

    public static Envelope getDefaultInstance()
    {
      return defaultInstance;
    }

    private void initFields()
    {
      this.version_ = 0;
      this.serialNumber_ = 0;
      this.timeMillis_ = 0L;
      this.uptimeMillis_ = 0L;
      this.timelineItem_ = Collections.emptyList();
      this.timelineItemResponseC2G_ = Collections.emptyList();
      this.locationRequestG2C_ = Proto.LocationRequest.getDefaultInstance();
      this.locationMessageC2G_ = Proto.LocationMessage.getDefaultInstance();
      this.messageC2G_ = "";
      this.timezoneC2G_ = "";
      this.navigationRequestC2G_ = Proto.NavigationRequest.getDefaultInstance();
      this.urlG2C_ = "";
      this.setupWifiC2G_ = "";
      this.companionInfo_ = Proto.CompanionInfo.getDefaultInstance();
      this.error_ = Proto.Error.getDefaultInstance();
      this.screenshot_ = Proto.ScreenShot.getDefaultInstance();
      this.command_ = Proto.Command.getDefaultInstance();
      this.apiRequestC2G_ = Proto.ApiRequest.getDefaultInstance();
      this.apiResponseG2C_ = Proto.ApiResponse.getDefaultInstance();
    }

    public static Builder newBuilder()
    {
      return Builder.access$100();
    }

    public static Builder newBuilder(Envelope paramEnvelope)
    {
      return newBuilder().mergeFrom(paramEnvelope);
    }

    public static Envelope parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (Envelope)PARSER.parseDelimitedFrom(paramInputStream);
    }

    public static Envelope parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (Envelope)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }

    public static Envelope parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (Envelope)PARSER.parseFrom(paramByteString);
    }

    public static Envelope parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (Envelope)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }

    public static Envelope parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (Envelope)PARSER.parseFrom(paramCodedInputStream);
    }

    public static Envelope parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (Envelope)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }

    public static Envelope parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (Envelope)PARSER.parseFrom(paramInputStream);
    }

    public static Envelope parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (Envelope)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }

    public static Envelope parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (Envelope)PARSER.parseFrom(paramArrayOfByte);
    }

    public static Envelope parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (Envelope)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }

    public Proto.ApiRequest getApiRequestC2G()
    {
      return this.apiRequestC2G_;
    }

    public Proto.ApiResponse getApiResponseG2C()
    {
      return this.apiResponseG2C_;
    }

    public Proto.Command getCommand()
    {
      return this.command_;
    }

    public Proto.CompanionInfo getCompanionInfo()
    {
      return this.companionInfo_;
    }

    public Envelope getDefaultInstanceForType()
    {
      return defaultInstance;
    }

    public Proto.Error getError()
    {
      return this.error_;
    }

    public Proto.LocationMessage getLocationMessageC2G()
    {
      return this.locationMessageC2G_;
    }

    public Proto.LocationRequest getLocationRequestG2C()
    {
      return this.locationRequestG2C_;
    }

    public String getMessageC2G()
    {
      Object localObject = this.messageC2G_;
      if ((localObject instanceof String))
        return (String)localObject;
      ByteString localByteString = (ByteString)localObject;
      String str = localByteString.toStringUtf8();
      if (localByteString.isValidUtf8())
        this.messageC2G_ = str;
      return str;
    }

    public ByteString getMessageC2GBytes()
    {
      Object localObject = this.messageC2G_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.messageC2G_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public Proto.NavigationRequest getNavigationRequestC2G()
    {
      return this.navigationRequestC2G_;
    }

    public Parser<Envelope> getParserForType()
    {
      return PARSER;
    }

    public Proto.ScreenShot getScreenshot()
    {
      return this.screenshot_;
    }

    public int getSerialNumber()
    {
      return this.serialNumber_;
    }

    public int getSerializedSize()
    {
      int i = this.memoizedSerializedSize;
      if (i != -1)
        return i;
      int j = 0x1 & this.bitField0_;
      int k = 0;
      if (j == 1)
        k = 0 + CodedOutputStream.computeUInt32Size(1, this.version_);
      if ((0x2 & this.bitField0_) == 2)
        k += CodedOutputStream.computeUInt32Size(2, this.serialNumber_);
      if ((0x4 & this.bitField0_) == 4)
        k += CodedOutputStream.computeUInt64Size(3, this.timeMillis_);
      if ((0x8 & this.bitField0_) == 8)
        k += CodedOutputStream.computeUInt64Size(4, this.uptimeMillis_);
      for (int m = 0; m < this.timelineItem_.size(); m++)
        k += CodedOutputStream.computeMessageSize(5, (MessageLite)this.timelineItem_.get(m));
      if ((0x10 & this.bitField0_) == 16)
        k += CodedOutputStream.computeMessageSize(6, this.locationRequestG2C_);
      if ((0x20 & this.bitField0_) == 32)
        k += CodedOutputStream.computeMessageSize(7, this.locationMessageC2G_);
      if ((0x40 & this.bitField0_) == 64)
        k += CodedOutputStream.computeBytesSize(8, getMessageC2GBytes());
      if ((0x80 & this.bitField0_) == 128)
        k += CodedOutputStream.computeBytesSize(9, getTimezoneC2GBytes());
      if ((0x100 & this.bitField0_) == 256)
        k += CodedOutputStream.computeMessageSize(10, this.navigationRequestC2G_);
      if ((0x200 & this.bitField0_) == 512)
        k += CodedOutputStream.computeBytesSize(11, getUrlG2CBytes());
      if ((0x400 & this.bitField0_) == 1024)
        k += CodedOutputStream.computeBytesSize(12, getSetupWifiC2GBytes());
      if ((0x800 & this.bitField0_) == 2048)
        k += CodedOutputStream.computeMessageSize(13, this.companionInfo_);
      if ((0x1000 & this.bitField0_) == 4096)
        k += CodedOutputStream.computeMessageSize(14, this.error_);
      if ((0x2000 & this.bitField0_) == 8192)
        k += CodedOutputStream.computeMessageSize(15, this.screenshot_);
      if ((0x4000 & this.bitField0_) == 16384)
        k += CodedOutputStream.computeMessageSize(16, this.command_);
      for (int n = 0; n < this.timelineItemResponseC2G_.size(); n++)
        k += CodedOutputStream.computeMessageSize(17, (MessageLite)this.timelineItemResponseC2G_.get(n));
      if ((0x8000 & this.bitField0_) == 32768)
        k += CodedOutputStream.computeMessageSize(18, this.apiRequestC2G_);
      if ((0x10000 & this.bitField0_) == 65536)
        k += CodedOutputStream.computeMessageSize(19, this.apiResponseG2C_);
      this.memoizedSerializedSize = k;
      return k;
    }

    public String getSetupWifiC2G()
    {
      Object localObject = this.setupWifiC2G_;
      if ((localObject instanceof String))
        return (String)localObject;
      ByteString localByteString = (ByteString)localObject;
      String str = localByteString.toStringUtf8();
      if (localByteString.isValidUtf8())
        this.setupWifiC2G_ = str;
      return str;
    }

    public ByteString getSetupWifiC2GBytes()
    {
      Object localObject = this.setupWifiC2G_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.setupWifiC2G_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public long getTimeMillis()
    {
      return this.timeMillis_;
    }

    public TimelineItem getTimelineItem(int paramInt)
    {
      return (TimelineItem)this.timelineItem_.get(paramInt);
    }

    public int getTimelineItemCount()
    {
      return this.timelineItem_.size();
    }

    public List<TimelineItem> getTimelineItemList()
    {
      return this.timelineItem_;
    }

    public TimelineItemOrBuilder getTimelineItemOrBuilder(int paramInt)
    {
      return (TimelineItemOrBuilder)this.timelineItem_.get(paramInt);
    }

    public List<? extends TimelineItemOrBuilder> getTimelineItemOrBuilderList()
    {
      return this.timelineItem_;
    }

    public Proto.TimelineItemResponse getTimelineItemResponseC2G(int paramInt)
    {
      return (Proto.TimelineItemResponse)this.timelineItemResponseC2G_.get(paramInt);
    }

    public int getTimelineItemResponseC2GCount()
    {
      return this.timelineItemResponseC2G_.size();
    }

    public List<Proto.TimelineItemResponse> getTimelineItemResponseC2GList()
    {
      return this.timelineItemResponseC2G_;
    }

    public Proto.TimelineItemResponseOrBuilder getTimelineItemResponseC2GOrBuilder(int paramInt)
    {
      return (Proto.TimelineItemResponseOrBuilder)this.timelineItemResponseC2G_.get(paramInt);
    }

    public List<? extends Proto.TimelineItemResponseOrBuilder> getTimelineItemResponseC2GOrBuilderList()
    {
      return this.timelineItemResponseC2G_;
    }

    public String getTimezoneC2G()
    {
      Object localObject = this.timezoneC2G_;
      if ((localObject instanceof String))
        return (String)localObject;
      ByteString localByteString = (ByteString)localObject;
      String str = localByteString.toStringUtf8();
      if (localByteString.isValidUtf8())
        this.timezoneC2G_ = str;
      return str;
    }

    public ByteString getTimezoneC2GBytes()
    {
      Object localObject = this.timezoneC2G_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.timezoneC2G_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public long getUptimeMillis()
    {
      return this.uptimeMillis_;
    }

    public String getUrlG2C()
    {
      Object localObject = this.urlG2C_;
      if ((localObject instanceof String))
        return (String)localObject;
      ByteString localByteString = (ByteString)localObject;
      String str = localByteString.toStringUtf8();
      if (localByteString.isValidUtf8())
        this.urlG2C_ = str;
      return str;
    }

    public ByteString getUrlG2CBytes()
    {
      Object localObject = this.urlG2C_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.urlG2C_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public int getVersion()
    {
      return this.version_;
    }

    public boolean hasApiRequestC2G()
    {
      return (0x8000 & this.bitField0_) == 32768;
    }

    public boolean hasApiResponseG2C()
    {
      return (0x10000 & this.bitField0_) == 65536;
    }

    public boolean hasCommand()
    {
      return (0x4000 & this.bitField0_) == 16384;
    }

    public boolean hasCompanionInfo()
    {
      return (0x800 & this.bitField0_) == 2048;
    }

    public boolean hasError()
    {
      return (0x1000 & this.bitField0_) == 4096;
    }

    public boolean hasLocationMessageC2G()
    {
      return (0x20 & this.bitField0_) == 32;
    }

    public boolean hasLocationRequestG2C()
    {
      return (0x10 & this.bitField0_) == 16;
    }

    public boolean hasMessageC2G()
    {
      return (0x40 & this.bitField0_) == 64;
    }

    public boolean hasNavigationRequestC2G()
    {
      return (0x100 & this.bitField0_) == 256;
    }

    public boolean hasScreenshot()
    {
      return (0x2000 & this.bitField0_) == 8192;
    }

    public boolean hasSerialNumber()
    {
      return (0x2 & this.bitField0_) == 2;
    }

    public boolean hasSetupWifiC2G()
    {
      return (0x400 & this.bitField0_) == 1024;
    }

    public boolean hasTimeMillis()
    {
      return (0x4 & this.bitField0_) == 4;
    }

    public boolean hasTimezoneC2G()
    {
      return (0x80 & this.bitField0_) == 128;
    }

    public boolean hasUptimeMillis()
    {
      return (0x8 & this.bitField0_) == 8;
    }

    public boolean hasUrlG2C()
    {
      return (0x200 & this.bitField0_) == 512;
    }

    public boolean hasVersion()
    {
      return (0x1 & this.bitField0_) == 1;
    }

    protected MutableMessageLite internalMutableDefault()
    {
      if (mutableDefault == null)
        mutableDefault = internalMutableDefault("com.google.glass.companion.MutableProto$Envelope");
      return mutableDefault;
    }

    public final boolean isInitialized()
    {
      int i = 1;
      int j = this.memoizedIsInitialized;
      if (j != -1)
      {
        if (j == i);
        while (true)
        {
          return i;
          i = 0;
        }
      }
      if (!hasVersion())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      if ((hasLocationRequestG2C()) && (!getLocationRequestG2C().isInitialized()))
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      if ((hasLocationMessageC2G()) && (!getLocationMessageC2G().isInitialized()))
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      if ((hasCompanionInfo()) && (!getCompanionInfo().isInitialized()))
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      if ((hasError()) && (!getError().isInitialized()))
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      if ((hasCommand()) && (!getCommand().isInitialized()))
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      this.memoizedIsInitialized = i;
      return i;
    }

    public Builder newBuilderForType()
    {
      return newBuilder();
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
        paramCodedOutputStream.writeUInt32(1, this.version_);
      if ((0x2 & this.bitField0_) == 2)
        paramCodedOutputStream.writeUInt32(2, this.serialNumber_);
      if ((0x4 & this.bitField0_) == 4)
        paramCodedOutputStream.writeUInt64(3, this.timeMillis_);
      if ((0x8 & this.bitField0_) == 8)
        paramCodedOutputStream.writeUInt64(4, this.uptimeMillis_);
      for (int i = 0; i < this.timelineItem_.size(); i++)
        paramCodedOutputStream.writeMessage(5, (MessageLite)this.timelineItem_.get(i));
      if ((0x10 & this.bitField0_) == 16)
        paramCodedOutputStream.writeMessage(6, this.locationRequestG2C_);
      if ((0x20 & this.bitField0_) == 32)
        paramCodedOutputStream.writeMessage(7, this.locationMessageC2G_);
      if ((0x40 & this.bitField0_) == 64)
        paramCodedOutputStream.writeBytes(8, getMessageC2GBytes());
      if ((0x80 & this.bitField0_) == 128)
        paramCodedOutputStream.writeBytes(9, getTimezoneC2GBytes());
      if ((0x100 & this.bitField0_) == 256)
        paramCodedOutputStream.writeMessage(10, this.navigationRequestC2G_);
      if ((0x200 & this.bitField0_) == 512)
        paramCodedOutputStream.writeBytes(11, getUrlG2CBytes());
      if ((0x400 & this.bitField0_) == 1024)
        paramCodedOutputStream.writeBytes(12, getSetupWifiC2GBytes());
      if ((0x800 & this.bitField0_) == 2048)
        paramCodedOutputStream.writeMessage(13, this.companionInfo_);
      if ((0x1000 & this.bitField0_) == 4096)
        paramCodedOutputStream.writeMessage(14, this.error_);
      if ((0x2000 & this.bitField0_) == 8192)
        paramCodedOutputStream.writeMessage(15, this.screenshot_);
      if ((0x4000 & this.bitField0_) == 16384)
        paramCodedOutputStream.writeMessage(16, this.command_);
      for (int j = 0; j < this.timelineItemResponseC2G_.size(); j++)
        paramCodedOutputStream.writeMessage(17, (MessageLite)this.timelineItemResponseC2G_.get(j));
      if ((0x8000 & this.bitField0_) == 32768)
        paramCodedOutputStream.writeMessage(18, this.apiRequestC2G_);
      if ((0x10000 & this.bitField0_) == 65536)
        paramCodedOutputStream.writeMessage(19, this.apiResponseG2C_);
    }

    public static final class Builder extends GeneratedMessageLite.Builder<Proto.Envelope, Builder>
      implements Proto.EnvelopeOrBuilder
    {
      private Proto.ApiRequest apiRequestC2G_ = Proto.ApiRequest.getDefaultInstance();
      private Proto.ApiResponse apiResponseG2C_ = Proto.ApiResponse.getDefaultInstance();
      private int bitField0_;
      private Proto.Command command_ = Proto.Command.getDefaultInstance();
      private Proto.CompanionInfo companionInfo_ = Proto.CompanionInfo.getDefaultInstance();
      private Proto.Error error_ = Proto.Error.getDefaultInstance();
      private Proto.LocationMessage locationMessageC2G_ = Proto.LocationMessage.getDefaultInstance();
      private Proto.LocationRequest locationRequestG2C_ = Proto.LocationRequest.getDefaultInstance();
      private Object messageC2G_ = "";
      private Proto.NavigationRequest navigationRequestC2G_ = Proto.NavigationRequest.getDefaultInstance();
      private Proto.ScreenShot screenshot_ = Proto.ScreenShot.getDefaultInstance();
      private int serialNumber_;
      private Object setupWifiC2G_ = "";
      private long timeMillis_;
      private List<Proto.TimelineItemResponse> timelineItemResponseC2G_ = Collections.emptyList();
      private List<TimelineItem> timelineItem_ = Collections.emptyList();
      private Object timezoneC2G_ = "";
      private long uptimeMillis_;
      private Object urlG2C_ = "";
      private int version_;

      private Builder()
      {
        maybeForceBuilderInitialization();
      }

      private static Builder create()
      {
        return new Builder();
      }

      private void ensureTimelineItemIsMutable()
      {
        if ((0x10 & this.bitField0_) != 16)
        {
          this.timelineItem_ = new ArrayList(this.timelineItem_);
          this.bitField0_ = (0x10 | this.bitField0_);
        }
      }

      private void ensureTimelineItemResponseC2GIsMutable()
      {
        if ((0x20 & this.bitField0_) != 32)
        {
          this.timelineItemResponseC2G_ = new ArrayList(this.timelineItemResponseC2G_);
          this.bitField0_ = (0x20 | this.bitField0_);
        }
      }

      private void maybeForceBuilderInitialization()
      {
      }

      public Builder addAllTimelineItem(Iterable<? extends TimelineItem> paramIterable)
      {
        ensureTimelineItemIsMutable();
        AbstractMessageLite.Builder.addAll(paramIterable, this.timelineItem_);
        return this;
      }

      public Builder addAllTimelineItemResponseC2G(Iterable<? extends Proto.TimelineItemResponse> paramIterable)
      {
        ensureTimelineItemResponseC2GIsMutable();
        AbstractMessageLite.Builder.addAll(paramIterable, this.timelineItemResponseC2G_);
        return this;
      }

      public Builder addTimelineItem(int paramInt, TimelineItem.Builder paramBuilder)
      {
        ensureTimelineItemIsMutable();
        this.timelineItem_.add(paramInt, paramBuilder.build());
        return this;
      }

      public Builder addTimelineItem(int paramInt, TimelineItem paramTimelineItem)
      {
        if (paramTimelineItem == null)
          throw new NullPointerException();
        ensureTimelineItemIsMutable();
        this.timelineItem_.add(paramInt, paramTimelineItem);
        return this;
      }

      public Builder addTimelineItem(TimelineItem.Builder paramBuilder)
      {
        ensureTimelineItemIsMutable();
        this.timelineItem_.add(paramBuilder.build());
        return this;
      }

      public Builder addTimelineItem(TimelineItem paramTimelineItem)
      {
        if (paramTimelineItem == null)
          throw new NullPointerException();
        ensureTimelineItemIsMutable();
        this.timelineItem_.add(paramTimelineItem);
        return this;
      }

      public Builder addTimelineItemResponseC2G(int paramInt, Proto.TimelineItemResponse.Builder paramBuilder)
      {
        ensureTimelineItemResponseC2GIsMutable();
        this.timelineItemResponseC2G_.add(paramInt, paramBuilder.build());
        return this;
      }

      public Builder addTimelineItemResponseC2G(int paramInt, Proto.TimelineItemResponse paramTimelineItemResponse)
      {
        if (paramTimelineItemResponse == null)
          throw new NullPointerException();
        ensureTimelineItemResponseC2GIsMutable();
        this.timelineItemResponseC2G_.add(paramInt, paramTimelineItemResponse);
        return this;
      }

      public Builder addTimelineItemResponseC2G(Proto.TimelineItemResponse.Builder paramBuilder)
      {
        ensureTimelineItemResponseC2GIsMutable();
        this.timelineItemResponseC2G_.add(paramBuilder.build());
        return this;
      }

      public Builder addTimelineItemResponseC2G(Proto.TimelineItemResponse paramTimelineItemResponse)
      {
        if (paramTimelineItemResponse == null)
          throw new NullPointerException();
        ensureTimelineItemResponseC2GIsMutable();
        this.timelineItemResponseC2G_.add(paramTimelineItemResponse);
        return this;
      }

      public Proto.Envelope build()
      {
        Proto.Envelope localEnvelope = buildPartial();
        if (!localEnvelope.isInitialized())
          throw newUninitializedMessageException(localEnvelope);
        return localEnvelope;
      }

      public Proto.Envelope buildPartial()
      {
        Proto.Envelope localEnvelope = new Proto.Envelope(this, null);
        int i = this.bitField0_;
        int j = i & 0x1;
        int k = 0;
        if (j == 1)
          k = 0x0 | 0x1;
        Proto.Envelope.access$302(localEnvelope, this.version_);
        if ((i & 0x2) == 2)
          k |= 2;
        Proto.Envelope.access$402(localEnvelope, this.serialNumber_);
        if ((i & 0x4) == 4)
          k |= 4;
        Proto.Envelope.access$502(localEnvelope, this.timeMillis_);
        if ((i & 0x8) == 8)
          k |= 8;
        Proto.Envelope.access$602(localEnvelope, this.uptimeMillis_);
        if ((0x10 & this.bitField0_) == 16)
        {
          this.timelineItem_ = Collections.unmodifiableList(this.timelineItem_);
          this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
        }
        Proto.Envelope.access$702(localEnvelope, this.timelineItem_);
        if ((0x20 & this.bitField0_) == 32)
        {
          this.timelineItemResponseC2G_ = Collections.unmodifiableList(this.timelineItemResponseC2G_);
          this.bitField0_ = (0xFFFFFFDF & this.bitField0_);
        }
        Proto.Envelope.access$802(localEnvelope, this.timelineItemResponseC2G_);
        if ((i & 0x40) == 64)
          k |= 16;
        Proto.Envelope.access$902(localEnvelope, this.locationRequestG2C_);
        if ((i & 0x80) == 128)
          k |= 32;
        Proto.Envelope.access$1002(localEnvelope, this.locationMessageC2G_);
        if ((i & 0x100) == 256)
          k |= 64;
        Proto.Envelope.access$1102(localEnvelope, this.messageC2G_);
        if ((i & 0x200) == 512)
          k |= 128;
        Proto.Envelope.access$1202(localEnvelope, this.timezoneC2G_);
        if ((i & 0x400) == 1024)
          k |= 256;
        Proto.Envelope.access$1302(localEnvelope, this.navigationRequestC2G_);
        if ((i & 0x800) == 2048)
          k |= 512;
        Proto.Envelope.access$1402(localEnvelope, this.urlG2C_);
        if ((i & 0x1000) == 4096)
          k |= 1024;
        Proto.Envelope.access$1502(localEnvelope, this.setupWifiC2G_);
        if ((i & 0x2000) == 8192)
          k |= 2048;
        Proto.Envelope.access$1602(localEnvelope, this.companionInfo_);
        if ((i & 0x4000) == 16384)
          k |= 4096;
        Proto.Envelope.access$1702(localEnvelope, this.error_);
        if ((i & 0x8000) == 32768)
          k |= 8192;
        Proto.Envelope.access$1802(localEnvelope, this.screenshot_);
        if ((i & 0x10000) == 65536)
          k |= 16384;
        Proto.Envelope.access$1902(localEnvelope, this.command_);
        if ((i & 0x20000) == 131072)
          k |= 32768;
        Proto.Envelope.access$2002(localEnvelope, this.apiRequestC2G_);
        if ((i & 0x40000) == 262144)
          k |= 65536;
        Proto.Envelope.access$2102(localEnvelope, this.apiResponseG2C_);
        Proto.Envelope.access$2202(localEnvelope, k);
        return localEnvelope;
      }

      public Builder clear()
      {
        super.clear();
        this.version_ = 0;
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        this.serialNumber_ = 0;
        this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        this.timeMillis_ = 0L;
        this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
        this.uptimeMillis_ = 0L;
        this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
        this.timelineItem_ = Collections.emptyList();
        this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
        this.timelineItemResponseC2G_ = Collections.emptyList();
        this.bitField0_ = (0xFFFFFFDF & this.bitField0_);
        this.locationRequestG2C_ = Proto.LocationRequest.getDefaultInstance();
        this.bitField0_ = (0xFFFFFFBF & this.bitField0_);
        this.locationMessageC2G_ = Proto.LocationMessage.getDefaultInstance();
        this.bitField0_ = (0xFFFFFF7F & this.bitField0_);
        this.messageC2G_ = "";
        this.bitField0_ = (0xFFFFFEFF & this.bitField0_);
        this.timezoneC2G_ = "";
        this.bitField0_ = (0xFFFFFDFF & this.bitField0_);
        this.navigationRequestC2G_ = Proto.NavigationRequest.getDefaultInstance();
        this.bitField0_ = (0xFFFFFBFF & this.bitField0_);
        this.urlG2C_ = "";
        this.bitField0_ = (0xFFFFF7FF & this.bitField0_);
        this.setupWifiC2G_ = "";
        this.bitField0_ = (0xFFFFEFFF & this.bitField0_);
        this.companionInfo_ = Proto.CompanionInfo.getDefaultInstance();
        this.bitField0_ = (0xFFFFDFFF & this.bitField0_);
        this.error_ = Proto.Error.getDefaultInstance();
        this.bitField0_ = (0xFFFFBFFF & this.bitField0_);
        this.screenshot_ = Proto.ScreenShot.getDefaultInstance();
        this.bitField0_ = (0xFFFF7FFF & this.bitField0_);
        this.command_ = Proto.Command.getDefaultInstance();
        this.bitField0_ = (0xFFFEFFFF & this.bitField0_);
        this.apiRequestC2G_ = Proto.ApiRequest.getDefaultInstance();
        this.bitField0_ = (0xFFFDFFFF & this.bitField0_);
        this.apiResponseG2C_ = Proto.ApiResponse.getDefaultInstance();
        this.bitField0_ = (0xFFFBFFFF & this.bitField0_);
        return this;
      }

      public Builder clearApiRequestC2G()
      {
        this.apiRequestC2G_ = Proto.ApiRequest.getDefaultInstance();
        this.bitField0_ = (0xFFFDFFFF & this.bitField0_);
        return this;
      }

      public Builder clearApiResponseG2C()
      {
        this.apiResponseG2C_ = Proto.ApiResponse.getDefaultInstance();
        this.bitField0_ = (0xFFFBFFFF & this.bitField0_);
        return this;
      }

      public Builder clearCommand()
      {
        this.command_ = Proto.Command.getDefaultInstance();
        this.bitField0_ = (0xFFFEFFFF & this.bitField0_);
        return this;
      }

      public Builder clearCompanionInfo()
      {
        this.companionInfo_ = Proto.CompanionInfo.getDefaultInstance();
        this.bitField0_ = (0xFFFFDFFF & this.bitField0_);
        return this;
      }

      public Builder clearError()
      {
        this.error_ = Proto.Error.getDefaultInstance();
        this.bitField0_ = (0xFFFFBFFF & this.bitField0_);
        return this;
      }

      public Builder clearLocationMessageC2G()
      {
        this.locationMessageC2G_ = Proto.LocationMessage.getDefaultInstance();
        this.bitField0_ = (0xFFFFFF7F & this.bitField0_);
        return this;
      }

      public Builder clearLocationRequestG2C()
      {
        this.locationRequestG2C_ = Proto.LocationRequest.getDefaultInstance();
        this.bitField0_ = (0xFFFFFFBF & this.bitField0_);
        return this;
      }

      public Builder clearMessageC2G()
      {
        this.bitField0_ = (0xFFFFFEFF & this.bitField0_);
        this.messageC2G_ = Proto.Envelope.getDefaultInstance().getMessageC2G();
        return this;
      }

      public Builder clearNavigationRequestC2G()
      {
        this.navigationRequestC2G_ = Proto.NavigationRequest.getDefaultInstance();
        this.bitField0_ = (0xFFFFFBFF & this.bitField0_);
        return this;
      }

      public Builder clearScreenshot()
      {
        this.screenshot_ = Proto.ScreenShot.getDefaultInstance();
        this.bitField0_ = (0xFFFF7FFF & this.bitField0_);
        return this;
      }

      public Builder clearSerialNumber()
      {
        this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        this.serialNumber_ = 0;
        return this;
      }

      public Builder clearSetupWifiC2G()
      {
        this.bitField0_ = (0xFFFFEFFF & this.bitField0_);
        this.setupWifiC2G_ = Proto.Envelope.getDefaultInstance().getSetupWifiC2G();
        return this;
      }

      public Builder clearTimeMillis()
      {
        this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
        this.timeMillis_ = 0L;
        return this;
      }

      public Builder clearTimelineItem()
      {
        this.timelineItem_ = Collections.emptyList();
        this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
        return this;
      }

      public Builder clearTimelineItemResponseC2G()
      {
        this.timelineItemResponseC2G_ = Collections.emptyList();
        this.bitField0_ = (0xFFFFFFDF & this.bitField0_);
        return this;
      }

      public Builder clearTimezoneC2G()
      {
        this.bitField0_ = (0xFFFFFDFF & this.bitField0_);
        this.timezoneC2G_ = Proto.Envelope.getDefaultInstance().getTimezoneC2G();
        return this;
      }

      public Builder clearUptimeMillis()
      {
        this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
        this.uptimeMillis_ = 0L;
        return this;
      }

      public Builder clearUrlG2C()
      {
        this.bitField0_ = (0xFFFFF7FF & this.bitField0_);
        this.urlG2C_ = Proto.Envelope.getDefaultInstance().getUrlG2C();
        return this;
      }

      public Builder clearVersion()
      {
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        this.version_ = 0;
        return this;
      }

      public Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }

      public Proto.ApiRequest getApiRequestC2G()
      {
        return this.apiRequestC2G_;
      }

      public Proto.ApiResponse getApiResponseG2C()
      {
        return this.apiResponseG2C_;
      }

      public Proto.Command getCommand()
      {
        return this.command_;
      }

      public Proto.CompanionInfo getCompanionInfo()
      {
        return this.companionInfo_;
      }

      public Proto.Envelope getDefaultInstanceForType()
      {
        return Proto.Envelope.getDefaultInstance();
      }

      public Proto.Error getError()
      {
        return this.error_;
      }

      public Proto.LocationMessage getLocationMessageC2G()
      {
        return this.locationMessageC2G_;
      }

      public Proto.LocationRequest getLocationRequestG2C()
      {
        return this.locationRequestG2C_;
      }

      public String getMessageC2G()
      {
        Object localObject = this.messageC2G_;
        if (!(localObject instanceof String))
        {
          String str = ((ByteString)localObject).toStringUtf8();
          this.messageC2G_ = str;
          return str;
        }
        return (String)localObject;
      }

      public ByteString getMessageC2GBytes()
      {
        Object localObject = this.messageC2G_;
        if ((localObject instanceof String))
        {
          ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
          this.messageC2G_ = localByteString;
          return localByteString;
        }
        return (ByteString)localObject;
      }

      public Proto.NavigationRequest getNavigationRequestC2G()
      {
        return this.navigationRequestC2G_;
      }

      public Proto.ScreenShot getScreenshot()
      {
        return this.screenshot_;
      }

      public int getSerialNumber()
      {
        return this.serialNumber_;
      }

      public String getSetupWifiC2G()
      {
        Object localObject = this.setupWifiC2G_;
        if (!(localObject instanceof String))
        {
          String str = ((ByteString)localObject).toStringUtf8();
          this.setupWifiC2G_ = str;
          return str;
        }
        return (String)localObject;
      }

      public ByteString getSetupWifiC2GBytes()
      {
        Object localObject = this.setupWifiC2G_;
        if ((localObject instanceof String))
        {
          ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
          this.setupWifiC2G_ = localByteString;
          return localByteString;
        }
        return (ByteString)localObject;
      }

      public long getTimeMillis()
      {
        return this.timeMillis_;
      }

      public TimelineItem getTimelineItem(int paramInt)
      {
        return (TimelineItem)this.timelineItem_.get(paramInt);
      }

      public int getTimelineItemCount()
      {
        return this.timelineItem_.size();
      }

      public List<TimelineItem> getTimelineItemList()
      {
        return Collections.unmodifiableList(this.timelineItem_);
      }

      public Proto.TimelineItemResponse getTimelineItemResponseC2G(int paramInt)
      {
        return (Proto.TimelineItemResponse)this.timelineItemResponseC2G_.get(paramInt);
      }

      public int getTimelineItemResponseC2GCount()
      {
        return this.timelineItemResponseC2G_.size();
      }

      public List<Proto.TimelineItemResponse> getTimelineItemResponseC2GList()
      {
        return Collections.unmodifiableList(this.timelineItemResponseC2G_);
      }

      public String getTimezoneC2G()
      {
        Object localObject = this.timezoneC2G_;
        if (!(localObject instanceof String))
        {
          String str = ((ByteString)localObject).toStringUtf8();
          this.timezoneC2G_ = str;
          return str;
        }
        return (String)localObject;
      }

      public ByteString getTimezoneC2GBytes()
      {
        Object localObject = this.timezoneC2G_;
        if ((localObject instanceof String))
        {
          ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
          this.timezoneC2G_ = localByteString;
          return localByteString;
        }
        return (ByteString)localObject;
      }

      public long getUptimeMillis()
      {
        return this.uptimeMillis_;
      }

      public String getUrlG2C()
      {
        Object localObject = this.urlG2C_;
        if (!(localObject instanceof String))
        {
          String str = ((ByteString)localObject).toStringUtf8();
          this.urlG2C_ = str;
          return str;
        }
        return (String)localObject;
      }

      public ByteString getUrlG2CBytes()
      {
        Object localObject = this.urlG2C_;
        if ((localObject instanceof String))
        {
          ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
          this.urlG2C_ = localByteString;
          return localByteString;
        }
        return (ByteString)localObject;
      }

      public int getVersion()
      {
        return this.version_;
      }

      public boolean hasApiRequestC2G()
      {
        return (0x20000 & this.bitField0_) == 131072;
      }

      public boolean hasApiResponseG2C()
      {
        return (0x40000 & this.bitField0_) == 262144;
      }

      public boolean hasCommand()
      {
        return (0x10000 & this.bitField0_) == 65536;
      }

      public boolean hasCompanionInfo()
      {
        return (0x2000 & this.bitField0_) == 8192;
      }

      public boolean hasError()
      {
        return (0x4000 & this.bitField0_) == 16384;
      }

      public boolean hasLocationMessageC2G()
      {
        return (0x80 & this.bitField0_) == 128;
      }

      public boolean hasLocationRequestG2C()
      {
        return (0x40 & this.bitField0_) == 64;
      }

      public boolean hasMessageC2G()
      {
        return (0x100 & this.bitField0_) == 256;
      }

      public boolean hasNavigationRequestC2G()
      {
        return (0x400 & this.bitField0_) == 1024;
      }

      public boolean hasScreenshot()
      {
        return (0x8000 & this.bitField0_) == 32768;
      }

      public boolean hasSerialNumber()
      {
        return (0x2 & this.bitField0_) == 2;
      }

      public boolean hasSetupWifiC2G()
      {
        return (0x1000 & this.bitField0_) == 4096;
      }

      public boolean hasTimeMillis()
      {
        return (0x4 & this.bitField0_) == 4;
      }

      public boolean hasTimezoneC2G()
      {
        return (0x200 & this.bitField0_) == 512;
      }

      public boolean hasUptimeMillis()
      {
        return (0x8 & this.bitField0_) == 8;
      }

      public boolean hasUrlG2C()
      {
        return (0x800 & this.bitField0_) == 2048;
      }

      public boolean hasVersion()
      {
        return (0x1 & this.bitField0_) == 1;
      }

      public final boolean isInitialized()
      {
        if (!hasVersion());
        while (((hasLocationRequestG2C()) && (!getLocationRequestG2C().isInitialized())) || ((hasLocationMessageC2G()) && (!getLocationMessageC2G().isInitialized())) || ((hasCompanionInfo()) && (!getCompanionInfo().isInitialized())) || ((hasError()) && (!getError().isInitialized())) || ((hasCommand()) && (!getCommand().isInitialized())))
          return false;
        return true;
      }

      public Builder mergeApiRequestC2G(Proto.ApiRequest paramApiRequest)
      {
        if (((0x20000 & this.bitField0_) == 131072) && (this.apiRequestC2G_ != Proto.ApiRequest.getDefaultInstance()));
        for (this.apiRequestC2G_ = Proto.ApiRequest.newBuilder(this.apiRequestC2G_).mergeFrom(paramApiRequest).buildPartial(); ; this.apiRequestC2G_ = paramApiRequest)
        {
          this.bitField0_ = (0x20000 | this.bitField0_);
          return this;
        }
      }

      public Builder mergeApiResponseG2C(Proto.ApiResponse paramApiResponse)
      {
        if (((0x40000 & this.bitField0_) == 262144) && (this.apiResponseG2C_ != Proto.ApiResponse.getDefaultInstance()));
        for (this.apiResponseG2C_ = Proto.ApiResponse.newBuilder(this.apiResponseG2C_).mergeFrom(paramApiResponse).buildPartial(); ; this.apiResponseG2C_ = paramApiResponse)
        {
          this.bitField0_ = (0x40000 | this.bitField0_);
          return this;
        }
      }

      public Builder mergeCommand(Proto.Command paramCommand)
      {
        if (((0x10000 & this.bitField0_) == 65536) && (this.command_ != Proto.Command.getDefaultInstance()));
        for (this.command_ = Proto.Command.newBuilder(this.command_).mergeFrom(paramCommand).buildPartial(); ; this.command_ = paramCommand)
        {
          this.bitField0_ = (0x10000 | this.bitField0_);
          return this;
        }
      }

      public Builder mergeCompanionInfo(Proto.CompanionInfo paramCompanionInfo)
      {
        if (((0x2000 & this.bitField0_) == 8192) && (this.companionInfo_ != Proto.CompanionInfo.getDefaultInstance()));
        for (this.companionInfo_ = Proto.CompanionInfo.newBuilder(this.companionInfo_).mergeFrom(paramCompanionInfo).buildPartial(); ; this.companionInfo_ = paramCompanionInfo)
        {
          this.bitField0_ = (0x2000 | this.bitField0_);
          return this;
        }
      }

      public Builder mergeError(Proto.Error paramError)
      {
        if (((0x4000 & this.bitField0_) == 16384) && (this.error_ != Proto.Error.getDefaultInstance()));
        for (this.error_ = Proto.Error.newBuilder(this.error_).mergeFrom(paramError).buildPartial(); ; this.error_ = paramError)
        {
          this.bitField0_ = (0x4000 | this.bitField0_);
          return this;
        }
      }

      public Builder mergeFrom(Proto.Envelope paramEnvelope)
      {
        if (paramEnvelope == Proto.Envelope.getDefaultInstance())
          return this;
        if (paramEnvelope.hasVersion())
          setVersion(paramEnvelope.getVersion());
        if (paramEnvelope.hasSerialNumber())
          setSerialNumber(paramEnvelope.getSerialNumber());
        if (paramEnvelope.hasTimeMillis())
          setTimeMillis(paramEnvelope.getTimeMillis());
        if (paramEnvelope.hasUptimeMillis())
          setUptimeMillis(paramEnvelope.getUptimeMillis());
        if (!paramEnvelope.timelineItem_.isEmpty())
        {
          if (this.timelineItem_.isEmpty())
          {
            this.timelineItem_ = paramEnvelope.timelineItem_;
            this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
          }
        }
        else
          label116: if (!paramEnvelope.timelineItemResponseC2G_.isEmpty())
          {
            if (!this.timelineItemResponseC2G_.isEmpty())
              break label434;
            this.timelineItemResponseC2G_ = paramEnvelope.timelineItemResponseC2G_;
            this.bitField0_ = (0xFFFFFFDF & this.bitField0_);
          }
        while (true)
        {
          if (paramEnvelope.hasLocationRequestG2C())
            mergeLocationRequestG2C(paramEnvelope.getLocationRequestG2C());
          if (paramEnvelope.hasLocationMessageC2G())
            mergeLocationMessageC2G(paramEnvelope.getLocationMessageC2G());
          if (paramEnvelope.hasMessageC2G())
          {
            this.bitField0_ = (0x100 | this.bitField0_);
            this.messageC2G_ = paramEnvelope.messageC2G_;
          }
          if (paramEnvelope.hasTimezoneC2G())
          {
            this.bitField0_ = (0x200 | this.bitField0_);
            this.timezoneC2G_ = paramEnvelope.timezoneC2G_;
          }
          if (paramEnvelope.hasNavigationRequestC2G())
            mergeNavigationRequestC2G(paramEnvelope.getNavigationRequestC2G());
          if (paramEnvelope.hasUrlG2C())
          {
            this.bitField0_ = (0x800 | this.bitField0_);
            this.urlG2C_ = paramEnvelope.urlG2C_;
          }
          if (paramEnvelope.hasSetupWifiC2G())
          {
            this.bitField0_ = (0x1000 | this.bitField0_);
            this.setupWifiC2G_ = paramEnvelope.setupWifiC2G_;
          }
          if (paramEnvelope.hasCompanionInfo())
            mergeCompanionInfo(paramEnvelope.getCompanionInfo());
          if (paramEnvelope.hasError())
            mergeError(paramEnvelope.getError());
          if (paramEnvelope.hasScreenshot())
            mergeScreenshot(paramEnvelope.getScreenshot());
          if (paramEnvelope.hasCommand())
            mergeCommand(paramEnvelope.getCommand());
          if (paramEnvelope.hasApiRequestC2G())
            mergeApiRequestC2G(paramEnvelope.getApiRequestC2G());
          if (!paramEnvelope.hasApiResponseG2C())
            break;
          mergeApiResponseG2C(paramEnvelope.getApiResponseG2C());
          return this;
          ensureTimelineItemIsMutable();
          this.timelineItem_.addAll(paramEnvelope.timelineItem_);
          break label116;
          label434: ensureTimelineItemResponseC2GIsMutable();
          this.timelineItemResponseC2G_.addAll(paramEnvelope.timelineItemResponseC2G_);
        }
      }

      public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
        throws IOException
      {
        Proto.Envelope localEnvelope1 = null;
        try
        {
          Proto.Envelope localEnvelope2 = (Proto.Envelope)Proto.Envelope.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
          return this;
        }
        catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
        {
          localEnvelope1 = (Proto.Envelope)localInvalidProtocolBufferException.getUnfinishedMessage();
          throw localInvalidProtocolBufferException;
        }
        finally
        {
          if (localEnvelope1 != null)
            mergeFrom(localEnvelope1);
        }
      }

      public Builder mergeLocationMessageC2G(Proto.LocationMessage paramLocationMessage)
      {
        if (((0x80 & this.bitField0_) == 128) && (this.locationMessageC2G_ != Proto.LocationMessage.getDefaultInstance()));
        for (this.locationMessageC2G_ = Proto.LocationMessage.newBuilder(this.locationMessageC2G_).mergeFrom(paramLocationMessage).buildPartial(); ; this.locationMessageC2G_ = paramLocationMessage)
        {
          this.bitField0_ = (0x80 | this.bitField0_);
          return this;
        }
      }

      public Builder mergeLocationRequestG2C(Proto.LocationRequest paramLocationRequest)
      {
        if (((0x40 & this.bitField0_) == 64) && (this.locationRequestG2C_ != Proto.LocationRequest.getDefaultInstance()));
        for (this.locationRequestG2C_ = Proto.LocationRequest.newBuilder(this.locationRequestG2C_).mergeFrom(paramLocationRequest).buildPartial(); ; this.locationRequestG2C_ = paramLocationRequest)
        {
          this.bitField0_ = (0x40 | this.bitField0_);
          return this;
        }
      }

      public Builder mergeNavigationRequestC2G(Proto.NavigationRequest paramNavigationRequest)
      {
        if (((0x400 & this.bitField0_) == 1024) && (this.navigationRequestC2G_ != Proto.NavigationRequest.getDefaultInstance()));
        for (this.navigationRequestC2G_ = Proto.NavigationRequest.newBuilder(this.navigationRequestC2G_).mergeFrom(paramNavigationRequest).buildPartial(); ; this.navigationRequestC2G_ = paramNavigationRequest)
        {
          this.bitField0_ = (0x400 | this.bitField0_);
          return this;
        }
      }

      public Builder mergeScreenshot(Proto.ScreenShot paramScreenShot)
      {
        if (((0x8000 & this.bitField0_) == 32768) && (this.screenshot_ != Proto.ScreenShot.getDefaultInstance()));
        for (this.screenshot_ = Proto.ScreenShot.newBuilder(this.screenshot_).mergeFrom(paramScreenShot).buildPartial(); ; this.screenshot_ = paramScreenShot)
        {
          this.bitField0_ = (0x8000 | this.bitField0_);
          return this;
        }
      }

      public Builder removeTimelineItem(int paramInt)
      {
        ensureTimelineItemIsMutable();
        this.timelineItem_.remove(paramInt);
        return this;
      }

      public Builder removeTimelineItemResponseC2G(int paramInt)
      {
        ensureTimelineItemResponseC2GIsMutable();
        this.timelineItemResponseC2G_.remove(paramInt);
        return this;
      }

      public Builder setApiRequestC2G(Proto.ApiRequest.Builder paramBuilder)
      {
        this.apiRequestC2G_ = paramBuilder.build();
        this.bitField0_ = (0x20000 | this.bitField0_);
        return this;
      }

      public Builder setApiRequestC2G(Proto.ApiRequest paramApiRequest)
      {
        if (paramApiRequest == null)
          throw new NullPointerException();
        this.apiRequestC2G_ = paramApiRequest;
        this.bitField0_ = (0x20000 | this.bitField0_);
        return this;
      }

      public Builder setApiResponseG2C(Proto.ApiResponse.Builder paramBuilder)
      {
        this.apiResponseG2C_ = paramBuilder.build();
        this.bitField0_ = (0x40000 | this.bitField0_);
        return this;
      }

      public Builder setApiResponseG2C(Proto.ApiResponse paramApiResponse)
      {
        if (paramApiResponse == null)
          throw new NullPointerException();
        this.apiResponseG2C_ = paramApiResponse;
        this.bitField0_ = (0x40000 | this.bitField0_);
        return this;
      }

      public Builder setCommand(Proto.Command.Builder paramBuilder)
      {
        this.command_ = paramBuilder.build();
        this.bitField0_ = (0x10000 | this.bitField0_);
        return this;
      }

      public Builder setCommand(Proto.Command paramCommand)
      {
        if (paramCommand == null)
          throw new NullPointerException();
        this.command_ = paramCommand;
        this.bitField0_ = (0x10000 | this.bitField0_);
        return this;
      }

      public Builder setCompanionInfo(Proto.CompanionInfo.Builder paramBuilder)
      {
        this.companionInfo_ = paramBuilder.build();
        this.bitField0_ = (0x2000 | this.bitField0_);
        return this;
      }

      public Builder setCompanionInfo(Proto.CompanionInfo paramCompanionInfo)
      {
        if (paramCompanionInfo == null)
          throw new NullPointerException();
        this.companionInfo_ = paramCompanionInfo;
        this.bitField0_ = (0x2000 | this.bitField0_);
        return this;
      }

      public Builder setError(Proto.Error.Builder paramBuilder)
      {
        this.error_ = paramBuilder.build();
        this.bitField0_ = (0x4000 | this.bitField0_);
        return this;
      }

      public Builder setError(Proto.Error paramError)
      {
        if (paramError == null)
          throw new NullPointerException();
        this.error_ = paramError;
        this.bitField0_ = (0x4000 | this.bitField0_);
        return this;
      }

      public Builder setLocationMessageC2G(Proto.LocationMessage.Builder paramBuilder)
      {
        this.locationMessageC2G_ = paramBuilder.build();
        this.bitField0_ = (0x80 | this.bitField0_);
        return this;
      }

      public Builder setLocationMessageC2G(Proto.LocationMessage paramLocationMessage)
      {
        if (paramLocationMessage == null)
          throw new NullPointerException();
        this.locationMessageC2G_ = paramLocationMessage;
        this.bitField0_ = (0x80 | this.bitField0_);
        return this;
      }

      public Builder setLocationRequestG2C(Proto.LocationRequest.Builder paramBuilder)
      {
        this.locationRequestG2C_ = paramBuilder.build();
        this.bitField0_ = (0x40 | this.bitField0_);
        return this;
      }

      public Builder setLocationRequestG2C(Proto.LocationRequest paramLocationRequest)
      {
        if (paramLocationRequest == null)
          throw new NullPointerException();
        this.locationRequestG2C_ = paramLocationRequest;
        this.bitField0_ = (0x40 | this.bitField0_);
        return this;
      }

      public Builder setMessageC2G(String paramString)
      {
        if (paramString == null)
          throw new NullPointerException();
        this.bitField0_ = (0x100 | this.bitField0_);
        this.messageC2G_ = paramString;
        return this;
      }

      public Builder setMessageC2GBytes(ByteString paramByteString)
      {
        if (paramByteString == null)
          throw new NullPointerException();
        this.bitField0_ = (0x100 | this.bitField0_);
        this.messageC2G_ = paramByteString;
        return this;
      }

      public Builder setNavigationRequestC2G(Proto.NavigationRequest.Builder paramBuilder)
      {
        this.navigationRequestC2G_ = paramBuilder.build();
        this.bitField0_ = (0x400 | this.bitField0_);
        return this;
      }

      public Builder setNavigationRequestC2G(Proto.NavigationRequest paramNavigationRequest)
      {
        if (paramNavigationRequest == null)
          throw new NullPointerException();
        this.navigationRequestC2G_ = paramNavigationRequest;
        this.bitField0_ = (0x400 | this.bitField0_);
        return this;
      }

      public Builder setScreenshot(Proto.ScreenShot.Builder paramBuilder)
      {
        this.screenshot_ = paramBuilder.build();
        this.bitField0_ = (0x8000 | this.bitField0_);
        return this;
      }

      public Builder setScreenshot(Proto.ScreenShot paramScreenShot)
      {
        if (paramScreenShot == null)
          throw new NullPointerException();
        this.screenshot_ = paramScreenShot;
        this.bitField0_ = (0x8000 | this.bitField0_);
        return this;
      }

      public Builder setSerialNumber(int paramInt)
      {
        this.bitField0_ = (0x2 | this.bitField0_);
        this.serialNumber_ = paramInt;
        return this;
      }

      public Builder setSetupWifiC2G(String paramString)
      {
        if (paramString == null)
          throw new NullPointerException();
        this.bitField0_ = (0x1000 | this.bitField0_);
        this.setupWifiC2G_ = paramString;
        return this;
      }

      public Builder setSetupWifiC2GBytes(ByteString paramByteString)
      {
        if (paramByteString == null)
          throw new NullPointerException();
        this.bitField0_ = (0x1000 | this.bitField0_);
        this.setupWifiC2G_ = paramByteString;
        return this;
      }

      public Builder setTimeMillis(long paramLong)
      {
        this.bitField0_ = (0x4 | this.bitField0_);
        this.timeMillis_ = paramLong;
        return this;
      }

      public Builder setTimelineItem(int paramInt, TimelineItem.Builder paramBuilder)
      {
        ensureTimelineItemIsMutable();
        this.timelineItem_.set(paramInt, paramBuilder.build());
        return this;
      }

      public Builder setTimelineItem(int paramInt, TimelineItem paramTimelineItem)
      {
        if (paramTimelineItem == null)
          throw new NullPointerException();
        ensureTimelineItemIsMutable();
        this.timelineItem_.set(paramInt, paramTimelineItem);
        return this;
      }

      public Builder setTimelineItemResponseC2G(int paramInt, Proto.TimelineItemResponse.Builder paramBuilder)
      {
        ensureTimelineItemResponseC2GIsMutable();
        this.timelineItemResponseC2G_.set(paramInt, paramBuilder.build());
        return this;
      }

      public Builder setTimelineItemResponseC2G(int paramInt, Proto.TimelineItemResponse paramTimelineItemResponse)
      {
        if (paramTimelineItemResponse == null)
          throw new NullPointerException();
        ensureTimelineItemResponseC2GIsMutable();
        this.timelineItemResponseC2G_.set(paramInt, paramTimelineItemResponse);
        return this;
      }

      public Builder setTimezoneC2G(String paramString)
      {
        if (paramString == null)
          throw new NullPointerException();
        this.bitField0_ = (0x200 | this.bitField0_);
        this.timezoneC2G_ = paramString;
        return this;
      }

      public Builder setTimezoneC2GBytes(ByteString paramByteString)
      {
        if (paramByteString == null)
          throw new NullPointerException();
        this.bitField0_ = (0x200 | this.bitField0_);
        this.timezoneC2G_ = paramByteString;
        return this;
      }

      public Builder setUptimeMillis(long paramLong)
      {
        this.bitField0_ = (0x8 | this.bitField0_);
        this.uptimeMillis_ = paramLong;
        return this;
      }

      public Builder setUrlG2C(String paramString)
      {
        if (paramString == null)
          throw new NullPointerException();
        this.bitField0_ = (0x800 | this.bitField0_);
        this.urlG2C_ = paramString;
        return this;
      }

      public Builder setUrlG2CBytes(ByteString paramByteString)
      {
        if (paramByteString == null)
          throw new NullPointerException();
        this.bitField0_ = (0x800 | this.bitField0_);
        this.urlG2C_ = paramByteString;
        return this;
      }

      public Builder setVersion(int paramInt)
      {
        this.bitField0_ = (0x1 | this.bitField0_);
        this.version_ = paramInt;
        return this;
      }
    }
  }

  public static abstract interface EnvelopeOrBuilder extends MessageLiteOrBuilder
  {
    public abstract Proto.ApiRequest getApiRequestC2G();

    public abstract Proto.ApiResponse getApiResponseG2C();

    public abstract Proto.Command getCommand();

    public abstract Proto.CompanionInfo getCompanionInfo();

    public abstract Proto.Error getError();

    public abstract Proto.LocationMessage getLocationMessageC2G();

    public abstract Proto.LocationRequest getLocationRequestG2C();

    public abstract String getMessageC2G();

    public abstract ByteString getMessageC2GBytes();

    public abstract Proto.NavigationRequest getNavigationRequestC2G();

    public abstract Proto.ScreenShot getScreenshot();

    public abstract int getSerialNumber();

    public abstract String getSetupWifiC2G();

    public abstract ByteString getSetupWifiC2GBytes();

    public abstract long getTimeMillis();

    public abstract TimelineItem getTimelineItem(int paramInt);

    public abstract int getTimelineItemCount();

    public abstract List<TimelineItem> getTimelineItemList();

    public abstract Proto.TimelineItemResponse getTimelineItemResponseC2G(int paramInt);

    public abstract int getTimelineItemResponseC2GCount();

    public abstract List<Proto.TimelineItemResponse> getTimelineItemResponseC2GList();

    public abstract String getTimezoneC2G();

    public abstract ByteString getTimezoneC2GBytes();

    public abstract long getUptimeMillis();

    public abstract String getUrlG2C();

    public abstract ByteString getUrlG2CBytes();

    public abstract int getVersion();

    public abstract boolean hasApiRequestC2G();

    public abstract boolean hasApiResponseG2C();

    public abstract boolean hasCommand();

    public abstract boolean hasCompanionInfo();

    public abstract boolean hasError();

    public abstract boolean hasLocationMessageC2G();

    public abstract boolean hasLocationRequestG2C();

    public abstract boolean hasMessageC2G();

    public abstract boolean hasNavigationRequestC2G();

    public abstract boolean hasScreenshot();

    public abstract boolean hasSerialNumber();

    public abstract boolean hasSetupWifiC2G();

    public abstract boolean hasTimeMillis();

    public abstract boolean hasTimezoneC2G();

    public abstract boolean hasUptimeMillis();

    public abstract boolean hasUrlG2C();

    public abstract boolean hasVersion();
  }

  public static final class Error extends GeneratedMessageLite
    implements Proto.ErrorOrBuilder
  {
    public static Parser<Error> PARSER = new AbstractParser()
    {
      public Proto.Error parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
        throws InvalidProtocolBufferException
      {
        return new Proto.Error(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
      }
    };
    public static final int TYPE_FIELD_NUMBER = 1;
    private static final Error defaultInstance;
    private static volatile MutableMessageLite mutableDefault = null;
    private static final long serialVersionUID;
    private int bitField0_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private ErrorType type_;

    static
    {
      defaultInstance = new Error(true);
      defaultInstance.initFields();
    }

    // ERROR //
    private Error(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 49	com/google/protobuf/GeneratedMessageLite:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 51	com/google/glass/companion/Proto$Error:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 53	com/google/glass/companion/Proto$Error:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 43	com/google/glass/companion/Proto$Error:initFields	()V
      //   18: iconst_0
      //   19: istore_3
      //   20: iload_3
      //   21: ifne +106 -> 127
      //   24: aload_1
      //   25: invokevirtual 59	com/google/protobuf/CodedInputStream:readTag	()I
      //   28: istore 7
      //   30: iload 7
      //   32: lookupswitch	default:+28->60, 0:+119->151, 8:+44->76
      //   61: aload_1
      //   62: aload_2
      //   63: iload 7
      //   65: invokevirtual 63	com/google/glass/companion/Proto$Error:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   68: ifne -48 -> 20
      //   71: iconst_1
      //   72: istore_3
      //   73: goto -53 -> 20
      //   76: aload_1
      //   77: invokevirtual 66	com/google/protobuf/CodedInputStream:readEnum	()I
      //   80: invokestatic 72	com/google/glass/companion/Proto$Error$ErrorType:valueOf	(I)Lcom/google/glass/companion/Proto$Error$ErrorType;
      //   83: astore 8
      //   85: aload 8
      //   87: ifnull -67 -> 20
      //   90: aload_0
      //   91: iconst_1
      //   92: aload_0
      //   93: getfield 74	com/google/glass/companion/Proto$Error:bitField0_	I
      //   96: ior
      //   97: putfield 74	com/google/glass/companion/Proto$Error:bitField0_	I
      //   100: aload_0
      //   101: aload 8
      //   103: putfield 76	com/google/glass/companion/Proto$Error:type_	Lcom/google/glass/companion/Proto$Error$ErrorType;
      //   106: goto -86 -> 20
      //   109: astore 6
      //   111: aload 6
      //   113: aload_0
      //   114: invokevirtual 80	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   117: athrow
      //   118: astore 5
      //   120: aload_0
      //   121: invokevirtual 83	com/google/glass/companion/Proto$Error:makeExtensionsImmutable	()V
      //   124: aload 5
      //   126: athrow
      //   127: aload_0
      //   128: invokevirtual 83	com/google/glass/companion/Proto$Error:makeExtensionsImmutable	()V
      //   131: return
      //   132: astore 4
      //   134: new 46	com/google/protobuf/InvalidProtocolBufferException
      //   137: dup
      //   138: aload 4
      //   140: invokevirtual 87	java/io/IOException:getMessage	()Ljava/lang/String;
      //   143: invokespecial 90	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   146: aload_0
      //   147: invokevirtual 80	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   150: athrow
      //   151: iconst_1
      //   152: istore_3
      //   153: goto -133 -> 20
      //
      // Exception table:
      //   from	to	target	type
      //   24	30	109	com/google/protobuf/InvalidProtocolBufferException
      //   60	71	109	com/google/protobuf/InvalidProtocolBufferException
      //   76	85	109	com/google/protobuf/InvalidProtocolBufferException
      //   90	106	109	com/google/protobuf/InvalidProtocolBufferException
      //   24	30	118	finally
      //   60	71	118	finally
      //   76	85	118	finally
      //   90	106	118	finally
      //   111	118	118	finally
      //   134	151	118	finally
      //   24	30	132	java/io/IOException
      //   60	71	132	java/io/IOException
      //   76	85	132	java/io/IOException
      //   90	106	132	java/io/IOException
    }

    private Error(GeneratedMessageLite.Builder paramBuilder)
    {
      super();
    }

    private Error(boolean paramBoolean)
    {
    }

    public static Error getDefaultInstance()
    {
      return defaultInstance;
    }

    private void initFields()
    {
      this.type_ = ErrorType.TETHERING_ERROR_ON_GLASS;
    }

    public static Builder newBuilder()
    {
      return Builder.access$7200();
    }

    public static Builder newBuilder(Error paramError)
    {
      return newBuilder().mergeFrom(paramError);
    }

    public static Error parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (Error)PARSER.parseDelimitedFrom(paramInputStream);
    }

    public static Error parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (Error)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }

    public static Error parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (Error)PARSER.parseFrom(paramByteString);
    }

    public static Error parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (Error)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }

    public static Error parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (Error)PARSER.parseFrom(paramCodedInputStream);
    }

    public static Error parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (Error)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }

    public static Error parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (Error)PARSER.parseFrom(paramInputStream);
    }

    public static Error parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (Error)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }

    public static Error parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (Error)PARSER.parseFrom(paramArrayOfByte);
    }

    public static Error parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (Error)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }

    public Error getDefaultInstanceForType()
    {
      return defaultInstance;
    }

    public Parser<Error> getParserForType()
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
      this.memoizedSerializedSize = k;
      return k;
    }

    public ErrorType getType()
    {
      return this.type_;
    }

    public boolean hasType()
    {
      return (0x1 & this.bitField0_) == 1;
    }

    protected MutableMessageLite internalMutableDefault()
    {
      if (mutableDefault == null)
        mutableDefault = internalMutableDefault("com.google.glass.companion.MutableProto$Error");
      return mutableDefault;
    }

    public final boolean isInitialized()
    {
      int i = this.memoizedIsInitialized;
      if (i != -1)
        return i == 1;
      if (!hasType())
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
    }

    public static final class Builder extends GeneratedMessageLite.Builder<Proto.Error, Builder>
      implements Proto.ErrorOrBuilder
    {
      private int bitField0_;
      private Proto.Error.ErrorType type_ = Proto.Error.ErrorType.TETHERING_ERROR_ON_GLASS;

      private Builder()
      {
        maybeForceBuilderInitialization();
      }

      private static Builder create()
      {
        return new Builder();
      }

      private void maybeForceBuilderInitialization()
      {
      }

      public Proto.Error build()
      {
        Proto.Error localError = buildPartial();
        if (!localError.isInitialized())
          throw newUninitializedMessageException(localError);
        return localError;
      }

      public Proto.Error buildPartial()
      {
        Proto.Error localError = new Proto.Error(this, null);
        int i = 0x1 & this.bitField0_;
        int j = 0;
        if (i == 1)
          j = 0x0 | 0x1;
        Proto.Error.access$7402(localError, this.type_);
        Proto.Error.access$7502(localError, j);
        return localError;
      }

      public Builder clear()
      {
        super.clear();
        this.type_ = Proto.Error.ErrorType.TETHERING_ERROR_ON_GLASS;
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        return this;
      }

      public Builder clearType()
      {
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        this.type_ = Proto.Error.ErrorType.TETHERING_ERROR_ON_GLASS;
        return this;
      }

      public Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }

      public Proto.Error getDefaultInstanceForType()
      {
        return Proto.Error.getDefaultInstance();
      }

      public Proto.Error.ErrorType getType()
      {
        return this.type_;
      }

      public boolean hasType()
      {
        return (0x1 & this.bitField0_) == 1;
      }

      public final boolean isInitialized()
      {
        return hasType();
      }

      public Builder mergeFrom(Proto.Error paramError)
      {
        if (paramError == Proto.Error.getDefaultInstance());
        while (!paramError.hasType())
          return this;
        setType(paramError.getType());
        return this;
      }

      public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
        throws IOException
      {
        Proto.Error localError1 = null;
        try
        {
          Proto.Error localError2 = (Proto.Error)Proto.Error.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
          return this;
        }
        catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
        {
          localError1 = (Proto.Error)localInvalidProtocolBufferException.getUnfinishedMessage();
          throw localInvalidProtocolBufferException;
        }
        finally
        {
          if (localError1 != null)
            mergeFrom(localError1);
        }
      }

      public Builder setType(Proto.Error.ErrorType paramErrorType)
      {
        if (paramErrorType == null)
          throw new NullPointerException();
        this.bitField0_ = (0x1 | this.bitField0_);
        this.type_ = paramErrorType;
        return this;
      }
    }

    public static enum ErrorType
      implements Internal.EnumLite
    {
      public static final int SMS_GOOGLE_VOICE_NEEDS_UPDATE_VALUE = 2;
      public static final int SMS_GOOGLE_VOICE_NOT_INSTALLED_VALUE = 1;
      public static final int TETHERING_ERROR_ON_GLASS_VALUE;
      private static Internal.EnumLiteMap<ErrorType> internalValueMap = new Internal.EnumLiteMap()
      {
        public Proto.Error.ErrorType findValueByNumber(int paramAnonymousInt)
        {
          return Proto.Error.ErrorType.valueOf(paramAnonymousInt);
        }
      };
      private final int value;

      static
      {
        SMS_GOOGLE_VOICE_NOT_INSTALLED = new ErrorType("SMS_GOOGLE_VOICE_NOT_INSTALLED", 1, 1, 1);
        SMS_GOOGLE_VOICE_NEEDS_UPDATE = new ErrorType("SMS_GOOGLE_VOICE_NEEDS_UPDATE", 2, 2, 2);
        ErrorType[] arrayOfErrorType = new ErrorType[3];
        arrayOfErrorType[0] = TETHERING_ERROR_ON_GLASS;
        arrayOfErrorType[1] = SMS_GOOGLE_VOICE_NOT_INSTALLED;
        arrayOfErrorType[2] = SMS_GOOGLE_VOICE_NEEDS_UPDATE;
      }

      private ErrorType(int paramInt1, int paramInt2)
      {
        this.value = paramInt2;
      }

      public static Internal.EnumLiteMap<ErrorType> internalGetValueMap()
      {
        return internalValueMap;
      }

      public static ErrorType valueOf(int paramInt)
      {
        switch (paramInt)
        {
        default:
          return null;
        case 0:
          return TETHERING_ERROR_ON_GLASS;
        case 1:
          return SMS_GOOGLE_VOICE_NOT_INSTALLED;
        case 2:
        }
        return SMS_GOOGLE_VOICE_NEEDS_UPDATE;
      }

      public final int getNumber()
      {
        return this.value;
      }
    }
  }

  public static abstract interface ErrorOrBuilder extends MessageLiteOrBuilder
  {
    public abstract Proto.Error.ErrorType getType();

    public abstract boolean hasType();
  }

  public static final class Location extends GeneratedMessageLite
    implements Proto.LocationOrBuilder
  {
    public static final int ACCURACY_FIELD_NUMBER = 3;
    public static final int ALTITUDE_FIELD_NUMBER = 4;
    public static final int BEARING_FIELD_NUMBER = 5;
    public static final int LATITUDE_FIELD_NUMBER = 1;
    public static final int LEVEL_ID_FIELD_NUMBER = 10;
    public static final int LEVEL_NUMBER_E3_FIELD_NUMBER = 11;
    public static final int LONGITUDE_FIELD_NUMBER = 2;
    public static Parser<Location> PARSER = new AbstractParser()
    {
      public Proto.Location parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
        throws InvalidProtocolBufferException
      {
        return new Proto.Location(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
      }
    };
    public static final int SATELLITES_USED_IN_FIX_FIELD_NUMBER = 8;
    public static final int SPEED_FIELD_NUMBER = 6;
    public static final int TIME_FIELD_NUMBER = 7;
    public static final int VISIBLE_SATELLITES_FIELD_NUMBER = 9;
    private static final Location defaultInstance;
    private static volatile MutableMessageLite mutableDefault = null;
    private static final long serialVersionUID;
    private float accuracy_;
    private double altitude_;
    private float bearing_;
    private int bitField0_;
    private double latitude_;
    private Object levelId_;
    private int levelNumberE3_;
    private double longitude_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private int satellitesUsedInFix_;
    private float speed_;
    private long time_;
    private int visibleSatellites_;

    static
    {
      defaultInstance = new Location(true);
      defaultInstance.initFields();
    }

    // ERROR //
    private Location(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 81	com/google/protobuf/GeneratedMessageLite:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 83	com/google/glass/companion/Proto$Location:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 85	com/google/glass/companion/Proto$Location:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 75	com/google/glass/companion/Proto$Location:initFields	()V
      //   18: iconst_0
      //   19: istore_3
      //   20: iload_3
      //   21: ifne +415 -> 436
      //   24: aload_1
      //   25: invokevirtual 91	com/google/protobuf/CodedInputStream:readTag	()I
      //   28: istore 7
      //   30: iload 7
      //   32: lookupswitch	default:+108->140, 0:+409->441, 9:+124->156, 17:+163->195, 29:+203->235, 33:+224->256, 45:+246->278, 53:+268->300, 56:+290->322, 64:+312->344, 72:+335->367, 82:+358->390, 88:+381->413
      //   141: aload_1
      //   142: aload_2
      //   143: iload 7
      //   145: invokevirtual 95	com/google/glass/companion/Proto$Location:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   148: ifne -128 -> 20
      //   151: iconst_1
      //   152: istore_3
      //   153: goto -133 -> 20
      //   156: aload_0
      //   157: iconst_1
      //   158: aload_0
      //   159: getfield 97	com/google/glass/companion/Proto$Location:bitField0_	I
      //   162: ior
      //   163: putfield 97	com/google/glass/companion/Proto$Location:bitField0_	I
      //   166: aload_0
      //   167: aload_1
      //   168: invokevirtual 101	com/google/protobuf/CodedInputStream:readDouble	()D
      //   171: putfield 103	com/google/glass/companion/Proto$Location:latitude_	D
      //   174: goto -154 -> 20
      //   177: astore 6
      //   179: aload 6
      //   181: aload_0
      //   182: invokevirtual 107	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   185: athrow
      //   186: astore 5
      //   188: aload_0
      //   189: invokevirtual 110	com/google/glass/companion/Proto$Location:makeExtensionsImmutable	()V
      //   192: aload 5
      //   194: athrow
      //   195: aload_0
      //   196: iconst_2
      //   197: aload_0
      //   198: getfield 97	com/google/glass/companion/Proto$Location:bitField0_	I
      //   201: ior
      //   202: putfield 97	com/google/glass/companion/Proto$Location:bitField0_	I
      //   205: aload_0
      //   206: aload_1
      //   207: invokevirtual 101	com/google/protobuf/CodedInputStream:readDouble	()D
      //   210: putfield 112	com/google/glass/companion/Proto$Location:longitude_	D
      //   213: goto -193 -> 20
      //   216: astore 4
      //   218: new 78	com/google/protobuf/InvalidProtocolBufferException
      //   221: dup
      //   222: aload 4
      //   224: invokevirtual 116	java/io/IOException:getMessage	()Ljava/lang/String;
      //   227: invokespecial 119	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   230: aload_0
      //   231: invokevirtual 107	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   234: athrow
      //   235: aload_0
      //   236: iconst_4
      //   237: aload_0
      //   238: getfield 97	com/google/glass/companion/Proto$Location:bitField0_	I
      //   241: ior
      //   242: putfield 97	com/google/glass/companion/Proto$Location:bitField0_	I
      //   245: aload_0
      //   246: aload_1
      //   247: invokevirtual 123	com/google/protobuf/CodedInputStream:readFloat	()F
      //   250: putfield 125	com/google/glass/companion/Proto$Location:accuracy_	F
      //   253: goto -233 -> 20
      //   256: aload_0
      //   257: bipush 8
      //   259: aload_0
      //   260: getfield 97	com/google/glass/companion/Proto$Location:bitField0_	I
      //   263: ior
      //   264: putfield 97	com/google/glass/companion/Proto$Location:bitField0_	I
      //   267: aload_0
      //   268: aload_1
      //   269: invokevirtual 101	com/google/protobuf/CodedInputStream:readDouble	()D
      //   272: putfield 127	com/google/glass/companion/Proto$Location:altitude_	D
      //   275: goto -255 -> 20
      //   278: aload_0
      //   279: bipush 16
      //   281: aload_0
      //   282: getfield 97	com/google/glass/companion/Proto$Location:bitField0_	I
      //   285: ior
      //   286: putfield 97	com/google/glass/companion/Proto$Location:bitField0_	I
      //   289: aload_0
      //   290: aload_1
      //   291: invokevirtual 123	com/google/protobuf/CodedInputStream:readFloat	()F
      //   294: putfield 129	com/google/glass/companion/Proto$Location:bearing_	F
      //   297: goto -277 -> 20
      //   300: aload_0
      //   301: bipush 32
      //   303: aload_0
      //   304: getfield 97	com/google/glass/companion/Proto$Location:bitField0_	I
      //   307: ior
      //   308: putfield 97	com/google/glass/companion/Proto$Location:bitField0_	I
      //   311: aload_0
      //   312: aload_1
      //   313: invokevirtual 123	com/google/protobuf/CodedInputStream:readFloat	()F
      //   316: putfield 131	com/google/glass/companion/Proto$Location:speed_	F
      //   319: goto -299 -> 20
      //   322: aload_0
      //   323: bipush 64
      //   325: aload_0
      //   326: getfield 97	com/google/glass/companion/Proto$Location:bitField0_	I
      //   329: ior
      //   330: putfield 97	com/google/glass/companion/Proto$Location:bitField0_	I
      //   333: aload_0
      //   334: aload_1
      //   335: invokevirtual 135	com/google/protobuf/CodedInputStream:readUInt64	()J
      //   338: putfield 137	com/google/glass/companion/Proto$Location:time_	J
      //   341: goto -321 -> 20
      //   344: aload_0
      //   345: sipush 128
      //   348: aload_0
      //   349: getfield 97	com/google/glass/companion/Proto$Location:bitField0_	I
      //   352: ior
      //   353: putfield 97	com/google/glass/companion/Proto$Location:bitField0_	I
      //   356: aload_0
      //   357: aload_1
      //   358: invokevirtual 140	com/google/protobuf/CodedInputStream:readInt32	()I
      //   361: putfield 142	com/google/glass/companion/Proto$Location:satellitesUsedInFix_	I
      //   364: goto -344 -> 20
      //   367: aload_0
      //   368: sipush 256
      //   371: aload_0
      //   372: getfield 97	com/google/glass/companion/Proto$Location:bitField0_	I
      //   375: ior
      //   376: putfield 97	com/google/glass/companion/Proto$Location:bitField0_	I
      //   379: aload_0
      //   380: aload_1
      //   381: invokevirtual 140	com/google/protobuf/CodedInputStream:readInt32	()I
      //   384: putfield 144	com/google/glass/companion/Proto$Location:visibleSatellites_	I
      //   387: goto -367 -> 20
      //   390: aload_0
      //   391: sipush 512
      //   394: aload_0
      //   395: getfield 97	com/google/glass/companion/Proto$Location:bitField0_	I
      //   398: ior
      //   399: putfield 97	com/google/glass/companion/Proto$Location:bitField0_	I
      //   402: aload_0
      //   403: aload_1
      //   404: invokevirtual 148	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   407: putfield 150	com/google/glass/companion/Proto$Location:levelId_	Ljava/lang/Object;
      //   410: goto -390 -> 20
      //   413: aload_0
      //   414: sipush 1024
      //   417: aload_0
      //   418: getfield 97	com/google/glass/companion/Proto$Location:bitField0_	I
      //   421: ior
      //   422: putfield 97	com/google/glass/companion/Proto$Location:bitField0_	I
      //   425: aload_0
      //   426: aload_1
      //   427: invokevirtual 140	com/google/protobuf/CodedInputStream:readInt32	()I
      //   430: putfield 152	com/google/glass/companion/Proto$Location:levelNumberE3_	I
      //   433: goto -413 -> 20
      //   436: aload_0
      //   437: invokevirtual 110	com/google/glass/companion/Proto$Location:makeExtensionsImmutable	()V
      //   440: return
      //   441: iconst_1
      //   442: istore_3
      //   443: goto -423 -> 20
      //
      // Exception table:
      //   from	to	target	type
      //   24	30	177	com/google/protobuf/InvalidProtocolBufferException
      //   140	151	177	com/google/protobuf/InvalidProtocolBufferException
      //   156	174	177	com/google/protobuf/InvalidProtocolBufferException
      //   195	213	177	com/google/protobuf/InvalidProtocolBufferException
      //   235	253	177	com/google/protobuf/InvalidProtocolBufferException
      //   256	275	177	com/google/protobuf/InvalidProtocolBufferException
      //   278	297	177	com/google/protobuf/InvalidProtocolBufferException
      //   300	319	177	com/google/protobuf/InvalidProtocolBufferException
      //   322	341	177	com/google/protobuf/InvalidProtocolBufferException
      //   344	364	177	com/google/protobuf/InvalidProtocolBufferException
      //   367	387	177	com/google/protobuf/InvalidProtocolBufferException
      //   390	410	177	com/google/protobuf/InvalidProtocolBufferException
      //   413	433	177	com/google/protobuf/InvalidProtocolBufferException
      //   24	30	186	finally
      //   140	151	186	finally
      //   156	174	186	finally
      //   179	186	186	finally
      //   195	213	186	finally
      //   218	235	186	finally
      //   235	253	186	finally
      //   256	275	186	finally
      //   278	297	186	finally
      //   300	319	186	finally
      //   322	341	186	finally
      //   344	364	186	finally
      //   367	387	186	finally
      //   390	410	186	finally
      //   413	433	186	finally
      //   24	30	216	java/io/IOException
      //   140	151	216	java/io/IOException
      //   156	174	216	java/io/IOException
      //   195	213	216	java/io/IOException
      //   235	253	216	java/io/IOException
      //   256	275	216	java/io/IOException
      //   278	297	216	java/io/IOException
      //   300	319	216	java/io/IOException
      //   322	341	216	java/io/IOException
      //   344	364	216	java/io/IOException
      //   367	387	216	java/io/IOException
      //   390	410	216	java/io/IOException
      //   413	433	216	java/io/IOException
    }

    private Location(GeneratedMessageLite.Builder paramBuilder)
    {
      super();
    }

    private Location(boolean paramBoolean)
    {
    }

    public static Location getDefaultInstance()
    {
      return defaultInstance;
    }

    private void initFields()
    {
      this.latitude_ = 0.0D;
      this.longitude_ = 0.0D;
      this.accuracy_ = 0.0F;
      this.altitude_ = 0.0D;
      this.bearing_ = 0.0F;
      this.speed_ = 0.0F;
      this.time_ = 0L;
      this.satellitesUsedInFix_ = 0;
      this.visibleSatellites_ = 0;
      this.levelId_ = "";
      this.levelNumberE3_ = 0;
    }

    public static Builder newBuilder()
    {
      return Builder.access$4200();
    }

    public static Builder newBuilder(Location paramLocation)
    {
      return newBuilder().mergeFrom(paramLocation);
    }

    public static Location parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (Location)PARSER.parseDelimitedFrom(paramInputStream);
    }

    public static Location parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (Location)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }

    public static Location parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (Location)PARSER.parseFrom(paramByteString);
    }

    public static Location parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (Location)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }

    public static Location parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (Location)PARSER.parseFrom(paramCodedInputStream);
    }

    public static Location parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (Location)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }

    public static Location parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (Location)PARSER.parseFrom(paramInputStream);
    }

    public static Location parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (Location)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }

    public static Location parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (Location)PARSER.parseFrom(paramArrayOfByte);
    }

    public static Location parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (Location)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }

    public float getAccuracy()
    {
      return this.accuracy_;
    }

    public double getAltitude()
    {
      return this.altitude_;
    }

    public float getBearing()
    {
      return this.bearing_;
    }

    public Location getDefaultInstanceForType()
    {
      return defaultInstance;
    }

    public double getLatitude()
    {
      return this.latitude_;
    }

    public String getLevelId()
    {
      Object localObject = this.levelId_;
      if ((localObject instanceof String))
        return (String)localObject;
      ByteString localByteString = (ByteString)localObject;
      String str = localByteString.toStringUtf8();
      if (localByteString.isValidUtf8())
        this.levelId_ = str;
      return str;
    }

    public ByteString getLevelIdBytes()
    {
      Object localObject = this.levelId_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.levelId_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public int getLevelNumberE3()
    {
      return this.levelNumberE3_;
    }

    public double getLongitude()
    {
      return this.longitude_;
    }

    public Parser<Location> getParserForType()
    {
      return PARSER;
    }

    public int getSatellitesUsedInFix()
    {
      return this.satellitesUsedInFix_;
    }

    public int getSerializedSize()
    {
      int i = this.memoizedSerializedSize;
      if (i != -1)
        return i;
      int j = 0x1 & this.bitField0_;
      int k = 0;
      if (j == 1)
        k = 0 + CodedOutputStream.computeDoubleSize(1, this.latitude_);
      if ((0x2 & this.bitField0_) == 2)
        k += CodedOutputStream.computeDoubleSize(2, this.longitude_);
      if ((0x4 & this.bitField0_) == 4)
        k += CodedOutputStream.computeFloatSize(3, this.accuracy_);
      if ((0x8 & this.bitField0_) == 8)
        k += CodedOutputStream.computeDoubleSize(4, this.altitude_);
      if ((0x10 & this.bitField0_) == 16)
        k += CodedOutputStream.computeFloatSize(5, this.bearing_);
      if ((0x20 & this.bitField0_) == 32)
        k += CodedOutputStream.computeFloatSize(6, this.speed_);
      if ((0x40 & this.bitField0_) == 64)
        k += CodedOutputStream.computeUInt64Size(7, this.time_);
      if ((0x80 & this.bitField0_) == 128)
        k += CodedOutputStream.computeInt32Size(8, this.satellitesUsedInFix_);
      if ((0x100 & this.bitField0_) == 256)
        k += CodedOutputStream.computeInt32Size(9, this.visibleSatellites_);
      if ((0x200 & this.bitField0_) == 512)
        k += CodedOutputStream.computeBytesSize(10, getLevelIdBytes());
      if ((0x400 & this.bitField0_) == 1024)
        k += CodedOutputStream.computeInt32Size(11, this.levelNumberE3_);
      this.memoizedSerializedSize = k;
      return k;
    }

    public float getSpeed()
    {
      return this.speed_;
    }

    public long getTime()
    {
      return this.time_;
    }

    public int getVisibleSatellites()
    {
      return this.visibleSatellites_;
    }

    public boolean hasAccuracy()
    {
      return (0x4 & this.bitField0_) == 4;
    }

    public boolean hasAltitude()
    {
      return (0x8 & this.bitField0_) == 8;
    }

    public boolean hasBearing()
    {
      return (0x10 & this.bitField0_) == 16;
    }

    public boolean hasLatitude()
    {
      return (0x1 & this.bitField0_) == 1;
    }

    public boolean hasLevelId()
    {
      return (0x200 & this.bitField0_) == 512;
    }

    public boolean hasLevelNumberE3()
    {
      return (0x400 & this.bitField0_) == 1024;
    }

    public boolean hasLongitude()
    {
      return (0x2 & this.bitField0_) == 2;
    }

    public boolean hasSatellitesUsedInFix()
    {
      return (0x80 & this.bitField0_) == 128;
    }

    public boolean hasSpeed()
    {
      return (0x20 & this.bitField0_) == 32;
    }

    public boolean hasTime()
    {
      return (0x40 & this.bitField0_) == 64;
    }

    public boolean hasVisibleSatellites()
    {
      return (0x100 & this.bitField0_) == 256;
    }

    protected MutableMessageLite internalMutableDefault()
    {
      if (mutableDefault == null)
        mutableDefault = internalMutableDefault("com.google.glass.companion.MutableProto$Location");
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
        paramCodedOutputStream.writeDouble(1, this.latitude_);
      if ((0x2 & this.bitField0_) == 2)
        paramCodedOutputStream.writeDouble(2, this.longitude_);
      if ((0x4 & this.bitField0_) == 4)
        paramCodedOutputStream.writeFloat(3, this.accuracy_);
      if ((0x8 & this.bitField0_) == 8)
        paramCodedOutputStream.writeDouble(4, this.altitude_);
      if ((0x10 & this.bitField0_) == 16)
        paramCodedOutputStream.writeFloat(5, this.bearing_);
      if ((0x20 & this.bitField0_) == 32)
        paramCodedOutputStream.writeFloat(6, this.speed_);
      if ((0x40 & this.bitField0_) == 64)
        paramCodedOutputStream.writeUInt64(7, this.time_);
      if ((0x80 & this.bitField0_) == 128)
        paramCodedOutputStream.writeInt32(8, this.satellitesUsedInFix_);
      if ((0x100 & this.bitField0_) == 256)
        paramCodedOutputStream.writeInt32(9, this.visibleSatellites_);
      if ((0x200 & this.bitField0_) == 512)
        paramCodedOutputStream.writeBytes(10, getLevelIdBytes());
      if ((0x400 & this.bitField0_) == 1024)
        paramCodedOutputStream.writeInt32(11, this.levelNumberE3_);
    }

    public static final class Builder extends GeneratedMessageLite.Builder<Proto.Location, Builder>
      implements Proto.LocationOrBuilder
    {
      private float accuracy_;
      private double altitude_;
      private float bearing_;
      private int bitField0_;
      private double latitude_;
      private Object levelId_ = "";
      private int levelNumberE3_;
      private double longitude_;
      private int satellitesUsedInFix_;
      private float speed_;
      private long time_;
      private int visibleSatellites_;

      private Builder()
      {
        maybeForceBuilderInitialization();
      }

      private static Builder create()
      {
        return new Builder();
      }

      private void maybeForceBuilderInitialization()
      {
      }

      public Proto.Location build()
      {
        Proto.Location localLocation = buildPartial();
        if (!localLocation.isInitialized())
          throw newUninitializedMessageException(localLocation);
        return localLocation;
      }

      public Proto.Location buildPartial()
      {
        Proto.Location localLocation = new Proto.Location(this, null);
        int i = this.bitField0_;
        int j = i & 0x1;
        int k = 0;
        if (j == 1)
          k = 0x0 | 0x1;
        Proto.Location.access$4402(localLocation, this.latitude_);
        if ((i & 0x2) == 2)
          k |= 2;
        Proto.Location.access$4502(localLocation, this.longitude_);
        if ((i & 0x4) == 4)
          k |= 4;
        Proto.Location.access$4602(localLocation, this.accuracy_);
        if ((i & 0x8) == 8)
          k |= 8;
        Proto.Location.access$4702(localLocation, this.altitude_);
        if ((i & 0x10) == 16)
          k |= 16;
        Proto.Location.access$4802(localLocation, this.bearing_);
        if ((i & 0x20) == 32)
          k |= 32;
        Proto.Location.access$4902(localLocation, this.speed_);
        if ((i & 0x40) == 64)
          k |= 64;
        Proto.Location.access$5002(localLocation, this.time_);
        if ((i & 0x80) == 128)
          k |= 128;
        Proto.Location.access$5102(localLocation, this.satellitesUsedInFix_);
        if ((i & 0x100) == 256)
          k |= 256;
        Proto.Location.access$5202(localLocation, this.visibleSatellites_);
        if ((i & 0x200) == 512)
          k |= 512;
        Proto.Location.access$5302(localLocation, this.levelId_);
        if ((i & 0x400) == 1024)
          k |= 1024;
        Proto.Location.access$5402(localLocation, this.levelNumberE3_);
        Proto.Location.access$5502(localLocation, k);
        return localLocation;
      }

      public Builder clear()
      {
        super.clear();
        this.latitude_ = 0.0D;
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        this.longitude_ = 0.0D;
        this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        this.accuracy_ = 0.0F;
        this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
        this.altitude_ = 0.0D;
        this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
        this.bearing_ = 0.0F;
        this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
        this.speed_ = 0.0F;
        this.bitField0_ = (0xFFFFFFDF & this.bitField0_);
        this.time_ = 0L;
        this.bitField0_ = (0xFFFFFFBF & this.bitField0_);
        this.satellitesUsedInFix_ = 0;
        this.bitField0_ = (0xFFFFFF7F & this.bitField0_);
        this.visibleSatellites_ = 0;
        this.bitField0_ = (0xFFFFFEFF & this.bitField0_);
        this.levelId_ = "";
        this.bitField0_ = (0xFFFFFDFF & this.bitField0_);
        this.levelNumberE3_ = 0;
        this.bitField0_ = (0xFFFFFBFF & this.bitField0_);
        return this;
      }

      public Builder clearAccuracy()
      {
        this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
        this.accuracy_ = 0.0F;
        return this;
      }

      public Builder clearAltitude()
      {
        this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
        this.altitude_ = 0.0D;
        return this;
      }

      public Builder clearBearing()
      {
        this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
        this.bearing_ = 0.0F;
        return this;
      }

      public Builder clearLatitude()
      {
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        this.latitude_ = 0.0D;
        return this;
      }

      public Builder clearLevelId()
      {
        this.bitField0_ = (0xFFFFFDFF & this.bitField0_);
        this.levelId_ = Proto.Location.getDefaultInstance().getLevelId();
        return this;
      }

      public Builder clearLevelNumberE3()
      {
        this.bitField0_ = (0xFFFFFBFF & this.bitField0_);
        this.levelNumberE3_ = 0;
        return this;
      }

      public Builder clearLongitude()
      {
        this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        this.longitude_ = 0.0D;
        return this;
      }

      public Builder clearSatellitesUsedInFix()
      {
        this.bitField0_ = (0xFFFFFF7F & this.bitField0_);
        this.satellitesUsedInFix_ = 0;
        return this;
      }

      public Builder clearSpeed()
      {
        this.bitField0_ = (0xFFFFFFDF & this.bitField0_);
        this.speed_ = 0.0F;
        return this;
      }

      public Builder clearTime()
      {
        this.bitField0_ = (0xFFFFFFBF & this.bitField0_);
        this.time_ = 0L;
        return this;
      }

      public Builder clearVisibleSatellites()
      {
        this.bitField0_ = (0xFFFFFEFF & this.bitField0_);
        this.visibleSatellites_ = 0;
        return this;
      }

      public Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }

      public float getAccuracy()
      {
        return this.accuracy_;
      }

      public double getAltitude()
      {
        return this.altitude_;
      }

      public float getBearing()
      {
        return this.bearing_;
      }

      public Proto.Location getDefaultInstanceForType()
      {
        return Proto.Location.getDefaultInstance();
      }

      public double getLatitude()
      {
        return this.latitude_;
      }

      public String getLevelId()
      {
        Object localObject = this.levelId_;
        if (!(localObject instanceof String))
        {
          String str = ((ByteString)localObject).toStringUtf8();
          this.levelId_ = str;
          return str;
        }
        return (String)localObject;
      }

      public ByteString getLevelIdBytes()
      {
        Object localObject = this.levelId_;
        if ((localObject instanceof String))
        {
          ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
          this.levelId_ = localByteString;
          return localByteString;
        }
        return (ByteString)localObject;
      }

      public int getLevelNumberE3()
      {
        return this.levelNumberE3_;
      }

      public double getLongitude()
      {
        return this.longitude_;
      }

      public int getSatellitesUsedInFix()
      {
        return this.satellitesUsedInFix_;
      }

      public float getSpeed()
      {
        return this.speed_;
      }

      public long getTime()
      {
        return this.time_;
      }

      public int getVisibleSatellites()
      {
        return this.visibleSatellites_;
      }

      public boolean hasAccuracy()
      {
        return (0x4 & this.bitField0_) == 4;
      }

      public boolean hasAltitude()
      {
        return (0x8 & this.bitField0_) == 8;
      }

      public boolean hasBearing()
      {
        return (0x10 & this.bitField0_) == 16;
      }

      public boolean hasLatitude()
      {
        return (0x1 & this.bitField0_) == 1;
      }

      public boolean hasLevelId()
      {
        return (0x200 & this.bitField0_) == 512;
      }

      public boolean hasLevelNumberE3()
      {
        return (0x400 & this.bitField0_) == 1024;
      }

      public boolean hasLongitude()
      {
        return (0x2 & this.bitField0_) == 2;
      }

      public boolean hasSatellitesUsedInFix()
      {
        return (0x80 & this.bitField0_) == 128;
      }

      public boolean hasSpeed()
      {
        return (0x20 & this.bitField0_) == 32;
      }

      public boolean hasTime()
      {
        return (0x40 & this.bitField0_) == 64;
      }

      public boolean hasVisibleSatellites()
      {
        return (0x100 & this.bitField0_) == 256;
      }

      public final boolean isInitialized()
      {
        return true;
      }

      public Builder mergeFrom(Proto.Location paramLocation)
      {
        if (paramLocation == Proto.Location.getDefaultInstance());
        do
        {
          return this;
          if (paramLocation.hasLatitude())
            setLatitude(paramLocation.getLatitude());
          if (paramLocation.hasLongitude())
            setLongitude(paramLocation.getLongitude());
          if (paramLocation.hasAccuracy())
            setAccuracy(paramLocation.getAccuracy());
          if (paramLocation.hasAltitude())
            setAltitude(paramLocation.getAltitude());
          if (paramLocation.hasBearing())
            setBearing(paramLocation.getBearing());
          if (paramLocation.hasSpeed())
            setSpeed(paramLocation.getSpeed());
          if (paramLocation.hasTime())
            setTime(paramLocation.getTime());
          if (paramLocation.hasSatellitesUsedInFix())
            setSatellitesUsedInFix(paramLocation.getSatellitesUsedInFix());
          if (paramLocation.hasVisibleSatellites())
            setVisibleSatellites(paramLocation.getVisibleSatellites());
          if (paramLocation.hasLevelId())
          {
            this.bitField0_ = (0x200 | this.bitField0_);
            this.levelId_ = paramLocation.levelId_;
          }
        }
        while (!paramLocation.hasLevelNumberE3());
        setLevelNumberE3(paramLocation.getLevelNumberE3());
        return this;
      }

      public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
        throws IOException
      {
        Proto.Location localLocation1 = null;
        try
        {
          Proto.Location localLocation2 = (Proto.Location)Proto.Location.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
          return this;
        }
        catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
        {
          localLocation1 = (Proto.Location)localInvalidProtocolBufferException.getUnfinishedMessage();
          throw localInvalidProtocolBufferException;
        }
        finally
        {
          if (localLocation1 != null)
            mergeFrom(localLocation1);
        }
      }

      public Builder setAccuracy(float paramFloat)
      {
        this.bitField0_ = (0x4 | this.bitField0_);
        this.accuracy_ = paramFloat;
        return this;
      }

      public Builder setAltitude(double paramDouble)
      {
        this.bitField0_ = (0x8 | this.bitField0_);
        this.altitude_ = paramDouble;
        return this;
      }

      public Builder setBearing(float paramFloat)
      {
        this.bitField0_ = (0x10 | this.bitField0_);
        this.bearing_ = paramFloat;
        return this;
      }

      public Builder setLatitude(double paramDouble)
      {
        this.bitField0_ = (0x1 | this.bitField0_);
        this.latitude_ = paramDouble;
        return this;
      }

      public Builder setLevelId(String paramString)
      {
        if (paramString == null)
          throw new NullPointerException();
        this.bitField0_ = (0x200 | this.bitField0_);
        this.levelId_ = paramString;
        return this;
      }

      public Builder setLevelIdBytes(ByteString paramByteString)
      {
        if (paramByteString == null)
          throw new NullPointerException();
        this.bitField0_ = (0x200 | this.bitField0_);
        this.levelId_ = paramByteString;
        return this;
      }

      public Builder setLevelNumberE3(int paramInt)
      {
        this.bitField0_ = (0x400 | this.bitField0_);
        this.levelNumberE3_ = paramInt;
        return this;
      }

      public Builder setLongitude(double paramDouble)
      {
        this.bitField0_ = (0x2 | this.bitField0_);
        this.longitude_ = paramDouble;
        return this;
      }

      public Builder setSatellitesUsedInFix(int paramInt)
      {
        this.bitField0_ = (0x80 | this.bitField0_);
        this.satellitesUsedInFix_ = paramInt;
        return this;
      }

      public Builder setSpeed(float paramFloat)
      {
        this.bitField0_ = (0x20 | this.bitField0_);
        this.speed_ = paramFloat;
        return this;
      }

      public Builder setTime(long paramLong)
      {
        this.bitField0_ = (0x40 | this.bitField0_);
        this.time_ = paramLong;
        return this;
      }

      public Builder setVisibleSatellites(int paramInt)
      {
        this.bitField0_ = (0x100 | this.bitField0_);
        this.visibleSatellites_ = paramInt;
        return this;
      }
    }
  }

  public static final class LocationMessage extends GeneratedMessageLite
    implements Proto.LocationMessageOrBuilder
  {
    public static final int LOCATION_FIELD_NUMBER = 3;
    public static Parser<LocationMessage> PARSER = new AbstractParser()
    {
      public Proto.LocationMessage parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
        throws InvalidProtocolBufferException
      {
        return new Proto.LocationMessage(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
      }
    };
    public static final int PROVIDER_FIELD_NUMBER = 2;
    public static final int RECEIVER_FIELD_NUMBER = 5;
    public static final int STATUS_FIELD_NUMBER = 4;
    public static final int TYPE_FIELD_NUMBER = 1;
    private static final LocationMessage defaultInstance;
    private static volatile MutableMessageLite mutableDefault = null;
    private static final long serialVersionUID;
    private int bitField0_;
    private Proto.Location location_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private Object provider_;
    private Object receiver_;
    private int status_;
    private MessageType type_;

    static
    {
      defaultInstance = new LocationMessage(true);
      defaultInstance.initFields();
    }

    // ERROR //
    private LocationMessage(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 63	com/google/protobuf/GeneratedMessageLite:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 65	com/google/glass/companion/Proto$LocationMessage:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 67	com/google/glass/companion/Proto$LocationMessage:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 57	com/google/glass/companion/Proto$LocationMessage:initFields	()V
      //   18: iconst_0
      //   19: istore_3
      //   20: iload_3
      //   21: ifne +300 -> 321
      //   24: aload_1
      //   25: invokevirtual 73	com/google/protobuf/CodedInputStream:readTag	()I
      //   28: istore 7
      //   30: iload 7
      //   32: lookupswitch	default:+60->92, 0:+294->326, 8:+76->108, 18:+127->159, 26:+167->199, 32:+245->277, 42:+267->299
      //   93: aload_1
      //   94: aload_2
      //   95: iload 7
      //   97: invokevirtual 77	com/google/glass/companion/Proto$LocationMessage:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   100: ifne -80 -> 20
      //   103: iconst_1
      //   104: istore_3
      //   105: goto -85 -> 20
      //   108: aload_1
      //   109: invokevirtual 80	com/google/protobuf/CodedInputStream:readEnum	()I
      //   112: invokestatic 86	com/google/glass/companion/Proto$LocationMessage$MessageType:valueOf	(I)Lcom/google/glass/companion/Proto$LocationMessage$MessageType;
      //   115: astore 11
      //   117: aload 11
      //   119: ifnull -99 -> 20
      //   122: aload_0
      //   123: iconst_1
      //   124: aload_0
      //   125: getfield 88	com/google/glass/companion/Proto$LocationMessage:bitField0_	I
      //   128: ior
      //   129: putfield 88	com/google/glass/companion/Proto$LocationMessage:bitField0_	I
      //   132: aload_0
      //   133: aload 11
      //   135: putfield 90	com/google/glass/companion/Proto$LocationMessage:type_	Lcom/google/glass/companion/Proto$LocationMessage$MessageType;
      //   138: goto -118 -> 20
      //   141: astore 6
      //   143: aload 6
      //   145: aload_0
      //   146: invokevirtual 94	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   149: athrow
      //   150: astore 5
      //   152: aload_0
      //   153: invokevirtual 97	com/google/glass/companion/Proto$LocationMessage:makeExtensionsImmutable	()V
      //   156: aload 5
      //   158: athrow
      //   159: aload_0
      //   160: iconst_2
      //   161: aload_0
      //   162: getfield 88	com/google/glass/companion/Proto$LocationMessage:bitField0_	I
      //   165: ior
      //   166: putfield 88	com/google/glass/companion/Proto$LocationMessage:bitField0_	I
      //   169: aload_0
      //   170: aload_1
      //   171: invokevirtual 101	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   174: putfield 103	com/google/glass/companion/Proto$LocationMessage:provider_	Ljava/lang/Object;
      //   177: goto -157 -> 20
      //   180: astore 4
      //   182: new 60	com/google/protobuf/InvalidProtocolBufferException
      //   185: dup
      //   186: aload 4
      //   188: invokevirtual 107	java/io/IOException:getMessage	()Ljava/lang/String;
      //   191: invokespecial 110	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   194: aload_0
      //   195: invokevirtual 94	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   198: athrow
      //   199: iconst_4
      //   200: aload_0
      //   201: getfield 88	com/google/glass/companion/Proto$LocationMessage:bitField0_	I
      //   204: iand
      //   205: istore 8
      //   207: aconst_null
      //   208: astore 9
      //   210: iload 8
      //   212: iconst_4
      //   213: if_icmpne +12 -> 225
      //   216: aload_0
      //   217: getfield 112	com/google/glass/companion/Proto$LocationMessage:location_	Lcom/google/glass/companion/Proto$Location;
      //   220: invokevirtual 118	com/google/glass/companion/Proto$Location:toBuilder	()Lcom/google/glass/companion/Proto$Location$Builder;
      //   223: astore 9
      //   225: aload_0
      //   226: aload_1
      //   227: getstatic 119	com/google/glass/companion/Proto$Location:PARSER	Lcom/google/protobuf/Parser;
      //   230: aload_2
      //   231: invokevirtual 123	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
      //   234: checkcast 114	com/google/glass/companion/Proto$Location
      //   237: putfield 112	com/google/glass/companion/Proto$LocationMessage:location_	Lcom/google/glass/companion/Proto$Location;
      //   240: aload 9
      //   242: ifnull +22 -> 264
      //   245: aload 9
      //   247: aload_0
      //   248: getfield 112	com/google/glass/companion/Proto$LocationMessage:location_	Lcom/google/glass/companion/Proto$Location;
      //   251: invokevirtual 129	com/google/glass/companion/Proto$Location$Builder:mergeFrom	(Lcom/google/glass/companion/Proto$Location;)Lcom/google/glass/companion/Proto$Location$Builder;
      //   254: pop
      //   255: aload_0
      //   256: aload 9
      //   258: invokevirtual 133	com/google/glass/companion/Proto$Location$Builder:buildPartial	()Lcom/google/glass/companion/Proto$Location;
      //   261: putfield 112	com/google/glass/companion/Proto$LocationMessage:location_	Lcom/google/glass/companion/Proto$Location;
      //   264: aload_0
      //   265: iconst_4
      //   266: aload_0
      //   267: getfield 88	com/google/glass/companion/Proto$LocationMessage:bitField0_	I
      //   270: ior
      //   271: putfield 88	com/google/glass/companion/Proto$LocationMessage:bitField0_	I
      //   274: goto -254 -> 20
      //   277: aload_0
      //   278: bipush 8
      //   280: aload_0
      //   281: getfield 88	com/google/glass/companion/Proto$LocationMessage:bitField0_	I
      //   284: ior
      //   285: putfield 88	com/google/glass/companion/Proto$LocationMessage:bitField0_	I
      //   288: aload_0
      //   289: aload_1
      //   290: invokevirtual 136	com/google/protobuf/CodedInputStream:readInt32	()I
      //   293: putfield 138	com/google/glass/companion/Proto$LocationMessage:status_	I
      //   296: goto -276 -> 20
      //   299: aload_0
      //   300: bipush 16
      //   302: aload_0
      //   303: getfield 88	com/google/glass/companion/Proto$LocationMessage:bitField0_	I
      //   306: ior
      //   307: putfield 88	com/google/glass/companion/Proto$LocationMessage:bitField0_	I
      //   310: aload_0
      //   311: aload_1
      //   312: invokevirtual 101	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   315: putfield 140	com/google/glass/companion/Proto$LocationMessage:receiver_	Ljava/lang/Object;
      //   318: goto -298 -> 20
      //   321: aload_0
      //   322: invokevirtual 97	com/google/glass/companion/Proto$LocationMessage:makeExtensionsImmutable	()V
      //   325: return
      //   326: iconst_1
      //   327: istore_3
      //   328: goto -308 -> 20
      //
      // Exception table:
      //   from	to	target	type
      //   24	30	141	com/google/protobuf/InvalidProtocolBufferException
      //   92	103	141	com/google/protobuf/InvalidProtocolBufferException
      //   108	117	141	com/google/protobuf/InvalidProtocolBufferException
      //   122	138	141	com/google/protobuf/InvalidProtocolBufferException
      //   159	177	141	com/google/protobuf/InvalidProtocolBufferException
      //   199	207	141	com/google/protobuf/InvalidProtocolBufferException
      //   216	225	141	com/google/protobuf/InvalidProtocolBufferException
      //   225	240	141	com/google/protobuf/InvalidProtocolBufferException
      //   245	264	141	com/google/protobuf/InvalidProtocolBufferException
      //   264	274	141	com/google/protobuf/InvalidProtocolBufferException
      //   277	296	141	com/google/protobuf/InvalidProtocolBufferException
      //   299	318	141	com/google/protobuf/InvalidProtocolBufferException
      //   24	30	150	finally
      //   92	103	150	finally
      //   108	117	150	finally
      //   122	138	150	finally
      //   143	150	150	finally
      //   159	177	150	finally
      //   182	199	150	finally
      //   199	207	150	finally
      //   216	225	150	finally
      //   225	240	150	finally
      //   245	264	150	finally
      //   264	274	150	finally
      //   277	296	150	finally
      //   299	318	150	finally
      //   24	30	180	java/io/IOException
      //   92	103	180	java/io/IOException
      //   108	117	180	java/io/IOException
      //   122	138	180	java/io/IOException
      //   159	177	180	java/io/IOException
      //   199	207	180	java/io/IOException
      //   216	225	180	java/io/IOException
      //   225	240	180	java/io/IOException
      //   245	264	180	java/io/IOException
      //   264	274	180	java/io/IOException
      //   277	296	180	java/io/IOException
      //   299	318	180	java/io/IOException
    }

    private LocationMessage(GeneratedMessageLite.Builder paramBuilder)
    {
      super();
    }

    private LocationMessage(boolean paramBoolean)
    {
    }

    public static LocationMessage getDefaultInstance()
    {
      return defaultInstance;
    }

    private void initFields()
    {
      this.type_ = MessageType.LOCATION_CHANGED;
      this.provider_ = "";
      this.location_ = Proto.Location.getDefaultInstance();
      this.status_ = 0;
      this.receiver_ = "";
    }

    public static Builder newBuilder()
    {
      return Builder.access$3300();
    }

    public static Builder newBuilder(LocationMessage paramLocationMessage)
    {
      return newBuilder().mergeFrom(paramLocationMessage);
    }

    public static LocationMessage parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (LocationMessage)PARSER.parseDelimitedFrom(paramInputStream);
    }

    public static LocationMessage parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (LocationMessage)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }

    public static LocationMessage parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (LocationMessage)PARSER.parseFrom(paramByteString);
    }

    public static LocationMessage parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (LocationMessage)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }

    public static LocationMessage parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (LocationMessage)PARSER.parseFrom(paramCodedInputStream);
    }

    public static LocationMessage parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (LocationMessage)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }

    public static LocationMessage parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (LocationMessage)PARSER.parseFrom(paramInputStream);
    }

    public static LocationMessage parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (LocationMessage)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }

    public static LocationMessage parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (LocationMessage)PARSER.parseFrom(paramArrayOfByte);
    }

    public static LocationMessage parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (LocationMessage)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }

    public LocationMessage getDefaultInstanceForType()
    {
      return defaultInstance;
    }

    public Proto.Location getLocation()
    {
      return this.location_;
    }

    public Parser<LocationMessage> getParserForType()
    {
      return PARSER;
    }

    public String getProvider()
    {
      Object localObject = this.provider_;
      if ((localObject instanceof String))
        return (String)localObject;
      ByteString localByteString = (ByteString)localObject;
      String str = localByteString.toStringUtf8();
      if (localByteString.isValidUtf8())
        this.provider_ = str;
      return str;
    }

    public ByteString getProviderBytes()
    {
      Object localObject = this.provider_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.provider_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public String getReceiver()
    {
      Object localObject = this.receiver_;
      if ((localObject instanceof String))
        return (String)localObject;
      ByteString localByteString = (ByteString)localObject;
      String str = localByteString.toStringUtf8();
      if (localByteString.isValidUtf8())
        this.receiver_ = str;
      return str;
    }

    public ByteString getReceiverBytes()
    {
      Object localObject = this.receiver_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.receiver_ = localByteString;
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
        k = 0 + CodedOutputStream.computeEnumSize(1, this.type_.getNumber());
      if ((0x2 & this.bitField0_) == 2)
        k += CodedOutputStream.computeBytesSize(2, getProviderBytes());
      if ((0x4 & this.bitField0_) == 4)
        k += CodedOutputStream.computeMessageSize(3, this.location_);
      if ((0x8 & this.bitField0_) == 8)
        k += CodedOutputStream.computeInt32Size(4, this.status_);
      if ((0x10 & this.bitField0_) == 16)
        k += CodedOutputStream.computeBytesSize(5, getReceiverBytes());
      this.memoizedSerializedSize = k;
      return k;
    }

    public int getStatus()
    {
      return this.status_;
    }

    public MessageType getType()
    {
      return this.type_;
    }

    public boolean hasLocation()
    {
      return (0x4 & this.bitField0_) == 4;
    }

    public boolean hasProvider()
    {
      return (0x2 & this.bitField0_) == 2;
    }

    public boolean hasReceiver()
    {
      return (0x10 & this.bitField0_) == 16;
    }

    public boolean hasStatus()
    {
      return (0x8 & this.bitField0_) == 8;
    }

    public boolean hasType()
    {
      return (0x1 & this.bitField0_) == 1;
    }

    protected MutableMessageLite internalMutableDefault()
    {
      if (mutableDefault == null)
        mutableDefault = internalMutableDefault("com.google.glass.companion.MutableProto$LocationMessage");
      return mutableDefault;
    }

    public final boolean isInitialized()
    {
      int i = this.memoizedIsInitialized;
      if (i != -1)
        return i == 1;
      if (!hasType())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      if (!hasProvider())
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
        paramCodedOutputStream.writeBytes(2, getProviderBytes());
      if ((0x4 & this.bitField0_) == 4)
        paramCodedOutputStream.writeMessage(3, this.location_);
      if ((0x8 & this.bitField0_) == 8)
        paramCodedOutputStream.writeInt32(4, this.status_);
      if ((0x10 & this.bitField0_) == 16)
        paramCodedOutputStream.writeBytes(5, getReceiverBytes());
    }

    public static final class Builder extends GeneratedMessageLite.Builder<Proto.LocationMessage, Builder>
      implements Proto.LocationMessageOrBuilder
    {
      private int bitField0_;
      private Proto.Location location_ = Proto.Location.getDefaultInstance();
      private Object provider_ = "";
      private Object receiver_ = "";
      private int status_;
      private Proto.LocationMessage.MessageType type_ = Proto.LocationMessage.MessageType.LOCATION_CHANGED;

      private Builder()
      {
        maybeForceBuilderInitialization();
      }

      private static Builder create()
      {
        return new Builder();
      }

      private void maybeForceBuilderInitialization()
      {
      }

      public Proto.LocationMessage build()
      {
        Proto.LocationMessage localLocationMessage = buildPartial();
        if (!localLocationMessage.isInitialized())
          throw newUninitializedMessageException(localLocationMessage);
        return localLocationMessage;
      }

      public Proto.LocationMessage buildPartial()
      {
        Proto.LocationMessage localLocationMessage = new Proto.LocationMessage(this, null);
        int i = this.bitField0_;
        int j = i & 0x1;
        int k = 0;
        if (j == 1)
          k = 0x0 | 0x1;
        Proto.LocationMessage.access$3502(localLocationMessage, this.type_);
        if ((i & 0x2) == 2)
          k |= 2;
        Proto.LocationMessage.access$3602(localLocationMessage, this.provider_);
        if ((i & 0x4) == 4)
          k |= 4;
        Proto.LocationMessage.access$3702(localLocationMessage, this.location_);
        if ((i & 0x8) == 8)
          k |= 8;
        Proto.LocationMessage.access$3802(localLocationMessage, this.status_);
        if ((i & 0x10) == 16)
          k |= 16;
        Proto.LocationMessage.access$3902(localLocationMessage, this.receiver_);
        Proto.LocationMessage.access$4002(localLocationMessage, k);
        return localLocationMessage;
      }

      public Builder clear()
      {
        super.clear();
        this.type_ = Proto.LocationMessage.MessageType.LOCATION_CHANGED;
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        this.provider_ = "";
        this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        this.location_ = Proto.Location.getDefaultInstance();
        this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
        this.status_ = 0;
        this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
        this.receiver_ = "";
        this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
        return this;
      }

      public Builder clearLocation()
      {
        this.location_ = Proto.Location.getDefaultInstance();
        this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
        return this;
      }

      public Builder clearProvider()
      {
        this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        this.provider_ = Proto.LocationMessage.getDefaultInstance().getProvider();
        return this;
      }

      public Builder clearReceiver()
      {
        this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
        this.receiver_ = Proto.LocationMessage.getDefaultInstance().getReceiver();
        return this;
      }

      public Builder clearStatus()
      {
        this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
        this.status_ = 0;
        return this;
      }

      public Builder clearType()
      {
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        this.type_ = Proto.LocationMessage.MessageType.LOCATION_CHANGED;
        return this;
      }

      public Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }

      public Proto.LocationMessage getDefaultInstanceForType()
      {
        return Proto.LocationMessage.getDefaultInstance();
      }

      public Proto.Location getLocation()
      {
        return this.location_;
      }

      public String getProvider()
      {
        Object localObject = this.provider_;
        if (!(localObject instanceof String))
        {
          String str = ((ByteString)localObject).toStringUtf8();
          this.provider_ = str;
          return str;
        }
        return (String)localObject;
      }

      public ByteString getProviderBytes()
      {
        Object localObject = this.provider_;
        if ((localObject instanceof String))
        {
          ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
          this.provider_ = localByteString;
          return localByteString;
        }
        return (ByteString)localObject;
      }

      public String getReceiver()
      {
        Object localObject = this.receiver_;
        if (!(localObject instanceof String))
        {
          String str = ((ByteString)localObject).toStringUtf8();
          this.receiver_ = str;
          return str;
        }
        return (String)localObject;
      }

      public ByteString getReceiverBytes()
      {
        Object localObject = this.receiver_;
        if ((localObject instanceof String))
        {
          ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
          this.receiver_ = localByteString;
          return localByteString;
        }
        return (ByteString)localObject;
      }

      public int getStatus()
      {
        return this.status_;
      }

      public Proto.LocationMessage.MessageType getType()
      {
        return this.type_;
      }

      public boolean hasLocation()
      {
        return (0x4 & this.bitField0_) == 4;
      }

      public boolean hasProvider()
      {
        return (0x2 & this.bitField0_) == 2;
      }

      public boolean hasReceiver()
      {
        return (0x10 & this.bitField0_) == 16;
      }

      public boolean hasStatus()
      {
        return (0x8 & this.bitField0_) == 8;
      }

      public boolean hasType()
      {
        return (0x1 & this.bitField0_) == 1;
      }

      public final boolean isInitialized()
      {
        if (!hasType());
        while (!hasProvider())
          return false;
        return true;
      }

      public Builder mergeFrom(Proto.LocationMessage paramLocationMessage)
      {
        if (paramLocationMessage == Proto.LocationMessage.getDefaultInstance());
        do
        {
          return this;
          if (paramLocationMessage.hasType())
            setType(paramLocationMessage.getType());
          if (paramLocationMessage.hasProvider())
          {
            this.bitField0_ = (0x2 | this.bitField0_);
            this.provider_ = paramLocationMessage.provider_;
          }
          if (paramLocationMessage.hasLocation())
            mergeLocation(paramLocationMessage.getLocation());
          if (paramLocationMessage.hasStatus())
            setStatus(paramLocationMessage.getStatus());
        }
        while (!paramLocationMessage.hasReceiver());
        this.bitField0_ = (0x10 | this.bitField0_);
        this.receiver_ = paramLocationMessage.receiver_;
        return this;
      }

      public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
        throws IOException
      {
        Proto.LocationMessage localLocationMessage1 = null;
        try
        {
          Proto.LocationMessage localLocationMessage2 = (Proto.LocationMessage)Proto.LocationMessage.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
          return this;
        }
        catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
        {
          localLocationMessage1 = (Proto.LocationMessage)localInvalidProtocolBufferException.getUnfinishedMessage();
          throw localInvalidProtocolBufferException;
        }
        finally
        {
          if (localLocationMessage1 != null)
            mergeFrom(localLocationMessage1);
        }
      }

      public Builder mergeLocation(Proto.Location paramLocation)
      {
        if (((0x4 & this.bitField0_) == 4) && (this.location_ != Proto.Location.getDefaultInstance()));
        for (this.location_ = Proto.Location.newBuilder(this.location_).mergeFrom(paramLocation).buildPartial(); ; this.location_ = paramLocation)
        {
          this.bitField0_ = (0x4 | this.bitField0_);
          return this;
        }
      }

      public Builder setLocation(Proto.Location.Builder paramBuilder)
      {
        this.location_ = paramBuilder.build();
        this.bitField0_ = (0x4 | this.bitField0_);
        return this;
      }

      public Builder setLocation(Proto.Location paramLocation)
      {
        if (paramLocation == null)
          throw new NullPointerException();
        this.location_ = paramLocation;
        this.bitField0_ = (0x4 | this.bitField0_);
        return this;
      }

      public Builder setProvider(String paramString)
      {
        if (paramString == null)
          throw new NullPointerException();
        this.bitField0_ = (0x2 | this.bitField0_);
        this.provider_ = paramString;
        return this;
      }

      public Builder setProviderBytes(ByteString paramByteString)
      {
        if (paramByteString == null)
          throw new NullPointerException();
        this.bitField0_ = (0x2 | this.bitField0_);
        this.provider_ = paramByteString;
        return this;
      }

      public Builder setReceiver(String paramString)
      {
        if (paramString == null)
          throw new NullPointerException();
        this.bitField0_ = (0x10 | this.bitField0_);
        this.receiver_ = paramString;
        return this;
      }

      public Builder setReceiverBytes(ByteString paramByteString)
      {
        if (paramByteString == null)
          throw new NullPointerException();
        this.bitField0_ = (0x10 | this.bitField0_);
        this.receiver_ = paramByteString;
        return this;
      }

      public Builder setStatus(int paramInt)
      {
        this.bitField0_ = (0x8 | this.bitField0_);
        this.status_ = paramInt;
        return this;
      }

      public Builder setType(Proto.LocationMessage.MessageType paramMessageType)
      {
        if (paramMessageType == null)
          throw new NullPointerException();
        this.bitField0_ = (0x1 | this.bitField0_);
        this.type_ = paramMessageType;
        return this;
      }
    }

    public static enum MessageType
      implements Internal.EnumLite
    {
      public static final int LOCATION_CHANGED_VALUE = 0;
      public static final int PROVIDER_DISABLED_VALUE = 1;
      public static final int PROVIDER_ENABLED_VALUE = 2;
      public static final int STATUS_CHANGED_VALUE = 3;
      private static Internal.EnumLiteMap<MessageType> internalValueMap = new Internal.EnumLiteMap()
      {
        public Proto.LocationMessage.MessageType findValueByNumber(int paramAnonymousInt)
        {
          return Proto.LocationMessage.MessageType.valueOf(paramAnonymousInt);
        }
      };
      private final int value;

      static
      {
        MessageType[] arrayOfMessageType = new MessageType[4];
        arrayOfMessageType[0] = LOCATION_CHANGED;
        arrayOfMessageType[1] = PROVIDER_DISABLED;
        arrayOfMessageType[2] = PROVIDER_ENABLED;
        arrayOfMessageType[3] = STATUS_CHANGED;
      }

      private MessageType(int paramInt1, int paramInt2)
      {
        this.value = paramInt2;
      }

      public static Internal.EnumLiteMap<MessageType> internalGetValueMap()
      {
        return internalValueMap;
      }

      public static MessageType valueOf(int paramInt)
      {
        switch (paramInt)
        {
        default:
          return null;
        case 0:
          return LOCATION_CHANGED;
        case 1:
          return PROVIDER_DISABLED;
        case 2:
          return PROVIDER_ENABLED;
        case 3:
        }
        return STATUS_CHANGED;
      }

      public final int getNumber()
      {
        return this.value;
      }
    }
  }

  public static abstract interface LocationMessageOrBuilder extends MessageLiteOrBuilder
  {
    public abstract Proto.Location getLocation();

    public abstract String getProvider();

    public abstract ByteString getProviderBytes();

    public abstract String getReceiver();

    public abstract ByteString getReceiverBytes();

    public abstract int getStatus();

    public abstract Proto.LocationMessage.MessageType getType();

    public abstract boolean hasLocation();

    public abstract boolean hasProvider();

    public abstract boolean hasReceiver();

    public abstract boolean hasStatus();

    public abstract boolean hasType();
  }

  public static abstract interface LocationOrBuilder extends MessageLiteOrBuilder
  {
    public abstract float getAccuracy();

    public abstract double getAltitude();

    public abstract float getBearing();

    public abstract double getLatitude();

    public abstract String getLevelId();

    public abstract ByteString getLevelIdBytes();

    public abstract int getLevelNumberE3();

    public abstract double getLongitude();

    public abstract int getSatellitesUsedInFix();

    public abstract float getSpeed();

    public abstract long getTime();

    public abstract int getVisibleSatellites();

    public abstract boolean hasAccuracy();

    public abstract boolean hasAltitude();

    public abstract boolean hasBearing();

    public abstract boolean hasLatitude();

    public abstract boolean hasLevelId();

    public abstract boolean hasLevelNumberE3();

    public abstract boolean hasLongitude();

    public abstract boolean hasSatellitesUsedInFix();

    public abstract boolean hasSpeed();

    public abstract boolean hasTime();

    public abstract boolean hasVisibleSatellites();
  }

  public static final class LocationRequest extends GeneratedMessageLite
    implements Proto.LocationRequestOrBuilder
  {
    public static final int MIN_DISTANCE_FIELD_NUMBER = 4;
    public static final int MIN_TIME_FIELD_NUMBER = 3;
    public static Parser<LocationRequest> PARSER = new AbstractParser()
    {
      public Proto.LocationRequest parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
        throws InvalidProtocolBufferException
      {
        return new Proto.LocationRequest(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
      }
    };
    public static final int PROVIDER_FIELD_NUMBER = 2;
    public static final int SEND_LAST_KNOWN_LOCATION_FIELD_NUMBER = 5;
    public static final int TYPE_FIELD_NUMBER = 1;
    private static final LocationRequest defaultInstance;
    private static volatile MutableMessageLite mutableDefault = null;
    private static final long serialVersionUID;
    private int bitField0_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private float minDistance_;
    private long minTime_;
    private Object provider_;
    private boolean sendLastKnownLocation_;
    private RequestType type_;

    static
    {
      defaultInstance = new LocationRequest(true);
      defaultInstance.initFields();
    }

    // ERROR //
    private LocationRequest(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 64	com/google/protobuf/GeneratedMessageLite:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 66	com/google/glass/companion/Proto$LocationRequest:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 68	com/google/glass/companion/Proto$LocationRequest:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 58	com/google/glass/companion/Proto$LocationRequest:initFields	()V
      //   18: iconst_0
      //   19: istore_3
      //   20: iload_3
      //   21: ifne +243 -> 264
      //   24: aload_1
      //   25: invokevirtual 74	com/google/protobuf/CodedInputStream:readTag	()I
      //   28: istore 7
      //   30: iload 7
      //   32: lookupswitch	default:+60->92, 0:+237->269, 8:+76->108, 18:+127->159, 24:+167->199, 37:+188->220, 40:+210->242
      //   93: aload_1
      //   94: aload_2
      //   95: iload 7
      //   97: invokevirtual 78	com/google/glass/companion/Proto$LocationRequest:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   100: ifne -80 -> 20
      //   103: iconst_1
      //   104: istore_3
      //   105: goto -85 -> 20
      //   108: aload_1
      //   109: invokevirtual 81	com/google/protobuf/CodedInputStream:readEnum	()I
      //   112: invokestatic 87	com/google/glass/companion/Proto$LocationRequest$RequestType:valueOf	(I)Lcom/google/glass/companion/Proto$LocationRequest$RequestType;
      //   115: astore 8
      //   117: aload 8
      //   119: ifnull -99 -> 20
      //   122: aload_0
      //   123: iconst_1
      //   124: aload_0
      //   125: getfield 89	com/google/glass/companion/Proto$LocationRequest:bitField0_	I
      //   128: ior
      //   129: putfield 89	com/google/glass/companion/Proto$LocationRequest:bitField0_	I
      //   132: aload_0
      //   133: aload 8
      //   135: putfield 91	com/google/glass/companion/Proto$LocationRequest:type_	Lcom/google/glass/companion/Proto$LocationRequest$RequestType;
      //   138: goto -118 -> 20
      //   141: astore 6
      //   143: aload 6
      //   145: aload_0
      //   146: invokevirtual 95	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   149: athrow
      //   150: astore 5
      //   152: aload_0
      //   153: invokevirtual 98	com/google/glass/companion/Proto$LocationRequest:makeExtensionsImmutable	()V
      //   156: aload 5
      //   158: athrow
      //   159: aload_0
      //   160: iconst_2
      //   161: aload_0
      //   162: getfield 89	com/google/glass/companion/Proto$LocationRequest:bitField0_	I
      //   165: ior
      //   166: putfield 89	com/google/glass/companion/Proto$LocationRequest:bitField0_	I
      //   169: aload_0
      //   170: aload_1
      //   171: invokevirtual 102	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   174: putfield 104	com/google/glass/companion/Proto$LocationRequest:provider_	Ljava/lang/Object;
      //   177: goto -157 -> 20
      //   180: astore 4
      //   182: new 61	com/google/protobuf/InvalidProtocolBufferException
      //   185: dup
      //   186: aload 4
      //   188: invokevirtual 108	java/io/IOException:getMessage	()Ljava/lang/String;
      //   191: invokespecial 111	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   194: aload_0
      //   195: invokevirtual 95	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   198: athrow
      //   199: aload_0
      //   200: iconst_4
      //   201: aload_0
      //   202: getfield 89	com/google/glass/companion/Proto$LocationRequest:bitField0_	I
      //   205: ior
      //   206: putfield 89	com/google/glass/companion/Proto$LocationRequest:bitField0_	I
      //   209: aload_0
      //   210: aload_1
      //   211: invokevirtual 115	com/google/protobuf/CodedInputStream:readInt64	()J
      //   214: putfield 117	com/google/glass/companion/Proto$LocationRequest:minTime_	J
      //   217: goto -197 -> 20
      //   220: aload_0
      //   221: bipush 8
      //   223: aload_0
      //   224: getfield 89	com/google/glass/companion/Proto$LocationRequest:bitField0_	I
      //   227: ior
      //   228: putfield 89	com/google/glass/companion/Proto$LocationRequest:bitField0_	I
      //   231: aload_0
      //   232: aload_1
      //   233: invokevirtual 121	com/google/protobuf/CodedInputStream:readFloat	()F
      //   236: putfield 123	com/google/glass/companion/Proto$LocationRequest:minDistance_	F
      //   239: goto -219 -> 20
      //   242: aload_0
      //   243: bipush 16
      //   245: aload_0
      //   246: getfield 89	com/google/glass/companion/Proto$LocationRequest:bitField0_	I
      //   249: ior
      //   250: putfield 89	com/google/glass/companion/Proto$LocationRequest:bitField0_	I
      //   253: aload_0
      //   254: aload_1
      //   255: invokevirtual 127	com/google/protobuf/CodedInputStream:readBool	()Z
      //   258: putfield 129	com/google/glass/companion/Proto$LocationRequest:sendLastKnownLocation_	Z
      //   261: goto -241 -> 20
      //   264: aload_0
      //   265: invokevirtual 98	com/google/glass/companion/Proto$LocationRequest:makeExtensionsImmutable	()V
      //   268: return
      //   269: iconst_1
      //   270: istore_3
      //   271: goto -251 -> 20
      //
      // Exception table:
      //   from	to	target	type
      //   24	30	141	com/google/protobuf/InvalidProtocolBufferException
      //   92	103	141	com/google/protobuf/InvalidProtocolBufferException
      //   108	117	141	com/google/protobuf/InvalidProtocolBufferException
      //   122	138	141	com/google/protobuf/InvalidProtocolBufferException
      //   159	177	141	com/google/protobuf/InvalidProtocolBufferException
      //   199	217	141	com/google/protobuf/InvalidProtocolBufferException
      //   220	239	141	com/google/protobuf/InvalidProtocolBufferException
      //   242	261	141	com/google/protobuf/InvalidProtocolBufferException
      //   24	30	150	finally
      //   92	103	150	finally
      //   108	117	150	finally
      //   122	138	150	finally
      //   143	150	150	finally
      //   159	177	150	finally
      //   182	199	150	finally
      //   199	217	150	finally
      //   220	239	150	finally
      //   242	261	150	finally
      //   24	30	180	java/io/IOException
      //   92	103	180	java/io/IOException
      //   108	117	180	java/io/IOException
      //   122	138	180	java/io/IOException
      //   159	177	180	java/io/IOException
      //   199	217	180	java/io/IOException
      //   220	239	180	java/io/IOException
      //   242	261	180	java/io/IOException
    }

    private LocationRequest(GeneratedMessageLite.Builder paramBuilder)
    {
      super();
    }

    private LocationRequest(boolean paramBoolean)
    {
    }

    public static LocationRequest getDefaultInstance()
    {
      return defaultInstance;
    }

    private void initFields()
    {
      this.type_ = RequestType.START_LISTENING;
      this.provider_ = "";
      this.minTime_ = 0L;
      this.minDistance_ = 0.0F;
      this.sendLastKnownLocation_ = false;
    }

    public static Builder newBuilder()
    {
      return Builder.access$2400();
    }

    public static Builder newBuilder(LocationRequest paramLocationRequest)
    {
      return newBuilder().mergeFrom(paramLocationRequest);
    }

    public static LocationRequest parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (LocationRequest)PARSER.parseDelimitedFrom(paramInputStream);
    }

    public static LocationRequest parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (LocationRequest)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }

    public static LocationRequest parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (LocationRequest)PARSER.parseFrom(paramByteString);
    }

    public static LocationRequest parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (LocationRequest)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }

    public static LocationRequest parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (LocationRequest)PARSER.parseFrom(paramCodedInputStream);
    }

    public static LocationRequest parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (LocationRequest)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }

    public static LocationRequest parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (LocationRequest)PARSER.parseFrom(paramInputStream);
    }

    public static LocationRequest parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (LocationRequest)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }

    public static LocationRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (LocationRequest)PARSER.parseFrom(paramArrayOfByte);
    }

    public static LocationRequest parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (LocationRequest)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }

    public LocationRequest getDefaultInstanceForType()
    {
      return defaultInstance;
    }

    public float getMinDistance()
    {
      return this.minDistance_;
    }

    public long getMinTime()
    {
      return this.minTime_;
    }

    public Parser<LocationRequest> getParserForType()
    {
      return PARSER;
    }

    public String getProvider()
    {
      Object localObject = this.provider_;
      if ((localObject instanceof String))
        return (String)localObject;
      ByteString localByteString = (ByteString)localObject;
      String str = localByteString.toStringUtf8();
      if (localByteString.isValidUtf8())
        this.provider_ = str;
      return str;
    }

    public ByteString getProviderBytes()
    {
      Object localObject = this.provider_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.provider_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public boolean getSendLastKnownLocation()
    {
      return this.sendLastKnownLocation_;
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
        k += CodedOutputStream.computeBytesSize(2, getProviderBytes());
      if ((0x4 & this.bitField0_) == 4)
        k += CodedOutputStream.computeInt64Size(3, this.minTime_);
      if ((0x8 & this.bitField0_) == 8)
        k += CodedOutputStream.computeFloatSize(4, this.minDistance_);
      if ((0x10 & this.bitField0_) == 16)
        k += CodedOutputStream.computeBoolSize(5, this.sendLastKnownLocation_);
      this.memoizedSerializedSize = k;
      return k;
    }

    public RequestType getType()
    {
      return this.type_;
    }

    public boolean hasMinDistance()
    {
      return (0x8 & this.bitField0_) == 8;
    }

    public boolean hasMinTime()
    {
      return (0x4 & this.bitField0_) == 4;
    }

    public boolean hasProvider()
    {
      return (0x2 & this.bitField0_) == 2;
    }

    public boolean hasSendLastKnownLocation()
    {
      return (0x10 & this.bitField0_) == 16;
    }

    public boolean hasType()
    {
      return (0x1 & this.bitField0_) == 1;
    }

    protected MutableMessageLite internalMutableDefault()
    {
      if (mutableDefault == null)
        mutableDefault = internalMutableDefault("com.google.glass.companion.MutableProto$LocationRequest");
      return mutableDefault;
    }

    public final boolean isInitialized()
    {
      int i = this.memoizedIsInitialized;
      if (i != -1)
        return i == 1;
      if (!hasType())
      {
        this.memoizedIsInitialized = 0;
        return false;
      }
      if (!hasProvider())
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
        paramCodedOutputStream.writeBytes(2, getProviderBytes());
      if ((0x4 & this.bitField0_) == 4)
        paramCodedOutputStream.writeInt64(3, this.minTime_);
      if ((0x8 & this.bitField0_) == 8)
        paramCodedOutputStream.writeFloat(4, this.minDistance_);
      if ((0x10 & this.bitField0_) == 16)
        paramCodedOutputStream.writeBool(5, this.sendLastKnownLocation_);
    }

    public static final class Builder extends GeneratedMessageLite.Builder<Proto.LocationRequest, Builder>
      implements Proto.LocationRequestOrBuilder
    {
      private int bitField0_;
      private float minDistance_;
      private long minTime_;
      private Object provider_ = "";
      private boolean sendLastKnownLocation_;
      private Proto.LocationRequest.RequestType type_ = Proto.LocationRequest.RequestType.START_LISTENING;

      private Builder()
      {
        maybeForceBuilderInitialization();
      }

      private static Builder create()
      {
        return new Builder();
      }

      private void maybeForceBuilderInitialization()
      {
      }

      public Proto.LocationRequest build()
      {
        Proto.LocationRequest localLocationRequest = buildPartial();
        if (!localLocationRequest.isInitialized())
          throw newUninitializedMessageException(localLocationRequest);
        return localLocationRequest;
      }

      public Proto.LocationRequest buildPartial()
      {
        Proto.LocationRequest localLocationRequest = new Proto.LocationRequest(this, null);
        int i = this.bitField0_;
        int j = i & 0x1;
        int k = 0;
        if (j == 1)
          k = 0x0 | 0x1;
        Proto.LocationRequest.access$2602(localLocationRequest, this.type_);
        if ((i & 0x2) == 2)
          k |= 2;
        Proto.LocationRequest.access$2702(localLocationRequest, this.provider_);
        if ((i & 0x4) == 4)
          k |= 4;
        Proto.LocationRequest.access$2802(localLocationRequest, this.minTime_);
        if ((i & 0x8) == 8)
          k |= 8;
        Proto.LocationRequest.access$2902(localLocationRequest, this.minDistance_);
        if ((i & 0x10) == 16)
          k |= 16;
        Proto.LocationRequest.access$3002(localLocationRequest, this.sendLastKnownLocation_);
        Proto.LocationRequest.access$3102(localLocationRequest, k);
        return localLocationRequest;
      }

      public Builder clear()
      {
        super.clear();
        this.type_ = Proto.LocationRequest.RequestType.START_LISTENING;
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        this.provider_ = "";
        this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        this.minTime_ = 0L;
        this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
        this.minDistance_ = 0.0F;
        this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
        this.sendLastKnownLocation_ = false;
        this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
        return this;
      }

      public Builder clearMinDistance()
      {
        this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
        this.minDistance_ = 0.0F;
        return this;
      }

      public Builder clearMinTime()
      {
        this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
        this.minTime_ = 0L;
        return this;
      }

      public Builder clearProvider()
      {
        this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        this.provider_ = Proto.LocationRequest.getDefaultInstance().getProvider();
        return this;
      }

      public Builder clearSendLastKnownLocation()
      {
        this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
        this.sendLastKnownLocation_ = false;
        return this;
      }

      public Builder clearType()
      {
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        this.type_ = Proto.LocationRequest.RequestType.START_LISTENING;
        return this;
      }

      public Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }

      public Proto.LocationRequest getDefaultInstanceForType()
      {
        return Proto.LocationRequest.getDefaultInstance();
      }

      public float getMinDistance()
      {
        return this.minDistance_;
      }

      public long getMinTime()
      {
        return this.minTime_;
      }

      public String getProvider()
      {
        Object localObject = this.provider_;
        if (!(localObject instanceof String))
        {
          String str = ((ByteString)localObject).toStringUtf8();
          this.provider_ = str;
          return str;
        }
        return (String)localObject;
      }

      public ByteString getProviderBytes()
      {
        Object localObject = this.provider_;
        if ((localObject instanceof String))
        {
          ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
          this.provider_ = localByteString;
          return localByteString;
        }
        return (ByteString)localObject;
      }

      public boolean getSendLastKnownLocation()
      {
        return this.sendLastKnownLocation_;
      }

      public Proto.LocationRequest.RequestType getType()
      {
        return this.type_;
      }

      public boolean hasMinDistance()
      {
        return (0x8 & this.bitField0_) == 8;
      }

      public boolean hasMinTime()
      {
        return (0x4 & this.bitField0_) == 4;
      }

      public boolean hasProvider()
      {
        return (0x2 & this.bitField0_) == 2;
      }

      public boolean hasSendLastKnownLocation()
      {
        return (0x10 & this.bitField0_) == 16;
      }

      public boolean hasType()
      {
        return (0x1 & this.bitField0_) == 1;
      }

      public final boolean isInitialized()
      {
        if (!hasType());
        while (!hasProvider())
          return false;
        return true;
      }

      public Builder mergeFrom(Proto.LocationRequest paramLocationRequest)
      {
        if (paramLocationRequest == Proto.LocationRequest.getDefaultInstance());
        do
        {
          return this;
          if (paramLocationRequest.hasType())
            setType(paramLocationRequest.getType());
          if (paramLocationRequest.hasProvider())
          {
            this.bitField0_ = (0x2 | this.bitField0_);
            this.provider_ = paramLocationRequest.provider_;
          }
          if (paramLocationRequest.hasMinTime())
            setMinTime(paramLocationRequest.getMinTime());
          if (paramLocationRequest.hasMinDistance())
            setMinDistance(paramLocationRequest.getMinDistance());
        }
        while (!paramLocationRequest.hasSendLastKnownLocation());
        setSendLastKnownLocation(paramLocationRequest.getSendLastKnownLocation());
        return this;
      }

      public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
        throws IOException
      {
        Proto.LocationRequest localLocationRequest1 = null;
        try
        {
          Proto.LocationRequest localLocationRequest2 = (Proto.LocationRequest)Proto.LocationRequest.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
          return this;
        }
        catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
        {
          localLocationRequest1 = (Proto.LocationRequest)localInvalidProtocolBufferException.getUnfinishedMessage();
          throw localInvalidProtocolBufferException;
        }
        finally
        {
          if (localLocationRequest1 != null)
            mergeFrom(localLocationRequest1);
        }
      }

      public Builder setMinDistance(float paramFloat)
      {
        this.bitField0_ = (0x8 | this.bitField0_);
        this.minDistance_ = paramFloat;
        return this;
      }

      public Builder setMinTime(long paramLong)
      {
        this.bitField0_ = (0x4 | this.bitField0_);
        this.minTime_ = paramLong;
        return this;
      }

      public Builder setProvider(String paramString)
      {
        if (paramString == null)
          throw new NullPointerException();
        this.bitField0_ = (0x2 | this.bitField0_);
        this.provider_ = paramString;
        return this;
      }

      public Builder setProviderBytes(ByteString paramByteString)
      {
        if (paramByteString == null)
          throw new NullPointerException();
        this.bitField0_ = (0x2 | this.bitField0_);
        this.provider_ = paramByteString;
        return this;
      }

      public Builder setSendLastKnownLocation(boolean paramBoolean)
      {
        this.bitField0_ = (0x10 | this.bitField0_);
        this.sendLastKnownLocation_ = paramBoolean;
        return this;
      }

      public Builder setType(Proto.LocationRequest.RequestType paramRequestType)
      {
        if (paramRequestType == null)
          throw new NullPointerException();
        this.bitField0_ = (0x1 | this.bitField0_);
        this.type_ = paramRequestType;
        return this;
      }
    }

    public static enum RequestType
      implements Internal.EnumLite
    {
      public static final int START_LISTENING_VALUE = 0;
      public static final int STOP_LISTENING_VALUE = 1;
      private static Internal.EnumLiteMap<RequestType> internalValueMap = new Internal.EnumLiteMap()
      {
        public Proto.LocationRequest.RequestType findValueByNumber(int paramAnonymousInt)
        {
          return Proto.LocationRequest.RequestType.valueOf(paramAnonymousInt);
        }
      };
      private final int value;

      static
      {
        RequestType[] arrayOfRequestType = new RequestType[2];
        arrayOfRequestType[0] = START_LISTENING;
        arrayOfRequestType[1] = STOP_LISTENING;
      }

      private RequestType(int paramInt1, int paramInt2)
      {
        this.value = paramInt2;
      }

      public static Internal.EnumLiteMap<RequestType> internalGetValueMap()
      {
        return internalValueMap;
      }

      public static RequestType valueOf(int paramInt)
      {
        switch (paramInt)
        {
        default:
          return null;
        case 0:
          return START_LISTENING;
        case 1:
        }
        return STOP_LISTENING;
      }

      public final int getNumber()
      {
        return this.value;
      }
    }
  }

  public static abstract interface LocationRequestOrBuilder extends MessageLiteOrBuilder
  {
    public abstract float getMinDistance();

    public abstract long getMinTime();

    public abstract String getProvider();

    public abstract ByteString getProviderBytes();

    public abstract boolean getSendLastKnownLocation();

    public abstract Proto.LocationRequest.RequestType getType();

    public abstract boolean hasMinDistance();

    public abstract boolean hasMinTime();

    public abstract boolean hasProvider();

    public abstract boolean hasSendLastKnownLocation();

    public abstract boolean hasType();
  }

  public static final class NavigationRequest extends GeneratedMessageLite
    implements Proto.NavigationRequestOrBuilder
  {
    public static Parser<NavigationRequest> PARSER = new AbstractParser()
    {
      public Proto.NavigationRequest parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
        throws InvalidProtocolBufferException
      {
        return new Proto.NavigationRequest(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
      }
    };
    public static final int URI_FIELD_NUMBER = 1;
    private static final NavigationRequest defaultInstance;
    private static volatile MutableMessageLite mutableDefault = null;
    private static final long serialVersionUID;
    private int bitField0_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private Object uri_;

    static
    {
      defaultInstance = new NavigationRequest(true);
      defaultInstance.initFields();
    }

    // ERROR //
    private NavigationRequest(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 49	com/google/protobuf/GeneratedMessageLite:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 51	com/google/glass/companion/Proto$NavigationRequest:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 53	com/google/glass/companion/Proto$NavigationRequest:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 43	com/google/glass/companion/Proto$NavigationRequest:initFields	()V
      //   18: iconst_0
      //   19: istore_3
      //   20: iload_3
      //   21: ifne +94 -> 115
      //   24: aload_1
      //   25: invokevirtual 59	com/google/protobuf/CodedInputStream:readTag	()I
      //   28: istore 7
      //   30: iload 7
      //   32: lookupswitch	default:+28->60, 0:+107->139, 10:+44->76
      //   61: aload_1
      //   62: aload_2
      //   63: iload 7
      //   65: invokevirtual 63	com/google/glass/companion/Proto$NavigationRequest:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   68: ifne -48 -> 20
      //   71: iconst_1
      //   72: istore_3
      //   73: goto -53 -> 20
      //   76: aload_0
      //   77: iconst_1
      //   78: aload_0
      //   79: getfield 65	com/google/glass/companion/Proto$NavigationRequest:bitField0_	I
      //   82: ior
      //   83: putfield 65	com/google/glass/companion/Proto$NavigationRequest:bitField0_	I
      //   86: aload_0
      //   87: aload_1
      //   88: invokevirtual 69	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   91: putfield 71	com/google/glass/companion/Proto$NavigationRequest:uri_	Ljava/lang/Object;
      //   94: goto -74 -> 20
      //   97: astore 6
      //   99: aload 6
      //   101: aload_0
      //   102: invokevirtual 75	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   105: athrow
      //   106: astore 5
      //   108: aload_0
      //   109: invokevirtual 78	com/google/glass/companion/Proto$NavigationRequest:makeExtensionsImmutable	()V
      //   112: aload 5
      //   114: athrow
      //   115: aload_0
      //   116: invokevirtual 78	com/google/glass/companion/Proto$NavigationRequest:makeExtensionsImmutable	()V
      //   119: return
      //   120: astore 4
      //   122: new 46	com/google/protobuf/InvalidProtocolBufferException
      //   125: dup
      //   126: aload 4
      //   128: invokevirtual 82	java/io/IOException:getMessage	()Ljava/lang/String;
      //   131: invokespecial 85	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   134: aload_0
      //   135: invokevirtual 75	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   138: athrow
      //   139: iconst_1
      //   140: istore_3
      //   141: goto -121 -> 20
      //
      // Exception table:
      //   from	to	target	type
      //   24	30	97	com/google/protobuf/InvalidProtocolBufferException
      //   60	71	97	com/google/protobuf/InvalidProtocolBufferException
      //   76	94	97	com/google/protobuf/InvalidProtocolBufferException
      //   24	30	106	finally
      //   60	71	106	finally
      //   76	94	106	finally
      //   99	106	106	finally
      //   122	139	106	finally
      //   24	30	120	java/io/IOException
      //   60	71	120	java/io/IOException
      //   76	94	120	java/io/IOException
    }

    private NavigationRequest(GeneratedMessageLite.Builder paramBuilder)
    {
      super();
    }

    private NavigationRequest(boolean paramBoolean)
    {
    }

    public static NavigationRequest getDefaultInstance()
    {
      return defaultInstance;
    }

    private void initFields()
    {
      this.uri_ = "";
    }

    public static Builder newBuilder()
    {
      return Builder.access$5700();
    }

    public static Builder newBuilder(NavigationRequest paramNavigationRequest)
    {
      return newBuilder().mergeFrom(paramNavigationRequest);
    }

    public static NavigationRequest parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (NavigationRequest)PARSER.parseDelimitedFrom(paramInputStream);
    }

    public static NavigationRequest parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (NavigationRequest)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }

    public static NavigationRequest parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (NavigationRequest)PARSER.parseFrom(paramByteString);
    }

    public static NavigationRequest parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (NavigationRequest)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }

    public static NavigationRequest parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (NavigationRequest)PARSER.parseFrom(paramCodedInputStream);
    }

    public static NavigationRequest parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (NavigationRequest)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }

    public static NavigationRequest parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (NavigationRequest)PARSER.parseFrom(paramInputStream);
    }

    public static NavigationRequest parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (NavigationRequest)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }

    public static NavigationRequest parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (NavigationRequest)PARSER.parseFrom(paramArrayOfByte);
    }

    public static NavigationRequest parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (NavigationRequest)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }

    public NavigationRequest getDefaultInstanceForType()
    {
      return defaultInstance;
    }

    public Parser<NavigationRequest> getParserForType()
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
        k = 0 + CodedOutputStream.computeBytesSize(1, getUriBytes());
      this.memoizedSerializedSize = k;
      return k;
    }

    public String getUri()
    {
      Object localObject = this.uri_;
      if ((localObject instanceof String))
        return (String)localObject;
      ByteString localByteString = (ByteString)localObject;
      String str = localByteString.toStringUtf8();
      if (localByteString.isValidUtf8())
        this.uri_ = str;
      return str;
    }

    public ByteString getUriBytes()
    {
      Object localObject = this.uri_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.uri_ = localByteString;
        return localByteString;
      }
      return (ByteString)localObject;
    }

    public boolean hasUri()
    {
      return (0x1 & this.bitField0_) == 1;
    }

    protected MutableMessageLite internalMutableDefault()
    {
      if (mutableDefault == null)
        mutableDefault = internalMutableDefault("com.google.glass.companion.MutableProto$NavigationRequest");
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
        paramCodedOutputStream.writeBytes(1, getUriBytes());
    }

    public static final class Builder extends GeneratedMessageLite.Builder<Proto.NavigationRequest, Builder>
      implements Proto.NavigationRequestOrBuilder
    {
      private int bitField0_;
      private Object uri_ = "";

      private Builder()
      {
        maybeForceBuilderInitialization();
      }

      private static Builder create()
      {
        return new Builder();
      }

      private void maybeForceBuilderInitialization()
      {
      }

      public Proto.NavigationRequest build()
      {
        Proto.NavigationRequest localNavigationRequest = buildPartial();
        if (!localNavigationRequest.isInitialized())
          throw newUninitializedMessageException(localNavigationRequest);
        return localNavigationRequest;
      }

      public Proto.NavigationRequest buildPartial()
      {
        Proto.NavigationRequest localNavigationRequest = new Proto.NavigationRequest(this, null);
        int i = 0x1 & this.bitField0_;
        int j = 0;
        if (i == 1)
          j = 0x0 | 0x1;
        Proto.NavigationRequest.access$5902(localNavigationRequest, this.uri_);
        Proto.NavigationRequest.access$6002(localNavigationRequest, j);
        return localNavigationRequest;
      }

      public Builder clear()
      {
        super.clear();
        this.uri_ = "";
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        return this;
      }

      public Builder clearUri()
      {
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        this.uri_ = Proto.NavigationRequest.getDefaultInstance().getUri();
        return this;
      }

      public Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }

      public Proto.NavigationRequest getDefaultInstanceForType()
      {
        return Proto.NavigationRequest.getDefaultInstance();
      }

      public String getUri()
      {
        Object localObject = this.uri_;
        if (!(localObject instanceof String))
        {
          String str = ((ByteString)localObject).toStringUtf8();
          this.uri_ = str;
          return str;
        }
        return (String)localObject;
      }

      public ByteString getUriBytes()
      {
        Object localObject = this.uri_;
        if ((localObject instanceof String))
        {
          ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
          this.uri_ = localByteString;
          return localByteString;
        }
        return (ByteString)localObject;
      }

      public boolean hasUri()
      {
        return (0x1 & this.bitField0_) == 1;
      }

      public final boolean isInitialized()
      {
        return true;
      }

      public Builder mergeFrom(Proto.NavigationRequest paramNavigationRequest)
      {
        if (paramNavigationRequest == Proto.NavigationRequest.getDefaultInstance());
        while (!paramNavigationRequest.hasUri())
          return this;
        this.bitField0_ = (0x1 | this.bitField0_);
        this.uri_ = paramNavigationRequest.uri_;
        return this;
      }

      public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
        throws IOException
      {
        Proto.NavigationRequest localNavigationRequest1 = null;
        try
        {
          Proto.NavigationRequest localNavigationRequest2 = (Proto.NavigationRequest)Proto.NavigationRequest.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
          return this;
        }
        catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
        {
          localNavigationRequest1 = (Proto.NavigationRequest)localInvalidProtocolBufferException.getUnfinishedMessage();
          throw localInvalidProtocolBufferException;
        }
        finally
        {
          if (localNavigationRequest1 != null)
            mergeFrom(localNavigationRequest1);
        }
      }

      public Builder setUri(String paramString)
      {
        if (paramString == null)
          throw new NullPointerException();
        this.bitField0_ = (0x1 | this.bitField0_);
        this.uri_ = paramString;
        return this;
      }

      public Builder setUriBytes(ByteString paramByteString)
      {
        if (paramByteString == null)
          throw new NullPointerException();
        this.bitField0_ = (0x1 | this.bitField0_);
        this.uri_ = paramByteString;
        return this;
      }
    }
  }

  public static abstract interface NavigationRequestOrBuilder extends MessageLiteOrBuilder
  {
    public abstract String getUri();

    public abstract ByteString getUriBytes();

    public abstract boolean hasUri();
  }

  public static final class ScreenShot extends GeneratedMessageLite
    implements Proto.ScreenShotOrBuilder
  {
    public static Parser<ScreenShot> PARSER = new AbstractParser()
    {
      public Proto.ScreenShot parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
        throws InvalidProtocolBufferException
      {
        return new Proto.ScreenShot(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
      }
    };
    public static final int SCREENSHOT_BYTES_G2C_FIELD_NUMBER = 3;
    public static final int START_SCREENSHOT_REQUEST_C2G_FIELD_NUMBER = 1;
    public static final int STOP_SCREENSHOT_REQUEST_C2G_FIELD_NUMBER = 2;
    private static final ScreenShot defaultInstance;
    private static volatile MutableMessageLite mutableDefault = null;
    private static final long serialVersionUID;
    private int bitField0_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private Object screenshotBytesG2C_;
    private boolean startScreenshotRequestC2G_;
    private boolean stopScreenshotRequestC2G_;

    static
    {
      defaultInstance = new ScreenShot(true);
      defaultInstance.initFields();
    }

    // ERROR //
    private ScreenShot(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 56	com/google/protobuf/GeneratedMessageLite:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 58	com/google/glass/companion/Proto$ScreenShot:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 60	com/google/glass/companion/Proto$ScreenShot:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 50	com/google/glass/companion/Proto$ScreenShot:initFields	()V
      //   18: iconst_0
      //   19: istore_3
      //   20: iload_3
      //   21: ifne +171 -> 192
      //   24: aload_1
      //   25: invokevirtual 66	com/google/protobuf/CodedInputStream:readTag	()I
      //   28: istore 7
      //   30: iload 7
      //   32: lookupswitch	default:+44->76, 0:+165->197, 8:+60->92, 16:+99->131, 26:+139->171
      //   77: aload_1
      //   78: aload_2
      //   79: iload 7
      //   81: invokevirtual 70	com/google/glass/companion/Proto$ScreenShot:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   84: ifne -64 -> 20
      //   87: iconst_1
      //   88: istore_3
      //   89: goto -69 -> 20
      //   92: aload_0
      //   93: iconst_1
      //   94: aload_0
      //   95: getfield 72	com/google/glass/companion/Proto$ScreenShot:bitField0_	I
      //   98: ior
      //   99: putfield 72	com/google/glass/companion/Proto$ScreenShot:bitField0_	I
      //   102: aload_0
      //   103: aload_1
      //   104: invokevirtual 76	com/google/protobuf/CodedInputStream:readBool	()Z
      //   107: putfield 78	com/google/glass/companion/Proto$ScreenShot:startScreenshotRequestC2G_	Z
      //   110: goto -90 -> 20
      //   113: astore 6
      //   115: aload 6
      //   117: aload_0
      //   118: invokevirtual 82	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   121: athrow
      //   122: astore 5
      //   124: aload_0
      //   125: invokevirtual 85	com/google/glass/companion/Proto$ScreenShot:makeExtensionsImmutable	()V
      //   128: aload 5
      //   130: athrow
      //   131: aload_0
      //   132: iconst_2
      //   133: aload_0
      //   134: getfield 72	com/google/glass/companion/Proto$ScreenShot:bitField0_	I
      //   137: ior
      //   138: putfield 72	com/google/glass/companion/Proto$ScreenShot:bitField0_	I
      //   141: aload_0
      //   142: aload_1
      //   143: invokevirtual 76	com/google/protobuf/CodedInputStream:readBool	()Z
      //   146: putfield 87	com/google/glass/companion/Proto$ScreenShot:stopScreenshotRequestC2G_	Z
      //   149: goto -129 -> 20
      //   152: astore 4
      //   154: new 53	com/google/protobuf/InvalidProtocolBufferException
      //   157: dup
      //   158: aload 4
      //   160: invokevirtual 91	java/io/IOException:getMessage	()Ljava/lang/String;
      //   163: invokespecial 94	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   166: aload_0
      //   167: invokevirtual 82	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   170: athrow
      //   171: aload_0
      //   172: iconst_4
      //   173: aload_0
      //   174: getfield 72	com/google/glass/companion/Proto$ScreenShot:bitField0_	I
      //   177: ior
      //   178: putfield 72	com/google/glass/companion/Proto$ScreenShot:bitField0_	I
      //   181: aload_0
      //   182: aload_1
      //   183: invokevirtual 98	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   186: putfield 100	com/google/glass/companion/Proto$ScreenShot:screenshotBytesG2C_	Ljava/lang/Object;
      //   189: goto -169 -> 20
      //   192: aload_0
      //   193: invokevirtual 85	com/google/glass/companion/Proto$ScreenShot:makeExtensionsImmutable	()V
      //   196: return
      //   197: iconst_1
      //   198: istore_3
      //   199: goto -179 -> 20
      //
      // Exception table:
      //   from	to	target	type
      //   24	30	113	com/google/protobuf/InvalidProtocolBufferException
      //   76	87	113	com/google/protobuf/InvalidProtocolBufferException
      //   92	110	113	com/google/protobuf/InvalidProtocolBufferException
      //   131	149	113	com/google/protobuf/InvalidProtocolBufferException
      //   171	189	113	com/google/protobuf/InvalidProtocolBufferException
      //   24	30	122	finally
      //   76	87	122	finally
      //   92	110	122	finally
      //   115	122	122	finally
      //   131	149	122	finally
      //   154	171	122	finally
      //   171	189	122	finally
      //   24	30	152	java/io/IOException
      //   76	87	152	java/io/IOException
      //   92	110	152	java/io/IOException
      //   131	149	152	java/io/IOException
      //   171	189	152	java/io/IOException
    }

    private ScreenShot(GeneratedMessageLite.Builder paramBuilder)
    {
      super();
    }

    private ScreenShot(boolean paramBoolean)
    {
    }

    public static ScreenShot getDefaultInstance()
    {
      return defaultInstance;
    }

    private void initFields()
    {
      this.startScreenshotRequestC2G_ = false;
      this.stopScreenshotRequestC2G_ = false;
      this.screenshotBytesG2C_ = "";
    }

    public static Builder newBuilder()
    {
      return Builder.access$7700();
    }

    public static Builder newBuilder(ScreenShot paramScreenShot)
    {
      return newBuilder().mergeFrom(paramScreenShot);
    }

    public static ScreenShot parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (ScreenShot)PARSER.parseDelimitedFrom(paramInputStream);
    }

    public static ScreenShot parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (ScreenShot)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }

    public static ScreenShot parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (ScreenShot)PARSER.parseFrom(paramByteString);
    }

    public static ScreenShot parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (ScreenShot)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }

    public static ScreenShot parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (ScreenShot)PARSER.parseFrom(paramCodedInputStream);
    }

    public static ScreenShot parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (ScreenShot)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }

    public static ScreenShot parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (ScreenShot)PARSER.parseFrom(paramInputStream);
    }

    public static ScreenShot parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (ScreenShot)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }

    public static ScreenShot parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (ScreenShot)PARSER.parseFrom(paramArrayOfByte);
    }

    public static ScreenShot parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (ScreenShot)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }

    public ScreenShot getDefaultInstanceForType()
    {
      return defaultInstance;
    }

    public Parser<ScreenShot> getParserForType()
    {
      return PARSER;
    }

    public String getScreenshotBytesG2C()
    {
      Object localObject = this.screenshotBytesG2C_;
      if ((localObject instanceof String))
        return (String)localObject;
      ByteString localByteString = (ByteString)localObject;
      String str = localByteString.toStringUtf8();
      if (localByteString.isValidUtf8())
        this.screenshotBytesG2C_ = str;
      return str;
    }

    public ByteString getScreenshotBytesG2CBytes()
    {
      Object localObject = this.screenshotBytesG2C_;
      if ((localObject instanceof String))
      {
        ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
        this.screenshotBytesG2C_ = localByteString;
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
        k = 0 + CodedOutputStream.computeBoolSize(1, this.startScreenshotRequestC2G_);
      if ((0x2 & this.bitField0_) == 2)
        k += CodedOutputStream.computeBoolSize(2, this.stopScreenshotRequestC2G_);
      if ((0x4 & this.bitField0_) == 4)
        k += CodedOutputStream.computeBytesSize(3, getScreenshotBytesG2CBytes());
      this.memoizedSerializedSize = k;
      return k;
    }

    public boolean getStartScreenshotRequestC2G()
    {
      return this.startScreenshotRequestC2G_;
    }

    public boolean getStopScreenshotRequestC2G()
    {
      return this.stopScreenshotRequestC2G_;
    }

    public boolean hasScreenshotBytesG2C()
    {
      return (0x4 & this.bitField0_) == 4;
    }

    public boolean hasStartScreenshotRequestC2G()
    {
      return (0x1 & this.bitField0_) == 1;
    }

    public boolean hasStopScreenshotRequestC2G()
    {
      return (0x2 & this.bitField0_) == 2;
    }

    protected MutableMessageLite internalMutableDefault()
    {
      if (mutableDefault == null)
        mutableDefault = internalMutableDefault("com.google.glass.companion.MutableProto$ScreenShot");
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
        paramCodedOutputStream.writeBool(1, this.startScreenshotRequestC2G_);
      if ((0x2 & this.bitField0_) == 2)
        paramCodedOutputStream.writeBool(2, this.stopScreenshotRequestC2G_);
      if ((0x4 & this.bitField0_) == 4)
        paramCodedOutputStream.writeBytes(3, getScreenshotBytesG2CBytes());
    }

    public static final class Builder extends GeneratedMessageLite.Builder<Proto.ScreenShot, Builder>
      implements Proto.ScreenShotOrBuilder
    {
      private int bitField0_;
      private Object screenshotBytesG2C_ = "";
      private boolean startScreenshotRequestC2G_;
      private boolean stopScreenshotRequestC2G_;

      private Builder()
      {
        maybeForceBuilderInitialization();
      }

      private static Builder create()
      {
        return new Builder();
      }

      private void maybeForceBuilderInitialization()
      {
      }

      public Proto.ScreenShot build()
      {
        Proto.ScreenShot localScreenShot = buildPartial();
        if (!localScreenShot.isInitialized())
          throw newUninitializedMessageException(localScreenShot);
        return localScreenShot;
      }

      public Proto.ScreenShot buildPartial()
      {
        Proto.ScreenShot localScreenShot = new Proto.ScreenShot(this, null);
        int i = this.bitField0_;
        int j = i & 0x1;
        int k = 0;
        if (j == 1)
          k = 0x0 | 0x1;
        Proto.ScreenShot.access$7902(localScreenShot, this.startScreenshotRequestC2G_);
        if ((i & 0x2) == 2)
          k |= 2;
        Proto.ScreenShot.access$8002(localScreenShot, this.stopScreenshotRequestC2G_);
        if ((i & 0x4) == 4)
          k |= 4;
        Proto.ScreenShot.access$8102(localScreenShot, this.screenshotBytesG2C_);
        Proto.ScreenShot.access$8202(localScreenShot, k);
        return localScreenShot;
      }

      public Builder clear()
      {
        super.clear();
        this.startScreenshotRequestC2G_ = false;
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        this.stopScreenshotRequestC2G_ = false;
        this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        this.screenshotBytesG2C_ = "";
        this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
        return this;
      }

      public Builder clearScreenshotBytesG2C()
      {
        this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
        this.screenshotBytesG2C_ = Proto.ScreenShot.getDefaultInstance().getScreenshotBytesG2C();
        return this;
      }

      public Builder clearStartScreenshotRequestC2G()
      {
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        this.startScreenshotRequestC2G_ = false;
        return this;
      }

      public Builder clearStopScreenshotRequestC2G()
      {
        this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        this.stopScreenshotRequestC2G_ = false;
        return this;
      }

      public Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }

      public Proto.ScreenShot getDefaultInstanceForType()
      {
        return Proto.ScreenShot.getDefaultInstance();
      }

      public String getScreenshotBytesG2C()
      {
        Object localObject = this.screenshotBytesG2C_;
        if (!(localObject instanceof String))
        {
          String str = ((ByteString)localObject).toStringUtf8();
          this.screenshotBytesG2C_ = str;
          return str;
        }
        return (String)localObject;
      }

      public ByteString getScreenshotBytesG2CBytes()
      {
        Object localObject = this.screenshotBytesG2C_;
        if ((localObject instanceof String))
        {
          ByteString localByteString = ByteString.copyFromUtf8((String)localObject);
          this.screenshotBytesG2C_ = localByteString;
          return localByteString;
        }
        return (ByteString)localObject;
      }

      public boolean getStartScreenshotRequestC2G()
      {
        return this.startScreenshotRequestC2G_;
      }

      public boolean getStopScreenshotRequestC2G()
      {
        return this.stopScreenshotRequestC2G_;
      }

      public boolean hasScreenshotBytesG2C()
      {
        return (0x4 & this.bitField0_) == 4;
      }

      public boolean hasStartScreenshotRequestC2G()
      {
        return (0x1 & this.bitField0_) == 1;
      }

      public boolean hasStopScreenshotRequestC2G()
      {
        return (0x2 & this.bitField0_) == 2;
      }

      public final boolean isInitialized()
      {
        return true;
      }

      public Builder mergeFrom(Proto.ScreenShot paramScreenShot)
      {
        if (paramScreenShot == Proto.ScreenShot.getDefaultInstance());
        do
        {
          return this;
          if (paramScreenShot.hasStartScreenshotRequestC2G())
            setStartScreenshotRequestC2G(paramScreenShot.getStartScreenshotRequestC2G());
          if (paramScreenShot.hasStopScreenshotRequestC2G())
            setStopScreenshotRequestC2G(paramScreenShot.getStopScreenshotRequestC2G());
        }
        while (!paramScreenShot.hasScreenshotBytesG2C());
        this.bitField0_ = (0x4 | this.bitField0_);
        this.screenshotBytesG2C_ = paramScreenShot.screenshotBytesG2C_;
        return this;
      }

      public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
        throws IOException
      {
        Proto.ScreenShot localScreenShot1 = null;
        try
        {
          Proto.ScreenShot localScreenShot2 = (Proto.ScreenShot)Proto.ScreenShot.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
          return this;
        }
        catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
        {
          localScreenShot1 = (Proto.ScreenShot)localInvalidProtocolBufferException.getUnfinishedMessage();
          throw localInvalidProtocolBufferException;
        }
        finally
        {
          if (localScreenShot1 != null)
            mergeFrom(localScreenShot1);
        }
      }

      public Builder setScreenshotBytesG2C(String paramString)
      {
        if (paramString == null)
          throw new NullPointerException();
        this.bitField0_ = (0x4 | this.bitField0_);
        this.screenshotBytesG2C_ = paramString;
        return this;
      }

      public Builder setScreenshotBytesG2CBytes(ByteString paramByteString)
      {
        if (paramByteString == null)
          throw new NullPointerException();
        this.bitField0_ = (0x4 | this.bitField0_);
        this.screenshotBytesG2C_ = paramByteString;
        return this;
      }

      public Builder setStartScreenshotRequestC2G(boolean paramBoolean)
      {
        this.bitField0_ = (0x1 | this.bitField0_);
        this.startScreenshotRequestC2G_ = paramBoolean;
        return this;
      }

      public Builder setStopScreenshotRequestC2G(boolean paramBoolean)
      {
        this.bitField0_ = (0x2 | this.bitField0_);
        this.stopScreenshotRequestC2G_ = paramBoolean;
        return this;
      }
    }
  }

  public static abstract interface ScreenShotOrBuilder extends MessageLiteOrBuilder
  {
    public abstract String getScreenshotBytesG2C();

    public abstract ByteString getScreenshotBytesG2CBytes();

    public abstract boolean getStartScreenshotRequestC2G();

    public abstract boolean getStopScreenshotRequestC2G();

    public abstract boolean hasScreenshotBytesG2C();

    public abstract boolean hasStartScreenshotRequestC2G();

    public abstract boolean hasStopScreenshotRequestC2G();
  }

  public static final class TimelineItemResponse extends GeneratedMessageLite
    implements Proto.TimelineItemResponseOrBuilder
  {
    public static final int ID_FIELD_NUMBER = 1;
    public static Parser<TimelineItemResponse> PARSER = new AbstractParser()
    {
      public Proto.TimelineItemResponse parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
        throws InvalidProtocolBufferException
      {
        return new Proto.TimelineItemResponse(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
      }
    };
    public static final int SYNC_STATUS_FIELD_NUMBER = 2;
    private static final TimelineItemResponse defaultInstance;
    private static volatile MutableMessageLite mutableDefault = null;
    private static final long serialVersionUID;
    private int bitField0_;
    private Object id_;
    private byte memoizedIsInitialized = -1;
    private int memoizedSerializedSize = -1;
    private TimelineItem.SyncStatus syncStatus_;

    static
    {
      defaultInstance = new TimelineItemResponse(true);
      defaultInstance.initFields();
    }

    // ERROR //
    private TimelineItemResponse(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokespecial 53	com/google/protobuf/GeneratedMessageLite:<init>	()V
      //   4: aload_0
      //   5: iconst_m1
      //   6: putfield 55	com/google/glass/companion/Proto$TimelineItemResponse:memoizedIsInitialized	B
      //   9: aload_0
      //   10: iconst_m1
      //   11: putfield 57	com/google/glass/companion/Proto$TimelineItemResponse:memoizedSerializedSize	I
      //   14: aload_0
      //   15: invokespecial 47	com/google/glass/companion/Proto$TimelineItemResponse:initFields	()V
      //   18: iconst_0
      //   19: istore_3
      //   20: iload_3
      //   21: ifne +154 -> 175
      //   24: aload_1
      //   25: invokevirtual 63	com/google/protobuf/CodedInputStream:readTag	()I
      //   28: istore 7
      //   30: iload 7
      //   32: lookupswitch	default:+36->68, 0:+148->180, 10:+52->84, 16:+91->123
      //   69: aload_1
      //   70: aload_2
      //   71: iload 7
      //   73: invokevirtual 67	com/google/glass/companion/Proto$TimelineItemResponse:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
      //   76: ifne -56 -> 20
      //   79: iconst_1
      //   80: istore_3
      //   81: goto -61 -> 20
      //   84: aload_0
      //   85: iconst_1
      //   86: aload_0
      //   87: getfield 69	com/google/glass/companion/Proto$TimelineItemResponse:bitField0_	I
      //   90: ior
      //   91: putfield 69	com/google/glass/companion/Proto$TimelineItemResponse:bitField0_	I
      //   94: aload_0
      //   95: aload_1
      //   96: invokevirtual 73	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
      //   99: putfield 75	com/google/glass/companion/Proto$TimelineItemResponse:id_	Ljava/lang/Object;
      //   102: goto -82 -> 20
      //   105: astore 6
      //   107: aload 6
      //   109: aload_0
      //   110: invokevirtual 79	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   113: athrow
      //   114: astore 5
      //   116: aload_0
      //   117: invokevirtual 82	com/google/glass/companion/Proto$TimelineItemResponse:makeExtensionsImmutable	()V
      //   120: aload 5
      //   122: athrow
      //   123: aload_1
      //   124: invokevirtual 85	com/google/protobuf/CodedInputStream:readEnum	()I
      //   127: invokestatic 91	com/google/googlex/glass/common/proto/TimelineItem$SyncStatus:valueOf	(I)Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
      //   130: astore 8
      //   132: aload 8
      //   134: ifnull -114 -> 20
      //   137: aload_0
      //   138: iconst_2
      //   139: aload_0
      //   140: getfield 69	com/google/glass/companion/Proto$TimelineItemResponse:bitField0_	I
      //   143: ior
      //   144: putfield 69	com/google/glass/companion/Proto$TimelineItemResponse:bitField0_	I
      //   147: aload_0
      //   148: aload 8
      //   150: putfield 93	com/google/glass/companion/Proto$TimelineItemResponse:syncStatus_	Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
      //   153: goto -133 -> 20
      //   156: astore 4
      //   158: new 50	com/google/protobuf/InvalidProtocolBufferException
      //   161: dup
      //   162: aload 4
      //   164: invokevirtual 97	java/io/IOException:getMessage	()Ljava/lang/String;
      //   167: invokespecial 100	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
      //   170: aload_0
      //   171: invokevirtual 79	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
      //   174: athrow
      //   175: aload_0
      //   176: invokevirtual 82	com/google/glass/companion/Proto$TimelineItemResponse:makeExtensionsImmutable	()V
      //   179: return
      //   180: iconst_1
      //   181: istore_3
      //   182: goto -162 -> 20
      //
      // Exception table:
      //   from	to	target	type
      //   24	30	105	com/google/protobuf/InvalidProtocolBufferException
      //   68	79	105	com/google/protobuf/InvalidProtocolBufferException
      //   84	102	105	com/google/protobuf/InvalidProtocolBufferException
      //   123	132	105	com/google/protobuf/InvalidProtocolBufferException
      //   137	153	105	com/google/protobuf/InvalidProtocolBufferException
      //   24	30	114	finally
      //   68	79	114	finally
      //   84	102	114	finally
      //   107	114	114	finally
      //   123	132	114	finally
      //   137	153	114	finally
      //   158	175	114	finally
      //   24	30	156	java/io/IOException
      //   68	79	156	java/io/IOException
      //   84	102	156	java/io/IOException
      //   123	132	156	java/io/IOException
      //   137	153	156	java/io/IOException
    }

    private TimelineItemResponse(GeneratedMessageLite.Builder paramBuilder)
    {
      super();
    }

    private TimelineItemResponse(boolean paramBoolean)
    {
    }

    public static TimelineItemResponse getDefaultInstance()
    {
      return defaultInstance;
    }

    private void initFields()
    {
      this.id_ = "";
      this.syncStatus_ = TimelineItem.SyncStatus.NOT_SYNCED;
    }

    public static Builder newBuilder()
    {
      return Builder.access$8900();
    }

    public static Builder newBuilder(TimelineItemResponse paramTimelineItemResponse)
    {
      return newBuilder().mergeFrom(paramTimelineItemResponse);
    }

    public static TimelineItemResponse parseDelimitedFrom(InputStream paramInputStream)
      throws IOException
    {
      return (TimelineItemResponse)PARSER.parseDelimitedFrom(paramInputStream);
    }

    public static TimelineItemResponse parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (TimelineItemResponse)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
    }

    public static TimelineItemResponse parseFrom(ByteString paramByteString)
      throws InvalidProtocolBufferException
    {
      return (TimelineItemResponse)PARSER.parseFrom(paramByteString);
    }

    public static TimelineItemResponse parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (TimelineItemResponse)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
    }

    public static TimelineItemResponse parseFrom(CodedInputStream paramCodedInputStream)
      throws IOException
    {
      return (TimelineItemResponse)PARSER.parseFrom(paramCodedInputStream);
    }

    public static TimelineItemResponse parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (TimelineItemResponse)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
    }

    public static TimelineItemResponse parseFrom(InputStream paramInputStream)
      throws IOException
    {
      return (TimelineItemResponse)PARSER.parseFrom(paramInputStream);
    }

    public static TimelineItemResponse parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      return (TimelineItemResponse)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
    }

    public static TimelineItemResponse parseFrom(byte[] paramArrayOfByte)
      throws InvalidProtocolBufferException
    {
      return (TimelineItemResponse)PARSER.parseFrom(paramArrayOfByte);
    }

    public static TimelineItemResponse parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return (TimelineItemResponse)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
    }

    public TimelineItemResponse getDefaultInstanceForType()
    {
      return defaultInstance;
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

    public Parser<TimelineItemResponse> getParserForType()
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
        k = 0 + CodedOutputStream.computeBytesSize(1, getIdBytes());
      if ((0x2 & this.bitField0_) == 2)
        k += CodedOutputStream.computeEnumSize(2, this.syncStatus_.getNumber());
      this.memoizedSerializedSize = k;
      return k;
    }

    public TimelineItem.SyncStatus getSyncStatus()
    {
      return this.syncStatus_;
    }

    public boolean hasId()
    {
      return (0x1 & this.bitField0_) == 1;
    }

    public boolean hasSyncStatus()
    {
      return (0x2 & this.bitField0_) == 2;
    }

    protected MutableMessageLite internalMutableDefault()
    {
      if (mutableDefault == null)
        mutableDefault = internalMutableDefault("com.google.glass.companion.MutableProto$TimelineItemResponse");
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
        paramCodedOutputStream.writeEnum(2, this.syncStatus_.getNumber());
    }

    public static final class Builder extends GeneratedMessageLite.Builder<Proto.TimelineItemResponse, Builder>
      implements Proto.TimelineItemResponseOrBuilder
    {
      private int bitField0_;
      private Object id_ = "";
      private TimelineItem.SyncStatus syncStatus_ = TimelineItem.SyncStatus.NOT_SYNCED;

      private Builder()
      {
        maybeForceBuilderInitialization();
      }

      private static Builder create()
      {
        return new Builder();
      }

      private void maybeForceBuilderInitialization()
      {
      }

      public Proto.TimelineItemResponse build()
      {
        Proto.TimelineItemResponse localTimelineItemResponse = buildPartial();
        if (!localTimelineItemResponse.isInitialized())
          throw newUninitializedMessageException(localTimelineItemResponse);
        return localTimelineItemResponse;
      }

      public Proto.TimelineItemResponse buildPartial()
      {
        Proto.TimelineItemResponse localTimelineItemResponse = new Proto.TimelineItemResponse(this, null);
        int i = this.bitField0_;
        int j = i & 0x1;
        int k = 0;
        if (j == 1)
          k = 0x0 | 0x1;
        Proto.TimelineItemResponse.access$9102(localTimelineItemResponse, this.id_);
        if ((i & 0x2) == 2)
          k |= 2;
        Proto.TimelineItemResponse.access$9202(localTimelineItemResponse, this.syncStatus_);
        Proto.TimelineItemResponse.access$9302(localTimelineItemResponse, k);
        return localTimelineItemResponse;
      }

      public Builder clear()
      {
        super.clear();
        this.id_ = "";
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        this.syncStatus_ = TimelineItem.SyncStatus.NOT_SYNCED;
        this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        return this;
      }

      public Builder clearId()
      {
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        this.id_ = Proto.TimelineItemResponse.getDefaultInstance().getId();
        return this;
      }

      public Builder clearSyncStatus()
      {
        this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        this.syncStatus_ = TimelineItem.SyncStatus.NOT_SYNCED;
        return this;
      }

      public Builder clone()
      {
        return create().mergeFrom(buildPartial());
      }

      public Proto.TimelineItemResponse getDefaultInstanceForType()
      {
        return Proto.TimelineItemResponse.getDefaultInstance();
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

      public TimelineItem.SyncStatus getSyncStatus()
      {
        return this.syncStatus_;
      }

      public boolean hasId()
      {
        return (0x1 & this.bitField0_) == 1;
      }

      public boolean hasSyncStatus()
      {
        return (0x2 & this.bitField0_) == 2;
      }

      public final boolean isInitialized()
      {
        return true;
      }

      public Builder mergeFrom(Proto.TimelineItemResponse paramTimelineItemResponse)
      {
        if (paramTimelineItemResponse == Proto.TimelineItemResponse.getDefaultInstance());
        do
        {
          return this;
          if (paramTimelineItemResponse.hasId())
          {
            this.bitField0_ = (0x1 | this.bitField0_);
            this.id_ = paramTimelineItemResponse.id_;
          }
        }
        while (!paramTimelineItemResponse.hasSyncStatus());
        setSyncStatus(paramTimelineItemResponse.getSyncStatus());
        return this;
      }

      public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
        throws IOException
      {
        Proto.TimelineItemResponse localTimelineItemResponse1 = null;
        try
        {
          Proto.TimelineItemResponse localTimelineItemResponse2 = (Proto.TimelineItemResponse)Proto.TimelineItemResponse.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
          return this;
        }
        catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
        {
          localTimelineItemResponse1 = (Proto.TimelineItemResponse)localInvalidProtocolBufferException.getUnfinishedMessage();
          throw localInvalidProtocolBufferException;
        }
        finally
        {
          if (localTimelineItemResponse1 != null)
            mergeFrom(localTimelineItemResponse1);
        }
      }

      public Builder setId(String paramString)
      {
        if (paramString == null)
          throw new NullPointerException();
        this.bitField0_ = (0x1 | this.bitField0_);
        this.id_ = paramString;
        return this;
      }

      public Builder setIdBytes(ByteString paramByteString)
      {
        if (paramByteString == null)
          throw new NullPointerException();
        this.bitField0_ = (0x1 | this.bitField0_);
        this.id_ = paramByteString;
        return this;
      }

      public Builder setSyncStatus(TimelineItem.SyncStatus paramSyncStatus)
      {
        if (paramSyncStatus == null)
          throw new NullPointerException();
        this.bitField0_ = (0x2 | this.bitField0_);
        this.syncStatus_ = paramSyncStatus;
        return this;
      }
    }
  }

  public static abstract interface TimelineItemResponseOrBuilder extends MessageLiteOrBuilder
  {
    public abstract String getId();

    public abstract ByteString getIdBytes();

    public abstract TimelineItem.SyncStatus getSyncStatus();

    public abstract boolean hasId();

    public abstract boolean hasSyncStatus();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.companion.Proto
 * JD-Core Version:    0.6.2
 */