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
    .line 473
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 678
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventType_:Ljava/lang/Object;

    .line 775
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventData_:Ljava/lang/Object;

    .line 872
    invoke-static {}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->getDefaultInstance()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    .line 474
    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->maybeForceBuilderInitialization()V

    .line 475
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 479
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 678
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventType_:Ljava/lang/Object;

    .line 775
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventData_:Ljava/lang/Object;

    .line 872
    invoke-static {}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->getDefaultInstance()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    .line 480
    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->maybeForceBuilderInitialization()V

    .line 481
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/common/logging/GlassUserEventProto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 456
    invoke-direct {p0, p1}, Lcom/google/common/logging/GlassUserEventProto$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 1

    .prologue
    .line 456
    invoke-static {}, Lcom/google/common/logging/GlassUserEventProto$Builder;->create()Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 1

    .prologue
    .line 488
    new-instance v0, Lcom/google/common/logging/GlassUserEventProto$Builder;

    invoke-direct {v0}, Lcom/google/common/logging/GlassUserEventProto$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 462
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
    .line 1013
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStatsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1014
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStatsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 1019
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    .line 1021
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStatsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 483
    invoke-static {}, Lcom/google/common/logging/GlassUserEventProto;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->getPerformanceStatsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 486
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/common/logging/GlassUserEventProto;
    .locals 2

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->buildPartial()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    .line 523
    .local v0, result:Lcom/google/common/logging/GlassUserEventProto;
    invoke-virtual {v0}, Lcom/google/common/logging/GlassUserEventProto;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 524
    invoke-static {v0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 526
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->build()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->build()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/common/logging/GlassUserEventProto;
    .locals 5

    .prologue
    .line 530
    new-instance v1, Lcom/google/common/logging/GlassUserEventProto;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/common/logging/GlassUserEventProto;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/common/logging/GlassUserEventProto$1;)V

    .line 531
    .local v1, result:Lcom/google/common/logging/GlassUserEventProto;
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    .line 532
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 533
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 534
    or-int/lit8 v2, v2, 0x1

    .line 536
    :cond_0
    iget-wide v3, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventTimeMs_:J

    #setter for: Lcom/google/common/logging/GlassUserEventProto;->eventTimeMs_:J
    invoke-static {v1, v3, v4}, Lcom/google/common/logging/GlassUserEventProto;->access$502(Lcom/google/common/logging/GlassUserEventProto;J)J

    .line 537
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 538
    or-int/lit8 v2, v2, 0x2

    .line 540
    :cond_1
    iget-object v3, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventType_:Ljava/lang/Object;

    #setter for: Lcom/google/common/logging/GlassUserEventProto;->eventType_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/common/logging/GlassUserEventProto;->access$602(Lcom/google/common/logging/GlassUserEventProto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 542
    or-int/lit8 v2, v2, 0x4

    .line 544
    :cond_2
    iget-object v3, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventData_:Ljava/lang/Object;

    #setter for: Lcom/google/common/logging/GlassUserEventProto;->eventData_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/common/logging/GlassUserEventProto;->access$702(Lcom/google/common/logging/GlassUserEventProto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 546
    or-int/lit8 v2, v2, 0x8

    .line 548
    :cond_3
    iget-object v3, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStatsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_4

    .line 549
    iget-object v3, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    #setter for: Lcom/google/common/logging/GlassUserEventProto;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;
    invoke-static {v1, v3}, Lcom/google/common/logging/GlassUserEventProto;->access$802(Lcom/google/common/logging/GlassUserEventProto;Lcom/google/common/logging/GlassUserEventPerformanceStats;)Lcom/google/common/logging/GlassUserEventPerformanceStats;

    .line 553
    :goto_0
    #setter for: Lcom/google/common/logging/GlassUserEventProto;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/common/logging/GlassUserEventProto;->access$902(Lcom/google/common/logging/GlassUserEventProto;I)I

    .line 554
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->onBuilt()V

    .line 555
    return-object v1

    .line 551
    :cond_4
    iget-object v3, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStatsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/google/common/logging/GlassUserEventPerformanceStats;

    #setter for: Lcom/google/common/logging/GlassUserEventProto;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;
    invoke-static {v1, v3}, Lcom/google/common/logging/GlassUserEventProto;->access$802(Lcom/google/common/logging/GlassUserEventProto;Lcom/google/common/logging/GlassUserEventPerformanceStats;)Lcom/google/common/logging/GlassUserEventPerformanceStats;

    goto :goto_0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->buildPartial()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->buildPartial()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 2

    .prologue
    .line 492
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 493
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventTimeMs_:J

    .line 494
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    .line 495
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventType_:Ljava/lang/Object;

    .line 496
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    .line 497
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventData_:Ljava/lang/Object;

    .line 498
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    .line 499
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStatsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 500
    invoke-static {}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->getDefaultInstance()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    .line 504
    :goto_0
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    .line 505
    return-object p0

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStatsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->clear()Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->clear()Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->clear()Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->clear()Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearEventData()Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 1

    .prologue
    .line 849
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    .line 850
    invoke-static {}, Lcom/google/common/logging/GlassUserEventProto;->getDefaultInstance()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/logging/GlassUserEventProto;->getEventData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventData_:Ljava/lang/Object;

    .line 851
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->onChanged()V

    .line 852
    return-object p0
