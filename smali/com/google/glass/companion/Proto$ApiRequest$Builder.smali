.class public final Lcom/google/glass/companion/Proto$ApiRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Proto.java"

# interfaces
.implements Lcom/google/glass/companion/Proto$ApiRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto$ApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/glass/companion/Proto$ApiRequest;",
        "Lcom/google/glass/companion/Proto$ApiRequest$Builder;",
        ">;",
        "Lcom/google/glass/companion/Proto$ApiRequestOrBuilder;"
    }
.end annotation


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

.field private projectId_:Ljava/lang/Object;

.field private timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

.field private token_:Ljava/lang/Object;

.field private type_:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 11291
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 11415
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->projectId_:Ljava/lang/Object;

    .line 11512
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->token_:Ljava/lang/Object;

    .line 11609
    sget-object v0, Lcom/google/glass/companion/Proto$ApiRequest$RequestType;->INSERT_OR_UPDATE_TIMELINE_ITEM:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->type_:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    .line 11660
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 11744
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    .line 11292
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->maybeForceBuilderInitialization()V

    .line 11293
    return-void
.end method

.method static synthetic access$9500()Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1

    .prologue
    .line 11284
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->create()Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1

    .prologue
    .line 11298
    new-instance v0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureAttachmentContentIsMutable()V
    .locals 2

    .prologue
    .line 11746
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 11747
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    .line 11748
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11750
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 11296
    return-void
.end method


