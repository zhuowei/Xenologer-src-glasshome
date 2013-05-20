.class public final Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "GlassUserEventPerformanceStats.java"

# interfaces
.implements Lcom/google/common/logging/GlassUserEventPerformanceStatsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/GlassUserEventPerformanceStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;",
        ">;",
        "Lcom/google/common/logging/GlassUserEventPerformanceStatsOrBuilder;"
    }
.end annotation


# instance fields
.field private batteryChargeWhenFullMah_:I

.field private batteryStateOfChargeMah_:I

.field private batteryTemperatureMilliCentigrade_:I

.field private bitField0_:I

.field private boardTemperatureMilliCentigrade_:I

.field private frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/common/logging/GlassUserEventFrequencyStat;",
            "Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;",
            "Lcom/google/common/logging/GlassUserEventFrequencyStatOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private frequencyStat_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/common/logging/GlassUserEventFrequencyStat;",
            ">;"
        }
    .end annotation
.end field

.field private totalBytesSent_:J

.field private totalKernelMs_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 535
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 727
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    .line 536
    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->maybeForceBuilderInitialization()V

    .line 537
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 541
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 727
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    .line 542
    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->maybeForceBuilderInitialization()V

    .line 543
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/common/logging/GlassUserEventPerformanceStats$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 518
    invoke-direct {p0, p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 1

    .prologue
    .line 518
    invoke-static {}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->create()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 1

    .prologue
    .line 550
    new-instance v0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    invoke-direct {v0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;-><init>()V

    return-object v0
.end method

.method private ensureFrequencyStatIsMutable()V
    .locals 2

    .prologue
    .line 730
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 731
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    .line 732
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 734
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 524
    sget-object v0, Lcom/google/common/logging/GlassExtensions;->internal_static_googlex_glass_GlassUserEventPerformanceStats_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getFrequencyStatFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/common/logging/GlassUserEventFrequencyStat;",
            "Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;",
            "Lcom/google/common/logging/GlassUserEventFrequencyStatOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1027
    iget-object v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_0

    .line 1028
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    iget v3, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1034
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    .line 1036
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 1028
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 545
    invoke-static {}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->getFrequencyStatFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 548
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllFrequencyStat(Ljava/lang/Iterable;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/common/logging/GlassUserEventFrequencyStat;",
            ">;)",
            "Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;"
        }
    .end annotation

    .prologue
    .line 906
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/common/logging/GlassUserEventFrequencyStat;>;"
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 907
    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->ensureFrequencyStatIsMutable()V

    .line 908
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 910
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 914
    :goto_0
    return-object p0

    .line 912
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addFrequencyStat(ILcom/google/common/logging/GlassUserEventFrequencyStat$Builder;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 888
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 889
    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->ensureFrequencyStatIsMutable()V

    .line 890
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->build()Lcom/google/common/logging/GlassUserEventFrequencyStat;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 891
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 895
    :goto_0
    return-object p0

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->build()Lcom/google/common/logging/GlassUserEventFrequencyStat;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addFrequencyStat(ILcom/google/common/logging/GlassUserEventFrequencyStat;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 849
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 850
    if-nez p2, :cond_0

    .line 851
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 853
    :cond_0
    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->ensureFrequencyStatIsMutable()V

    .line 854
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 855
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 859
    :goto_0
    return-object p0

    .line 857
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addFrequencyStat(Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 870
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 871
    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->ensureFrequencyStatIsMutable()V

    .line 872
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->build()Lcom/google/common/logging/GlassUserEventFrequencyStat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 873
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 877
    :goto_0
    return-object p0

    .line 875
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->build()Lcom/google/common/logging/GlassUserEventFrequencyStat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addFrequencyStat(Lcom/google/common/logging/GlassUserEventFrequencyStat;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 828
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 829
    if-nez p1, :cond_0

    .line 830
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 832
    :cond_0
    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->ensureFrequencyStatIsMutable()V

    .line 833
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 834
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 838
    :goto_0
    return-object p0

    .line 836
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addFrequencyStatBuilder()Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;
    .locals 2

    .prologue
    .line 998
    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->getFrequencyStatFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/common/logging/GlassUserEventFrequencyStat;->getDefaultInstance()Lcom/google/common/logging/GlassUserEventFrequencyStat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

    return-object v0
.end method

.method public addFrequencyStatBuilder(I)Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;
    .locals 2
    .parameter "index"

    .prologue
    .line 1010
    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->getFrequencyStatFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/common/logging/GlassUserEventFrequencyStat;->getDefaultInstance()Lcom/google/common/logging/GlassUserEventFrequencyStat;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

    return-object v0
.end method

.method public build()Lcom/google/common/logging/GlassUserEventPerformanceStats;
    .locals 2

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->buildPartial()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v0

    .line 591
    .local v0, result:Lcom/google/common/logging/GlassUserEventPerformanceStats;
    invoke-virtual {v0}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 592
    invoke-static {v0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 594
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->build()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->build()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/common/logging/GlassUserEventPerformanceStats;
    .locals 5

    .prologue
    .line 598
    new-instance v1, Lcom/google/common/logging/GlassUserEventPerformanceStats;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/common/logging/GlassUserEventPerformanceStats;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/common/logging/GlassUserEventPerformanceStats$1;)V

    .line 599
    .local v1, result:Lcom/google/common/logging/GlassUserEventPerformanceStats;
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 600
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 601
    .local v2, to_bitField0_:I
    iget-object v3, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_7

    .line 602
    iget v3, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 603
    iget-object v3, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    .line 604
    iget v3, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 606
    :cond_0
    iget-object v3, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    #setter for: Lcom/google/common/logging/GlassUserEventPerformanceStats;->frequencyStat_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->access$502(Lcom/google/common/logging/GlassUserEventPerformanceStats;Ljava/util/List;)Ljava/util/List;

    .line 610
    :goto_0
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 611
    or-int/lit8 v2, v2, 0x1

    .line 613
    :cond_1
    iget-wide v3, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->totalKernelMs_:J

    #setter for: Lcom/google/common/logging/GlassUserEventPerformanceStats;->totalKernelMs_:J
    invoke-static {v1, v3, v4}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->access$602(Lcom/google/common/logging/GlassUserEventPerformanceStats;J)J

    .line 614
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 615
    or-int/lit8 v2, v2, 0x2

    .line 617
    :cond_2
    iget v3, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->boardTemperatureMilliCentigrade_:I

    #setter for: Lcom/google/common/logging/GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade_:I
    invoke-static {v1, v3}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->access$702(Lcom/google/common/logging/GlassUserEventPerformanceStats;I)I

    .line 618
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 619
    or-int/lit8 v2, v2, 0x4

    .line 621
    :cond_3
    iget v3, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->batteryStateOfChargeMah_:I

    #setter for: Lcom/google/common/logging/GlassUserEventPerformanceStats;->batteryStateOfChargeMah_:I
    invoke-static {v1, v3}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->access$802(Lcom/google/common/logging/GlassUserEventPerformanceStats;I)I

    .line 622
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 623
    or-int/lit8 v2, v2, 0x8

    .line 625
    :cond_4
    iget v3, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->batteryChargeWhenFullMah_:I

    #setter for: Lcom/google/common/logging/GlassUserEventPerformanceStats;->batteryChargeWhenFullMah_:I
    invoke-static {v1, v3}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->access$902(Lcom/google/common/logging/GlassUserEventPerformanceStats;I)I

    .line 626
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 627
    or-int/lit8 v2, v2, 0x10

    .line 629
    :cond_5
    iget v3, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->batteryTemperatureMilliCentigrade_:I

    #setter for: Lcom/google/common/logging/GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade_:I
    invoke-static {v1, v3}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->access$1002(Lcom/google/common/logging/GlassUserEventPerformanceStats;I)I

    .line 630
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 631
    or-int/lit8 v2, v2, 0x20

    .line 633
    :cond_6
    iget-wide v3, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->totalBytesSent_:J

    #setter for: Lcom/google/common/logging/GlassUserEventPerformanceStats;->totalBytesSent_:J
    invoke-static {v1, v3, v4}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->access$1102(Lcom/google/common/logging/GlassUserEventPerformanceStats;J)J

    .line 634
    #setter for: Lcom/google/common/logging/GlassUserEventPerformanceStats;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->access$1202(Lcom/google/common/logging/GlassUserEventPerformanceStats;I)I

    .line 635
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onBuilt()V

    .line 636
    return-object v1

    .line 608
    :cond_7
    iget-object v3, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    #setter for: Lcom/google/common/logging/GlassUserEventPerformanceStats;->frequencyStat_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->access$502(Lcom/google/common/logging/GlassUserEventPerformanceStats;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->buildPartial()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->buildPartial()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 554
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 555
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 556
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    .line 557
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 561
    :goto_0
    iput-wide v2, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->totalKernelMs_:J

    .line 562
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 563
    iput v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->boardTemperatureMilliCentigrade_:I

    .line 564
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 565
    iput v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->batteryStateOfChargeMah_:I

    .line 566
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 567
    iput v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->batteryChargeWhenFullMah_:I

    .line 568
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 569
    iput v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->batteryTemperatureMilliCentigrade_:I

    .line 570
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 571
    iput-wide v2, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->totalBytesSent_:J

    .line 572
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 573
    return-object p0

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->clear()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->clear()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->clear()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->clear()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBatteryChargeWhenFullMah()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 1

    .prologue
    .line 1229
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 1230
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->batteryChargeWhenFullMah_:I

    .line 1231
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 1232
    return-object p0
.end method

.method public clearBatteryStateOfChargeMah()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 1

    .prologue
    .line 1181
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 1182
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->batteryStateOfChargeMah_:I

    .line 1183
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 1184
    return-object p0
.end method

.method public clearBatteryTemperatureMilliCentigrade()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 1

    .prologue
    .line 1277
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 1278
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->batteryTemperatureMilliCentigrade_:I

    .line 1279
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 1280
    return-object p0
.end method

.method public clearBoardTemperatureMilliCentigrade()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 1

    .prologue
    .line 1133
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 1134
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->boardTemperatureMilliCentigrade_:I

    .line 1135
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 1136
    return-object p0
.end method

.method public clearFrequencyStat()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 925
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    .line 926
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 927
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 931
    :goto_0
    return-object p0

    .line 929
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearTotalBytesSent()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 2

    .prologue
    .line 1325
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 1326
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->totalBytesSent_:J

    .line 1327
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 1328
    return-object p0
.end method

.method public clearTotalKernelMs()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 2

    .prologue
    .line 1085
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 1086
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->totalKernelMs_:J

    .line 1087
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 1088
    return-object p0
.end method

.method public clone()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 2

    .prologue
    .line 577
    invoke-static {}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->create()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->buildPartial()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->mergeFrom(Lcom/google/common/logging/GlassUserEventPerformanceStats;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->clone()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->clone()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->clone()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->clone()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->clone()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

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
    .line 518
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->clone()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBatteryChargeWhenFullMah()I
    .locals 1

    .prologue
    .line 1206
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->batteryChargeWhenFullMah_:I

    return v0
.end method

.method public getBatteryStateOfChargeMah()I
    .locals 1

    .prologue
    .line 1158
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->batteryStateOfChargeMah_:I

    return v0
.end method

.method public getBatteryTemperatureMilliCentigrade()I
    .locals 1

    .prologue
    .line 1254
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->batteryTemperatureMilliCentigrade_:I

    return v0
.end method

.method public getBoardTemperatureMilliCentigrade()I
    .locals 1

    .prologue
    .line 1110
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->boardTemperatureMilliCentigrade_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/common/logging/GlassUserEventPerformanceStats;
    .locals 1

    .prologue
    .line 586
    invoke-static {}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->getDefaultInstance()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->getDefaultInstanceForType()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->getDefaultInstanceForType()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 582
    sget-object v0, Lcom/google/common/logging/GlassExtensions;->internal_static_googlex_glass_GlassUserEventPerformanceStats_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getFrequencyStat(I)Lcom/google/common/logging/GlassUserEventFrequencyStat;
    .locals 1
    .parameter "index"

    .prologue
    .line 775
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventFrequencyStat;

    .line 778
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventFrequencyStat;

    goto :goto_0
.end method

.method public getFrequencyStatBuilder(I)Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 959
    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->getFrequencyStatFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;

    return-object v0
.end method

.method public getFrequencyStatBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1022
    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->getFrequencyStatFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFrequencyStatCount()I
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 764
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getFrequencyStatList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/common/logging/GlassUserEventFrequencyStat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 747
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 750
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getFrequencyStatOrBuilder(I)Lcom/google/common/logging/GlassUserEventFrequencyStatOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 970
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventFrequencyStatOrBuilder;

    .line 972
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventFrequencyStatOrBuilder;

    goto :goto_0
.end method

.method public getFrequencyStatOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/common/logging/GlassUserEventFrequencyStatOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 984
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 985
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 987
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getTotalBytesSent()J
    .locals 2

    .prologue
    .line 1302
    iget-wide v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->totalBytesSent_:J

    return-wide v0
.end method

.method public getTotalKernelMs()J
    .locals 2

    .prologue
    .line 1060
    iget-wide v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->totalKernelMs_:J

    return-wide v0
.end method

.method public hasBatteryChargeWhenFullMah()Z
    .locals 2

    .prologue
    .line 1196
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

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

.method public hasBatteryStateOfChargeMah()Z
    .locals 2

    .prologue
    .line 1148
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

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

.method public hasBatteryTemperatureMilliCentigrade()Z
    .locals 2

    .prologue
    .line 1244
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

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

.method public hasBoardTemperatureMilliCentigrade()Z
    .locals 2

    .prologue
    .line 1100
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

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

.method public hasTotalBytesSent()Z
    .locals 2

    .prologue
    .line 1292
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

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

.method public hasTotalKernelMs()Z
    .locals 2

    .prologue
    .line 1049
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 529
    sget-object v0, Lcom/google/common/logging/GlassExtensions;->internal_static_googlex_glass_GlassUserEventPerformanceStats_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/common/logging/GlassUserEventPerformanceStats;

    const-class v2, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    .line 699
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->getFrequencyStatCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 700
    invoke-virtual {p0, v0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->getFrequencyStat(I)Lcom/google/common/logging/GlassUserEventFrequencyStat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/logging/GlassUserEventFrequencyStat;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 702
    const/4 v1, 0x0

    .line 705
    :goto_1
    return v1

    .line 699
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 705
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/common/logging/GlassUserEventPerformanceStats;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 2
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 649
    invoke-static {}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->getDefaultInstance()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 695
    :goto_0
    return-object p0

    .line 650
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_9

    .line 651
    #getter for: Lcom/google/common/logging/GlassUserEventPerformanceStats;->frequencyStat_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->access$500(Lcom/google/common/logging/GlassUserEventPerformanceStats;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 652
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 653
    #getter for: Lcom/google/common/logging/GlassUserEventPerformanceStats;->frequencyStat_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->access$500(Lcom/google/common/logging/GlassUserEventPerformanceStats;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    .line 654
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 659
    :goto_1
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 676
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->hasTotalKernelMs()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 677
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->getTotalKernelMs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->setTotalKernelMs(J)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    .line 679
    :cond_2
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->hasBoardTemperatureMilliCentigrade()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 680
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->getBoardTemperatureMilliCentigrade()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->setBoardTemperatureMilliCentigrade(I)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    .line 682
    :cond_3
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->hasBatteryStateOfChargeMah()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 683
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->getBatteryStateOfChargeMah()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->setBatteryStateOfChargeMah(I)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    .line 685
    :cond_4
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->hasBatteryChargeWhenFullMah()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 686
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->getBatteryChargeWhenFullMah()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->setBatteryChargeWhenFullMah(I)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    .line 688
    :cond_5
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->hasBatteryTemperatureMilliCentigrade()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 689
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->getBatteryTemperatureMilliCentigrade()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->setBatteryTemperatureMilliCentigrade(I)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    .line 691
    :cond_6
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->hasTotalBytesSent()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 692
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->getTotalBytesSent()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->setTotalBytesSent(J)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    .line 694
    :cond_7
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 656
    :cond_8
    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->ensureFrequencyStatIsMutable()V

    .line 657
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    #getter for: Lcom/google/common/logging/GlassUserEventPerformanceStats;->frequencyStat_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->access$500(Lcom/google/common/logging/GlassUserEventPerformanceStats;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 662
    :cond_9
    #getter for: Lcom/google/common/logging/GlassUserEventPerformanceStats;->frequencyStat_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->access$500(Lcom/google/common/logging/GlassUserEventPerformanceStats;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 663
    iget-object v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 664
    iget-object v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 665
    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 666
    #getter for: Lcom/google/common/logging/GlassUserEventPerformanceStats;->frequencyStat_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->access$500(Lcom/google/common/logging/GlassUserEventPerformanceStats;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    .line 667
    iget v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 668
    invoke-static {}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->access$1300()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->getFrequencyStatFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_a
    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2

    .line 672
    :cond_b
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/common/logging/GlassUserEventPerformanceStats;->frequencyStat_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->access$500(Lcom/google/common/logging/GlassUserEventPerformanceStats;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 712
    const/4 v2, 0x0

    .line 714
    .local v2, parsedMessage:Lcom/google/common/logging/GlassUserEventPerformanceStats;
    :try_start_0
    sget-object v3, Lcom/google/common/logging/GlassUserEventPerformanceStats;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    if-eqz v2, :cond_0

    .line 720
    invoke-virtual {p0, v2}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->mergeFrom(Lcom/google/common/logging/GlassUserEventPerformanceStats;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    .line 723
    :cond_0
    return-object p0

    .line 715
    :catch_0
    move-exception v1

    .line 716
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-object v2, v0

    .line 717
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 719
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 720
    invoke-virtual {p0, v2}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->mergeFrom(Lcom/google/common/logging/GlassUserEventPerformanceStats;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 640
    instance-of v0, p1, Lcom/google/common/logging/GlassUserEventPerformanceStats;

    if-eqz v0, :cond_0

    .line 641
    check-cast p1, Lcom/google/common/logging/GlassUserEventPerformanceStats;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->mergeFrom(Lcom/google/common/logging/GlassUserEventPerformanceStats;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object p0

    .line 644
    .end local p0
    :goto_0
    return-object p0

    .line 643
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
    .line 518
    invoke-virtual {p0, p1, p2}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 518
    invoke-virtual {p0, p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

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
    .line 518
    invoke-virtual {p0, p1, p2}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

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
    .line 518
    invoke-virtual {p0, p1, p2}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 518
    invoke-virtual {p0, p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

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
    .line 518
    invoke-virtual {p0, p1, p2}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeFrequencyStat(I)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 941
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 942
    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->ensureFrequencyStatIsMutable()V

    .line 943
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 944
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 948
    :goto_0
    return-object p0

    .line 946
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setBatteryChargeWhenFullMah(I)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1216
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 1217
    iput p1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->batteryChargeWhenFullMah_:I

    .line 1218
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 1219
    return-object p0
.end method

.method public setBatteryStateOfChargeMah(I)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1168
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 1169
    iput p1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->batteryStateOfChargeMah_:I

    .line 1170
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 1171
    return-object p0
.end method

.method public setBatteryTemperatureMilliCentigrade(I)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1264
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 1265
    iput p1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->batteryTemperatureMilliCentigrade_:I

    .line 1266
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 1267
    return-object p0
.end method

.method public setBoardTemperatureMilliCentigrade(I)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1120
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 1121
    iput p1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->boardTemperatureMilliCentigrade_:I

    .line 1122
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 1123
    return-object p0
.end method

.method public setFrequencyStat(ILcom/google/common/logging/GlassUserEventFrequencyStat$Builder;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 811
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 812
    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->ensureFrequencyStatIsMutable()V

    .line 813
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->build()Lcom/google/common/logging/GlassUserEventFrequencyStat;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 814
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 818
    :goto_0
    return-object p0

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->build()Lcom/google/common/logging/GlassUserEventFrequencyStat;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setFrequencyStat(ILcom/google/common/logging/GlassUserEventFrequencyStat;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 790
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 791
    if-nez p2, :cond_0

    .line 792
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 794
    :cond_0
    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->ensureFrequencyStatIsMutable()V

    .line 795
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 796
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 800
    :goto_0
    return-object p0

    .line 798
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setTotalBytesSent(J)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1312
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 1313
    iput-wide p1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->totalBytesSent_:J

    .line 1314
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 1315
    return-object p0
.end method

.method public setTotalKernelMs(J)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1071
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 1072
    iput-wide p1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->totalKernelMs_:J

    .line 1073
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 1074
    return-object p0
.end method
