.class public final Lcom/google/googlex/glass/common/proto/Select$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Select.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/SelectOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/Select;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/Select$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/SelectOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private continuationToken_:Lcom/google/protobuf/ByteString;

.field private maxItems_:I

.field private modifiedAfterTime_:J

.field private modifiedBeforeTime_:J

.field private startTime_:J

.field private writeAfterTime_:J

.field private writeBeforeTime_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 525
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 678
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->maxItems_:I

    .line 1038
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->continuationToken_:Lcom/google/protobuf/ByteString;

    .line 526
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Select$Builder;->maybeForceBuilderInitialization()V

    .line 527
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 531
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 678
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->maxItems_:I

    .line 1038
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->continuationToken_:Lcom/google/protobuf/ByteString;

    .line 532
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Select$Builder;->maybeForceBuilderInitialization()V

    .line 533
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/Select$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 508
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/Select$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/Select$Builder;
    .locals 1

    .prologue
    .line 508
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Select$Builder;->create()Lcom/google/googlex/glass/common/proto/Select$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/Select$Builder;
    .locals 1

    .prologue
    .line 539
    new-instance v0, Lcom/google/googlex/glass/common/proto/Select$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Select$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 514
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_Select_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 535
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Select;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/Select;
    .locals 2

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Select$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Select;

    move-result-object v0

    .line 576
    .local v0, result:Lcom/google/googlex/glass/common/proto/Select;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Select;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 577
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Select$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 579
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Select$Builder;->build()Lcom/google/googlex/glass/common/proto/Select;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Select$Builder;->build()Lcom/google/googlex/glass/common/proto/Select;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/Select;
    .locals 5

    .prologue
    .line 583
    new-instance v1, Lcom/google/googlex/glass/common/proto/Select;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/Select;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/Select$1;)V

    .line 584
    .local v1, result:Lcom/google/googlex/glass/common/proto/Select;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    .line 585
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 586
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 587
    or-int/lit8 v2, v2, 0x1

    .line 589
    :cond_0
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->maxItems_:I

    #setter for: Lcom/google/googlex/glass/common/proto/Select;->maxItems_:I
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Select;->access$502(Lcom/google/googlex/glass/common/proto/Select;I)I

    .line 590
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 591
    or-int/lit8 v2, v2, 0x2

    .line 593
    :cond_1
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->modifiedAfterTime_:J

    #setter for: Lcom/google/googlex/glass/common/proto/Select;->modifiedAfterTime_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/Select;->access$602(Lcom/google/googlex/glass/common/proto/Select;J)J

    .line 594
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 595
    or-int/lit8 v2, v2, 0x4

    .line 597
    :cond_2
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->modifiedBeforeTime_:J

    #setter for: Lcom/google/googlex/glass/common/proto/Select;->modifiedBeforeTime_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/Select;->access$702(Lcom/google/googlex/glass/common/proto/Select;J)J

    .line 598
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 599
    or-int/lit8 v2, v2, 0x8

    .line 601
    :cond_3
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->writeAfterTime_:J

    #setter for: Lcom/google/googlex/glass/common/proto/Select;->writeAfterTime_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/Select;->access$802(Lcom/google/googlex/glass/common/proto/Select;J)J

    .line 602
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 603
    or-int/lit8 v2, v2, 0x10

    .line 605
    :cond_4
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->writeBeforeTime_:J

    #setter for: Lcom/google/googlex/glass/common/proto/Select;->writeBeforeTime_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/Select;->access$902(Lcom/google/googlex/glass/common/proto/Select;J)J

    .line 606
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 607
    or-int/lit8 v2, v2, 0x20

    .line 609
    :cond_5
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->startTime_:J

    #setter for: Lcom/google/googlex/glass/common/proto/Select;->startTime_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/Select;->access$1002(Lcom/google/googlex/glass/common/proto/Select;J)J

    .line 610
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 611
    or-int/lit8 v2, v2, 0x40

    .line 613
    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->continuationToken_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/google/googlex/glass/common/proto/Select;->continuationToken_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Select;->access$1102(Lcom/google/googlex/glass/common/proto/Select;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 614
    #setter for: Lcom/google/googlex/glass/common/proto/Select;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/Select;->access$1202(Lcom/google/googlex/glass/common/proto/Select;I)I

    .line 615
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Select$Builder;->onBuilt()V

    .line 616
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Select$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Select;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Select$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Select;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/Select$Builder;
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 543
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 544
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->maxItems_:I

    .line 545
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    .line 546
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->modifiedAfterTime_:J

    .line 547
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    .line 548
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->modifiedBeforeTime_:J

    .line 549
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    .line 550
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->writeAfterTime_:J

    .line 551
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    .line 552
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->writeBeforeTime_:J

    .line 553
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    .line 554
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->startTime_:J

    .line 555
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    .line 556
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->continuationToken_:Lcom/google/protobuf/ByteString;

    .line 557
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    .line 558
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Select$Builder;->clear()Lcom/google/googlex/glass/common/proto/Select$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Select$Builder;->clear()Lcom/google/googlex/glass/common/proto/Select$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Select$Builder;->clear()Lcom/google/googlex/glass/common/proto/Select$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Select$Builder;->clear()Lcom/google/googlex/glass/common/proto/Select$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearContinuationToken()Lcom/google/googlex/glass/common/proto/Select$Builder;
    .locals 1

    .prologue
    .line 1083
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    .line 1084
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Select;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Select;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Select;->getContinuationToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->continuationToken_:Lcom/google/protobuf/ByteString;

    .line 1085
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Select$Builder;->onChanged()V

    .line 1086
    return-object p0
.end method

.method public clearMaxItems()Lcom/google/googlex/glass/common/proto/Select$Builder;
    .locals 1

    .prologue
    .line 720
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    .line 721
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->maxItems_:I

    .line 722
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Select$Builder;->onChanged()V

    .line 723
    return-object p0
.end method

.method public clearModifiedAfterTime()Lcom/google/googlex/glass/common/proto/Select$Builder;
    .locals 2

    .prologue
    .line 784
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    .line 785
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->modifiedAfterTime_:J

    .line 786
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Select$Builder;->onChanged()V

    .line 787
    return-object p0
.end method

.method public clearModifiedBeforeTime()Lcom/google/googlex/glass/common/proto/Select$Builder;
    .locals 2

    .prologue
    .line 848
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    .line 849
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->modifiedBeforeTime_:J

    .line 850
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Select$Builder;->onChanged()V

    .line 851
    return-object p0
.end method

.method public clearStartTime()Lcom/google/googlex/glass/common/proto/Select$Builder;
    .locals 2

    .prologue
    .line 1032
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    .line 1033
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->startTime_:J

    .line 1034
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Select$Builder;->onChanged()V

    .line 1035
    return-object p0
.end method

.method public clearWriteAfterTime()Lcom/google/googlex/glass/common/proto/Select$Builder;
    .locals 2

    .prologue
    .line 912
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    .line 913
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->writeAfterTime_:J

    .line 914
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Select$Builder;->onChanged()V

    .line 915
    return-object p0
.end method

.method public clearWriteBeforeTime()Lcom/google/googlex/glass/common/proto/Select$Builder;
    .locals 2

    .prologue
    .line 976
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    .line 977
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->writeBeforeTime_:J

    .line 978
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Select$Builder;->onChanged()V

    .line 979
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/Select$Builder;
    .locals 2

    .prologue
    .line 562
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Select$Builder;->create()Lcom/google/googlex/glass/common/proto/Select$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Select$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Select;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/Select$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Select;)Lcom/google/googlex/glass/common/proto/Select$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Select$Builder;->clone()Lcom/google/googlex/glass/common/proto/Select$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Select$Builder;->clone()Lcom/google/googlex/glass/common/proto/Select$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Select$Builder;->clone()Lcom/google/googlex/glass/common/proto/Select$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Select$Builder;->clone()Lcom/google/googlex/glass/common/proto/Select$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Select$Builder;->clone()Lcom/google/googlex/glass/common/proto/Select$Builder;

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
    .line 508
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Select$Builder;->clone()Lcom/google/googlex/glass/common/proto/Select$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContinuationToken()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->continuationToken_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Select;
    .locals 1

    .prologue
    .line 571
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Select;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Select;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Select$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Select;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Select$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Select;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 567
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_Select_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getMaxItems()I
    .locals 1

    .prologue
    .line 697
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->maxItems_:I

    return v0
