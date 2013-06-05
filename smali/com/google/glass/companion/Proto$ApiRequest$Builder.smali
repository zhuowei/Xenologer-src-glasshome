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
    .line 11484
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 11609
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->projectId_:Ljava/lang/Object;

    .line 11706
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->token_:Ljava/lang/Object;

    .line 11803
    sget-object v0, Lcom/google/glass/companion/Proto$ApiRequest$RequestType;->INSERT_OR_UPDATE_TIMELINE_ITEM:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->type_:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    .line 11854
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 11938
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    .line 11485
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->maybeForceBuilderInitialization()V

    .line 11486
    return-void
.end method

.method static synthetic access$10500()Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1

    .prologue
    .line 11477
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->create()Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1

    .prologue
    .line 11491
    new-instance v0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureAttachmentContentIsMutable()V
    .locals 2

    .prologue
    .line 11940
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 11941
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    .line 11942
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11944
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 11489
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
    .line 12024
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/ByteString;>;"
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->ensureAttachmentContentIsMutable()V

    .line 12025
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 12028
    return-object p0
.end method

.method public addAttachmentContent(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 12006
    if-nez p1, :cond_0

    .line 12007
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12009
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->ensureAttachmentContentIsMutable()V

    .line 12010
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12012
    return-object p0
.end method

.method public build()Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 2

    .prologue
    .line 11518
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->buildPartial()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    .line 11519
    .local v0, result:Lcom/google/glass/companion/Proto$ApiRequest;
    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$ApiRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11520
    invoke-static {v0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 11522
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11477
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->build()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 5

    .prologue
    .line 11526
    new-instance v1, Lcom/google/glass/companion/Proto$ApiRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/glass/companion/Proto$ApiRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V

    .line 11527
    .local v1, result:Lcom/google/glass/companion/Proto$ApiRequest;
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11528
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 11529
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 11530
    or-int/lit8 v2, v2, 0x1

    .line 11532
    :cond_0
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->projectId_:Ljava/lang/Object;

    #setter for: Lcom/google/glass/companion/Proto$ApiRequest;->projectId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$ApiRequest;->access$10702(Lcom/google/glass/companion/Proto$ApiRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11533
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 11534
    or-int/lit8 v2, v2, 0x2

    .line 11536
    :cond_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->token_:Ljava/lang/Object;

    #setter for: Lcom/google/glass/companion/Proto$ApiRequest;->token_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$ApiRequest;->access$10802(Lcom/google/glass/companion/Proto$ApiRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11537
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 11538
    or-int/lit8 v2, v2, 0x4

    .line 11540
    :cond_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->type_:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    #setter for: Lcom/google/glass/companion/Proto$ApiRequest;->type_:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$ApiRequest;->access$10902(Lcom/google/glass/companion/Proto$ApiRequest;Lcom/google/glass/companion/Proto$ApiRequest$RequestType;)Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    .line 11541
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 11542
    or-int/lit8 v2, v2, 0x8

    .line 11544
    :cond_3
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    #setter for: Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$ApiRequest;->access$11002(Lcom/google/glass/companion/Proto$ApiRequest;Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 11545
    iget v3, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 11546
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    .line 11547
    iget v3, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11549
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    #setter for: Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$ApiRequest;->access$11102(Lcom/google/glass/companion/Proto$ApiRequest;Ljava/util/List;)Ljava/util/List;

    .line 11550
    #setter for: Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/glass/companion/Proto$ApiRequest;->access$11202(Lcom/google/glass/companion/Proto$ApiRequest;I)I

    .line 11551
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11477
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->buildPartial()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1

    .prologue
    .line 11495
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 11496
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->projectId_:Ljava/lang/Object;

    .line 11497
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11498
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->token_:Ljava/lang/Object;

    .line 11499
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11500
    sget-object v0, Lcom/google/glass/companion/Proto$ApiRequest$RequestType;->INSERT_OR_UPDATE_TIMELINE_ITEM:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->type_:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    .line 11501
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11502
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 11503
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11504
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    .line 11505
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11506
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 11477
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->clear()Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11477
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->clear()Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAttachmentContent()Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1

    .prologue
    .line 12039
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    .line 12040
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 12042
    return-object p0
.end method

.method public clearProjectId()Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1

    .prologue
    .line 11683
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11684
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$ApiRequest;->getProjectId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->projectId_:Ljava/lang/Object;

    .line 11686
    return-object p0
.end method

.method public clearTimelineItem()Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1

    .prologue
    .line 11932
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 11934
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11935
    return-object p0
.end method

.method public clearToken()Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1

    .prologue
    .line 11780
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11781
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$ApiRequest;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->token_:Ljava/lang/Object;

    .line 11783
    return-object p0
.end method

.method public clearType()Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1

    .prologue
    .line 11848
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11849
    sget-object v0, Lcom/google/glass/companion/Proto$ApiRequest$RequestType;->INSERT_OR_UPDATE_TIMELINE_ITEM:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->type_:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    .line 11851
    return-object p0
.end method

.method public clone()Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 2

    .prologue
    .line 11510
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
    .line 11477
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->clone()Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 11477
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->clone()Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11477
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
    .line 11477
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->clone()Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAttachmentContent(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "index"

    .prologue
    .line 11977
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getAttachmentContentCount()I
    .locals 1

    .prologue
    .line 11966
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
    .line 11955
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1

    .prologue
    .line 11514
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 11477
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11477
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public getProjectId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 11628
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->projectId_:Ljava/lang/Object;

    .line 11629
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 11630
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 11632
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->projectId_:Ljava/lang/Object;

    .line 11635
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
    .line 11647
    iget-object v1, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->projectId_:Ljava/lang/Object;

    .line 11648
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 11649
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11652
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->projectId_:Ljava/lang/Object;

    .line 11655
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
    .line 11873
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 11725
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->token_:Ljava/lang/Object;

    .line 11726
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 11727
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 11729
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->token_:Ljava/lang/Object;

    .line 11732
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
    .line 11744
    iget-object v1, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->token_:Ljava/lang/Object;

    .line 11745
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 11746
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11749
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->token_:Ljava/lang/Object;

    .line 11752
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
    .line 11822
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->type_:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    return-object v0
.end method

.method public hasProjectId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 11618
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
    .line 11863
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
    .line 11715
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
    .line 11812
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
    .line 11587
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/glass/companion/Proto$ApiRequest;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 11555
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 11583
    :goto_0
    return-object p0

    .line 11556
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ApiRequest;->hasProjectId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11557
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11558
    #getter for: Lcom/google/glass/companion/Proto$ApiRequest;->projectId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$ApiRequest;->access$10700(Lcom/google/glass/companion/Proto$ApiRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->projectId_:Ljava/lang/Object;

    .line 11561
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ApiRequest;->hasToken()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11562
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11563
    #getter for: Lcom/google/glass/companion/Proto$ApiRequest;->token_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$ApiRequest;->access$10800(Lcom/google/glass/companion/Proto$ApiRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->token_:Ljava/lang/Object;

    .line 11566
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ApiRequest;->hasType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11567
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ApiRequest;->getType()Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->setType(Lcom/google/glass/companion/Proto$ApiRequest$RequestType;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    .line 11569
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ApiRequest;->hasTimelineItem()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11570
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ApiRequest;->getTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->mergeTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    .line 11572
    :cond_4
    #getter for: Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$ApiRequest;->access$11100(Lcom/google/glass/companion/Proto$ApiRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 11573
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 11574
    #getter for: Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$ApiRequest;->access$11100(Lcom/google/glass/companion/Proto$ApiRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    .line 11575
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11582
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    #getter for: Lcom/google/glass/companion/Proto$ApiRequest;->unknownFields:Lcom/google/protobuf/ByteString;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$ApiRequest;->access$11300(Lcom/google/glass/companion/Proto$ApiRequest;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->concat(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->setUnknownFields(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    goto :goto_0

    .line 11577
    :cond_6
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->ensureAttachmentContentIsMutable()V

    .line 11578
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    #getter for: Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$ApiRequest;->access$11100(Lcom/google/glass/companion/Proto$ApiRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
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
    .line 11594
    const/4 v2, 0x0

    .line 11596
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

    .line 11601
    if-eqz v2, :cond_0

    .line 11602
    invoke-virtual {p0, v2}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$ApiRequest;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    .line 11605
    :cond_0
    return-object p0

    .line 11597
    :catch_0
    move-exception v1

    .line 11598
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/companion/Proto$ApiRequest;

    move-object v2, v0

    .line 11599
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11601
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 11602
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
    .line 11477
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11477
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
    .line 11477
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 11913
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 11915
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 11921
    :goto_0
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11922
    return-object p0

    .line 11918
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    goto :goto_0
.end method

.method public setAttachmentContent(ILcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 11989
    if-nez p2, :cond_0

    .line 11990
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11992
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->ensureAttachmentContentIsMutable()V

    .line 11993
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11995
    return-object p0
.end method

.method public setProjectId(Ljava/lang/String;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 11667
    if-nez p1, :cond_0

    .line 11668
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11670
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11671
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->projectId_:Ljava/lang/Object;

    .line 11673
    return-object p0
.end method

.method public setProjectIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 11697
    if-nez p1, :cond_0

    .line 11698
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11700
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11701
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->projectId_:Ljava/lang/Object;

    .line 11703
    return-object p0
.end method

.method public setTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1
    .parameter "builderForValue"

    .prologue
    .line 11900
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 11902
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11903
    return-object p0
.end method

.method public setTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 11883
    if-nez p1, :cond_0

    .line 11884
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11886
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 11888
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11889
    return-object p0
.end method

.method public setToken(Ljava/lang/String;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 11764
    if-nez p1, :cond_0

    .line 11765
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11767
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11768
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->token_:Ljava/lang/Object;

    .line 11770
    return-object p0
.end method

.method public setTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 11794
    if-nez p1, :cond_0

    .line 11795
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11797
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11798
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->token_:Ljava/lang/Object;

    .line 11800
    return-object p0
.end method

.method public setType(Lcom/google/glass/companion/Proto$ApiRequest$RequestType;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 11832
    if-nez p1, :cond_0

    .line 11833
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11835
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 11836
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->type_:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    .line 11838
    return-object p0
.end method
