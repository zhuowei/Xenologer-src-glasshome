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
    .line 12462
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 12557
    sget-object v0, Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;->USER_ACTION:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->type_:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    .line 12592
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 12652
    invoke-static {}, Lcom/google/googlex/glass/common/proto/UserAction;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->userAction_:Lcom/google/googlex/glass/common/proto/UserAction;

    .line 12463
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->maybeForceBuilderInitialization()V

    .line 12464
    return-void
.end method

.method static synthetic access$11500()Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    .locals 1

    .prologue
    .line 12455
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->create()Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    .locals 1

    .prologue
    .line 12469
    new-instance v0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 12467
    return-void
.end method


# virtual methods
.method public build()Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 2

    .prologue
    .line 12492
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->buildPartial()Lcom/google/glass/companion/Proto$ApiResponse;

    move-result-object v0

    .line 12493
    .local v0, result:Lcom/google/glass/companion/Proto$ApiResponse;
    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$ApiResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 12494
    invoke-static {v0}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 12496
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12455
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->build()Lcom/google/glass/companion/Proto$ApiResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 5

    .prologue
    .line 12500
    new-instance v1, Lcom/google/glass/companion/Proto$ApiResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/glass/companion/Proto$ApiResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V

    .line 12501
    .local v1, result:Lcom/google/glass/companion/Proto$ApiResponse;
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    .line 12502
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 12503
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 12504
    or-int/lit8 v2, v2, 0x1

    .line 12506
    :cond_0
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->type_:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    #setter for: Lcom/google/glass/companion/Proto$ApiResponse;->type_:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$ApiResponse;->access$11702(Lcom/google/glass/companion/Proto$ApiResponse;Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;)Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    .line 12507
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 12508
    or-int/lit8 v2, v2, 0x2

    .line 12510
    :cond_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    #setter for: Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$ApiResponse;->access$11802(Lcom/google/glass/companion/Proto$ApiResponse;Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 12511
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 12512
    or-int/lit8 v2, v2, 0x4

    .line 12514
    :cond_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->userAction_:Lcom/google/googlex/glass/common/proto/UserAction;

    #setter for: Lcom/google/glass/companion/Proto$ApiResponse;->userAction_:Lcom/google/googlex/glass/common/proto/UserAction;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$ApiResponse;->access$11902(Lcom/google/glass/companion/Proto$ApiResponse;Lcom/google/googlex/glass/common/proto/UserAction;)Lcom/google/googlex/glass/common/proto/UserAction;

    .line 12515
    #setter for: Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/glass/companion/Proto$ApiResponse;->access$12002(Lcom/google/glass/companion/Proto$ApiResponse;I)I

    .line 12516
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12455
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->buildPartial()Lcom/google/glass/companion/Proto$ApiResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    .locals 1

    .prologue
    .line 12473
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 12474
    sget-object v0, Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;->USER_ACTION:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->type_:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    .line 12475
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    .line 12476
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 12477
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    .line 12478
    invoke-static {}, Lcom/google/googlex/glass/common/proto/UserAction;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->userAction_:Lcom/google/googlex/glass/common/proto/UserAction;

    .line 12479
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    .line 12480
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 12455
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->clear()Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12455
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->clear()Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearTimelineItem()Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    .locals 1

    .prologue
    .line 12646
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 12648
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    .line 12649
    return-object p0
.end method

.method public clearType()Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    .locals 1

    .prologue
    .line 12586
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    .line 12587
    sget-object v0, Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;->USER_ACTION:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->type_:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    .line 12589
    return-object p0
.end method

.method public clearUserAction()Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    .locals 1

    .prologue
    .line 12706
    invoke-static {}, Lcom/google/googlex/glass/common/proto/UserAction;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->userAction_:Lcom/google/googlex/glass/common/proto/UserAction;

    .line 12708
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    .line 12709
    return-object p0
.end method

.method public clone()Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    .locals 2

    .prologue
    .line 12484
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
    .line 12455
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->clone()Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 12455
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->clone()Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12455
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
    .line 12455
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->clone()Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1

    .prologue
    .line 12488
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiResponse;->getDefaultInstance()Lcom/google/glass/companion/Proto$ApiResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 12455
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$ApiResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12455
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$ApiResponse;

    move-result-object v0

    return-object v0
