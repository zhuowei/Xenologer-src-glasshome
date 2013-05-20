.class public final Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Proto.java"

# interfaces
.implements Lcom/google/glass/companion/Proto$TimelineItemResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto$TimelineItemResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/glass/companion/Proto$TimelineItemResponse;",
        "Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;",
        ">;",
        "Lcom/google/glass/companion/Proto$TimelineItemResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private id_:Ljava/lang/Object;

.field private syncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 10394
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 10481
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->id_:Ljava/lang/Object;

    .line 10578
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->NOT_SYNCED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->syncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    .line 10395
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->maybeForceBuilderInitialization()V

    .line 10396
    return-void
.end method

.method static synthetic access$8900()Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;
    .locals 1

    .prologue
    .line 10387
    invoke-static {}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->create()Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;
    .locals 1

    .prologue
    .line 10401
    new-instance v0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 10399
    return-void
.end method


# virtual methods
.method public build()Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .locals 2

    .prologue
    .line 10422
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->buildPartial()Lcom/google/glass/companion/Proto$TimelineItemResponse;

    move-result-object v0

    .line 10423
    .local v0, result:Lcom/google/glass/companion/Proto$TimelineItemResponse;
    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10424
    invoke-static {v0}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 10426
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10387
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->build()Lcom/google/glass/companion/Proto$TimelineItemResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .locals 5

    .prologue
    .line 10430
    new-instance v1, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/glass/companion/Proto$TimelineItemResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V

    .line 10431
    .local v1, result:Lcom/google/glass/companion/Proto$TimelineItemResponse;
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->bitField0_:I

    .line 10432
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 10433
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 10434
    or-int/lit8 v2, v2, 0x1

    .line 10436
    :cond_0
    iget-object v3, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->access$9102(Lcom/google/glass/companion/Proto$TimelineItemResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10437
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 10438
    or-int/lit8 v2, v2, 0x2

    .line 10440
    :cond_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->syncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    #setter for: Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->access$9202(Lcom/google/glass/companion/Proto$TimelineItemResponse;Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;)Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    .line 10441
    #setter for: Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->access$9302(Lcom/google/glass/companion/Proto$TimelineItemResponse;I)I

    .line 10442
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10387
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->buildPartial()Lcom/google/glass/companion/Proto$TimelineItemResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;
    .locals 1

    .prologue
    .line 10405
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 10406
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->id_:Ljava/lang/Object;

    .line 10407
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->bitField0_:I

    .line 10408
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->NOT_SYNCED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->syncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    .line 10409
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->bitField0_:I

    .line 10410
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 10387
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->clear()Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10387
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->clear()Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearId()Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;
    .locals 1

    .prologue
    .line 10555
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->bitField0_:I

    .line 10556
    invoke-static {}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->getDefaultInstance()Lcom/google/glass/companion/Proto$TimelineItemResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->id_:Ljava/lang/Object;

    .line 10558
    return-object p0
.end method

.method public clearSyncStatus()Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;
    .locals 1

    .prologue
    .line 10607
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->bitField0_:I

    .line 10608
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->NOT_SYNCED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->syncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    .line 10610
    return-object p0
.end method

.method public clone()Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;
    .locals 2

    .prologue
    .line 10414
    invoke-static {}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->create()Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->buildPartial()Lcom/google/glass/companion/Proto$TimelineItemResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$TimelineItemResponse;)Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 10387
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->clone()Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 10387
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->clone()Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10387
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->clone()Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 10387
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->clone()Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .locals 1

    .prologue
    .line 10418
    invoke-static {}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->getDefaultInstance()Lcom/google/glass/companion/Proto$TimelineItemResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 10387
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$TimelineItemResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10387
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$TimelineItemResponse;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 10500
    iget-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->id_:Ljava/lang/Object;

    .line 10501
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 10502
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 10504
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->id_:Ljava/lang/Object;

    .line 10507
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 10519
    iget-object v1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->id_:Ljava/lang/Object;

    .line 10520
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 10521
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10524
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->id_:Ljava/lang/Object;

    .line 10527
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

.method public getSyncStatus()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
    .locals 1

    .prologue
    .line 10589
    iget-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->syncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    return-object v0
.end method

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 10490
    iget v1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->bitField0_:I

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
    .line 10583
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 10459
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/glass/companion/Proto$TimelineItemResponse;)Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 10446
    invoke-static {}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->getDefaultInstance()Lcom/google/glass/companion/Proto$TimelineItemResponse;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 10455
    :cond_0
    :goto_0
    return-object p0

    .line 10447
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->hasId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10448
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->bitField0_:I

    .line 10449
    #getter for: Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->access$9100(Lcom/google/glass/companion/Proto$TimelineItemResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->id_:Ljava/lang/Object;

    .line 10452
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->hasSyncStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10453
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->getSyncStatus()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->setSyncStatus(Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;)Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10466
    const/4 v2, 0x0

    .line 10468
    .local v2, parsedMessage:Lcom/google/glass/companion/Proto$TimelineItemResponse;
    :try_start_0
    sget-object v3, Lcom/google/glass/companion/Proto$TimelineItemResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10473
    if-eqz v2, :cond_0

    .line 10474
    invoke-virtual {p0, v2}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$TimelineItemResponse;)Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;

    .line 10477
    :cond_0
    return-object p0

    .line 10469
    :catch_0
    move-exception v1

    .line 10470
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    move-object v2, v0

    .line 10471
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10473
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 10474
    invoke-virtual {p0, v2}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$TimelineItemResponse;)Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;

    :cond_1
    throw v3
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10387
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10387
    check-cast p1, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$TimelineItemResponse;)Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10387
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 10539
    if-nez p1, :cond_0

    .line 10540
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10542
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->bitField0_:I

    .line 10543
    iput-object p1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->id_:Ljava/lang/Object;

    .line 10545
    return-object p0
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 10569
    if-nez p1, :cond_0

    .line 10570
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10572
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->bitField0_:I

    .line 10573
    iput-object p1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->id_:Ljava/lang/Object;

    .line 10575
    return-object p0
.end method

.method public setSyncStatus(Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;)Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 10595
    if-nez p1, :cond_0

    .line 10596
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10598
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->bitField0_:I

    .line 10599
    iput-object p1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->syncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    .line 10601
    return-object p0
.end method
