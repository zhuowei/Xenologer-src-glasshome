.class public final Lcom/google/glass/companion/Proto$TimelineItemResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Proto.java"

# interfaces
.implements Lcom/google/glass/companion/Proto$TimelineItemResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimelineItemResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;
    }
.end annotation


# static fields
.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/glass/companion/Proto$TimelineItemResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final SYNC_STATUS_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/glass/companion/Proto$TimelineItemResponse;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessageLite;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private syncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

.field private final unknownFields:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13696
    new-instance v0, Lcom/google/glass/companion/Proto$TimelineItemResponse$1;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$TimelineItemResponse$1;-><init>()V

    sput-object v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 13833
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 14146
    new-instance v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/glass/companion/Proto$TimelineItemResponse;-><init>(Z)V

    sput-object v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->defaultInstance:Lcom/google/glass/companion/Proto$TimelineItemResponse;

    .line 14147
    sget-object v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->defaultInstance:Lcom/google/glass/companion/Proto$TimelineItemResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->initFields()V

    .line 14148
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

    .line 13637
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 13785
    iput-byte v9, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->memoizedIsInitialized:B

    .line 13806
    iput v9, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->memoizedSerializedSize:I

    .line 13638
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->initFields()V

    .line 13639
    const/4 v3, 0x0

    .line 13640
    .local v3, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/ByteString;->newOutput()Lcom/google/protobuf/ByteString$Output;

    move-result-object v7

    .line 13642
    .local v7, unknownFieldsOutput:Lcom/google/protobuf/ByteString$Output;
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v6

    .line 13646
    .local v6, unknownFieldsCodedOutput:Lcom/google/protobuf/CodedOutputStream;
    const/4 v1, 0x0

    .line 13647
    .local v1, done:Z
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 13648
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 13649
    .local v5, tag:I
    sparse-switch v5, :sswitch_data_0

    .line 13654
    invoke-virtual {p0, p1, v6, p2, v5}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 13656
    const/4 v1, 0x1

    goto :goto_0

    .line 13651
    :sswitch_0
    const/4 v1, 0x1

    .line 13652
    goto :goto_0

    .line 13661
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 13662
    .local v0, bs:Lcom/google/protobuf/ByteString;
    iget v9, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    or-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    .line 13663
    iput-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 13680
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v5           #tag:I
    :catch_0
    move-exception v2

    .line 13681
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v9

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13686
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v9

    .line 13687
    :try_start_2
    invoke-virtual {v6}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 13691
    invoke-virtual {v7}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v10

    iput-object v10, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 13693
    :goto_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->makeExtensionsImmutable()V

    throw v9

    .line 13667
    .restart local v5       #tag:I
    :sswitch_2
    :try_start_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 13668
    .local v4, rawValue:I
    invoke-static {v4}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->valueOf(I)Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    move-result-object v8

    .line 13669
    .local v8, value:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
    if-nez v8, :cond_1

    .line 13670
    invoke-virtual {v6, v5}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 13671
    invoke-virtual {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 13682
    .end local v4           #rawValue:I
    .end local v5           #tag:I
    .end local v8           #value:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
    :catch_1
    move-exception v2

    .line 13683
    .local v2, e:Ljava/io/IOException;
    :try_start_4
    new-instance v9, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v9

    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 13673
    .end local v2           #e:Ljava/io/IOException;
    .restart local v4       #rawValue:I
    .restart local v5       #tag:I
    .restart local v8       #value:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
    :cond_1
    :try_start_5
    iget v9, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    or-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    .line 13674
    iput-object v8, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 13687
    .end local v4           #rawValue:I
    .end local v5           #tag:I
    .end local v8           #value:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
    :cond_2
    :try_start_6
    invoke-virtual {v6}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 13691
    invoke-virtual {v7}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 13693
    :goto_2
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->makeExtensionsImmutable()V

    .line 13695
    return-void

    .line 13688
    :catch_2
    move-exception v9

    .line 13691
    invoke-virtual {v7}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_2

    :catchall_1
    move-exception v9

    invoke-virtual {v7}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v10

    iput-object v10, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v9

    .line 13688
    :catch_3
    move-exception v10

    .line 13691
    invoke-virtual {v7}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v10

    iput-object v10, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_1

    :catchall_2
    move-exception v9

    invoke-virtual {v7}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v10

    iput-object v10, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v9

    .line 13649
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 13613
    invoke-direct {p0, p1, p2}, Lcom/google/glass/companion/Proto$TimelineItemResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 13619
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 13785
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->memoizedIsInitialized:B

    .line 13806
    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->memoizedSerializedSize:I

    .line 13620
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 13621
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13613
    invoke-direct {p0, p1}, Lcom/google/glass/companion/Proto$TimelineItemResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 13622
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 13785
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->memoizedIsInitialized:B

    .line 13806
    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->memoizedSerializedSize:I

    .line 13622
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$14100(Lcom/google/glass/companion/Proto$TimelineItemResponse;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13613
    iget-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$14102(Lcom/google/glass/companion/Proto$TimelineItemResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13613
    iput-object p1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14202(Lcom/google/glass/companion/Proto$TimelineItemResponse;Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;)Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13613
    iput-object p1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    return-object p1
.end method

.method static synthetic access$14302(Lcom/google/glass/companion/Proto$TimelineItemResponse;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13613
    iput p1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    return p1
.end method

.method static synthetic access$14400(Lcom/google/glass/companion/Proto$TimelineItemResponse;)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13613
    iget-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .locals 1

    .prologue
    .line 13626
    sget-object v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->defaultInstance:Lcom/google/glass/companion/Proto$TimelineItemResponse;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 13782
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/Object;

    .line 13783
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->NOT_SYNCED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    .line 13784
    return-void
.end method

.method public static newBuilder()Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;
    .locals 1

    .prologue
    .line 13895
    #calls: Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->create()Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;
    invoke-static {}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->access$13900()Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/glass/companion/Proto$TimelineItemResponse;)Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 13898
    invoke-static {}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->newBuilder()Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$TimelineItemResponse;)Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13875
    sget-object v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13881
    sget-object v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13845
    sget-object v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13851
    sget-object v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13886
    sget-object v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13892
    sget-object v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13865
    sget-object v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13871
    sget-object v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13855
    sget-object v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13861
    sget-object v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .locals 1

    .prologue
    .line 13630
    sget-object v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->defaultInstance:Lcom/google/glass/companion/Proto$TimelineItemResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13613
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$TimelineItemResponse;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 13732
    iget-object v1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/Object;

    .line 13733
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 13734
    check-cast v1, Ljava/lang/String;

    .line 13742
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 13736
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 13738
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 13739
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 13740
    iput-object v2, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 13742
    goto :goto_0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 13754
    iget-object v1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/Object;

    .line 13755
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 13756
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 13759
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/Object;

    .line 13762
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

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/glass/companion/Proto$TimelineItemResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13708
    sget-object v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 13808
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->memoizedSerializedSize:I

    .line 13809
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 13822
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 13811
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 13812
    iget v2, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 13813
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 13816
    :cond_1
    iget v2, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 13817
    iget-object v2, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 13820
    :cond_2
    iget-object v2, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 13821
    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 13822
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getSyncStatus()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
    .locals 1

    .prologue
    .line 13778
    iget-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    return-object v0
.end method

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 13722
    iget v1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSyncStatus()Z
    .locals 2

    .prologue
    .line 13772
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

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

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 13836
    sget-object v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    if-nez v0, :cond_0

    .line 13837
    const-string v0, "com.google.glass.companion.MutableProto$TimelineItemResponse"

    invoke-static {v0}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 13839
    :cond_0
    sget-object v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 13787
    iget-byte v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->memoizedIsInitialized:B

    .line 13788
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 13791
    :goto_0
    return v1

    .line 13788
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 13790
    :cond_1
    iput-byte v1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;
    .locals 1

    .prologue
    .line 13896
    invoke-static {}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->newBuilder()Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13613
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->newBuilderForType()Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;
    .locals 1

    .prologue
    .line 13900
    invoke-static {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->newBuilder(Lcom/google/glass/companion/Proto$TimelineItemResponse;)Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13613
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->toBuilder()Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;

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
    .line 13829
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

    .line 13796
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->getSerializedSize()I

    .line 13797
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 13798
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 13800
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 13801
    iget-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 13803
    :cond_1
    iget-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/protobuf/ByteString;)V

    .line 13804
    return-void
.end method
