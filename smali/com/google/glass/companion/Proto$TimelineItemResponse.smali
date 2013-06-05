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
    .line 10345
    new-instance v0, Lcom/google/glass/companion/Proto$TimelineItemResponse$1;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$TimelineItemResponse$1;-><init>()V

    sput-object v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 10482
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 10792
    new-instance v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/glass/companion/Proto$TimelineItemResponse;-><init>(Z)V

    sput-object v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->defaultInstance:Lcom/google/glass/companion/Proto$TimelineItemResponse;

    .line 10793
    sget-object v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->defaultInstance:Lcom/google/glass/companion/Proto$TimelineItemResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->initFields()V

    .line 10794
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 10
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 10287
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 10434
    iput-byte v8, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->memoizedIsInitialized:B

    .line 10455
    iput v8, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->memoizedSerializedSize:I

    .line 10288
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->initFields()V

    .line 10289
    const/4 v2, 0x0

    .line 10290
    .local v2, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/ByteString;->newOutput()Lcom/google/protobuf/ByteString$Output;

    move-result-object v6

    .line 10292
    .local v6, unknownFieldsOutput:Lcom/google/protobuf/ByteString$Output;
    invoke-static {v6}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v5

    .line 10296
    .local v5, unknownFieldsCodedOutput:Lcom/google/protobuf/CodedOutputStream;
    const/4 v0, 0x0

    .line 10297
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 10298
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 10299
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 10304
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 10306
    const/4 v0, 0x1

    goto :goto_0

    .line 10301
    :sswitch_0
    const/4 v0, 0x1

    .line 10302
    goto :goto_0

    .line 10311
    :sswitch_1
    iget v8, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    .line 10312
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 10329
    .end local v4           #tag:I
    :catch_0
    move-exception v1

    .line 10330
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10335
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v8

    .line 10336
    :try_start_2
    invoke-virtual {v5}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 10340
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 10342
    :goto_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->makeExtensionsImmutable()V

    throw v8

    .line 10316
    .restart local v4       #tag:I
    :sswitch_2
    :try_start_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 10317
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->valueOf(I)Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    move-result-object v7

    .line 10318
    .local v7, value:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
    if-nez v7, :cond_1

    .line 10319
    invoke-virtual {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 10320
    invoke-virtual {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 10331
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v7           #value:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
    :catch_1
    move-exception v1

    .line 10332
    .local v1, e:Ljava/io/IOException;
    :try_start_4
    new-instance v8, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 10322
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #rawValue:I
    .restart local v4       #tag:I
    .restart local v7       #value:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
    :cond_1
    :try_start_5
    iget v8, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    .line 10323
    iput-object v7, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 10336
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v7           #value:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
    :cond_2
    :try_start_6
    invoke-virtual {v5}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 10340
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 10342
    :goto_2
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->makeExtensionsImmutable()V

    .line 10344
    return-void

    .line 10337
    :catch_2
    move-exception v8

    .line 10340
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_2

    :catchall_1
    move-exception v8

    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v8

    .line 10337
    :catch_3
    move-exception v9

    .line 10340
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_1

    :catchall_2
    move-exception v8

    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v8

    .line 10299
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
    .line 10263
    invoke-direct {p0, p1, p2}, Lcom/google/glass/companion/Proto$TimelineItemResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 10269
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 10434
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->memoizedIsInitialized:B

    .line 10455
    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->memoizedSerializedSize:I

    .line 10270
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 10271
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10263
    invoke-direct {p0, p1}, Lcom/google/glass/companion/Proto$TimelineItemResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 10272
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 10434
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->memoizedIsInitialized:B

    .line 10455
    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->memoizedSerializedSize:I

    .line 10272
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$10000(Lcom/google/glass/companion/Proto$TimelineItemResponse;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10263
    iget-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$10002(Lcom/google/glass/companion/Proto$TimelineItemResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10263
    iput-object p1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$10102(Lcom/google/glass/companion/Proto$TimelineItemResponse;Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;)Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10263
    iput-object p1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    return-object p1
.end method

.method static synthetic access$10202(Lcom/google/glass/companion/Proto$TimelineItemResponse;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10263
    iput p1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    return p1
.end method

.method static synthetic access$10300(Lcom/google/glass/companion/Proto$TimelineItemResponse;)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10263
    iget-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .locals 1

    .prologue
    .line 10276
    sget-object v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->defaultInstance:Lcom/google/glass/companion/Proto$TimelineItemResponse;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 10431
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/Object;

    .line 10432
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->NOT_SYNCED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    .line 10433
    return-void
.end method

.method public static newBuilder()Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;
    .locals 1

    .prologue
    .line 10544
    #calls: Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->create()Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;
    invoke-static {}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->access$9800()Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/glass/companion/Proto$TimelineItemResponse;)Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 10547
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
    .line 10524
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
    .line 10530
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
    .line 10494
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
    .line 10500
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
    .line 10535
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
    .line 10541
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
    .line 10514
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
    .line 10520
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
    .line 10504
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
    .line 10510
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
    .line 10280
    sget-object v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->defaultInstance:Lcom/google/glass/companion/Proto$TimelineItemResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10263
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$TimelineItemResponse;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 10381
    iget-object v1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/Object;

    .line 10382
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 10383
    check-cast v1, Ljava/lang/String;

    .line 10391
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 10385
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 10387
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 10388
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10389
    iput-object v2, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 10391
    goto :goto_0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 10403
    iget-object v1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/Object;

    .line 10404
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 10405
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10408
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/Object;

    .line 10411
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
    .line 10357
    sget-object v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 10457
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->memoizedSerializedSize:I

    .line 10458
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 10471
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 10460
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 10461
    iget v2, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 10462
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 10465
    :cond_1
    iget v2, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 10466
    iget-object v2, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 10469
    :cond_2
    iget-object v2, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 10470
    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 10471
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getSyncStatus()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
    .locals 1

    .prologue
    .line 10427
    iget-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    return-object v0
.end method

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 10371
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
    .line 10421
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
    .line 10485
    sget-object v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    if-nez v0, :cond_0

    .line 10486
    const-string v0, "com.google.glass.companion.MutableProto$TimelineItemResponse"

    invoke-static {v0}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 10488
    :cond_0
    sget-object v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 10436
    iget-byte v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->memoizedIsInitialized:B

    .line 10437
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 10440
    :goto_0
    return v1

    .line 10437
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 10439
    :cond_1
    iput-byte v1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;
    .locals 1

    .prologue
    .line 10545
    invoke-static {}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->newBuilder()Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10263
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->newBuilderForType()Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;
    .locals 1

    .prologue
    .line 10549
    invoke-static {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->newBuilder(Lcom/google/glass/companion/Proto$TimelineItemResponse;)Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10263
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
    .line 10478
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

    .line 10445
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->getSerializedSize()I

    .line 10446
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 10447
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 10449
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 10450
    iget-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 10452
    :cond_1
    iget-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/protobuf/ByteString;)V

    .line 10453
    return-void
.end method