.end method

.method public getModifiedAfterTime()J
    .locals 2

    .prologue
    .line 753
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->modifiedAfterTime_:J

    return-wide v0
.end method

.method public getModifiedBeforeTime()J
    .locals 2

    .prologue
    .line 817
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->modifiedBeforeTime_:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 1005
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->startTime_:J

    return-wide v0
.end method

.method public getWriteAfterTime()J
    .locals 2

    .prologue
    .line 881
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->writeAfterTime_:J

    return-wide v0
.end method

.method public getWriteBeforeTime()J
    .locals 2

    .prologue
    .line 945
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->writeBeforeTime_:J

    return-wide v0
.end method

.method public hasContinuationToken()Z
    .locals 2

    .prologue
    .line 1047
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMaxItems()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 687
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasModifiedAfterTime()Z
    .locals 2

    .prologue
    .line 739
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

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

.method public hasModifiedBeforeTime()Z
    .locals 2

    .prologue
    .line 803
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

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

.method public hasStartTime()Z
    .locals 2

    .prologue
    .line 993
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWriteAfterTime()Z
    .locals 2

    .prologue
    .line 867
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

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

.method public hasWriteBeforeTime()Z
    .locals 2

    .prologue
    .line 931
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 519
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_Select_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/Select;

    const-class v2, Lcom/google/googlex/glass/common/proto/Select$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 656
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/Select;)Lcom/google/googlex/glass/common/proto/Select$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 629
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Select;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Select;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 652
    :goto_0
    return-object p0

    .line 630
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Select;->hasMaxItems()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 631
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Select;->getMaxItems()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/Select$Builder;->setMaxItems(I)Lcom/google/googlex/glass/common/proto/Select$Builder;

    .line 633
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Select;->hasModifiedAfterTime()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 634
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Select;->getModifiedAfterTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/Select$Builder;->setModifiedAfterTime(J)Lcom/google/googlex/glass/common/proto/Select$Builder;

    .line 636
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Select;->hasModifiedBeforeTime()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 637
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Select;->getModifiedBeforeTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/Select$Builder;->setModifiedBeforeTime(J)Lcom/google/googlex/glass/common/proto/Select$Builder;

    .line 639
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Select;->hasWriteAfterTime()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 640
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Select;->getWriteAfterTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/Select$Builder;->setWriteAfterTime(J)Lcom/google/googlex/glass/common/proto/Select$Builder;

    .line 642
    :cond_4
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Select;->hasWriteBeforeTime()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 643
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Select;->getWriteBeforeTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/Select$Builder;->setWriteBeforeTime(J)Lcom/google/googlex/glass/common/proto/Select$Builder;

    .line 645
    :cond_5
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Select;->hasStartTime()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 646
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Select;->getStartTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/Select$Builder;->setStartTime(J)Lcom/google/googlex/glass/common/proto/Select$Builder;

    .line 648
    :cond_6
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Select;->hasContinuationToken()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 649
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Select;->getContinuationToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/Select$Builder;->setContinuationToken(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Select$Builder;

    .line 651
    :cond_7
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Select;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/Select$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Select$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 663
    const/4 v2, 0x0

    .line 665
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/Select;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/Select;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/Select;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    if-eqz v2, :cond_0

    .line 671
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/Select$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Select;)Lcom/google/googlex/glass/common/proto/Select$Builder;

    .line 674
    :cond_0
    return-object p0

    .line 666
    :catch_0
    move-exception v1

    .line 667
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/Select;

    move-object v2, v0

    .line 668
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 670
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 671
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/Select$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Select;)Lcom/google/googlex/glass/common/proto/Select$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/Select$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 620
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/Select;

    if-eqz v0, :cond_0

    .line 621
    check-cast p1, Lcom/google/googlex/glass/common/proto/Select;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Select$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Select;)Lcom/google/googlex/glass/common/proto/Select$Builder;

    move-result-object p0

    .line 624
    .end local p0
    :goto_0
    return-object p0

    .line 623
    .restart local p0
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 508
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Select$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Select$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 508
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Select$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/Select$Builder;

    move-result-object v0

    return-object v0
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
    .line 508
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Select$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Select$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 508
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Select$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Select$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 508
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Select$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/Select$Builder;

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
    .line 508
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Select$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Select$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setContinuationToken(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Select$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1067
    if-nez p1, :cond_0

    .line 1068
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1070
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    .line 1071
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->continuationToken_:Lcom/google/protobuf/ByteString;

    .line 1072
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Select$Builder;->onChanged()V

    .line 1073
    return-object p0
.end method

.method public setMaxItems(I)Lcom/google/googlex/glass/common/proto/Select$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 707
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    .line 708
    iput p1, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->maxItems_:I

    .line 709
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Select$Builder;->onChanged()V

    .line 710
    return-object p0
.end method

.method public setModifiedAfterTime(J)Lcom/google/googlex/glass/common/proto/Select$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 767
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    .line 768
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->modifiedAfterTime_:J

    .line 769
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Select$Builder;->onChanged()V

    .line 770
    return-object p0
.end method

.method public setModifiedBeforeTime(J)Lcom/google/googlex/glass/common/proto/Select$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 831
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    .line 832
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->modifiedBeforeTime_:J

    .line 833
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Select$Builder;->onChanged()V

    .line 834
    return-object p0
.end method

.method public setStartTime(J)Lcom/google/googlex/glass/common/proto/Select$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1017
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    .line 1018
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->startTime_:J

    .line 1019
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Select$Builder;->onChanged()V

    .line 1020
    return-object p0
.end method

.method public setWriteAfterTime(J)Lcom/google/googlex/glass/common/proto/Select$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 895
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    .line 896
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->writeAfterTime_:J

    .line 897
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Select$Builder;->onChanged()V

    .line 898
    return-object p0
.end method

.method public setWriteBeforeTime(J)Lcom/google/googlex/glass/common/proto/Select$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 959
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->bitField0_:I

    .line 960
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/Select$Builder;->writeBeforeTime_:J

    .line 961
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Select$Builder;->onChanged()V

    .line 962
    return-object p0
.end method
