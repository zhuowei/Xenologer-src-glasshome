.class public final Lcom/google/glass/companion/Proto$ApiRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Proto.java"

# interfaces
.implements Lcom/google/glass/companion/Proto$ApiRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/Proto$ApiRequest$Builder;,
        Lcom/google/glass/companion/Proto$ApiRequest$RequestType;
    }
.end annotation


# static fields
.field public static final ATTACHMENT_CONTENT_FIELD_NUMBER:I = 0x5

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/glass/companion/Proto$ApiRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROJECT_ID_FIELD_NUMBER:I = 0x1

.field public static final TIMELINE_ITEM_FIELD_NUMBER:I = 0x4

.field public static final TOKEN_FIELD_NUMBER:I = 0x2

.field public static final TYPE_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/glass/companion/Proto$ApiRequest;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessageLite;

.field private static final serialVersionUID:J


# instance fields
.field private attachmentContent_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private projectId_:Ljava/lang/Object;

.field private timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

.field private token_:Ljava/lang/Object;

.field private type_:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

.field private final unknownFields:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14394
    new-instance v0, Lcom/google/glass/companion/Proto$ApiRequest$1;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$ApiRequest$1;-><init>()V

    sput-object v0, Lcom/google/glass/companion/Proto$ApiRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 14754
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/companion/Proto$ApiRequest;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 15411
    new-instance v0, Lcom/google/glass/companion/Proto$ApiRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/glass/companion/Proto$ApiRequest;-><init>(Z)V

    sput-object v0, Lcom/google/glass/companion/Proto$ApiRequest;->defaultInstance:Lcom/google/glass/companion/Proto$ApiRequest;

    .line 15412
    sget-object v0, Lcom/google/glass/companion/Proto$ApiRequest;->defaultInstance:Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$ApiRequest;->initFields()V

    .line 15413
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 13
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    const/16 v12, 0x10

    .line 14305
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 14680
    iput-byte v10, p0, Lcom/google/glass/companion/Proto$ApiRequest;->memoizedIsInitialized:B

    .line 14710
    iput v10, p0, Lcom/google/glass/companion/Proto$ApiRequest;->memoizedSerializedSize:I

    .line 14306
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$ApiRequest;->initFields()V

    .line 14307
    const/4 v3, 0x0

    .line 14308
    .local v3, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/ByteString;->newOutput()Lcom/google/protobuf/ByteString$Output;

    move-result-object v8

    .line 14310
    .local v8, unknownFieldsOutput:Lcom/google/protobuf/ByteString$Output;
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v7

    .line 14314
    .local v7, unknownFieldsCodedOutput:Lcom/google/protobuf/CodedOutputStream;
    const/4 v1, 0x0

    .line 14315
    .local v1, done:Z
    :cond_0
    :goto_0
    if-nez v1, :cond_6

    .line 14316
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v6

    .line 14317
    .local v6, tag:I
    sparse-switch v6, :sswitch_data_0

    .line 14322
    invoke-virtual {p0, p1, v7, p2, v6}, Lcom/google/glass/companion/Proto$ApiRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 14324
    const/4 v1, 0x1

    goto :goto_0

    .line 14319
    :sswitch_0
    const/4 v1, 0x1

    .line 14320
    goto :goto_0

    .line 14329
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14330
    .local v0, bs:Lcom/google/protobuf/ByteString;
    iget v10, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    or-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    .line 14331
    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 14375
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v6           #tag:I
    :catch_0
    move-exception v2

    .line 14376
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v10

    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14381
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v10

    and-int/lit8 v11, v3, 0x10

    if-ne v11, v12, :cond_1

    .line 14382
    iget-object v11, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent_:Ljava/util/List;

    invoke-static {v11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    iput-object v11, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent_:Ljava/util/List;

    .line 14385
    :cond_1
    :try_start_2
    invoke-virtual {v7}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 14389
    invoke-virtual {v8}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v11

    iput-object v11, p0, Lcom/google/glass/companion/Proto$ApiRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 14391
    :goto_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest;->makeExtensionsImmutable()V

    throw v10

    .line 14335
    .restart local v6       #tag:I
    :sswitch_2
    :try_start_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14336
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v10, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    or-int/lit8 v10, v10, 0x2

    iput v10, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    .line 14337
    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->token_:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 14377
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v6           #tag:I
    :catch_1
    move-exception v2

    .line 14378
    .local v2, e:Ljava/io/IOException;
    :try_start_4
    new-instance v10, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v10

    throw v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 14341
    .end local v2           #e:Ljava/io/IOException;
    .restart local v6       #tag:I
    :sswitch_3
    :try_start_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 14342
    .local v4, rawValue:I
    invoke-static {v4}, Lcom/google/glass/companion/Proto$ApiRequest$RequestType;->valueOf(I)Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    move-result-object v9

    .line 14343
    .local v9, value:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;
    if-nez v9, :cond_2

    .line 14344
    invoke-virtual {v7, v6}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 14345
    invoke-virtual {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    goto :goto_0

    .line 14347
    :cond_2
    iget v10, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    or-int/lit8 v10, v10, 0x4

    iput v10, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    .line 14348
    iput-object v9, p0, Lcom/google/glass/companion/Proto$ApiRequest;->type_:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    goto :goto_0

    .line 14353
    .end local v4           #rawValue:I
    .end local v9           #value:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;
    :sswitch_4
    const/4 v5, 0x0

    .line 14354
    .local v5, subBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    iget v10, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v10, v10, 0x8

    const/16 v11, 0x8

    if-ne v10, v11, :cond_3

    .line 14355
    iget-object v10, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v10}, Lcom/google/googlex/glass/common/proto/TimelineItem;->toBuilder()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v5

    .line 14357
    :cond_3
    sget-object v10, Lcom/google/googlex/glass/common/proto/TimelineItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v10, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v10

    check-cast v10, Lcom/google/googlex/glass/common/proto/TimelineItem;

    iput-object v10, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 14358
    if-eqz v5, :cond_4

    .line 14359
    iget-object v10, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v5, v10}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 14360
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v10

    iput-object v10, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 14362
    :cond_4
    iget v10, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    or-int/lit8 v10, v10, 0x8

    iput v10, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    goto/16 :goto_0

    .line 14366
    .end local v5           #subBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    :sswitch_5
    and-int/lit8 v10, v3, 0x10

    if-eq v10, v12, :cond_5

    .line 14367
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent_:Ljava/util/List;

    .line 14368
    or-int/lit8 v3, v3, 0x10

    .line 14370
    :cond_5
    iget-object v10, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 14381
    .end local v6           #tag:I
    :cond_6
    and-int/lit8 v10, v3, 0x10

    if-ne v10, v12, :cond_7

    .line 14382
    iget-object v10, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent_:Ljava/util/List;

    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    iput-object v10, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent_:Ljava/util/List;

    .line 14385
    :cond_7
    :try_start_6
    invoke-virtual {v7}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 14389
    invoke-virtual {v8}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v10

    iput-object v10, p0, Lcom/google/glass/companion/Proto$ApiRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 14391
    :goto_2
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest;->makeExtensionsImmutable()V

    .line 14393
    return-void

    .line 14386
    :catch_2
    move-exception v10

    .line 14389
    invoke-virtual {v8}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v10

    iput-object v10, p0, Lcom/google/glass/companion/Proto$ApiRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_2

    :catchall_1
    move-exception v10

    invoke-virtual {v8}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v11

    iput-object v11, p0, Lcom/google/glass/companion/Proto$ApiRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v10

    .line 14386
    :catch_3
    move-exception v11

    .line 14389
    invoke-virtual {v8}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v11

    iput-object v11, p0, Lcom/google/glass/companion/Proto$ApiRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    goto/16 :goto_1

    :catchall_2
    move-exception v10

    invoke-virtual {v8}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v11

    iput-object v11, p0, Lcom/google/glass/companion/Proto$ApiRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v10

    .line 14317
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/glass/companion/Proto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14281
    invoke-direct {p0, p1, p2}, Lcom/google/glass/companion/Proto$ApiRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 14287
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 14680
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->memoizedIsInitialized:B

    .line 14710
    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->memoizedSerializedSize:I

    .line 14288
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 14289
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14281
    invoke-direct {p0, p1}, Lcom/google/glass/companion/Proto$ApiRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 14290
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 14680
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->memoizedIsInitialized:B

    .line 14710
    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->memoizedSerializedSize:I

    .line 14290
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$14800(Lcom/google/glass/companion/Proto$ApiRequest;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14281
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$14802(Lcom/google/glass/companion/Proto$ApiRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14281
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14900(Lcom/google/glass/companion/Proto$ApiRequest;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14281
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->token_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$14902(Lcom/google/glass/companion/Proto$ApiRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14281
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiRequest;->token_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$15002(Lcom/google/glass/companion/Proto$ApiRequest;Lcom/google/glass/companion/Proto$ApiRequest$RequestType;)Lcom/google/glass/companion/Proto$ApiRequest$RequestType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14281
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiRequest;->type_:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    return-object p1
.end method

.method static synthetic access$15102(Lcom/google/glass/companion/Proto$ApiRequest;Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14281
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object p1
.end method

.method static synthetic access$15200(Lcom/google/glass/companion/Proto$ApiRequest;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14281
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$15202(Lcom/google/glass/companion/Proto$ApiRequest;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14281
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$15302(Lcom/google/glass/companion/Proto$ApiRequest;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14281
    iput p1, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    return p1
.end method

.method static synthetic access$15400(Lcom/google/glass/companion/Proto$ApiRequest;)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14281
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1

    .prologue
    .line 14294
    sget-object v0, Lcom/google/glass/companion/Proto$ApiRequest;->defaultInstance:Lcom/google/glass/companion/Proto$ApiRequest;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 14674
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId_:Ljava/lang/Object;

    .line 14675
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->token_:Ljava/lang/Object;

    .line 14676
    sget-object v0, Lcom/google/glass/companion/Proto$ApiRequest$RequestType;->INSERT_OR_UPDATE_TIMELINE_ITEM:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->type_:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    .line 14677
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 14678
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent_:Ljava/util/List;

    .line 14679
    return-void
.end method

.method public static newBuilder()Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1

    .prologue
    .line 14816
    #calls: Lcom/google/glass/companion/Proto$ApiRequest$Builder;->create()Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->access$14600()Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/glass/companion/Proto$ApiRequest;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 14819
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiRequest;->newBuilder()Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$ApiRequest;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14796
    sget-object v0, Lcom/google/glass/companion/Proto$ApiRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ApiRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14802
    sget-object v0, Lcom/google/glass/companion/Proto$ApiRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ApiRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14766
    sget-object v0, Lcom/google/glass/companion/Proto$ApiRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ApiRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14772
    sget-object v0, Lcom/google/glass/companion/Proto$ApiRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ApiRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14807
    sget-object v0, Lcom/google/glass/companion/Proto$ApiRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ApiRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14813
    sget-object v0, Lcom/google/glass/companion/Proto$ApiRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ApiRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14786
    sget-object v0, Lcom/google/glass/companion/Proto$ApiRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ApiRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14792
    sget-object v0, Lcom/google/glass/companion/Proto$ApiRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ApiRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14776
    sget-object v0, Lcom/google/glass/companion/Proto$ApiRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ApiRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14782
    sget-object v0, Lcom/google/glass/companion/Proto$ApiRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ApiRequest;

    return-object v0
.end method


# virtual methods
.method public getAttachmentContent(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "index"

    .prologue
    .line 14670
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getAttachmentContentCount()I
    .locals 1

    .prologue
    .line 14659
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAttachmentContentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14648
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent_:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1

    .prologue
    .line 14298
    sget-object v0, Lcom/google/glass/companion/Proto$ApiRequest;->defaultInstance:Lcom/google/glass/companion/Proto$ApiRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14281
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/glass/companion/Proto$ApiRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14406
    sget-object v0, Lcom/google/glass/companion/Proto$ApiRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getProjectId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 14502
    iget-object v1, p0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId_:Ljava/lang/Object;

    .line 14503
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 14504
    check-cast v1, Ljava/lang/String;

    .line 14512
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 14506
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 14508
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 14509
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 14510
    iput-object v2, p0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 14512
    goto :goto_0
.end method

.method public getProjectIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 14524
    iget-object v1, p0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId_:Ljava/lang/Object;

    .line 14525
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 14526
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14529
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId_:Ljava/lang/Object;

    .line 14532
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 14712
    iget v2, p0, Lcom/google/glass/companion/Proto$ApiRequest;->memoizedSerializedSize:I

    .line 14713
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 14743
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 14715
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 14716
    iget v4, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1

    .line 14717
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest;->getProjectIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 14720
    :cond_1
    iget v4, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_2

    .line 14721
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest;->getTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 14724
    :cond_2
    iget v4, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v7, :cond_3

    .line 14725
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->type_:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    invoke-virtual {v5}, Lcom/google/glass/companion/Proto$ApiRequest$RequestType;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 14728
    :cond_3
    iget v4, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_4

    .line 14729
    iget-object v4, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-static {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 14733
    :cond_4
    const/4 v0, 0x0

    .line 14734
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 14735
    iget-object v4, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/ByteString;

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 14734
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 14738
    :cond_5
    add-int/2addr v2, v0

    .line 14739
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest;->getAttachmentContentList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 14741
    iget-object v4, p0, Lcom/google/glass/companion/Proto$ApiRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->size()I

    move-result v4

    add-int/2addr v2, v4

    .line 14742
    iput v2, p0, Lcom/google/glass/companion/Proto$ApiRequest;->memoizedSerializedSize:I

    move v3, v2

    .line 14743
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_0
.end method

.method public getTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1

    .prologue
    .line 14633
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 4

    .prologue
    .line 14556
    iget-object v1, p0, Lcom/google/glass/companion/Proto$ApiRequest;->token_:Ljava/lang/Object;

    .line 14557
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 14558
    check-cast v1, Ljava/lang/String;

    .line 14566
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 14560
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 14562
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 14563
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 14564
    iput-object v2, p0, Lcom/google/glass/companion/Proto$ApiRequest;->token_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 14566
    goto :goto_0
.end method

.method public getTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 14578
    iget-object v1, p0, Lcom/google/glass/companion/Proto$ApiRequest;->token_:Ljava/lang/Object;

    .line 14579
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 14580
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14583
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->token_:Ljava/lang/Object;

    .line 14586
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getType()Lcom/google/glass/companion/Proto$ApiRequest$RequestType;
    .locals 1

    .prologue
    .line 14610
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->type_:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    return-object v0
.end method

.method public hasProjectId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 14492
    iget v1, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimelineItem()Z
    .locals 2

    .prologue
    .line 14623
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasToken()Z
    .locals 2

    .prologue
    .line 14546
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 2

    .prologue
    .line 14600
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 14757
    sget-object v0, Lcom/google/glass/companion/Proto$ApiRequest;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    if-nez v0, :cond_0

    .line 14758
    const-string v0, "com.google.glass.companion.MutableProto$ApiRequest"

    invoke-static {v0}, Lcom/google/glass/companion/Proto$ApiRequest;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/Proto$ApiRequest;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 14760
    :cond_0
    sget-object v0, Lcom/google/glass/companion/Proto$ApiRequest;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 14682
    iget-byte v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->memoizedIsInitialized:B

    .line 14683
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 14686
    :goto_0
    return v1

    .line 14683
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 14685
    :cond_1
    iput-byte v1, p0, Lcom/google/glass/companion/Proto$ApiRequest;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1

    .prologue
    .line 14817
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiRequest;->newBuilder()Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14281
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest;->newBuilderForType()Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1

    .prologue
    .line 14821
    invoke-static {p0}, Lcom/google/glass/companion/Proto$ApiRequest;->newBuilder(Lcom/google/glass/companion/Proto$ApiRequest;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14281
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest;->toBuilder()Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 14750
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 14691
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest;->getSerializedSize()I

    .line 14692
    iget v1, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 14693
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest;->getProjectIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 14695
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 14696
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest;->getTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 14698
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2

    .line 14699
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$ApiRequest;->type_:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$ApiRequest$RequestType;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 14701
    :cond_2
    iget v1, p0, Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 14702
    iget-object v1, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 14704
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 14705
    const/4 v2, 0x5

    iget-object v1, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 14704
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14707
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/Proto$ApiRequest;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/protobuf/ByteString;)V

    .line 14708
    return-void
.end method