.end method

.method public clearEventTimeMs()Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 2

    .prologue
    .line 672
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    .line 673
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventTimeMs_:J

    .line 674
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->onChanged()V

    .line 675
    return-object p0
.end method

.method public clearEventType()Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 1

    .prologue
    .line 752
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    .line 753
    invoke-static {}, Lcom/google/common/logging/GlassUserEventProto;->getDefaultInstance()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/logging/GlassUserEventProto;->getEventType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventType_:Ljava/lang/Object;

    .line 754
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->onChanged()V

    .line 755
    return-object p0
.end method

.method public clearPerformanceStats()Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 1

    .prologue
    .line 968
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStatsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 969
    invoke-static {}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->getDefaultInstance()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    .line 970
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->onChanged()V

    .line 974
    :goto_0
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    .line 975
    return-object p0

    .line 972
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStatsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clone()Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 2

    .prologue
    .line 509
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
    .line 456
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->clone()Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->clone()Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->clone()Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->clone()Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 456
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
    .line 456
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->clone()Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/common/logging/GlassUserEventProto;
    .locals 1

    .prologue
    .line 518
    invoke-static {}, Lcom/google/common/logging/GlassUserEventProto;->getDefaultInstance()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->getDefaultInstanceForType()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->getDefaultInstanceForType()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 514
    sget-object v0, Lcom/google/common/logging/GlassExtensions;->internal_static_googlex_glass_GlassUserEventProto_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getEventData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 794
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventData_:Ljava/lang/Object;

    .line 795
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 796
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 798
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventData_:Ljava/lang/Object;

    .line 801
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
    .line 813
    iget-object v1, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventData_:Ljava/lang/Object;

    .line 814
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 815
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 818
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventData_:Ljava/lang/Object;

    .line 821
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

.method public getEventTimeMs()J
    .locals 2

    .prologue
    .line 643
    iget-wide v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventTimeMs_:J

    return-wide v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 697
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventType_:Ljava/lang/Object;

    .line 698
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 699
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 701
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventType_:Ljava/lang/Object;

    .line 704
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
    .line 716
    iget-object v1, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventType_:Ljava/lang/Object;

    .line 717
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 718
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 721
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventType_:Ljava/lang/Object;

    .line 724
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
    .line 893
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStatsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    .line 896
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
    .line 985
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    .line 986
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->onChanged()V

    .line 987
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
    .line 997
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStatsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStatsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventPerformanceStatsOrBuilder;

    .line 1000
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    goto :goto_0
.end method

.method public hasEventData()Z
    .locals 2

    .prologue
    .line 784
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

.method public hasEventTimeMs()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 630
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
    .line 687
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

