.class public final Lcom/google/common/logging/GlassUserEventProto$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "GlassUserEventProto.java"

# interfaces
.implements Lcom/google/common/logging/GlassUserEventProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/GlassUserEventProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/common/logging/GlassUserEventProto$Builder;",
        ">;",
        "Lcom/google/common/logging/GlassUserEventProtoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private eventData_:Ljava/lang/Object;

.field private eventSerial_:J

.field private eventTimeMs_:J

.field private eventType_:Ljava/lang/Object;

.field private performanceStatsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/common/logging/GlassUserEventPerformanceStats;",
            "Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;",
            "Lcom/google/common/logging/GlassUserEventPerformanceStatsOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 517
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 795
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventType_:Ljava/lang/Object;

    .line 892
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventData_:Ljava/lang/Object;

    .line 989
    invoke-static {}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->getDefaultInstance()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    .line 518
    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->maybeForceBuilderInitialization()V

    .line 519
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 523
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 795
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventType_:Ljava/lang/Object;

    .line 892
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventData_:Ljava/lang/Object;

    .line 989
    invoke-static {}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->getDefaultInstance()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    .line 524
    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->maybeForceBuilderInitialization()V

    .line 525
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/common/logging/GlassUserEventProto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 500
    invoke-direct {p0, p1}, Lcom/google/common/logging/GlassUserEventProto$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 1

    .prologue
    .line 500
    invoke-static {}, Lcom/google/common/logging/GlassUserEventProto$Builder;->create()Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 1

    .prologue
    .line 532
    new-instance v0, Lcom/google/common/logging/GlassUserEventProto$Builder;

    invoke-direct {v0}, Lcom/google/common/logging/GlassUserEventProto$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 506
    sget-object v0, Lcom/google/common/logging/GlassExtensions;->internal_static_googlex_glass_GlassUserEventProto_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getPerformanceStatsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/common/logging/GlassUserEventPerformanceStats;",
            "Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;",
            "Lcom/google/common/logging/GlassUserEventPerformanceStatsOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStatsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1131
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStatsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 1136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    .line 1138
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStatsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 527
    invoke-static {}, Lcom/google/common/logging/GlassUserEventProto;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->getPerformanceStatsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 530
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/common/logging/GlassUserEventProto;
    .locals 2

    .prologue
    .line 568
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->buildPartial()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    .line 569
    .local v0, result:Lcom/google/common/logging/GlassUserEventProto;
    invoke-virtual {v0}, Lcom/google/common/logging/GlassUserEventProto;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 570
    invoke-static {v0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 572
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->build()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->build()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/common/logging/GlassUserEventProto;
    .locals 5

    .prologue
    .line 576
    new-instance v1, Lcom/google/common/logging/GlassUserEventProto;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/common/logging/GlassUserEventProto;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/common/logging/GlassUserEventProto$1;)V

    .line 577
    .local v1, result:Lcom/google/common/logging/GlassUserEventProto;
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    .line 578
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 579
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 580
    or-int/lit8 v2, v2, 0x1

    .line 582
    :cond_0
    iget-wide v3, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventTimeMs_:J

    #setter for: Lcom/google/common/logging/GlassUserEventProto;->eventTimeMs_:J
    invoke-static {v1, v3, v4}, Lcom/google/common/logging/GlassUserEventProto;->access$502(Lcom/google/common/logging/GlassUserEventProto;J)J

    .line 583
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 584
    or-int/lit8 v2, v2, 0x2

    .line 586
    :cond_1
    iget-wide v3, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventSerial_:J

    #setter for: Lcom/google/common/logging/GlassUserEventProto;->eventSerial_:J
    invoke-static {v1, v3, v4}, Lcom/google/common/logging/GlassUserEventProto;->access$602(Lcom/google/common/logging/GlassUserEventProto;J)J

    .line 587
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 588
    or-int/lit8 v2, v2, 0x4

    .line 590
    :cond_2
    iget-object v3, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventType_:Ljava/lang/Object;

    #setter for: Lcom/google/common/logging/GlassUserEventProto;->eventType_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/common/logging/GlassUserEventProto;->access$702(Lcom/google/common/logging/GlassUserEventProto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 592
    or-int/lit8 v2, v2, 0x8

    .line 594
    :cond_3
    iget-object v3, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventData_:Ljava/lang/Object;

    #setter for: Lcom/google/common/logging/GlassUserEventProto;->eventData_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/common/logging/GlassUserEventProto;->access$802(Lcom/google/common/logging/GlassUserEventProto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 596
    or-int/lit8 v2, v2, 0x10

    .line 598
    :cond_4
    iget-object v3, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStatsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_5

    .line 599
    iget-object v3, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    #setter for: Lcom/google/common/logging/GlassUserEventProto;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;
    invoke-static {v1, v3}, Lcom/google/common/logging/GlassUserEventProto;->access$902(Lcom/google/common/logging/GlassUserEventProto;Lcom/google/common/logging/GlassUserEventPerformanceStats;)Lcom/google/common/logging/GlassUserEventPerformanceStats;

    .line 603
    :goto_0
    #setter for: Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/common/logging/GlassUserEventProto;->access$1002(Lcom/google/common/logging/GlassUserEventProto;I)I

    .line 604
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->onBuilt()V

    .line 605
    return-object v1

    .line 601
    :cond_5
    iget-object v3, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStatsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/google/common/logging/GlassUserEventPerformanceStats;

    #setter for: Lcom/google/common/logging/GlassUserEventProto;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;
    invoke-static {v1, v3}, Lcom/google/common/logging/GlassUserEventProto;->access$902(Lcom/google/common/logging/GlassUserEventProto;Lcom/google/common/logging/GlassUserEventPerformanceStats;)Lcom/google/common/logging/GlassUserEventPerformanceStats;

    goto :goto_0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->buildPartial()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->buildPartial()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 536
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 537
    iput-wide v1, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventTimeMs_:J

    .line 538
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    .line 539
    iput-wide v1, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventSerial_:J

    .line 540
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    .line 541
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventType_:Ljava/lang/Object;

    .line 542
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    .line 543
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventData_:Ljava/lang/Object;

    .line 544
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    .line 545
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStatsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 546
    invoke-static {}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->getDefaultInstance()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    .line 550
    :goto_0
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    .line 551
    return-object p0

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStatsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->clear()Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->clear()Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->clear()Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->clear()Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearEventData()Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 1

    .prologue
    .line 966
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    .line 967
    invoke-static {}, Lcom/google/common/logging/GlassUserEventProto;->getDefaultInstance()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/logging/GlassUserEventProto;->getEventData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventData_:Ljava/lang/Object;

    .line 968
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->onChanged()V

    .line 969
    return-object p0
