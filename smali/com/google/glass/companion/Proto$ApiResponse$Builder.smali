.class public final Lcom/google/glass/companion/Proto$ApiResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Proto.java"

# interfaces
.implements Lcom/google/glass/companion/Proto$ApiResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto$ApiResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/glass/companion/Proto$ApiResponse;",
        "Lcom/google/glass/companion/Proto$ApiResponse$Builder;",
        ">;",
        "Lcom/google/glass/companion/Proto$ApiResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

.field private type_:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

.field private userAction_:Lcom/google/googlex/glass/common/proto/UserAction;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12250
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 12344
    sget-object v0, Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;->USER_ACTION:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->type_:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    .line 12379
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 12439
    invoke-static {}, Lcom/google/googlex/glass/common/proto/UserAction;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->userAction_:Lcom/google/googlex/glass/common/proto/UserAction;

    .line 12251
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->maybeForceBuilderInitialization()V

    .line 12252
    return-void
.end method

.method static synthetic access$10400()Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    .locals 1

    .prologue
    .line 12243
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->create()Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    .locals 1

    .prologue
    .line 12257
    new-instance v0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 12255
    return-void
.end method


# virtual methods
.method public build()Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 2

    .prologue
    .line 12280
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->buildPartial()Lcom/google/glass/companion/Proto$ApiResponse;

    move-result-object v0

    .line 12281
    .local v0, result:Lcom/google/glass/companion/Proto$ApiResponse;
    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$ApiResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 12282
    invoke-static {v0}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 12284
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12243
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->build()Lcom/google/glass/companion/Proto$ApiResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 5

    .prologue
    .line 12288
    new-instance v1, Lcom/google/glass/companion/Proto$ApiResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/glass/companion/Proto$ApiResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V

    .line 12289
    .local v1, result:Lcom/google/glass/companion/Proto$ApiResponse;
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    .line 12290
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 12291
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 12292
    or-int/lit8 v2, v2, 0x1

    .line 12294
    :cond_0
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->type_:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    #setter for: Lcom/google/glass/companion/Proto$ApiResponse;->type_:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$ApiResponse;->access$10602(Lcom/google/glass/companion/Proto$ApiResponse;Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;)Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    .line 12295
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 12296
    or-int/lit8 v2, v2, 0x2

    .line 12298
    :cond_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    #setter for: Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$ApiResponse;->access$10702(Lcom/google/glass/companion/Proto$ApiResponse;Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 12299
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 12300
    or-int/lit8 v2, v2, 0x4

    .line 12302
    :cond_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->userAction_:Lcom/google/googlex/glass/common/proto/UserAction;

    #setter for: Lcom/google/glass/companion/Proto$ApiResponse;->userAction_:Lcom/google/googlex/glass/common/proto/UserAction;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$ApiResponse;->access$10802(Lcom/google/glass/companion/Proto$ApiResponse;Lcom/google/googlex/glass/common/proto/UserAction;)Lcom/google/googlex/glass/common/proto/UserAction;

    .line 12303
    #setter for: Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/glass/companion/Proto$ApiResponse;->access$10902(Lcom/google/glass/companion/Proto$ApiResponse;I)I

    .line 12304
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12243
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->buildPartial()Lcom/google/glass/companion/Proto$ApiResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    .locals 1

    .prologue
    .line 12261
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 12262
    sget-object v0, Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;->USER_ACTION:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->type_:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    .line 12263
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    .line 12264
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 12265
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    .line 12266
    invoke-static {}, Lcom/google/googlex/glass/common/proto/UserAction;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->userAction_:Lcom/google/googlex/glass/common/proto/UserAction;

    .line 12267
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    .line 12268
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 12243
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->clear()Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12243
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->clear()Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearTimelineItem()Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    .locals 1

    .prologue
    .line 12433
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 12435
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    .line 12436
    return-object p0
.end method

.method public clearType()Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    .locals 1

    .prologue
    .line 12373
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    .line 12374
    sget-object v0, Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;->USER_ACTION:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->type_:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    .line 12376
    return-object p0
.end method

.method public clearUserAction()Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    .locals 1

    .prologue
    .line 12493
    invoke-static {}, Lcom/google/googlex/glass/common/proto/UserAction;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->userAction_:Lcom/google/googlex/glass/common/proto/UserAction;

    .line 12495
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    .line 12496
    return-object p0
.end method

