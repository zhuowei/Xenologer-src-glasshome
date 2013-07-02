.class public final Lcom/google/glass/companion/Proto$ApiResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Proto.java"

# interfaces
.implements Lcom/google/glass/companion/Proto$ApiResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/Proto$ApiResponse$Builder;,
        Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/glass/companion/Proto$ApiResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIMELINE_ITEM_FIELD_NUMBER:I = 0x2

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field public static final USER_ACTION_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/glass/companion/Proto$ApiResponse;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessageLite;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

.field private type_:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

.field private final unknownFields:Lcom/google/protobuf/ByteString;

.field private userAction_:Lcom/google/googlex/glass/common/proto/UserAction;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15562
    new-instance v0, Lcom/google/glass/companion/Proto$ApiResponse$1;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$ApiResponse$1;-><init>()V

    sput-object v0, Lcom/google/glass/companion/Proto$ApiResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 15738
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/companion/Proto$ApiResponse;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 16078
    new-instance v0, Lcom/google/glass/companion/Proto$ApiResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/glass/companion/Proto$ApiResponse;-><init>(Z)V

    sput-object v0, Lcom/google/glass/companion/Proto$ApiResponse;->defaultInstance:Lcom/google/glass/companion/Proto$ApiResponse;

    .line 16079
    sget-object v0, Lcom/google/glass/companion/Proto$ApiResponse;->defaultInstance:Lcom/google/glass/companion/Proto$ApiResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$ApiResponse;->initFields()V

    .line 16080
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 11
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 15483
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 15683
    iput-byte v9, p0, Lcom/google/glass/companion/Proto$ApiResponse;->memoizedIsInitialized:B

    .line 15707
    iput v9, p0, Lcom/google/glass/companion/Proto$ApiResponse;->memoizedSerializedSize:I

    .line 15484
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$ApiResponse;->initFields()V

    .line 15485
    const/4 v2, 0x0

    .line 15486
    .local v2, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/ByteString;->newOutput()Lcom/google/protobuf/ByteString$Output;

    move-result-object v7

    .line 15488
    .local v7, unknownFieldsOutput:Lcom/google/protobuf/ByteString$Output;
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v6

    .line 15492
    .local v6, unknownFieldsCodedOutput:Lcom/google/protobuf/CodedOutputStream;
    const/4 v0, 0x0

    .line 15493
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_6

    .line 15494
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 15495
    .local v5, tag:I
    sparse-switch v5, :sswitch_data_0

    .line 15500
    invoke-virtual {p0, p1, v6, p2, v5}, Lcom/google/glass/companion/Proto$ApiResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 15502
    const/4 v0, 0x1

    goto :goto_0

    .line 15497
    :sswitch_0
    const/4 v0, 0x1

    .line 15498
    goto :goto_0

    .line 15507
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 15508
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;->valueOf(I)Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    move-result-object v8

    .line 15509
    .local v8, value:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;
    if-nez v8, :cond_1

    .line 15510
    invoke-virtual {v6, v5}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 15511
    invoke-virtual {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 15546
    .end local v3           #rawValue:I
    .end local v5           #tag:I
    .end local v8           #value:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;
    :catch_0
    move-exception v1

    .line 15547
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v9

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15552
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v9

    .line 15553
    :try_start_2
    invoke-virtual {v6}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 15557
    invoke-virtual {v7}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v10

    iput-object v10, p0, Lcom/google/glass/companion/Proto$ApiResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 15559
    :goto_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiResponse;->makeExtensionsImmutable()V

    throw v9

    .line 15513
    .restart local v3       #rawValue:I
    .restart local v5       #tag:I
    .restart local v8       #value:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;
    :cond_1
    :try_start_3
    iget v9, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I

    or-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I

    .line 15514
    iput-object v8, p0, Lcom/google/glass/companion/Proto$ApiResponse;->type_:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 15548
    .end local v3           #rawValue:I
    .end local v5           #tag:I
    .end local v8           #value:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;
    :catch_1
    move-exception v1

    .line 15549
    .local v1, e:Ljava/io/IOException;
    :try_start_4
    new-instance v9, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v9

    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 15519
    .end local v1           #e:Ljava/io/IOException;
    .restart local v5       #tag:I
    :sswitch_2
    const/4 v4, 0x0

    .line 15520
    .local v4, subBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    :try_start_5
    iget v9, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I

    and-int/lit8 v9, v9, 0x2

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 15521
    iget-object v9, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/TimelineItem;->toBuilder()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v4

    .line 15523
    :cond_2
    sget-object v9, Lcom/google/googlex/glass/common/proto/TimelineItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    check-cast v9, Lcom/google/googlex/glass/common/proto/TimelineItem;

    iput-object v9, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 15524
    if-eqz v4, :cond_3

    .line 15525
    iget-object v9, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v4, v9}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 15526
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 15528
    :cond_3
    iget v9, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I

    or-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I

    goto :goto_0

    .line 15532
    .end local v4           #subBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    :sswitch_3
    const/4 v4, 0x0

    .line 15533
    .local v4, subBuilder:Lcom/google/googlex/glass/common/proto/UserAction$Builder;
    iget v9, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I

    and-int/lit8 v9, v9, 0x4

    const/4 v10, 0x4

    if-ne v9, v10, :cond_4

    .line 15534
    iget-object v9, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction_:Lcom/google/googlex/glass/common/proto/UserAction;

    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/UserAction;->toBuilder()Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v4

    .line 15536
    :cond_4
    sget-object v9, Lcom/google/googlex/glass/common/proto/UserAction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    check-cast v9, Lcom/google/googlex/glass/common/proto/UserAction;

    iput-object v9, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction_:Lcom/google/googlex/glass/common/proto/UserAction;

    .line 15537
    if-eqz v4, :cond_5

    .line 15538
    iget-object v9, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction_:Lcom/google/googlex/glass/common/proto/UserAction;

    invoke-virtual {v4, v9}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/UserAction;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    .line 15539
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction_:Lcom/google/googlex/glass/common/proto/UserAction;

    .line 15541
    :cond_5
    iget v9, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I

    or-int/lit8 v9, v9, 0x4

    iput v9, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 15553
    .end local v4           #subBuilder:Lcom/google/googlex/glass/common/proto/UserAction$Builder;
    .end local v5           #tag:I
    :cond_6
    :try_start_6
    invoke-virtual {v6}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 15557
    invoke-virtual {v7}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/companion/Proto$ApiResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 15559
    :goto_2
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiResponse;->makeExtensionsImmutable()V

    .line 15561
    return-void

    .line 15554
    :catch_2
    move-exception v9

    .line 15557
    invoke-virtual {v7}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/companion/Proto$ApiResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_2

    :catchall_1
    move-exception v9

    invoke-virtual {v7}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v10

    iput-object v10, p0, Lcom/google/glass/companion/Proto$ApiResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v9

    .line 15554
    :catch_3
    move-exception v10

    .line 15557
    invoke-virtual {v7}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v10

    iput-object v10, p0, Lcom/google/glass/companion/Proto$ApiResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    goto/16 :goto_1

    :catchall_2
    move-exception v9

    invoke-virtual {v7}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v10

    iput-object v10, p0, Lcom/google/glass/companion/Proto$ApiResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v9

    .line 15495
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 15459
    invoke-direct {p0, p1, p2}, Lcom/google/glass/companion/Proto$ApiResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 15465
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 15683
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->memoizedIsInitialized:B

    .line 15707
    iput v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->memoizedSerializedSize:I

    .line 15466
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 15467
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15459
    invoke-direct {p0, p1}, Lcom/google/glass/companion/Proto$ApiResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 15468
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 15683
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->memoizedIsInitialized:B

    .line 15707
    iput v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->memoizedSerializedSize:I

    .line 15468
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$15802(Lcom/google/glass/companion/Proto$ApiResponse;Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;)Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15459
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->type_:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    return-object p1
.end method