.end method

.method public clearEventSerial()Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 2

    .prologue
    .line 789
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    .line 790
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventSerial_:J

    .line 791
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->onChanged()V

    .line 792
    return-object p0
.end method

.method public clearEventTimeMs()Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 2

    .prologue
    .line 725
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    .line 726
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventTimeMs_:J

    .line 727
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->onChanged()V

    .line 728
    return-object p0
.end method

.method public clearEventType()Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 1

    .prologue
    .line 869
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    .line 870
    invoke-static {}, Lcom/google/common/logging/GlassUserEventProto;->getDefaultInstance()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/logging/GlassUserEventProto;->getEventType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventType_:Ljava/lang/Object;

    .line 871
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->onChanged()V

    .line 872
    return-object p0
.end method

.method public clearPerformanceStats()Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 1

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStatsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1086
    invoke-static {}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->getDefaultInstance()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    .line 1087
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->onChanged()V

    .line 1091
    :goto_0
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    .line 1092
    return-object p0

    .line 1089
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStatsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clone()Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 2

    .prologue
    .line 555
    invoke-static {}, Lcom/google/common/logging/GlassUserEventProto$Builder;->create()Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->buildPartial()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/logging/GlassUserEventProto$Builder;->mergeFrom(Lcom/google/common/logging/GlassUserEventProto;)Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->clone()Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->clone()Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->clone()Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->clone()Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->clone()Lcom/google/common/logging/GlassUserEventProto$Builder;

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
    .line 500
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->clone()Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/common/logging/GlassUserEventProto;
    .locals 1

    .prologue
    .line 564
    invoke-static {}, Lcom/google/common/logging/GlassUserEventProto;->getDefaultInstance()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->getDefaultInstanceForType()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->getDefaultInstanceForType()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 560
    sget-object v0, Lcom/google/common/logging/GlassExtensions;->internal_static_googlex_glass_GlassUserEventProto_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getEventData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 911
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventData_:Ljava/lang/Object;

    .line 912
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 913
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 915
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventData_:Ljava/lang/Object;

    .line 918
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

.method public getEventDataBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 930
    iget-object v1, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventData_:Ljava/lang/Object;

    .line 931
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 932
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 935
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventData_:Ljava/lang/Object;

    .line 938
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