# virtual methods
.method public addAllAttachmentContent(Ljava/lang/Iterable;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/ByteString;",
            ">;)",
            "Lcom/google/glass/companion/Proto$ApiRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 11830
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/ByteString;>;"
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->ensureAttachmentContentIsMutable()V

    .line 11831
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 11834
    return-object p0
.end method

.method public addAttachmentContent(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 11812
    if-nez p1, :cond_0

    .line 11813
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11815
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->ensureAttachmentContentIsMutable()V

    .line 11816
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11818
    return-object p0
.end method

.method public build()Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 2

    .prologue
    .line 11325
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->buildPartial()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    .line 11326
    .local v0, result:Lcom/google/glass/companion/Proto$ApiRequest;
    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$ApiRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11327
    invoke-static {v0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 11329
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11284
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->build()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 5

    .prologue
    .line 11333
    new-instance v1, Lcom/google/glass/companion/Proto$ApiRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/glass/companion/Proto$ApiRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V

    .line 11334
    .local v1, result:Lcom/google/glass/companion/Proto$ApiRequest;
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11335
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 11336
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 11337
    or-int/lit8 v2, v2, 0x1

    .line 11339
    :cond_0
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->projectId_:Ljava/lang/Object;

    #setter for: Lcom/google/glass/companion/Proto$ApiRequest;->projectId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$ApiRequest;->access$9702(Lcom/google/glass/companion/Proto$ApiRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11340
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 11341
    or-int/lit8 v2, v2, 0x2

    .line 11343
    :cond_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->token_:Ljava/lang/Object;

    #setter for: Lcom/google/glass/companion/Proto$ApiRequest;->token_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$ApiRequest;->access$9802(Lcom/google/glass/companion/Proto$ApiRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11344
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 11345
    or-int/lit8 v2, v2, 0x4

    .line 11347
    :cond_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->type_:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    #setter for: Lcom/google/glass/companion/Proto$ApiRequest;->type_:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$ApiRequest;->access$9902(Lcom/google/glass/companion/Proto$ApiRequest;Lcom/google/glass/companion/Proto$ApiRequest$RequestType;)Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    .line 11348
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 11349
    or-int/lit8 v2, v2, 0x8

    .line 11351
    :cond_3
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    #setter for: Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$ApiRequest;->access$10002(Lcom/google/glass/companion/Proto$ApiRequest;Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 11352
    iget v3, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 11353
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    .line 11354
    iget v3, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11356
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    #setter for: Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$ApiRequest;->access$10102(Lcom/google/glass/companion/Proto$ApiRequest;Ljava/util/List;)Ljava/util/List;

    .line 11357
    #setter for: Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/glass/companion/Proto$ApiRequest;->access$10202(Lcom/google/glass/companion/Proto$ApiRequest;I)I

    .line 11358
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11284
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->buildPartial()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1

    .prologue
    .line 11302
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 11303
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->projectId_:Ljava/lang/Object;

    .line 11304
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11305
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->token_:Ljava/lang/Object;

    .line 11306
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11307
    sget-object v0, Lcom/google/glass/companion/Proto$ApiRequest$RequestType;->INSERT_OR_UPDATE_TIMELINE_ITEM:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->type_:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    .line 11308
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11309
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 11310
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11311
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    .line 11312
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11313
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 11284
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->clear()Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11284
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->clear()Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAttachmentContent()Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1

    .prologue
    .line 11845
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    .line 11846
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11848
    return-object p0
.end method

.method public clearProjectId()Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1

    .prologue
    .line 11489
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11490
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$ApiRequest;->getProjectId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->projectId_:Ljava/lang/Object;

    .line 11492
    return-object p0
.end method

.method public clearTimelineItem()Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1

    .prologue
    .line 11738
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 11740
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11741
    return-object p0
.end method

.method public clearToken()Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1

    .prologue
    .line 11586
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11587
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$ApiRequest;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->token_:Ljava/lang/Object;

    .line 11589
    return-object p0
.end method

.method public clearType()Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1

    .prologue
    .line 11654
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11655
    sget-object v0, Lcom/google/glass/companion/Proto$ApiRequest$RequestType;->INSERT_OR_UPDATE_TIMELINE_ITEM:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->type_:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    .line 11657
    return-object p0
.end method

.method public clone()Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 2

    .prologue
    .line 11317
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->create()Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->buildPartial()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$ApiRequest;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 11284
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->clone()Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 11284
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->clone()Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11284
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->clone()Lcom/google/glass/companion/Proto$ApiRequest$Builder;

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
    .line 11284
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->clone()Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAttachmentContent(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "index"

    .prologue
    .line 11783
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getAttachmentContentCount()I
    .locals 1

    .prologue
    .line 11772
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

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
    .line 11761
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1

    .prologue
    .line 11321
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 11284
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11284
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public getProjectId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 11434
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->projectId_:Ljava/lang/Object;

    .line 11435
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 11436
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 11438
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->projectId_:Ljava/lang/Object;

    .line 11441
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

.method public getProjectIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 11453
    iget-object v1, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->projectId_:Ljava/lang/Object;

    .line 11454
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 11455
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11458
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->projectId_:Ljava/lang/Object;

    .line 11461
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

.method public getTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1

    .prologue
    .line 11679
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 11531
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->token_:Ljava/lang/Object;

    .line 11532
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 11533
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 11535
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->token_:Ljava/lang/Object;

    .line 11538
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

.method public getTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 11550
    iget-object v1, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->token_:Ljava/lang/Object;

    .line 11551
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 11552
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11555
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->token_:Ljava/lang/Object;

    .line 11558
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
    .line 11628
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->type_:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    return-object v0
.end method

.method public hasProjectId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 11424
    iget v1, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

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
    .line 11669
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

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
    .line 11521
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

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
    .line 11618
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

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
    .line 11393
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/glass/companion/Proto$ApiRequest;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 11362
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 11389
    :cond_0
    :goto_0
    return-object p0

    .line 11363
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ApiRequest;->hasProjectId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11364
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11365
    #getter for: Lcom/google/glass/companion/Proto$ApiRequest;->projectId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$ApiRequest;->access$9700(Lcom/google/glass/companion/Proto$ApiRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->projectId_:Ljava/lang/Object;

    .line 11368
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ApiRequest;->hasToken()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11369
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11370
    #getter for: Lcom/google/glass/companion/Proto$ApiRequest;->token_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$ApiRequest;->access$9800(Lcom/google/glass/companion/Proto$ApiRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->token_:Ljava/lang/Object;

    .line 11373
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ApiRequest;->hasType()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11374
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ApiRequest;->getType()Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->setType(Lcom/google/glass/companion/Proto$ApiRequest$RequestType;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    .line 11376
    :cond_4
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ApiRequest;->hasTimelineItem()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11377
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ApiRequest;->getTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->mergeTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    .line 11379
    :cond_5
    #getter for: Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$ApiRequest;->access$10100(Lcom/google/glass/companion/Proto$ApiRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11380
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 11381
    #getter for: Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$ApiRequest;->access$10100(Lcom/google/glass/companion/Proto$ApiRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    .line 11382
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    goto :goto_0

    .line 11384
    :cond_6
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->ensureAttachmentContentIsMutable()V

    .line 11385
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    #getter for: Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$ApiRequest;->access$10100(Lcom/google/glass/companion/Proto$ApiRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11400
    const/4 v2, 0x0

    .line 11402
    .local v2, parsedMessage:Lcom/google/glass/companion/Proto$ApiRequest;
    :try_start_0
    sget-object v3, Lcom/google/glass/companion/Proto$ApiRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/companion/Proto$ApiRequest;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11407
    if-eqz v2, :cond_0

    .line 11408
    invoke-virtual {p0, v2}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$ApiRequest;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    .line 11411
    :cond_0
    return-object p0

    .line 11403
    :catch_0
    move-exception v1

    .line 11404
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/companion/Proto$ApiRequest;

    move-object v2, v0

    .line 11405
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11407
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 11408
    invoke-virtual {p0, v2}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$ApiRequest;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;

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
    .line 11284
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11284
    check-cast p1, Lcom/google/glass/companion/Proto$ApiRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$ApiRequest;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;

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
    .line 11284
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 11719
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 11721
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 11727
    :goto_0
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11728
    return-object p0

    .line 11724
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    goto :goto_0
.end method

.method public setAttachmentContent(ILcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 11795
    if-nez p2, :cond_0

    .line 11796
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11798
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->ensureAttachmentContentIsMutable()V

    .line 11799
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11801
    return-object p0
.end method

.method public setProjectId(Ljava/lang/String;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 11473
    if-nez p1, :cond_0

    .line 11474
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11476
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11477
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->projectId_:Ljava/lang/Object;

    .line 11479
    return-object p0
.end method

.method public setProjectIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 11503
    if-nez p1, :cond_0

    .line 11504
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11506
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11507
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->projectId_:Ljava/lang/Object;

    .line 11509
    return-object p0
.end method

.method public setTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1
    .parameter "builderForValue"

    .prologue
    .line 11706
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 11708
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11709
    return-object p0
.end method

.method public setTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 11689
    if-nez p1, :cond_0

    .line 11690
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11692
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 11694
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11695
    return-object p0
.end method

.method public setToken(Ljava/lang/String;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 11570
    if-nez p1, :cond_0

    .line 11571
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11573
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11574
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->token_:Ljava/lang/Object;

    .line 11576
    return-object p0
.end method

.method public setTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 11600
    if-nez p1, :cond_0

    .line 11601
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11603
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11604
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->token_:Ljava/lang/Object;

    .line 11606
    return-object p0
.end method

.method public setType(Lcom/google/glass/companion/Proto$ApiRequest$RequestType;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 11638
    if-nez p1, :cond_0

    .line 11639
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11641
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11642
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->type_:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    .line 11644
    return-object p0
.end method