.method static synthetic access$15902(Lcom/google/glass/companion/Proto$ApiResponse;Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15459
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object p1
.end method

.method static synthetic access$16002(Lcom/google/glass/companion/Proto$ApiResponse;Lcom/google/googlex/glass/common/proto/UserAction;)Lcom/google/googlex/glass/common/proto/UserAction;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15459
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction_:Lcom/google/googlex/glass/common/proto/UserAction;

    return-object p1
.end method

.method static synthetic access$16102(Lcom/google/glass/companion/Proto$ApiResponse;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15459
    iput p1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I

    return p1
.end method

.method static synthetic access$16200(Lcom/google/glass/companion/Proto$ApiResponse;)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15459
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1

    .prologue
    .line 15472
    sget-object v0, Lcom/google/glass/companion/Proto$ApiResponse;->defaultInstance:Lcom/google/glass/companion/Proto$ApiResponse;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 15679
    sget-object v0, Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;->USER_ACTION:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->type_:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    .line 15680
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 15681
    invoke-static {}, Lcom/google/googlex/glass/common/proto/UserAction;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction_:Lcom/google/googlex/glass/common/proto/UserAction;

    .line 15682
    return-void
.end method

.method public static newBuilder()Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    .locals 1

    .prologue
    .line 15800
    #calls: Lcom/google/glass/companion/Proto$ApiResponse$Builder;->create()Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->access$15600()Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/glass/companion/Proto$ApiResponse;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 15803
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiResponse;->newBuilder()Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$ApiResponse;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15780
    sget-object v0, Lcom/google/glass/companion/Proto$ApiResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ApiResponse;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15786
    sget-object v0, Lcom/google/glass/companion/Proto$ApiResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ApiResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15750
    sget-object v0, Lcom/google/glass/companion/Proto$ApiResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ApiResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15756
    sget-object v0, Lcom/google/glass/companion/Proto$ApiResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ApiResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15791
    sget-object v0, Lcom/google/glass/companion/Proto$ApiResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ApiResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15797
    sget-object v0, Lcom/google/glass/companion/Proto$ApiResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ApiResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15770
    sget-object v0, Lcom/google/glass/companion/Proto$ApiResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ApiResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15776
    sget-object v0, Lcom/google/glass/companion/Proto$ApiResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ApiResponse;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15760
    sget-object v0, Lcom/google/glass/companion/Proto$ApiResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ApiResponse;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15766
    sget-object v0, Lcom/google/glass/companion/Proto$ApiResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ApiResponse;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1

    .prologue
    .line 15476
    sget-object v0, Lcom/google/glass/companion/Proto$ApiResponse;->defaultInstance:Lcom/google/glass/companion/Proto$ApiResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 15459
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiResponse;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$ApiResponse;

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
            "Lcom/google/glass/companion/Proto$ApiResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15574
    sget-object v0, Lcom/google/glass/companion/Proto$ApiResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 15709
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->memoizedSerializedSize:I

    .line 15710
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 15727
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 15712
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 15713
    iget v2, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 15714
    iget-object v2, p0, Lcom/google/glass/companion/Proto$ApiResponse;->type_:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 15717
    :cond_1
    iget v2, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 15718
    iget-object v2, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 15721
    :cond_2
    iget v2, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 15722
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction_:Lcom/google/googlex/glass/common/proto/UserAction;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 15725
    :cond_3
    iget-object v2, p0, Lcom/google/glass/companion/Proto$ApiResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 15726
    iput v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 15727
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1

    .prologue
    .line 15660
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method

.method public getType()Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;
    .locals 1

    .prologue
    .line 15645
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->type_:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    return-object v0
.end method

.method public getUserAction()Lcom/google/googlex/glass/common/proto/UserAction;
    .locals 1

    .prologue
    .line 15675
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction_:Lcom/google/googlex/glass/common/proto/UserAction;

    return-object v0
.end method

.method public hasTimelineItem()Z
    .locals 2

    .prologue
    .line 15654
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I

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
    const/4 v0, 0x1

    .line 15639
    iget v1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUserAction()Z
    .locals 2

    .prologue
    .line 15669
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I

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
    .line 15741
    sget-object v0, Lcom/google/glass/companion/Proto$ApiResponse;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    if-nez v0, :cond_0

    .line 15742
    const-string v0, "com.google.glass.companion.MutableProto$ApiResponse"

    invoke-static {v0}, Lcom/google/glass/companion/Proto$ApiResponse;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/Proto$ApiResponse;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 15744
    :cond_0
    sget-object v0, Lcom/google/glass/companion/Proto$ApiResponse;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 15685
    iget-byte v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->memoizedIsInitialized:B

    .line 15686
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 15689
    :goto_0
    return v1

    .line 15686
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 15688
    :cond_1
    iput-byte v1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    .locals 1

    .prologue
    .line 15801
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiResponse;->newBuilder()Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 15459
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiResponse;->newBuilderForType()Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    .locals 1

    .prologue
    .line 15805
    invoke-static {p0}, Lcom/google/glass/companion/Proto$ApiResponse;->newBuilder(Lcom/google/glass/companion/Proto$ApiResponse;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 15459
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiResponse;->toBuilder()Lcom/google/glass/companion/Proto$ApiResponse$Builder;

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
    .line 15734
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 15694
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiResponse;->getSerializedSize()I

    .line 15695
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 15696
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->type_:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 15698
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 15699
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 15701
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 15702
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction_:Lcom/google/googlex/glass/common/proto/UserAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 15704
    :cond_2
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/protobuf/ByteString;)V

    .line 15705
    return-void
.end method