.method public hasPerformanceStats()Z
    .locals 2

    .prologue
    .line 883
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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 467
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
    .line 590
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->hasPerformanceStats()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->getPerformanceStats()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 593
    const/4 v0, 0x0

    .line 596
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
    .line 568
    invoke-static {}, Lcom/google/common/logging/GlassUserEventProto;->getDefaultInstance()Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 586
    :goto_0
    return-object p0

    .line 569
    :cond_0
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventProto;->hasEventTimeMs()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 570
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventProto;->getEventTimeMs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/logging/GlassUserEventProto$Builder;->setEventTimeMs(J)Lcom/google/common/logging/GlassUserEventProto$Builder;

    .line 572
    :cond_1
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventProto;->hasEventType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 573
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    .line 574
    #getter for: Lcom/google/common/logging/GlassUserEventProto;->eventType_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/common/logging/GlassUserEventProto;->access$600(Lcom/google/common/logging/GlassUserEventProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventType_:Ljava/lang/Object;

    .line 575
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->onChanged()V

    .line 577
    :cond_2
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventProto;->hasEventData()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 578
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    .line 579
    #getter for: Lcom/google/common/logging/GlassUserEventProto;->eventData_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/common/logging/GlassUserEventProto;->access$700(Lcom/google/common/logging/GlassUserEventProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventData_:Ljava/lang/Object;

    .line 580
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->onChanged()V

    .line 582
    :cond_3
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventProto;->hasPerformanceStats()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 583
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventProto;->getPerformanceStats()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->mergePerformanceStats(Lcom/google/common/logging/GlassUserEventPerformanceStats;)Lcom/google/common/logging/GlassUserEventProto$Builder;

    .line 585
    :cond_4
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
    .line 603
    const/4 v2, 0x0

    .line 605
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

    .line 610
    if-eqz v2, :cond_0

    .line 611
    invoke-virtual {p0, v2}, Lcom/google/common/logging/GlassUserEventProto$Builder;->mergeFrom(Lcom/google/common/logging/GlassUserEventProto;)Lcom/google/common/logging/GlassUserEventProto$Builder;

    .line 614
    :cond_0
    return-object p0

    .line 606
    :catch_0
    move-exception v1

    .line 607
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/common/logging/GlassUserEventProto;

    move-object v2, v0

    .line 608
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 610
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 611
    invoke-virtual {p0, v2}, Lcom/google/common/logging/GlassUserEventProto$Builder;->mergeFrom(Lcom/google/common/logging/GlassUserEventProto;)Lcom/google/common/logging/GlassUserEventProto$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 559
    instance-of v0, p1, Lcom/google/common/logging/GlassUserEventProto;

    if-eqz v0, :cond_0

    .line 560
    check-cast p1, Lcom/google/common/logging/GlassUserEventProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/logging/GlassUserEventProto$Builder;->mergeFrom(Lcom/google/common/logging/GlassUserEventProto;)Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object p0

    .line 563
    .end local p0
    :goto_0
    return-object p0

    .line 562
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
    .line 456
    invoke-virtual {p0, p1, p2}, Lcom/google/common/logging/GlassUserEventProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 456
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
    .line 456
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
    .line 456
    invoke-virtual {p0, p1, p2}, Lcom/google/common/logging/GlassUserEventProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 456
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
    .line 456
    invoke-virtual {p0, p1, p2}, Lcom/google/common/logging/GlassUserEventProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassUserEventProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergePerformanceStats(Lcom/google/common/logging/GlassUserEventPerformanceStats;)Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 945
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStatsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 946
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    invoke-static {}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->getDefaultInstance()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 948
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    invoke-static {v0}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->newBuilder(Lcom/google/common/logging/GlassUserEventPerformanceStats;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->mergeFrom(Lcom/google/common/logging/GlassUserEventPerformanceStats;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->buildPartial()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    .line 953
    :goto_0
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->onChanged()V

    .line 957
    :goto_1
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    .line 958
    return-object p0

    .line 951
    :cond_0
    iput-object p1, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    goto :goto_0

    .line 955
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStatsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public setEventData(Ljava/lang/String;)Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 833
    if-nez p1, :cond_0

    .line 834
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 836
    :cond_0
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    .line 837
    iput-object p1, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventData_:Ljava/lang/Object;

    .line 838
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->onChanged()V

    .line 839
    return-object p0
.end method

.method public setEventDataBytes(Lcom/google/protobuf/ByteString;)Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 863
    if-nez p1, :cond_0

    .line 864
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 866
    :cond_0
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    .line 867
    iput-object p1, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventData_:Ljava/lang/Object;

    .line 868
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->onChanged()V

    .line 869
    return-object p0
.end method

.method public setEventTimeMs(J)Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 656
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    .line 657
    iput-wide p1, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventTimeMs_:J

    .line 658
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->onChanged()V

    .line 659
    return-object p0
.end method

.method public setEventType(Ljava/lang/String;)Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 736
    if-nez p1, :cond_0

    .line 737
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 739
    :cond_0
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    .line 740
    iput-object p1, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventType_:Ljava/lang/Object;

    .line 741
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->onChanged()V

    .line 742
    return-object p0
.end method

.method public setEventTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 766
    if-nez p1, :cond_0

    .line 767
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 769
    :cond_0
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    .line 770
    iput-object p1, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->eventType_:Ljava/lang/Object;

    .line 771
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->onChanged()V

    .line 772
    return-object p0
.end method

.method public setPerformanceStats(Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;)Lcom/google/common/logging/GlassUserEventProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 928
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStatsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 929
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->build()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    .line 930
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->onChanged()V

    .line 934
    :goto_0
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    .line 935
    return-object p0

    .line 932
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
    .line 907
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStatsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 908
    if-nez p1, :cond_0

    .line 909
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 911
    :cond_0
    iput-object p1, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStats_:Lcom/google/common/logging/GlassUserEventPerformanceStats;

    .line 912
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventProto$Builder;->onChanged()V

    .line 916
    :goto_0
    iget v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->bitField0_:I

    .line 917
    return-object p0

    .line 914
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventProto$Builder;->performanceStatsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method