.method public clone()Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    .locals 2

    .prologue
    .line 12272
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->create()Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->buildPartial()Lcom/google/glass/companion/Proto$ApiResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$ApiResponse;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 12243
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->clone()Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 12243
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->clone()Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12243
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->clone()Lcom/google/glass/companion/Proto$ApiResponse$Builder;

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
    .line 12243
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->clone()Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1

    .prologue
    .line 12276
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiResponse;->getDefaultInstance()Lcom/google/glass/companion/Proto$ApiResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 12243
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$ApiResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12243
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$ApiResponse;

    move-result-object v0

    return-object v0
.end method

.method public getTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1

    .prologue
    .line 12390
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method

.method public getType()Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;
    .locals 1

    .prologue
    .line 12355
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->type_:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    return-object v0
.end method

.method public getUserAction()Lcom/google/googlex/glass/common/proto/UserAction;
    .locals 1

    .prologue
    .line 12450
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->userAction_:Lcom/google/googlex/glass/common/proto/UserAction;

    return-object v0
.end method

.method public hasTimelineItem()Z
    .locals 2

    .prologue
    .line 12384
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

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

    .line 12349
    iget v1, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

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
    .line 12444
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 12322
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/glass/companion/Proto$ApiResponse;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 12308
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiResponse;->getDefaultInstance()Lcom/google/glass/companion/Proto$ApiResponse;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 12318
    :cond_0
    :goto_0
    return-object p0

    .line 12309
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ApiResponse;->hasType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12310
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ApiResponse;->getType()Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->setType(Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    .line 12312
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ApiResponse;->hasTimelineItem()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12313
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ApiResponse;->getTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->mergeTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    .line 12315
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ApiResponse;->hasUserAction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12316
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ApiResponse;->getUserAction()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->mergeUserAction(Lcom/google/googlex/glass/common/proto/UserAction;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12329
    const/4 v2, 0x0

    .line 12331
    .local v2, parsedMessage:Lcom/google/glass/companion/Proto$ApiResponse;
    :try_start_0
    sget-object v3, Lcom/google/glass/companion/Proto$ApiResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/companion/Proto$ApiResponse;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12336
    if-eqz v2, :cond_0

    .line 12337
    invoke-virtual {p0, v2}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$ApiResponse;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    .line 12340
    :cond_0
    return-object p0

    .line 12332
    :catch_0
    move-exception v1

    .line 12333
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/companion/Proto$ApiResponse;

    move-object v2, v0

    .line 12334
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12336
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 12337
    invoke-virtual {p0, v2}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$ApiResponse;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;

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
    .line 12243
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12243
    check-cast p1, Lcom/google/glass/companion/Proto$ApiResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$ApiResponse;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;

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
    .line 12243
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 12418
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 12420
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 12426
    :goto_0
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    .line 12427
    return-object p0

    .line 12423
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    goto :goto_0
.end method

.method public mergeUserAction(Lcom/google/googlex/glass/common/proto/UserAction;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 12478
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->userAction_:Lcom/google/googlex/glass/common/proto/UserAction;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/UserAction;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 12480
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->userAction_:Lcom/google/googlex/glass/common/proto/UserAction;

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/UserAction;->newBuilder(Lcom/google/googlex/glass/common/proto/UserAction;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/UserAction;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->userAction_:Lcom/google/googlex/glass/common/proto/UserAction;

    .line 12486
    :goto_0
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    .line 12487
    return-object p0

    .line 12483
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->userAction_:Lcom/google/googlex/glass/common/proto/UserAction;

    goto :goto_0
.end method

.method public setTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    .locals 1
    .parameter "builderForValue"

    .prologue
    .line 12409
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 12411
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    .line 12412
    return-object p0
.end method

.method public setTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 12396
    if-nez p1, :cond_0

    .line 12397
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12399
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 12401
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    .line 12402
    return-object p0
.end method

.method public setType(Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 12361
    if-nez p1, :cond_0

    .line 12362
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12364
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    .line 12365
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->type_:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    .line 12367
    return-object p0
.end method

.method public setUserAction(Lcom/google/googlex/glass/common/proto/UserAction$Builder;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    .locals 1
    .parameter "builderForValue"

    .prologue
    .line 12469
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->userAction_:Lcom/google/googlex/glass/common/proto/UserAction;

    .line 12471
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    .line 12472
    return-object p0
.end method

.method public setUserAction(Lcom/google/googlex/glass/common/proto/UserAction;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 12456
    if-nez p1, :cond_0

    .line 12457
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12459
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->userAction_:Lcom/google/googlex/glass/common/proto/UserAction;

    .line 12461
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    .line 12462
    return-object p0
.end method