.method public getEventSerial()J
    .locals 2

    .prologue
    .line 758
    iget-wide v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventSerial_:J

    return-wide v0
.end method

.method public getEventTimeMs()J
    .locals 2

    .prologue
    .line 696
    iget-wide v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventTimeMs_:J

    return-wide v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 814
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventType_:Ljava/lang/Object;

    .line 815
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 816
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 818
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventType_:Ljava/lang/Object;

    .line 821
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

.method public getEventTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 833
    iget-object v1, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventType_:Ljava/lang/Object;

    .line 834
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 835
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 838
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventType_:Ljava/lang/Object;

    .line 841
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

.method public getPerformanceStats()Lcom/google/common/logging/GlassUserEventPerformanceStats;
    .locals 1

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStatsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    .line 1013
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStatsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventPerformanceStats;

    goto :goto_0
.end method

.method public getPerformanceStatsBuilder()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 1

    .prologue
    .line 1102
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    .line 1103
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->onChanged()V

    .line 1104
    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->getPerformanceStatsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    return-object v0
.end method

.method public getPerformanceStatsOrBuilder()Lcom/google/common/logging/GlassUserEventPerformanceStatsOrBuilder;
    .locals 1

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStatsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 1115
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStatsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventPerformanceStatsOrBuilder;

    .line 1117
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    goto :goto_0
.end method

.method public hasEventData()Z
    .locals 2

    .prologue
    .line 901
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

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

.method public hasEventSerial()Z
    .locals 2

    .prologue
    .line 744
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

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

.method public hasEventTimeMs()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 683
    iget v1, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEventType()Z
    .locals 2

    .prologue
    .line 804
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

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

