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
    .line 13919
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 14007
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->id_:Ljava/lang/Object;

    .line 14107
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->NOT_SYNCED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->syncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    .line 13920
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->maybeForceBuilderInitialization()V

    .line 13921
    return-void
.end method

.method static synthetic access$13900()Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;
    .locals 1

    .prologue
    .line 13912
    invoke-static {}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->create()Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;
    .locals 1

    .prologue
    .line 13926
    new-instance v0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 13924
    return-void
.end method


# virtual methods
.method public build()Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .locals 2

    .prologue
    .line 13947
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->buildPartial()Lcom/google/glass/companion/Proto$TimelineItemResponse;

    move-result-object v0

    .line 13948
    .local v0, result:Lcom/google/glass/companion/Proto$TimelineItemResponse;
    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 13949
    invoke-static {v0}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 13951
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13912
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->build()Lcom/google/glass/companion/Proto$TimelineItemResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .locals 5

    .prologue
    .line 13955
    new-instance v1, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/glass/companion/Proto$TimelineItemResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V

    .line 13956
    .local v1, result:Lcom/google/glass/companion/Proto$TimelineItemResponse;
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->bitField0_:I

    .line 13957
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 13958
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 13959
    or-int/lit8 v2, v2, 0x1

    .line 13961
    :cond_0
    iget-object v3, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->access$14102(Lcom/google/glass/companion/Proto$TimelineItemResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13962
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 13963
    or-int/lit8 v2, v2, 0x2

    .line 13965
    :cond_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->syncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    #setter for: Lcom/google/glass/companion/Proto$TimelineItemResponse;->syncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->access$14202(Lcom/google/glass/companion/Proto$TimelineItemResponse;Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;)Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    .line 13966
    #setter for: Lcom/google/glass/companion/Proto$TimelineItemResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->access$14302(Lcom/google/glass/companion/Proto$TimelineItemResponse;I)I

    .line 13967
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13912
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->buildPartial()Lcom/google/glass/companion/Proto$TimelineItemResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;
    .locals 1

    .prologue
    .line 13930
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 13931
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->id_:Ljava/lang/Object;

    .line 13932
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->bitField0_:I

    .line 13933
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->NOT_SYNCED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->syncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    .line 13934
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->bitField0_:I

    .line 13935
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 13912
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->clear()Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13912
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->clear()Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearId()Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;
    .locals 1

    .prologue
    .line 14084
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->bitField0_:I

    .line 14085
    invoke-static {}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->getDefaultInstance()Lcom/google/glass/companion/Proto$TimelineItemResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->id_:Ljava/lang/Object;

    .line 14087
    return-object p0
.end method

.method public clearSyncStatus()Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;
    .locals 1

    .prologue
    .line 14136
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->bitField0_:I

    .line 14137
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->NOT_SYNCED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->syncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    .line 14139
    return-object p0
.end method

.method public clone()Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;
    .locals 2

    .prologue
    .line 13939
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
    .line 13912
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->clone()Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 13912
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->clone()Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13912
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
    .line 13912
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->clone()Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$TimelineItemResponse;
    .locals 1

    .prologue
    .line 13943
    invoke-static {}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->getDefaultInstance()Lcom/google/glass/companion/Proto$TimelineItemResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 13912
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$TimelineItemResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13912
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$TimelineItemResponse;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 14026
    iget-object v1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->id_:Ljava/lang/Object;

    .line 14027
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 14028
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 14030
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 14031
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 14032
    iput-object v2, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->id_:Ljava/lang/Object;

    .line 14036
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v1           #ref:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_1
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 14048
    iget-object v1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->id_:Ljava/lang/Object;

    .line 14049
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 14050
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14053
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->id_:Ljava/lang/Object;

    .line 14056
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
    .line 14118
    iget-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->syncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    return-object v0
.end method

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 14016
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
    .line 14112
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
    .line 13985
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/glass/companion/Proto$TimelineItemResponse;)Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 13971
    invoke-static {}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->getDefaultInstance()Lcom/google/glass/companion/Proto$TimelineItemResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 13981
    :goto_0
    return-object p0

    .line 13972
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13973
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->bitField0_:I

    .line 13974
    #getter for: Lcom/google/glass/companion/Proto$TimelineItemResponse;->id_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->access$14100(Lcom/google/glass/companion/Proto$TimelineItemResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->id_:Ljava/lang/Object;

    .line 13977
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->hasSyncStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13978
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->getSyncStatus()Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->setSyncStatus(Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;)Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;

    .line 13980
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    #getter for: Lcom/google/glass/companion/Proto$TimelineItemResponse;->unknownFields:Lcom/google/protobuf/ByteString;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$TimelineItemResponse;->access$14400(Lcom/google/glass/companion/Proto$TimelineItemResponse;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->concat(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->setUnknownFields(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

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
    .line 13992
    const/4 v2, 0x0

    .line 13994
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

    .line 13999
    if-eqz v2, :cond_0

    .line 14000
    invoke-virtual {p0, v2}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$TimelineItemResponse;)Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;

    .line 14003
    :cond_0
    return-object p0

    .line 13995
    :catch_0
    move-exception v1

    .line 13996
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/companion/Proto$TimelineItemResponse;

    move-object v2, v0

    .line 13997
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13999
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 14000
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
    .line 13912
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13912
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
    .line 13912
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 14068
    if-nez p1, :cond_0

    .line 14069
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14071
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->bitField0_:I

    .line 14072
    iput-object p1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->id_:Ljava/lang/Object;

    .line 14074
    return-object p0
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 14098
    if-nez p1, :cond_0

    .line 14099
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14101
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->bitField0_:I

    .line 14102
    iput-object p1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->id_:Ljava/lang/Object;

    .line 14104
    return-object p0
.end method

.method public setSyncStatus(Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;)Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 14124
    if-nez p1, :cond_0

    .line 14125
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14127
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->bitField0_:I

    .line 14128
    iput-object p1, p0, Lcom/google/glass/companion/Proto$TimelineItemResponse$Builder;->syncStatus_:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    .line 14130
    return-object p0
.end method
