package com.google.googlex.glass.common.proto;

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
import com.google.protobuf.SingleFieldBuilder;
import com.google.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class SyncRequest extends GeneratedMessage
  implements SyncRequestOrBuilder
{
  public static final int DELETE_FIELD_NUMBER = 4;
  public static final int DEVICE_ID_FIELD_NUMBER = 5;
  public static final int INSERT_REPLACE_ON_CONFLICT_FIELD_NUMBER = 2;
  public static Parser<SyncRequest> PARSER = new AbstractParser()
  {
    public SyncRequest parsePartialFrom(CodedInputStream paramAnonymousCodedInputStream, ExtensionRegistryLite paramAnonymousExtensionRegistryLite)
      throws InvalidProtocolBufferException
    {
      return new SyncRequest(paramAnonymousCodedInputStream, paramAnonymousExtensionRegistryLite, null);
    }
  };
  public static final int SELECT_FIELD_NUMBER = 1;
  public static final int SUPPORTS_USER_ACTIONS_FIELD_NUMBER = 9;
  public static final int UPDATE_FIELD_NUMBER = 3;
  private static final SyncRequest defaultInstance;
  private static volatile MutableMessage mutableDefault = null;
  private static final long serialVersionUID;
  private int bitField0_;
  private List<Delete> delete_;
  private Object deviceId_;
  private List<InsertReplaceOnConflict> insertReplaceOnConflict_;
  private byte memoizedIsInitialized = -1;
  private int memoizedSerializedSize = -1;
  private Select select_;
  private boolean supportsUserActions_;
  private final UnknownFieldSet unknownFields;
  private List<Update> update_;

  static
  {
    defaultInstance = new SyncRequest(true);
    defaultInstance.initFields();
  }

  // ERROR //
  private SyncRequest(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 72	com/google/protobuf/GeneratedMessage:<init>	()V
    //   4: aload_0
    //   5: iconst_m1
    //   6: putfield 74	com/google/googlex/glass/common/proto/SyncRequest:memoizedIsInitialized	B
    //   9: aload_0
    //   10: iconst_m1
    //   11: putfield 76	com/google/googlex/glass/common/proto/SyncRequest:memoizedSerializedSize	I
    //   14: aload_0
    //   15: invokespecial 66	com/google/googlex/glass/common/proto/SyncRequest:initFields	()V
    //   18: iconst_0
    //   19: istore_3
    //   20: invokestatic 82	com/google/protobuf/UnknownFieldSet:newBuilder	()Lcom/google/protobuf/UnknownFieldSet$Builder;
    //   23: astore 4
    //   25: iconst_0
    //   26: istore 5
    //   28: iload 5
    //   30: ifne +451 -> 481
    //   33: aload_1
    //   34: invokevirtual 88	com/google/protobuf/CodedInputStream:readTag	()I
    //   37: istore 9
    //   39: iload 9
    //   41: lookupswitch	default:+67->108, 0:+510->551, 10:+86->127, 18:+247->288, 26:+309->350, 34:+352->393, 42:+398->439, 72:+419->460
    //   109: aload_1
    //   110: aload 4
    //   112: aload_2
    //   113: iload 9
    //   115: invokevirtual 92	com/google/googlex/glass/common/proto/SyncRequest:parseUnknownField	(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    //   118: ifne -90 -> 28
    //   121: iconst_1
    //   122: istore 5
    //   124: goto -96 -> 28
    //   127: iconst_1
    //   128: aload_0
    //   129: getfield 94	com/google/googlex/glass/common/proto/SyncRequest:bitField0_	I
    //   132: iand
    //   133: istore 13
    //   135: aconst_null
    //   136: astore 14
    //   138: iload 13
    //   140: iconst_1
    //   141: if_icmpne +12 -> 153
    //   144: aload_0
    //   145: getfield 96	com/google/googlex/glass/common/proto/SyncRequest:select_	Lcom/google/googlex/glass/common/proto/Select;
    //   148: invokevirtual 102	com/google/googlex/glass/common/proto/Select:toBuilder	()Lcom/google/googlex/glass/common/proto/Select$Builder;
    //   151: astore 14
    //   153: aload_0
    //   154: aload_1
    //   155: getstatic 103	com/google/googlex/glass/common/proto/Select:PARSER	Lcom/google/protobuf/Parser;
    //   158: aload_2
    //   159: invokevirtual 107	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
    //   162: checkcast 98	com/google/googlex/glass/common/proto/Select
    //   165: putfield 96	com/google/googlex/glass/common/proto/SyncRequest:select_	Lcom/google/googlex/glass/common/proto/Select;
    //   168: aload 14
    //   170: ifnull +22 -> 192
    //   173: aload 14
    //   175: aload_0
    //   176: getfield 96	com/google/googlex/glass/common/proto/SyncRequest:select_	Lcom/google/googlex/glass/common/proto/Select;
    //   179: invokevirtual 113	com/google/googlex/glass/common/proto/Select$Builder:mergeFrom	(Lcom/google/googlex/glass/common/proto/Select;)Lcom/google/googlex/glass/common/proto/Select$Builder;
    //   182: pop
    //   183: aload_0
    //   184: aload 14
    //   186: invokevirtual 117	com/google/googlex/glass/common/proto/Select$Builder:buildPartial	()Lcom/google/googlex/glass/common/proto/Select;
    //   189: putfield 96	com/google/googlex/glass/common/proto/SyncRequest:select_	Lcom/google/googlex/glass/common/proto/Select;
    //   192: aload_0
    //   193: iconst_1
    //   194: aload_0
    //   195: getfield 94	com/google/googlex/glass/common/proto/SyncRequest:bitField0_	I
    //   198: ior
    //   199: putfield 94	com/google/googlex/glass/common/proto/SyncRequest:bitField0_	I
    //   202: goto -174 -> 28
    //   205: astore 8
    //   207: aload 8
    //   209: aload_0
    //   210: invokevirtual 121	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   213: athrow
    //   214: astore 7
    //   216: iload_3
    //   217: iconst_2
    //   218: iand
    //   219: iconst_2
    //   220: if_icmpne +14 -> 234
    //   223: aload_0
    //   224: aload_0
    //   225: getfield 123	com/google/googlex/glass/common/proto/SyncRequest:insertReplaceOnConflict_	Ljava/util/List;
    //   228: invokestatic 129	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   231: putfield 123	com/google/googlex/glass/common/proto/SyncRequest:insertReplaceOnConflict_	Ljava/util/List;
    //   234: iload_3
    //   235: iconst_4
    //   236: iand
    //   237: iconst_4
    //   238: if_icmpne +14 -> 252
    //   241: aload_0
    //   242: aload_0
    //   243: getfield 131	com/google/googlex/glass/common/proto/SyncRequest:update_	Ljava/util/List;
    //   246: invokestatic 129	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   249: putfield 131	com/google/googlex/glass/common/proto/SyncRequest:update_	Ljava/util/List;
    //   252: iload_3
    //   253: bipush 8
    //   255: iand
    //   256: bipush 8
    //   258: if_icmpne +14 -> 272
    //   261: aload_0
    //   262: aload_0
    //   263: getfield 133	com/google/googlex/glass/common/proto/SyncRequest:delete_	Ljava/util/List;
    //   266: invokestatic 129	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   269: putfield 133	com/google/googlex/glass/common/proto/SyncRequest:delete_	Ljava/util/List;
    //   272: aload_0
    //   273: aload 4
    //   275: invokevirtual 139	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   278: putfield 141	com/google/googlex/glass/common/proto/SyncRequest:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   281: aload_0
    //   282: invokevirtual 144	com/google/googlex/glass/common/proto/SyncRequest:makeExtensionsImmutable	()V
    //   285: aload 7
    //   287: athrow
    //   288: iload_3
    //   289: iconst_2
    //   290: iand
    //   291: iconst_2
    //   292: if_icmpeq +18 -> 310
    //   295: aload_0
    //   296: new 146	java/util/ArrayList
    //   299: dup
    //   300: invokespecial 147	java/util/ArrayList:<init>	()V
    //   303: putfield 123	com/google/googlex/glass/common/proto/SyncRequest:insertReplaceOnConflict_	Ljava/util/List;
    //   306: iload_3
    //   307: iconst_2
    //   308: ior
    //   309: istore_3
    //   310: aload_0
    //   311: getfield 123	com/google/googlex/glass/common/proto/SyncRequest:insertReplaceOnConflict_	Ljava/util/List;
    //   314: aload_1
    //   315: getstatic 150	com/google/googlex/glass/common/proto/InsertReplaceOnConflict:PARSER	Lcom/google/protobuf/Parser;
    //   318: aload_2
    //   319: invokevirtual 107	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
    //   322: invokeinterface 156 2 0
    //   327: pop
    //   328: goto -300 -> 28
    //   331: astore 6
    //   333: new 69	com/google/protobuf/InvalidProtocolBufferException
    //   336: dup
    //   337: aload 6
    //   339: invokevirtual 160	java/io/IOException:getMessage	()Ljava/lang/String;
    //   342: invokespecial 163	com/google/protobuf/InvalidProtocolBufferException:<init>	(Ljava/lang/String;)V
    //   345: aload_0
    //   346: invokevirtual 121	com/google/protobuf/InvalidProtocolBufferException:setUnfinishedMessage	(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;
    //   349: athrow
    //   350: iload_3
    //   351: iconst_4
    //   352: iand
    //   353: iconst_4
    //   354: if_icmpeq +18 -> 372
    //   357: aload_0
    //   358: new 146	java/util/ArrayList
    //   361: dup
    //   362: invokespecial 147	java/util/ArrayList:<init>	()V
    //   365: putfield 131	com/google/googlex/glass/common/proto/SyncRequest:update_	Ljava/util/List;
    //   368: iload_3
    //   369: iconst_4
    //   370: ior
    //   371: istore_3
    //   372: aload_0
    //   373: getfield 131	com/google/googlex/glass/common/proto/SyncRequest:update_	Ljava/util/List;
    //   376: aload_1
    //   377: getstatic 166	com/google/googlex/glass/common/proto/Update:PARSER	Lcom/google/protobuf/Parser;
    //   380: aload_2
    //   381: invokevirtual 107	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
    //   384: invokeinterface 156 2 0
    //   389: pop
    //   390: goto -362 -> 28
    //   393: iload_3
    //   394: bipush 8
    //   396: iand
    //   397: bipush 8
    //   399: if_icmpeq +19 -> 418
    //   402: aload_0
    //   403: new 146	java/util/ArrayList
    //   406: dup
    //   407: invokespecial 147	java/util/ArrayList:<init>	()V
    //   410: putfield 133	com/google/googlex/glass/common/proto/SyncRequest:delete_	Ljava/util/List;
    //   413: iload_3
    //   414: bipush 8
    //   416: ior
    //   417: istore_3
    //   418: aload_0
    //   419: getfield 133	com/google/googlex/glass/common/proto/SyncRequest:delete_	Ljava/util/List;
    //   422: aload_1
    //   423: getstatic 169	com/google/googlex/glass/common/proto/Delete:PARSER	Lcom/google/protobuf/Parser;
    //   426: aload_2
    //   427: invokevirtual 107	com/google/protobuf/CodedInputStream:readMessage	(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;
    //   430: invokeinterface 156 2 0
    //   435: pop
    //   436: goto -408 -> 28
    //   439: aload_0
    //   440: iconst_2
    //   441: aload_0
    //   442: getfield 94	com/google/googlex/glass/common/proto/SyncRequest:bitField0_	I
    //   445: ior
    //   446: putfield 94	com/google/googlex/glass/common/proto/SyncRequest:bitField0_	I
    //   449: aload_0
    //   450: aload_1
    //   451: invokevirtual 173	com/google/protobuf/CodedInputStream:readBytes	()Lcom/google/protobuf/ByteString;
    //   454: putfield 175	com/google/googlex/glass/common/proto/SyncRequest:deviceId_	Ljava/lang/Object;
    //   457: goto -429 -> 28
    //   460: aload_0
    //   461: iconst_4
    //   462: aload_0
    //   463: getfield 94	com/google/googlex/glass/common/proto/SyncRequest:bitField0_	I
    //   466: ior
    //   467: putfield 94	com/google/googlex/glass/common/proto/SyncRequest:bitField0_	I
    //   470: aload_0
    //   471: aload_1
    //   472: invokevirtual 179	com/google/protobuf/CodedInputStream:readBool	()Z
    //   475: putfield 181	com/google/googlex/glass/common/proto/SyncRequest:supportsUserActions_	Z
    //   478: goto -450 -> 28
    //   481: iload_3
    //   482: iconst_2
    //   483: iand
    //   484: iconst_2
    //   485: if_icmpne +14 -> 499
    //   488: aload_0
    //   489: aload_0
    //   490: getfield 123	com/google/googlex/glass/common/proto/SyncRequest:insertReplaceOnConflict_	Ljava/util/List;
    //   493: invokestatic 129	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   496: putfield 123	com/google/googlex/glass/common/proto/SyncRequest:insertReplaceOnConflict_	Ljava/util/List;
    //   499: iload_3
    //   500: iconst_4
    //   501: iand
    //   502: iconst_4
    //   503: if_icmpne +14 -> 517
    //   506: aload_0
    //   507: aload_0
    //   508: getfield 131	com/google/googlex/glass/common/proto/SyncRequest:update_	Ljava/util/List;
    //   511: invokestatic 129	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   514: putfield 131	com/google/googlex/glass/common/proto/SyncRequest:update_	Ljava/util/List;
    //   517: iload_3
    //   518: bipush 8
    //   520: iand
    //   521: bipush 8
    //   523: if_icmpne +14 -> 537
    //   526: aload_0
    //   527: aload_0
    //   528: getfield 133	com/google/googlex/glass/common/proto/SyncRequest:delete_	Ljava/util/List;
    //   531: invokestatic 129	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   534: putfield 133	com/google/googlex/glass/common/proto/SyncRequest:delete_	Ljava/util/List;
    //   537: aload_0
    //   538: aload 4
    //   540: invokevirtual 139	com/google/protobuf/UnknownFieldSet$Builder:build	()Lcom/google/protobuf/UnknownFieldSet;
    //   543: putfield 141	com/google/googlex/glass/common/proto/SyncRequest:unknownFields	Lcom/google/protobuf/UnknownFieldSet;
    //   546: aload_0
    //   547: invokevirtual 144	com/google/googlex/glass/common/proto/SyncRequest:makeExtensionsImmutable	()V
    //   550: return
    //   551: iconst_1
    //   552: istore 5
    //   554: goto -526 -> 28
    //
    // Exception table:
    //   from	to	target	type
    //   33	39	205	com/google/protobuf/InvalidProtocolBufferException
    //   108	121	205	com/google/protobuf/InvalidProtocolBufferException
    //   127	135	205	com/google/protobuf/InvalidProtocolBufferException
    //   144	153	205	com/google/protobuf/InvalidProtocolBufferException
    //   153	168	205	com/google/protobuf/InvalidProtocolBufferException
    //   173	192	205	com/google/protobuf/InvalidProtocolBufferException
    //   192	202	205	com/google/protobuf/InvalidProtocolBufferException
    //   295	306	205	com/google/protobuf/InvalidProtocolBufferException
    //   310	328	205	com/google/protobuf/InvalidProtocolBufferException
    //   357	368	205	com/google/protobuf/InvalidProtocolBufferException
    //   372	390	205	com/google/protobuf/InvalidProtocolBufferException
    //   402	413	205	com/google/protobuf/InvalidProtocolBufferException
    //   418	436	205	com/google/protobuf/InvalidProtocolBufferException
    //   439	457	205	com/google/protobuf/InvalidProtocolBufferException
    //   460	478	205	com/google/protobuf/InvalidProtocolBufferException
    //   33	39	214	finally
    //   108	121	214	finally
    //   127	135	214	finally
    //   144	153	214	finally
    //   153	168	214	finally
    //   173	192	214	finally
    //   192	202	214	finally
    //   207	214	214	finally
    //   295	306	214	finally
    //   310	328	214	finally
    //   333	350	214	finally
    //   357	368	214	finally
    //   372	390	214	finally
    //   402	413	214	finally
    //   418	436	214	finally
    //   439	457	214	finally
    //   460	478	214	finally
    //   33	39	331	java/io/IOException
    //   108	121	331	java/io/IOException
    //   127	135	331	java/io/IOException
    //   144	153	331	java/io/IOException
    //   153	168	331	java/io/IOException
    //   173	192	331	java/io/IOException
    //   192	202	331	java/io/IOException
    //   295	306	331	java/io/IOException
    //   310	328	331	java/io/IOException
    //   357	368	331	java/io/IOException
    //   372	390	331	java/io/IOException
    //   402	413	331	java/io/IOException
    //   418	436	331	java/io/IOException
    //   439	457	331	java/io/IOException
    //   460	478	331	java/io/IOException
  }

  private SyncRequest(GeneratedMessage.Builder<?> paramBuilder)
  {
    super(paramBuilder);
    this.unknownFields = paramBuilder.getUnknownFields();
  }

  private SyncRequest(boolean paramBoolean)
  {
    this.unknownFields = UnknownFieldSet.getDefaultInstance();
  }

  public static SyncRequest getDefaultInstance()
  {
    return defaultInstance;
  }

  public static final Descriptors.Descriptor getDescriptor()
  {
    return Sync.internal_static_googlex_glass_common_proto_SyncRequest_descriptor;
  }

  private void initFields()
  {
    this.select_ = Select.getDefaultInstance();
    this.insertReplaceOnConflict_ = Collections.emptyList();
    this.update_ = Collections.emptyList();
    this.delete_ = Collections.emptyList();
    this.deviceId_ = "";
    this.supportsUserActions_ = false;
  }

  public static Builder newBuilder()
  {
    return Builder.access$100();
  }

  public static Builder newBuilder(SyncRequest paramSyncRequest)
  {
    return newBuilder().mergeFrom(paramSyncRequest);
  }

  public static SyncRequest parseDelimitedFrom(InputStream paramInputStream)
    throws IOException
  {
    return (SyncRequest)PARSER.parseDelimitedFrom(paramInputStream);
  }

  public static SyncRequest parseDelimitedFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (SyncRequest)PARSER.parseDelimitedFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static SyncRequest parseFrom(ByteString paramByteString)
    throws InvalidProtocolBufferException
  {
    return (SyncRequest)PARSER.parseFrom(paramByteString);
  }

  public static SyncRequest parseFrom(ByteString paramByteString, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (SyncRequest)PARSER.parseFrom(paramByteString, paramExtensionRegistryLite);
  }

  public static SyncRequest parseFrom(CodedInputStream paramCodedInputStream)
    throws IOException
  {
    return (SyncRequest)PARSER.parseFrom(paramCodedInputStream);
  }

  public static SyncRequest parseFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (SyncRequest)PARSER.parseFrom(paramCodedInputStream, paramExtensionRegistryLite);
  }

  public static SyncRequest parseFrom(InputStream paramInputStream)
    throws IOException
  {
    return (SyncRequest)PARSER.parseFrom(paramInputStream);
  }

  public static SyncRequest parseFrom(InputStream paramInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
    throws IOException
  {
    return (SyncRequest)PARSER.parseFrom(paramInputStream, paramExtensionRegistryLite);
  }

  public static SyncRequest parseFrom(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    return (SyncRequest)PARSER.parseFrom(paramArrayOfByte);
  }

  public static SyncRequest parseFrom(byte[] paramArrayOfByte, ExtensionRegistryLite paramExtensionRegistryLite)
    throws InvalidProtocolBufferException
  {
    return (SyncRequest)PARSER.parseFrom(paramArrayOfByte, paramExtensionRegistryLite);
  }

  public SyncRequest getDefaultInstanceForType()
  {
    return defaultInstance;
  }

  public Delete getDelete(int paramInt)
  {
    return (Delete)this.delete_.get(paramInt);
  }

  public int getDeleteCount()
  {
    return this.delete_.size();
  }

  public List<Delete> getDeleteList()
  {
    return this.delete_;
  }

  public DeleteOrBuilder getDeleteOrBuilder(int paramInt)
  {
    return (DeleteOrBuilder)this.delete_.get(paramInt);
  }

  public List<? extends DeleteOrBuilder> getDeleteOrBuilderList()
  {
    return this.delete_;
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

  public InsertReplaceOnConflict getInsertReplaceOnConflict(int paramInt)
  {
    return (InsertReplaceOnConflict)this.insertReplaceOnConflict_.get(paramInt);
  }

  public int getInsertReplaceOnConflictCount()
  {
    return this.insertReplaceOnConflict_.size();
  }

  public List<InsertReplaceOnConflict> getInsertReplaceOnConflictList()
  {
    return this.insertReplaceOnConflict_;
  }

  public InsertReplaceOnConflictOrBuilder getInsertReplaceOnConflictOrBuilder(int paramInt)
  {
    return (InsertReplaceOnConflictOrBuilder)this.insertReplaceOnConflict_.get(paramInt);
  }

  public List<? extends InsertReplaceOnConflictOrBuilder> getInsertReplaceOnConflictOrBuilderList()
  {
    return this.insertReplaceOnConflict_;
  }

  public Parser<SyncRequest> getParserForType()
  {
    return PARSER;
  }

  public Select getSelect()
  {
    return this.select_;
  }

  public SelectOrBuilder getSelectOrBuilder()
  {
    return this.select_;
  }

  public int getSerializedSize()
  {
    int i = this.memoizedSerializedSize;
    if (i != -1)
      return i;
    int j = 0x1 & this.bitField0_;
    int k = 0;
    if (j == 1)
      k = 0 + CodedOutputStream.computeMessageSize(1, this.select_);
    for (int m = 0; m < this.insertReplaceOnConflict_.size(); m++)
      k += CodedOutputStream.computeMessageSize(2, (MessageLite)this.insertReplaceOnConflict_.get(m));
    for (int n = 0; n < this.update_.size(); n++)
      k += CodedOutputStream.computeMessageSize(3, (MessageLite)this.update_.get(n));
    for (int i1 = 0; i1 < this.delete_.size(); i1++)
      k += CodedOutputStream.computeMessageSize(4, (MessageLite)this.delete_.get(i1));
    if ((0x2 & this.bitField0_) == 2)
      k += CodedOutputStream.computeBytesSize(5, getDeviceIdBytes());
    if ((0x4 & this.bitField0_) == 4)
      k += CodedOutputStream.computeBoolSize(9, this.supportsUserActions_);
    int i2 = k + getUnknownFields().getSerializedSize();
    this.memoizedSerializedSize = i2;
    return i2;
  }

  public boolean getSupportsUserActions()
  {
    return this.supportsUserActions_;
  }

  public final UnknownFieldSet getUnknownFields()
  {
    return this.unknownFields;
  }

  public Update getUpdate(int paramInt)
  {
    return (Update)this.update_.get(paramInt);
  }

  public int getUpdateCount()
  {
    return this.update_.size();
  }

  public List<Update> getUpdateList()
  {
    return this.update_;
  }

  public UpdateOrBuilder getUpdateOrBuilder(int paramInt)
  {
    return (UpdateOrBuilder)this.update_.get(paramInt);
  }

  public List<? extends UpdateOrBuilder> getUpdateOrBuilderList()
  {
    return this.update_;
  }

  public boolean hasDeviceId()
  {
    return (0x2 & this.bitField0_) == 2;
  }

  public boolean hasSelect()
  {
    return (0x1 & this.bitField0_) == 1;
  }

  public boolean hasSupportsUserActions()
  {
    return (0x4 & this.bitField0_) == 4;
  }

  protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
  {
    return Sync.internal_static_googlex_glass_common_proto_SyncRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(SyncRequest.class, Builder.class);
  }

  protected MutableMessage internalMutableDefault()
  {
    if (mutableDefault == null)
      mutableDefault = internalMutableDefault("com.google.googlex.glass.common.proto.MutableSync$SyncRequest");
    return mutableDefault;
  }

  public final boolean isInitialized()
  {
    int i = this.memoizedIsInitialized;
    if (i != -1)
      return i == 1;
    if (!hasDeviceId())
    {
      this.memoizedIsInitialized = 0;
      return false;
    }
    for (int j = 0; j < getUpdateCount(); j++)
      if (!getUpdate(j).isInitialized())
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
      paramCodedOutputStream.writeMessage(1, this.select_);
    for (int i = 0; i < this.insertReplaceOnConflict_.size(); i++)
      paramCodedOutputStream.writeMessage(2, (MessageLite)this.insertReplaceOnConflict_.get(i));
    for (int j = 0; j < this.update_.size(); j++)
      paramCodedOutputStream.writeMessage(3, (MessageLite)this.update_.get(j));
    for (int k = 0; k < this.delete_.size(); k++)
      paramCodedOutputStream.writeMessage(4, (MessageLite)this.delete_.get(k));
    if ((0x2 & this.bitField0_) == 2)
      paramCodedOutputStream.writeBytes(5, getDeviceIdBytes());
    if ((0x4 & this.bitField0_) == 4)
      paramCodedOutputStream.writeBool(9, this.supportsUserActions_);
    getUnknownFields().writeTo(paramCodedOutputStream);
  }

  public static final class Builder extends GeneratedMessage.Builder<Builder>
    implements SyncRequestOrBuilder
  {
    private int bitField0_;
    private RepeatedFieldBuilder<Delete, Delete.Builder, DeleteOrBuilder> deleteBuilder_;
    private List<Delete> delete_ = Collections.emptyList();
    private Object deviceId_ = "";
    private RepeatedFieldBuilder<InsertReplaceOnConflict, InsertReplaceOnConflict.Builder, InsertReplaceOnConflictOrBuilder> insertReplaceOnConflictBuilder_;
    private List<InsertReplaceOnConflict> insertReplaceOnConflict_ = Collections.emptyList();
    private SingleFieldBuilder<Select, Select.Builder, SelectOrBuilder> selectBuilder_;
    private Select select_ = Select.getDefaultInstance();
    private boolean supportsUserActions_;
    private RepeatedFieldBuilder<Update, Update.Builder, UpdateOrBuilder> updateBuilder_;
    private List<Update> update_ = Collections.emptyList();

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

    private void ensureDeleteIsMutable()
    {
      if ((0x8 & this.bitField0_) != 8)
      {
        this.delete_ = new ArrayList(this.delete_);
        this.bitField0_ = (0x8 | this.bitField0_);
      }
    }

    private void ensureInsertReplaceOnConflictIsMutable()
    {
      if ((0x2 & this.bitField0_) != 2)
      {
        this.insertReplaceOnConflict_ = new ArrayList(this.insertReplaceOnConflict_);
        this.bitField0_ = (0x2 | this.bitField0_);
      }
    }

    private void ensureUpdateIsMutable()
    {
      if ((0x4 & this.bitField0_) != 4)
      {
        this.update_ = new ArrayList(this.update_);
        this.bitField0_ = (0x4 | this.bitField0_);
      }
    }

    private RepeatedFieldBuilder<Delete, Delete.Builder, DeleteOrBuilder> getDeleteFieldBuilder()
    {
      List localList;
      if (this.deleteBuilder_ == null)
      {
        localList = this.delete_;
        if ((0x8 & this.bitField0_) != 8)
          break label57;
      }
      label57: for (boolean bool = true; ; bool = false)
      {
        this.deleteBuilder_ = new RepeatedFieldBuilder(localList, bool, getParentForChildren(), isClean());
        this.delete_ = null;
        return this.deleteBuilder_;
      }
    }

    public static final Descriptors.Descriptor getDescriptor()
    {
      return Sync.internal_static_googlex_glass_common_proto_SyncRequest_descriptor;
    }

    private RepeatedFieldBuilder<InsertReplaceOnConflict, InsertReplaceOnConflict.Builder, InsertReplaceOnConflictOrBuilder> getInsertReplaceOnConflictFieldBuilder()
    {
      List localList;
      if (this.insertReplaceOnConflictBuilder_ == null)
      {
        localList = this.insertReplaceOnConflict_;
        if ((0x2 & this.bitField0_) != 2)
          break label55;
      }
      label55: for (boolean bool = true; ; bool = false)
      {
        this.insertReplaceOnConflictBuilder_ = new RepeatedFieldBuilder(localList, bool, getParentForChildren(), isClean());
        this.insertReplaceOnConflict_ = null;
        return this.insertReplaceOnConflictBuilder_;
      }
    }

    private SingleFieldBuilder<Select, Select.Builder, SelectOrBuilder> getSelectFieldBuilder()
    {
      if (this.selectBuilder_ == null)
      {
        this.selectBuilder_ = new SingleFieldBuilder(this.select_, getParentForChildren(), isClean());
        this.select_ = null;
      }
      return this.selectBuilder_;
    }

    private RepeatedFieldBuilder<Update, Update.Builder, UpdateOrBuilder> getUpdateFieldBuilder()
    {
      List localList;
      if (this.updateBuilder_ == null)
      {
        localList = this.update_;
        if ((0x4 & this.bitField0_) != 4)
          break label55;
      }
      label55: for (boolean bool = true; ; bool = false)
      {
        this.updateBuilder_ = new RepeatedFieldBuilder(localList, bool, getParentForChildren(), isClean());
        this.update_ = null;
        return this.updateBuilder_;
      }
    }

    private void maybeForceBuilderInitialization()
    {
      if (SyncRequest.alwaysUseFieldBuilders)
      {
        getSelectFieldBuilder();
        getInsertReplaceOnConflictFieldBuilder();
        getUpdateFieldBuilder();
        getDeleteFieldBuilder();
      }
    }

    public Builder addAllDelete(Iterable<? extends Delete> paramIterable)
    {
      if (this.deleteBuilder_ == null)
      {
        ensureDeleteIsMutable();
        AbstractMessageLite.Builder.addAll(paramIterable, this.delete_);
        onChanged();
        return this;
      }
      this.deleteBuilder_.addAllMessages(paramIterable);
      return this;
    }

    public Builder addAllInsertReplaceOnConflict(Iterable<? extends InsertReplaceOnConflict> paramIterable)
    {
      if (this.insertReplaceOnConflictBuilder_ == null)
      {
        ensureInsertReplaceOnConflictIsMutable();
        AbstractMessageLite.Builder.addAll(paramIterable, this.insertReplaceOnConflict_);
        onChanged();
        return this;
      }
      this.insertReplaceOnConflictBuilder_.addAllMessages(paramIterable);
      return this;
    }

    public Builder addAllUpdate(Iterable<? extends Update> paramIterable)
    {
      if (this.updateBuilder_ == null)
      {
        ensureUpdateIsMutable();
        AbstractMessageLite.Builder.addAll(paramIterable, this.update_);
        onChanged();
        return this;
      }
      this.updateBuilder_.addAllMessages(paramIterable);
      return this;
    }

    public Builder addDelete(int paramInt, Delete.Builder paramBuilder)
    {
      if (this.deleteBuilder_ == null)
      {
        ensureDeleteIsMutable();
        this.delete_.add(paramInt, paramBuilder.build());
        onChanged();
        return this;
      }
      this.deleteBuilder_.addMessage(paramInt, paramBuilder.build());
      return this;
    }

    public Builder addDelete(int paramInt, Delete paramDelete)
    {
      if (this.deleteBuilder_ == null)
      {
        if (paramDelete == null)
          throw new NullPointerException();
        ensureDeleteIsMutable();
        this.delete_.add(paramInt, paramDelete);
        onChanged();
        return this;
      }
      this.deleteBuilder_.addMessage(paramInt, paramDelete);
      return this;
    }

    public Builder addDelete(Delete.Builder paramBuilder)
    {
      if (this.deleteBuilder_ == null)
      {
        ensureDeleteIsMutable();
        this.delete_.add(paramBuilder.build());
        onChanged();
        return this;
      }
      this.deleteBuilder_.addMessage(paramBuilder.build());
      return this;
    }

    public Builder addDelete(Delete paramDelete)
    {
      if (this.deleteBuilder_ == null)
      {
        if (paramDelete == null)
          throw new NullPointerException();
        ensureDeleteIsMutable();
        this.delete_.add(paramDelete);
        onChanged();
        return this;
      }
      this.deleteBuilder_.addMessage(paramDelete);
      return this;
    }

    public Delete.Builder addDeleteBuilder()
    {
      return (Delete.Builder)getDeleteFieldBuilder().addBuilder(Delete.getDefaultInstance());
    }

    public Delete.Builder addDeleteBuilder(int paramInt)
    {
      return (Delete.Builder)getDeleteFieldBuilder().addBuilder(paramInt, Delete.getDefaultInstance());
    }

    public Builder addInsertReplaceOnConflict(int paramInt, InsertReplaceOnConflict.Builder paramBuilder)
    {
      if (this.insertReplaceOnConflictBuilder_ == null)
      {
        ensureInsertReplaceOnConflictIsMutable();
        this.insertReplaceOnConflict_.add(paramInt, paramBuilder.build());
        onChanged();
        return this;
      }
      this.insertReplaceOnConflictBuilder_.addMessage(paramInt, paramBuilder.build());
      return this;
    }

    public Builder addInsertReplaceOnConflict(int paramInt, InsertReplaceOnConflict paramInsertReplaceOnConflict)
    {
      if (this.insertReplaceOnConflictBuilder_ == null)
      {
        if (paramInsertReplaceOnConflict == null)
          throw new NullPointerException();
        ensureInsertReplaceOnConflictIsMutable();
        this.insertReplaceOnConflict_.add(paramInt, paramInsertReplaceOnConflict);
        onChanged();
        return this;
      }
      this.insertReplaceOnConflictBuilder_.addMessage(paramInt, paramInsertReplaceOnConflict);
      return this;
    }

    public Builder addInsertReplaceOnConflict(InsertReplaceOnConflict.Builder paramBuilder)
    {
      if (this.insertReplaceOnConflictBuilder_ == null)
      {
        ensureInsertReplaceOnConflictIsMutable();
        this.insertReplaceOnConflict_.add(paramBuilder.build());
        onChanged();
        return this;
      }
      this.insertReplaceOnConflictBuilder_.addMessage(paramBuilder.build());
      return this;
    }

    public Builder addInsertReplaceOnConflict(InsertReplaceOnConflict paramInsertReplaceOnConflict)
    {
      if (this.insertReplaceOnConflictBuilder_ == null)
      {
        if (paramInsertReplaceOnConflict == null)
          throw new NullPointerException();
        ensureInsertReplaceOnConflictIsMutable();
        this.insertReplaceOnConflict_.add(paramInsertReplaceOnConflict);
        onChanged();
        return this;
      }
      this.insertReplaceOnConflictBuilder_.addMessage(paramInsertReplaceOnConflict);
      return this;
    }

    public InsertReplaceOnConflict.Builder addInsertReplaceOnConflictBuilder()
    {
      return (InsertReplaceOnConflict.Builder)getInsertReplaceOnConflictFieldBuilder().addBuilder(InsertReplaceOnConflict.getDefaultInstance());
    }

    public InsertReplaceOnConflict.Builder addInsertReplaceOnConflictBuilder(int paramInt)
    {
      return (InsertReplaceOnConflict.Builder)getInsertReplaceOnConflictFieldBuilder().addBuilder(paramInt, InsertReplaceOnConflict.getDefaultInstance());
    }

    public Builder addUpdate(int paramInt, Update.Builder paramBuilder)
    {
      if (this.updateBuilder_ == null)
      {
        ensureUpdateIsMutable();
        this.update_.add(paramInt, paramBuilder.build());
        onChanged();
        return this;
      }
      this.updateBuilder_.addMessage(paramInt, paramBuilder.build());
      return this;
    }

    public Builder addUpdate(int paramInt, Update paramUpdate)
    {
      if (this.updateBuilder_ == null)
      {
        if (paramUpdate == null)
          throw new NullPointerException();
        ensureUpdateIsMutable();
        this.update_.add(paramInt, paramUpdate);
        onChanged();
        return this;
      }
      this.updateBuilder_.addMessage(paramInt, paramUpdate);
      return this;
    }

    public Builder addUpdate(Update.Builder paramBuilder)
    {
      if (this.updateBuilder_ == null)
      {
        ensureUpdateIsMutable();
        this.update_.add(paramBuilder.build());
        onChanged();
        return this;
      }
      this.updateBuilder_.addMessage(paramBuilder.build());
      return this;
    }

    public Builder addUpdate(Update paramUpdate)
    {
      if (this.updateBuilder_ == null)
      {
        if (paramUpdate == null)
          throw new NullPointerException();
        ensureUpdateIsMutable();
        this.update_.add(paramUpdate);
        onChanged();
        return this;
      }
      this.updateBuilder_.addMessage(paramUpdate);
      return this;
    }

    public Update.Builder addUpdateBuilder()
    {
      return (Update.Builder)getUpdateFieldBuilder().addBuilder(Update.getDefaultInstance());
    }

    public Update.Builder addUpdateBuilder(int paramInt)
    {
      return (Update.Builder)getUpdateFieldBuilder().addBuilder(paramInt, Update.getDefaultInstance());
    }

    public SyncRequest build()
    {
      SyncRequest localSyncRequest = buildPartial();
      if (!localSyncRequest.isInitialized())
        throw newUninitializedMessageException(localSyncRequest);
      return localSyncRequest;
    }

    public SyncRequest buildPartial()
    {
      SyncRequest localSyncRequest = new SyncRequest(this, null);
      int i = this.bitField0_;
      int j = i & 0x1;
      int k = 0;
      if (j == 1)
        k = 0x0 | 0x1;
      if (this.selectBuilder_ == null)
      {
        SyncRequest.access$502(localSyncRequest, this.select_);
        if (this.insertReplaceOnConflictBuilder_ != null)
          break label273;
        if ((0x2 & this.bitField0_) == 2)
        {
          this.insertReplaceOnConflict_ = Collections.unmodifiableList(this.insertReplaceOnConflict_);
          this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        }
        SyncRequest.access$602(localSyncRequest, this.insertReplaceOnConflict_);
        label96: if (this.updateBuilder_ != null)
          break label288;
        if ((0x4 & this.bitField0_) == 4)
        {
          this.update_ = Collections.unmodifiableList(this.update_);
          this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
        }
        SyncRequest.access$702(localSyncRequest, this.update_);
        label144: if (this.deleteBuilder_ != null)
          break label303;
        if ((0x8 & this.bitField0_) == 8)
        {
          this.delete_ = Collections.unmodifiableList(this.delete_);
          this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
        }
        SyncRequest.access$802(localSyncRequest, this.delete_);
      }
      while (true)
      {
        if ((i & 0x10) == 16)
          k |= 2;
        SyncRequest.access$902(localSyncRequest, this.deviceId_);
        if ((i & 0x20) == 32)
          k |= 4;
        SyncRequest.access$1002(localSyncRequest, this.supportsUserActions_);
        SyncRequest.access$1102(localSyncRequest, k);
        onBuilt();
        return localSyncRequest;
        SyncRequest.access$502(localSyncRequest, (Select)this.selectBuilder_.build());
        break;
        label273: SyncRequest.access$602(localSyncRequest, this.insertReplaceOnConflictBuilder_.build());
        break label96;
        label288: SyncRequest.access$702(localSyncRequest, this.updateBuilder_.build());
        break label144;
        label303: SyncRequest.access$802(localSyncRequest, this.deleteBuilder_.build());
      }
    }

    public Builder clear()
    {
      super.clear();
      if (this.selectBuilder_ == null)
      {
        this.select_ = Select.getDefaultInstance();
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        if (this.insertReplaceOnConflictBuilder_ != null)
          break label151;
        this.insertReplaceOnConflict_ = Collections.emptyList();
        this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        label55: if (this.updateBuilder_ != null)
          break label161;
        this.update_ = Collections.emptyList();
        this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
        label80: if (this.deleteBuilder_ != null)
          break label171;
        this.delete_ = Collections.emptyList();
        this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
      }
      while (true)
      {
        this.deviceId_ = "";
        this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
        this.supportsUserActions_ = false;
        this.bitField0_ = (0xFFFFFFDF & this.bitField0_);
        return this;
        this.selectBuilder_.clear();
        break;
        label151: this.insertReplaceOnConflictBuilder_.clear();
        break label55;
        label161: this.updateBuilder_.clear();
        break label80;
        label171: this.deleteBuilder_.clear();
      }
    }

    public Builder clearDelete()
    {
      if (this.deleteBuilder_ == null)
      {
        this.delete_ = Collections.emptyList();
        this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
        onChanged();
        return this;
      }
      this.deleteBuilder_.clear();
      return this;
    }

    public Builder clearDeviceId()
    {
      this.bitField0_ = (0xFFFFFFEF & this.bitField0_);
      this.deviceId_ = SyncRequest.getDefaultInstance().getDeviceId();
      onChanged();
      return this;
    }

    public Builder clearInsertReplaceOnConflict()
    {
      if (this.insertReplaceOnConflictBuilder_ == null)
      {
        this.insertReplaceOnConflict_ = Collections.emptyList();
        this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
        onChanged();
        return this;
      }
      this.insertReplaceOnConflictBuilder_.clear();
      return this;
    }

    public Builder clearSelect()
    {
      if (this.selectBuilder_ == null)
      {
        this.select_ = Select.getDefaultInstance();
        onChanged();
      }
      while (true)
      {
        this.bitField0_ = (0xFFFFFFFE & this.bitField0_);
        return this;
        this.selectBuilder_.clear();
      }
    }

    public Builder clearSupportsUserActions()
    {
      this.bitField0_ = (0xFFFFFFDF & this.bitField0_);
      this.supportsUserActions_ = false;
      onChanged();
      return this;
    }

    public Builder clearUpdate()
    {
      if (this.updateBuilder_ == null)
      {
        this.update_ = Collections.emptyList();
        this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
        onChanged();
        return this;
      }
      this.updateBuilder_.clear();
      return this;
    }

    public Builder clone()
    {
      return create().mergeFrom(buildPartial());
    }

    public SyncRequest getDefaultInstanceForType()
    {
      return SyncRequest.getDefaultInstance();
    }

    public Delete getDelete(int paramInt)
    {
      if (this.deleteBuilder_ == null)
        return (Delete)this.delete_.get(paramInt);
      return (Delete)this.deleteBuilder_.getMessage(paramInt);
    }

    public Delete.Builder getDeleteBuilder(int paramInt)
    {
      return (Delete.Builder)getDeleteFieldBuilder().getBuilder(paramInt);
    }

    public List<Delete.Builder> getDeleteBuilderList()
    {
      return getDeleteFieldBuilder().getBuilderList();
    }

    public int getDeleteCount()
    {
      if (this.deleteBuilder_ == null)
        return this.delete_.size();
      return this.deleteBuilder_.getCount();
    }

    public List<Delete> getDeleteList()
    {
      if (this.deleteBuilder_ == null)
        return Collections.unmodifiableList(this.delete_);
      return this.deleteBuilder_.getMessageList();
    }

    public DeleteOrBuilder getDeleteOrBuilder(int paramInt)
    {
      if (this.deleteBuilder_ == null)
        return (DeleteOrBuilder)this.delete_.get(paramInt);
      return (DeleteOrBuilder)this.deleteBuilder_.getMessageOrBuilder(paramInt);
    }

    public List<? extends DeleteOrBuilder> getDeleteOrBuilderList()
    {
      if (this.deleteBuilder_ != null)
        return this.deleteBuilder_.getMessageOrBuilderList();
      return Collections.unmodifiableList(this.delete_);
    }

    public Descriptors.Descriptor getDescriptorForType()
    {
      return Sync.internal_static_googlex_glass_common_proto_SyncRequest_descriptor;
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

    public InsertReplaceOnConflict getInsertReplaceOnConflict(int paramInt)
    {
      if (this.insertReplaceOnConflictBuilder_ == null)
        return (InsertReplaceOnConflict)this.insertReplaceOnConflict_.get(paramInt);
      return (InsertReplaceOnConflict)this.insertReplaceOnConflictBuilder_.getMessage(paramInt);
    }

    public InsertReplaceOnConflict.Builder getInsertReplaceOnConflictBuilder(int paramInt)
    {
      return (InsertReplaceOnConflict.Builder)getInsertReplaceOnConflictFieldBuilder().getBuilder(paramInt);
    }

    public List<InsertReplaceOnConflict.Builder> getInsertReplaceOnConflictBuilderList()
    {
      return getInsertReplaceOnConflictFieldBuilder().getBuilderList();
    }

    public int getInsertReplaceOnConflictCount()
    {
      if (this.insertReplaceOnConflictBuilder_ == null)
        return this.insertReplaceOnConflict_.size();
      return this.insertReplaceOnConflictBuilder_.getCount();
    }

    public List<InsertReplaceOnConflict> getInsertReplaceOnConflictList()
    {
      if (this.insertReplaceOnConflictBuilder_ == null)
        return Collections.unmodifiableList(this.insertReplaceOnConflict_);
      return this.insertReplaceOnConflictBuilder_.getMessageList();
    }

    public InsertReplaceOnConflictOrBuilder getInsertReplaceOnConflictOrBuilder(int paramInt)
    {
      if (this.insertReplaceOnConflictBuilder_ == null)
        return (InsertReplaceOnConflictOrBuilder)this.insertReplaceOnConflict_.get(paramInt);
      return (InsertReplaceOnConflictOrBuilder)this.insertReplaceOnConflictBuilder_.getMessageOrBuilder(paramInt);
    }

    public List<? extends InsertReplaceOnConflictOrBuilder> getInsertReplaceOnConflictOrBuilderList()
    {
      if (this.insertReplaceOnConflictBuilder_ != null)
        return this.insertReplaceOnConflictBuilder_.getMessageOrBuilderList();
      return Collections.unmodifiableList(this.insertReplaceOnConflict_);
    }

    public Select getSelect()
    {
      if (this.selectBuilder_ == null)
        return this.select_;
      return (Select)this.selectBuilder_.getMessage();
    }

    public Select.Builder getSelectBuilder()
    {
      this.bitField0_ = (0x1 | this.bitField0_);
      onChanged();
      return (Select.Builder)getSelectFieldBuilder().getBuilder();
    }

    public SelectOrBuilder getSelectOrBuilder()
    {
      if (this.selectBuilder_ != null)
        return (SelectOrBuilder)this.selectBuilder_.getMessageOrBuilder();
      return this.select_;
    }

    public boolean getSupportsUserActions()
    {
      return this.supportsUserActions_;
    }

    public Update getUpdate(int paramInt)
    {
      if (this.updateBuilder_ == null)
        return (Update)this.update_.get(paramInt);
      return (Update)this.updateBuilder_.getMessage(paramInt);
    }

    public Update.Builder getUpdateBuilder(int paramInt)
    {
      return (Update.Builder)getUpdateFieldBuilder().getBuilder(paramInt);
    }

    public List<Update.Builder> getUpdateBuilderList()
    {
      return getUpdateFieldBuilder().getBuilderList();
    }

    public int getUpdateCount()
    {
      if (this.updateBuilder_ == null)
        return this.update_.size();
      return this.updateBuilder_.getCount();
    }

    public List<Update> getUpdateList()
    {
      if (this.updateBuilder_ == null)
        return Collections.unmodifiableList(this.update_);
      return this.updateBuilder_.getMessageList();
    }

    public UpdateOrBuilder getUpdateOrBuilder(int paramInt)
    {
      if (this.updateBuilder_ == null)
        return (UpdateOrBuilder)this.update_.get(paramInt);
      return (UpdateOrBuilder)this.updateBuilder_.getMessageOrBuilder(paramInt);
    }

    public List<? extends UpdateOrBuilder> getUpdateOrBuilderList()
    {
      if (this.updateBuilder_ != null)
        return this.updateBuilder_.getMessageOrBuilderList();
      return Collections.unmodifiableList(this.update_);
    }

    public boolean hasDeviceId()
    {
      return (0x10 & this.bitField0_) == 16;
    }

    public boolean hasSelect()
    {
      return (0x1 & this.bitField0_) == 1;
    }

    public boolean hasSupportsUserActions()
    {
      return (0x20 & this.bitField0_) == 32;
    }

    protected GeneratedMessage.FieldAccessorTable internalGetFieldAccessorTable()
    {
      return Sync.internal_static_googlex_glass_common_proto_SyncRequest_fieldAccessorTable.ensureFieldAccessorsInitialized(SyncRequest.class, Builder.class);
    }

    public final boolean isInitialized()
    {
      if (!hasDeviceId())
        return false;
      for (int i = 0; ; i++)
      {
        if (i >= getUpdateCount())
          break label36;
        if (!getUpdate(i).isInitialized())
          break;
      }
      label36: return true;
    }

    public Builder mergeFrom(SyncRequest paramSyncRequest)
    {
      if (paramSyncRequest == SyncRequest.getDefaultInstance())
        return this;
      if (paramSyncRequest.hasSelect())
        mergeSelect(paramSyncRequest.getSelect());
      if (this.insertReplaceOnConflictBuilder_ == null)
        if (!paramSyncRequest.insertReplaceOnConflict_.isEmpty())
        {
          if (this.insertReplaceOnConflict_.isEmpty())
          {
            this.insertReplaceOnConflict_ = paramSyncRequest.insertReplaceOnConflict_;
            this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
            onChanged();
          }
        }
        else
        {
          label79: if (this.updateBuilder_ != null)
            break label381;
          if (!paramSyncRequest.update_.isEmpty())
          {
            if (!this.update_.isEmpty())
              break label360;
            this.update_ = paramSyncRequest.update_;
            this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
            label129: onChanged();
          }
          label133: if (this.deleteBuilder_ != null)
            break label497;
          if (!paramSyncRequest.delete_.isEmpty())
          {
            if (!this.delete_.isEmpty())
              break label476;
            this.delete_ = paramSyncRequest.delete_;
            this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
            label183: onChanged();
          }
        }
      while (true)
      {
        if (paramSyncRequest.hasDeviceId())
        {
          this.bitField0_ = (0x10 | this.bitField0_);
          this.deviceId_ = paramSyncRequest.deviceId_;
          onChanged();
        }
        if (paramSyncRequest.hasSupportsUserActions())
          setSupportsUserActions(paramSyncRequest.getSupportsUserActions());
        mergeUnknownFields(paramSyncRequest.getUnknownFields());
        return this;
        ensureInsertReplaceOnConflictIsMutable();
        this.insertReplaceOnConflict_.addAll(paramSyncRequest.insertReplaceOnConflict_);
        break;
        if (paramSyncRequest.insertReplaceOnConflict_.isEmpty())
          break label79;
        if (this.insertReplaceOnConflictBuilder_.isEmpty())
        {
          this.insertReplaceOnConflictBuilder_.dispose();
          this.insertReplaceOnConflictBuilder_ = null;
          this.insertReplaceOnConflict_ = paramSyncRequest.insertReplaceOnConflict_;
          this.bitField0_ = (0xFFFFFFFD & this.bitField0_);
          if (SyncRequest.alwaysUseFieldBuilders);
          for (RepeatedFieldBuilder localRepeatedFieldBuilder3 = getInsertReplaceOnConflictFieldBuilder(); ; localRepeatedFieldBuilder3 = null)
          {
            this.insertReplaceOnConflictBuilder_ = localRepeatedFieldBuilder3;
            break;
          }
        }
        this.insertReplaceOnConflictBuilder_.addAllMessages(paramSyncRequest.insertReplaceOnConflict_);
        break label79;
        label360: ensureUpdateIsMutable();
        this.update_.addAll(paramSyncRequest.update_);
        break label129;
        label381: if (paramSyncRequest.update_.isEmpty())
          break label133;
        if (this.updateBuilder_.isEmpty())
        {
          this.updateBuilder_.dispose();
          this.updateBuilder_ = null;
          this.update_ = paramSyncRequest.update_;
          this.bitField0_ = (0xFFFFFFFB & this.bitField0_);
          if (SyncRequest.alwaysUseFieldBuilders);
          for (RepeatedFieldBuilder localRepeatedFieldBuilder2 = getUpdateFieldBuilder(); ; localRepeatedFieldBuilder2 = null)
          {
            this.updateBuilder_ = localRepeatedFieldBuilder2;
            break;
          }
        }
        this.updateBuilder_.addAllMessages(paramSyncRequest.update_);
        break label133;
        label476: ensureDeleteIsMutable();
        this.delete_.addAll(paramSyncRequest.delete_);
        break label183;
        label497: if (!paramSyncRequest.delete_.isEmpty())
          if (this.deleteBuilder_.isEmpty())
          {
            this.deleteBuilder_.dispose();
            this.deleteBuilder_ = null;
            this.delete_ = paramSyncRequest.delete_;
            this.bitField0_ = (0xFFFFFFF7 & this.bitField0_);
            boolean bool = SyncRequest.alwaysUseFieldBuilders;
            RepeatedFieldBuilder localRepeatedFieldBuilder1 = null;
            if (bool)
              localRepeatedFieldBuilder1 = getDeleteFieldBuilder();
            this.deleteBuilder_ = localRepeatedFieldBuilder1;
          }
          else
          {
            this.deleteBuilder_.addAllMessages(paramSyncRequest.delete_);
          }
      }
    }

    public Builder mergeFrom(CodedInputStream paramCodedInputStream, ExtensionRegistryLite paramExtensionRegistryLite)
      throws IOException
    {
      SyncRequest localSyncRequest1 = null;
      try
      {
        SyncRequest localSyncRequest2 = (SyncRequest)SyncRequest.PARSER.parsePartialFrom(paramCodedInputStream, paramExtensionRegistryLite);
        return this;
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        localSyncRequest1 = (SyncRequest)localInvalidProtocolBufferException.getUnfinishedMessage();
        throw localInvalidProtocolBufferException;
      }
      finally
      {
        if (localSyncRequest1 != null)
          mergeFrom(localSyncRequest1);
      }
    }

    public Builder mergeFrom(Message paramMessage)
    {
      if ((paramMessage instanceof SyncRequest))
        return mergeFrom((SyncRequest)paramMessage);
      super.mergeFrom(paramMessage);
      return this;
    }

    public Builder mergeSelect(Select paramSelect)
    {
      if (this.selectBuilder_ == null)
        if (((0x1 & this.bitField0_) == 1) && (this.select_ != Select.getDefaultInstance()))
        {
          this.select_ = Select.newBuilder(this.select_).mergeFrom(paramSelect).buildPartial();
          onChanged();
        }
      while (true)
      {
        this.bitField0_ = (0x1 | this.bitField0_);
        return this;
        this.select_ = paramSelect;
        break;
        this.selectBuilder_.mergeFrom(paramSelect);
      }
    }

    public Builder removeDelete(int paramInt)
    {
      if (this.deleteBuilder_ == null)
      {
        ensureDeleteIsMutable();
        this.delete_.remove(paramInt);
        onChanged();
        return this;
      }
      this.deleteBuilder_.remove(paramInt);
      return this;
    }

    public Builder removeInsertReplaceOnConflict(int paramInt)
    {
      if (this.insertReplaceOnConflictBuilder_ == null)
      {
        ensureInsertReplaceOnConflictIsMutable();
        this.insertReplaceOnConflict_.remove(paramInt);
        onChanged();
        return this;
      }
      this.insertReplaceOnConflictBuilder_.remove(paramInt);
      return this;
    }

    public Builder removeUpdate(int paramInt)
    {
      if (this.updateBuilder_ == null)
      {
        ensureUpdateIsMutable();
        this.update_.remove(paramInt);
        onChanged();
        return this;
      }
      this.updateBuilder_.remove(paramInt);
      return this;
    }

    public Builder setDelete(int paramInt, Delete.Builder paramBuilder)
    {
      if (this.deleteBuilder_ == null)
      {
        ensureDeleteIsMutable();
        this.delete_.set(paramInt, paramBuilder.build());
        onChanged();
        return this;
      }
      this.deleteBuilder_.setMessage(paramInt, paramBuilder.build());
      return this;
    }

    public Builder setDelete(int paramInt, Delete paramDelete)
    {
      if (this.deleteBuilder_ == null)
      {
        if (paramDelete == null)
          throw new NullPointerException();
        ensureDeleteIsMutable();
        this.delete_.set(paramInt, paramDelete);
        onChanged();
        return this;
      }
      this.deleteBuilder_.setMessage(paramInt, paramDelete);
      return this;
    }

    public Builder setDeviceId(String paramString)
    {
      if (paramString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x10 | this.bitField0_);
      this.deviceId_ = paramString;
      onChanged();
      return this;
    }

    public Builder setDeviceIdBytes(ByteString paramByteString)
    {
      if (paramByteString == null)
        throw new NullPointerException();
      this.bitField0_ = (0x10 | this.bitField0_);
      this.deviceId_ = paramByteString;
      onChanged();
      return this;
    }

    public Builder setInsertReplaceOnConflict(int paramInt, InsertReplaceOnConflict.Builder paramBuilder)
    {
      if (this.insertReplaceOnConflictBuilder_ == null)
      {
        ensureInsertReplaceOnConflictIsMutable();
        this.insertReplaceOnConflict_.set(paramInt, paramBuilder.build());
        onChanged();
        return this;
      }
      this.insertReplaceOnConflictBuilder_.setMessage(paramInt, paramBuilder.build());
      return this;
    }

    public Builder setInsertReplaceOnConflict(int paramInt, InsertReplaceOnConflict paramInsertReplaceOnConflict)
    {
      if (this.insertReplaceOnConflictBuilder_ == null)
      {
        if (paramInsertReplaceOnConflict == null)
          throw new NullPointerException();
        ensureInsertReplaceOnConflictIsMutable();
        this.insertReplaceOnConflict_.set(paramInt, paramInsertReplaceOnConflict);
        onChanged();
        return this;
      }
      this.insertReplaceOnConflictBuilder_.setMessage(paramInt, paramInsertReplaceOnConflict);
      return this;
    }

    public Builder setSelect(Select.Builder paramBuilder)
    {
      if (this.selectBuilder_ == null)
      {
        this.select_ = paramBuilder.build();
        onChanged();
      }
      while (true)
      {
        this.bitField0_ = (0x1 | this.bitField0_);
        return this;
        this.selectBuilder_.setMessage(paramBuilder.build());
      }
    }

    public Builder setSelect(Select paramSelect)
    {
      if (this.selectBuilder_ == null)
      {
        if (paramSelect == null)
          throw new NullPointerException();
        this.select_ = paramSelect;
        onChanged();
      }
      while (true)
      {
        this.bitField0_ = (0x1 | this.bitField0_);
        return this;
        this.selectBuilder_.setMessage(paramSelect);
      }
    }

    public Builder setSupportsUserActions(boolean paramBoolean)
    {
      this.bitField0_ = (0x20 | this.bitField0_);
      this.supportsUserActions_ = paramBoolean;
      onChanged();
      return this;
    }

    public Builder setUpdate(int paramInt, Update.Builder paramBuilder)
    {
      if (this.updateBuilder_ == null)
      {
        ensureUpdateIsMutable();
        this.update_.set(paramInt, paramBuilder.build());
        onChanged();
        return this;
      }
      this.updateBuilder_.setMessage(paramInt, paramBuilder.build());
      return this;
    }

    public Builder setUpdate(int paramInt, Update paramUpdate)
    {
      if (this.updateBuilder_ == null)
      {
        if (paramUpdate == null)
          throw new NullPointerException();
        ensureUpdateIsMutable();
        this.update_.set(paramInt, paramUpdate);
        onChanged();
        return this;
      }
      this.updateBuilder_.setMessage(paramInt, paramUpdate);
      return this;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.SyncRequest
 * JD-Core Version:    0.6.2
 */