.end method

.method public getTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1

    .prologue
    .line 12603
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method

.method public getType()Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;
    .locals 1

    .prologue
    .line 12568
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->type_:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    return-object v0
.end method

.method public getUserAction()Lcom/google/googlex/glass/common/proto/UserAction;
    .locals 1

    .prologue
    .line 12663
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->userAction_:Lcom/google/googlex/glass/common/proto/UserAction;

    return-object v0
.end method

.method public hasTimelineItem()Z
    .locals 2

    .prologue
    .line 12597
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

    .line 12562
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
    .line 12657
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
    .line 12535
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/glass/companion/Proto$ApiResponse;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 12520
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiResponse;->getDefaultInstance()Lcom/google/glass/companion/Proto$ApiResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 12531
    :goto_0
    return-object p0

    .line 12521
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ApiResponse;->hasType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12522
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ApiResponse;->getType()Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->setType(Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    .line 12524
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ApiResponse;->hasTimelineItem()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12525
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ApiResponse;->getTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->mergeTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    .line 12527
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ApiResponse;->hasUserAction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12528
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ApiResponse;->getUserAction()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->mergeUserAction(Lcom/google/googlex/glass/common/proto/UserAction;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    .line 12530
    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    #getter for: Lcom/google/glass/companion/Proto$ApiResponse;->unknownFields:Lcom/google/protobuf/ByteString;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$ApiResponse;->access$12100(Lcom/google/glass/companion/Proto$ApiResponse;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->concat(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->setUnknownFields(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

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
    .line 12542
    const/4 v2, 0x0

    .line 12544
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

    .line 12549
    if-eqz v2, :cond_0

    .line 12550
    invoke-virtual {p0, v2}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$ApiResponse;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    .line 12553
    :cond_0
    return-object p0

    .line 12545
    :catch_0
    move-exception v1

    .line 12546
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/companion/Proto$ApiResponse;

    move-object v2, v0

    .line 12547
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12549
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 12550
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
    .line 12455
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12455
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
    .line 12455
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 12631
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 12633
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 12639
    :goto_0
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    .line 12640
    return-object p0

    .line 12636
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    goto :goto_0
.end method

.method public mergeUserAction(Lcom/google/googlex/glass/common/proto/UserAction;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 12691
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->userAction_:Lcom/google/googlex/glass/common/proto/UserAction;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/UserAction;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 12693
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->userAction_:Lcom/google/googlex/glass/common/proto/UserAction;

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/UserAction;->newBuilder(Lcom/google/googlex/glass/common/proto/UserAction;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/UserAction;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->userAction_:Lcom/google/googlex/glass/common/proto/UserAction;

    .line 12699
    :goto_0
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    .line 12700
    return-object p0

    .line 12696
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->userAction_:Lcom/google/googlex/glass/common/proto/UserAction;

    goto :goto_0
.end method

.method public setTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    .locals 1
    .parameter "builderForValue"

    .prologue
    .line 12622
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 12624
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    .line 12625
    return-object p0
.end method

.method public setTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 12609
    if-nez p1, :cond_0

    .line 12610
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12612
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 12614
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    .line 12615
    return-object p0
.end method

.method public setType(Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 12574
    if-nez p1, :cond_0

    .line 12575
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12577
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    .line 12578
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->type_:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    .line 12580
    return-object p0
.end method

.method public setUserAction(Lcom/google/googlex/glass/common/proto/UserAction$Builder;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    .locals 1
    .parameter "builderForValue"

    .prologue
    .line 12682
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->userAction_:Lcom/google/googlex/glass/common/proto/UserAction;

    .line 12684
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    .line 12685
    return-object p0
.end method

.method public setUserAction(Lcom/google/googlex/glass/common/proto/UserAction;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 12669
    if-nez p1, :cond_0

    .line 12670
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12672
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->userAction_:Lcom/google/googlex/glass/common/proto/UserAction;

    .line 12674
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->bitField0_:I

    .line 12675
    return-object p0
.end method