.method public hasPerformanceStats()Z
    .locals 2

    .prologue
    .line 1000
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

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
    .line 511
    sget-object v0, Lcom/google/common/logging/GlassExtensions;->internal_static_googlex_glass_GlassUserEventProto_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/common/logging/GlassUserEventProto;

    const-class v2, Lcom/google/common/logging/GlassUserEventProto$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 643
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->hasPerformanceStats()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->getPerformanceStats()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 646
    const/4 v0, 0x0

    .line 649
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/common/logging/GlassUserEventProto;)Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 618
    invoke-static {}, Lcom/google/common/logging/GlassUserEventProto;->getDefaultInstance()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 639
    :goto_0
    return-object p0

    .line 619
    :cond_0
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventProto;->hasEventTimeMs()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 620
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventProto;->getEventTimeMs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/logging/GlassUserEventProto$Builder;->setEventTimeMs(J)Lcom/google/common/logging/GlassUserEventProto$Builder;

    .line 622
    :cond_1
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventProto;->hasEventSerial()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 623
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventProto;->getEventSerial()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/logging/GlassUserEventProto$Builder;->setEventSerial(J)Lcom/google/common/logging/GlassUserEventProto$Builder;

    .line 625
    :cond_2
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventProto;->hasEventType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 626
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    .line 627
    #getter for: Lcom/google/common/logging/GlassUserEventProto;->eventType_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/common/logging/GlassUserEventProto;->access$700(Lcom/google/common/logging/GlassUserEventProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventType_:Ljava/lang/Object;

    .line 628
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->onChanged()V

    .line 630
    :cond_3
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventProto;->hasEventData()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 631
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    .line 632
    #getter for: Lcom/google/common/logging/GlassUserEventProto;->eventData_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/common/logging/GlassUserEventProto;->access$800(Lcom/google/common/logging/GlassUserEventProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventData_:Ljava/lang/Object;

    .line 633
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->onChanged()V

    .line 635
    :cond_4
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventProto;->hasPerformanceStats()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 636
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventProto;->getPerformanceStats()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->mergePerformanceStats(Lcom/google/common/logging/GlassUserEventPerformanceStats;)Lcom/google/common/logging/GlassUserEventProto$Builder;

    .line 638
    :cond_5
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 656
    const/4 v2, 0x0

    .line 658
    .local v2, parsedMessage:Lcom/google/common/logging/GlassUserEventProto;
    :try_start_0
    sget-object v3, Lcom/google/common/logging/GlassUserEventProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/common/logging/GlassUserEventProto;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    if-eqz v2, :cond_0

    .line 664
    invoke-virtual {p0, v2}, Lcom/google/common/logging/GlassUserEventProto$Builder;->mergeFrom(Lcom/google/common/logging/GlassUserEventProto;)Lcom/google/common/logging/GlassUserEventProto$Builder;

    .line 667
    :cond_0
    return-object p0

    .line 659
    :catch_0
    move-exception v1

    .line 660
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/common/logging/GlassUserEventProto;

    move-object v2, v0

    .line 661
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 663
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 664
    invoke-virtual {p0, v2}, Lcom/google/common/logging/GlassUserEventProto$Builder;->mergeFrom(Lcom/google/common/logging/GlassUserEventProto;)Lcom/google/common/logging/GlassUserEventProto$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 609
    instance-of v0, p1, Lcom/google/common/logging/GlassUserEventProto;

    if-eqz v0, :cond_0

    .line 610
    check-cast p1, Lcom/google/common/logging/GlassUserEventProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/logging/GlassUserEventProto$Builder;->mergeFrom(Lcom/google/common/logging/GlassUserEventProto;)Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object p0

    .line 613
    .end local p0
    :goto_0
    return-object p0

    .line 612
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
    .line 500
    invoke-virtual {p0, p1, p2}, Lcom/google/common/logging/GlassUserEventProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 500
    invoke-virtual {p0, p1}, Lcom/google/common/logging/GlassUserEventProto$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/common/logging/GlassUserEventProto$Builder;

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
    .line 500
    invoke-virtual {p0, p1, p2}, Lcom/google/common/logging/GlassUserEventProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassUserEventProto$Builder;

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
    .line 500
    invoke-virtual {p0, p1, p2}, Lcom/google/common/logging/GlassUserEventProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 500
    invoke-virtual {p0, p1}, Lcom/google/common/logging/GlassUserEventProto$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/common/logging/GlassUserEventProto$Builder;

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
    .line 500
    invoke-virtual {p0, p1, p2}, Lcom/google/common/logging/GlassUserEventProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergePerformanceStats(Lcom/google/common/logging/GlassUserEventPerformanceStats;)Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStatsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1063
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    invoke-static {}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->getDefaultInstance()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    invoke-static {v0}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->newBuilder(Lcom/google/common/logging/GlassUserEventPerformanceStats;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->mergeFrom(Lcom/google/common/logging/GlassUserEventPerformanceStats;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->buildPartial()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    .line 1070
    :goto_0
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->onChanged()V

    .line 1074
    :goto_1
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    .line 1075
    return-object p0

    .line 1068
    :cond_0
    iput-object p1, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    goto :goto_0

    .line 1072
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStatsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public setEventData(Ljava/lang/String;)Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 950
    if-nez p1, :cond_0

    .line 951
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 953
    :cond_0
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    .line 954
    iput-object p1, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventData_:Ljava/lang/Object;

    .line 955
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->onChanged()V

    .line 956
    return-object p0
.end method

.method public setEventDataBytes(Lcom/google/protobuf/ByteString;)Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 980
    if-nez p1, :cond_0

    .line 981
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 983
    :cond_0
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    .line 984
    iput-object p1, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventData_:Ljava/lang/Object;

    .line 985
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->onChanged()V

    .line 986
    return-object p0
.end method

.method public setEventSerial(J)Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 772
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    .line 773
    iput-wide p1, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventSerial_:J

    .line 774
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->onChanged()V

    .line 775
    return-object p0
.end method

.method public setEventTimeMs(J)Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 709
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    .line 710
    iput-wide p1, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventTimeMs_:J

    .line 711
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->onChanged()V

    .line 712
    return-object p0
.end method

.method public setEventType(Ljava/lang/String;)Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 853
    if-nez p1, :cond_0

    .line 854
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 856
    :cond_0
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    .line 857
    iput-object p1, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventType_:Ljava/lang/Object;

    .line 858
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->onChanged()V

    .line 859
    return-object p0
.end method

.method public setEventTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 883
    if-nez p1, :cond_0

    .line 884
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 886
    :cond_0
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    .line 887
    iput-object p1, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventType_:Ljava/lang/Object;

    .line 888
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->onChanged()V

    .line 889
    return-object p0
.end method

.method public setPerformanceStats(Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;)Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStatsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1046
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->build()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    .line 1047
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->onChanged()V

    .line 1051
    :goto_0
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    .line 1052
    return-object p0

    .line 1049
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStatsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->build()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setPerformanceStats(Lcom/google/common/logging/GlassUserEventPerformanceStats;)Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStatsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1025
    if-nez p1, :cond_0

    .line 1026
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1028
    :cond_0
    iput-object p1, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    .line 1029
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->onChanged()V

    .line 1033
    :goto_0
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    .line 1034
    return-object p0

    .line 1031
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStatsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method
