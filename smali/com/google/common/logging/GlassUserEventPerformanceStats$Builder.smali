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
.field private batteryChargeWhenFullUah_:I

.field private batteryStateOfChargeUah_:I

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

.field private reportedSoc_:I

.field private totalBytesSent_:J

.field private totalKernelMs_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 579
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 780
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    .line 580
    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->maybeForceBuilderInitialization()V

    .line 581
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 585
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 780
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    .line 586
    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->maybeForceBuilderInitialization()V

    .line 587
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/common/logging/GlassUserEventPerformanceStats$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 562
    invoke-direct {p0, p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 1

    .prologue
    .line 562
    invoke-static {}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->create()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 1

    .prologue
    .line 594
    new-instance v0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    invoke-direct {v0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;-><init>()V

    return-object v0
.end method

.method private ensureFrequencyStatIsMutable()V
    .locals 2

    .prologue
    .line 783
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 784
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    .line 785
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 787
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 568
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

    .line 1080
    iget-object v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_0

    .line 1081
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

    .line 1087
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    .line 1089
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 1081
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 589
    invoke-static {}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->getFrequencyStatFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 592
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
    .line 959
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/common/logging/GlassUserEventFrequencyStat;>;"
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 960
    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->ensureFrequencyStatIsMutable()V

    .line 961
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 963
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 967
    :goto_0
    return-object p0

    .line 965
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
    .line 941
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 942
    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->ensureFrequencyStatIsMutable()V

    .line 943
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->build()Lcom/google/common/logging/GlassUserEventFrequencyStat;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 944
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 948
    :goto_0
    return-object p0

    .line 946
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
    .line 902
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 903
    if-nez p2, :cond_0

    .line 904
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 906
    :cond_0
    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->ensureFrequencyStatIsMutable()V

    .line 907
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 908
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 912
    :goto_0
    return-object p0

    .line 910
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addFrequencyStat(Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 923
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 924
    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->ensureFrequencyStatIsMutable()V

    .line 925
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->build()Lcom/google/common/logging/GlassUserEventFrequencyStat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 926
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 930
    :goto_0
    return-object p0

    .line 928
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
    .line 881
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 882
    if-nez p1, :cond_0

    .line 883
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 885
    :cond_0
    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->ensureFrequencyStatIsMutable()V

    .line 886
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 887
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 891
    :goto_0
    return-object p0

    .line 889
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addFrequencyStatBuilder()Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;
    .locals 2

    .prologue
    .line 1051
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
    .line 1063
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
    .line 636
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->buildPartial()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v0

    .line 637
    .local v0, result:Lcom/google/common/logging/GlassUserEventPerformanceStats;
    invoke-virtual {v0}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 638
    invoke-static {v0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 640
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->build()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->build()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/common/logging/GlassUserEventPerformanceStats;
    .locals 5

    .prologue
    .line 644
    new-instance v1, Lcom/google/common/logging/GlassUserEventPerformanceStats;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/common/logging/GlassUserEventPerformanceStats;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/common/logging/GlassUserEventPerformanceStats$1;)V

    .line 645
    .local v1, result:Lcom/google/common/logging/GlassUserEventPerformanceStats;
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 646
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 647
    .local v2, to_bitField0_:I
    iget-object v3, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_8

    .line 648
    iget v3, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 649
    iget-object v3, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    .line 650
    iget v3, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 652
    :cond_0
    iget-object v3, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    #setter for: Lcom/google/common/logging/GlassUserEventPerformanceStats;->frequencyStat_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->access$502(Lcom/google/common/logging/GlassUserEventPerformanceStats;Ljava/util/List;)Ljava/util/List;

    .line 656
    :goto_0
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 657
    or-int/lit8 v2, v2, 0x1

    .line 659
    :cond_1
    iget-wide v3, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->totalKernelMs_:J

    #setter for: Lcom/google/common/logging/GlassUserEventPerformanceStats;->totalKernelMs_:J
    invoke-static {v1, v3, v4}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->access$602(Lcom/google/common/logging/GlassUserEventPerformanceStats;J)J

    .line 660
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 661
    or-int/lit8 v2, v2, 0x2

    .line 663
    :cond_2
    iget v3, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->boardTemperatureMilliCentigrade_:I

    #setter for: Lcom/google/common/logging/GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade_:I
    invoke-static {v1, v3}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->access$702(Lcom/google/common/logging/GlassUserEventPerformanceStats;I)I

    .line 664
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 665
    or-int/lit8 v2, v2, 0x4

    .line 667
    :cond_3
    iget v3, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->batteryStateOfChargeUah_:I

    #setter for: Lcom/google/common/logging/GlassUserEventPerformanceStats;->batteryStateOfChargeUah_:I
    invoke-static {v1, v3}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->access$802(Lcom/google/common/logging/GlassUserEventPerformanceStats;I)I

    .line 668
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 669
    or-int/lit8 v2, v2, 0x8

    .line 671
    :cond_4
    iget v3, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->batteryChargeWhenFullUah_:I

    #setter for: Lcom/google/common/logging/GlassUserEventPerformanceStats;->batteryChargeWhenFullUah_:I
    invoke-static {v1, v3}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->access$902(Lcom/google/common/logging/GlassUserEventPerformanceStats;I)I

    .line 672
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 673
    or-int/lit8 v2, v2, 0x10

    .line 675
    :cond_5
    iget v3, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->reportedSoc_:I

    #setter for: Lcom/google/common/logging/GlassUserEventPerformanceStats;->reportedSoc_:I
    invoke-static {v1, v3}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->access$1002(Lcom/google/common/logging/GlassUserEventPerformanceStats;I)I

    .line 676
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 677
    or-int/lit8 v2, v2, 0x20

    .line 679
    :cond_6
    iget v3, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->batteryTemperatureMilliCentigrade_:I

    #setter for: Lcom/google/common/logging/GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade_:I
    invoke-static {v1, v3}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->access$1102(Lcom/google/common/logging/GlassUserEventPerformanceStats;I)I

    .line 680
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 681
    or-int/lit8 v2, v2, 0x40

    .line 683
    :cond_7
    iget-wide v3, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->totalBytesSent_:J

    #setter for: Lcom/google/common/logging/GlassUserEventPerformanceStats;->totalBytesSent_:J
    invoke-static {v1, v3, v4}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->access$1202(Lcom/google/common/logging/GlassUserEventPerformanceStats;J)J

    .line 684
    #setter for: Lcom/google/common/logging/GlassUserEventPerformanceStats;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->access$1302(Lcom/google/common/logging/GlassUserEventPerformanceStats;I)I

    .line 685
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onBuilt()V

    .line 686
    return-object v1

    .line 654
    :cond_8
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
    .line 562
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->buildPartial()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->buildPartial()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 598
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 599
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 600
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    .line 601
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 605
    :goto_0
    iput-wide v2, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->totalKernelMs_:J

    .line 606
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 607
    iput v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->boardTemperatureMilliCentigrade_:I

    .line 608
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 609
    iput v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->batteryStateOfChargeUah_:I

    .line 610
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 611
    iput v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->batteryChargeWhenFullUah_:I

    .line 612
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 613
    iput v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->reportedSoc_:I

    .line 614
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 615
    iput v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->batteryTemperatureMilliCentigrade_:I

    .line 616
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 617
    iput-wide v2, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->totalBytesSent_:J

    .line 618
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 619
    return-object p0

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->clear()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->clear()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->clear()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->clear()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBatteryChargeWhenFullUah()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 1

    .prologue
    .line 1282
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 1283
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->batteryChargeWhenFullUah_:I

    .line 1284
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 1285
    return-object p0
.end method

.method public clearBatteryStateOfChargeUah()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 1

    .prologue
    .line 1234
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 1235
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->batteryStateOfChargeUah_:I

    .line 1236
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 1237
    return-object p0
.end method

.method public clearBatteryTemperatureMilliCentigrade()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 1

    .prologue
    .line 1394
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 1395
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->batteryTemperatureMilliCentigrade_:I

    .line 1396
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 1397
    return-object p0
.end method

.method public clearBoardTemperatureMilliCentigrade()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 1

    .prologue
    .line 1186
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 1187
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->boardTemperatureMilliCentigrade_:I

    .line 1188
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 1189
    return-object p0
.end method

.method public clearFrequencyStat()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 978
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    .line 979
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 980
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 984
    :goto_0
    return-object p0

    .line 982
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearReportedSoc()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 1

    .prologue
    .line 1346
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 1347
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->reportedSoc_:I

    .line 1348
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 1349
    return-object p0
.end method

.method public clearTotalBytesSent()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 2

    .prologue
    .line 1442
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 1443
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->totalBytesSent_:J

    .line 1444
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 1445
    return-object p0
.end method

.method public clearTotalKernelMs()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 2

    .prologue
    .line 1138
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 1139
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->totalKernelMs_:J

    .line 1140
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 1141
    return-object p0
.end method

.method public clone()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 2

    .prologue
    .line 623
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
    .line 562
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->clone()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->clone()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->clone()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->clone()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 562
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
    .line 562
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->clone()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBatteryChargeWhenFullUah()I
    .locals 1

    .prologue
    .line 1259
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->batteryChargeWhenFullUah_:I

    return v0
.end method

.method public getBatteryStateOfChargeUah()I
    .locals 1

    .prologue
    .line 1211
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->batteryStateOfChargeUah_:I

    return v0
.end method

.method public getBatteryTemperatureMilliCentigrade()I
    .locals 1

    .prologue
    .line 1371
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->batteryTemperatureMilliCentigrade_:I

    return v0
.end method

.method public getBoardTemperatureMilliCentigrade()I
    .locals 1

    .prologue
    .line 1163
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->boardTemperatureMilliCentigrade_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/common/logging/GlassUserEventPerformanceStats;
    .locals 1

    .prologue
    .line 632
    invoke-static {}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->getDefaultInstance()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->getDefaultInstanceForType()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->getDefaultInstanceForType()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 628
    sget-object v0, Lcom/google/common/logging/GlassExtensions;->internal_static_googlex_glass_GlassUserEventPerformanceStats_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getFrequencyStat(I)Lcom/google/common/logging/GlassUserEventFrequencyStat;
    .locals 1
    .parameter "index"

    .prologue
    .line 828
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventFrequencyStat;

    .line 831
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
    .line 1012
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
    .line 1075
    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->getFrequencyStatFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFrequencyStatCount()I
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 817
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
    .line 800
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 803
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
    .line 1023
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1024
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassUserEventFrequencyStatOrBuilder;

    .line 1025
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
    .line 1037
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 1040
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getReportedSoc()I
    .locals 1

    .prologue
    .line 1315
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->reportedSoc_:I

    return v0
.end method

.method public getTotalBytesSent()J
    .locals 2

    .prologue
    .line 1419
    iget-wide v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->totalBytesSent_:J

    return-wide v0
.end method

.method public getTotalKernelMs()J
    .locals 2

    .prologue
    .line 1113
    iget-wide v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->totalKernelMs_:J

    return-wide v0
.end method

.method public hasBatteryChargeWhenFullUah()Z
    .locals 2

    .prologue
    .line 1249
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

.method public hasBatteryStateOfChargeUah()Z
    .locals 2

    .prologue
    .line 1201
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
    .line 1361
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

.method public hasBoardTemperatureMilliCentigrade()Z
    .locals 2

    .prologue
    .line 1153
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

.method public hasReportedSoc()Z
    .locals 2

    .prologue
    .line 1301
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

.method public hasTotalBytesSent()Z
    .locals 2

    .prologue
    .line 1409
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

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
    .line 1102
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
    .line 573
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
    .line 752
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->getFrequencyStatCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 753
    invoke-virtual {p0, v0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->getFrequencyStat(I)Lcom/google/common/logging/GlassUserEventFrequencyStat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/logging/GlassUserEventFrequencyStat;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 755
    const/4 v1, 0x0

    .line 758
    :goto_1
    return v1

    .line 752
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 758
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/common/logging/GlassUserEventPerformanceStats;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 2
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 699
    invoke-static {}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->getDefaultInstance()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 748
    :goto_0
    return-object p0

    .line 700
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_a

    .line 701
    #getter for: Lcom/google/common/logging/GlassUserEventPerformanceStats;->frequencyStat_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->access$500(Lcom/google/common/logging/GlassUserEventPerformanceStats;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 702
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 703
    #getter for: Lcom/google/common/logging/GlassUserEventPerformanceStats;->frequencyStat_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->access$500(Lcom/google/common/logging/GlassUserEventPerformanceStats;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    .line 704
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 709
    :goto_1
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 726
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->hasTotalKernelMs()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 727
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->getTotalKernelMs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->setTotalKernelMs(J)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    .line 729
    :cond_2
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->hasBoardTemperatureMilliCentigrade()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 730
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->getBoardTemperatureMilliCentigrade()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->setBoardTemperatureMilliCentigrade(I)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    .line 732
    :cond_3
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->hasBatteryStateOfChargeUah()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 733
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->getBatteryStateOfChargeUah()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->setBatteryStateOfChargeUah(I)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    .line 735
    :cond_4
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->hasBatteryChargeWhenFullUah()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 736
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->getBatteryChargeWhenFullUah()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->setBatteryChargeWhenFullUah(I)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    .line 738
    :cond_5
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->hasReportedSoc()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 739
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->getReportedSoc()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->setReportedSoc(I)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    .line 741
    :cond_6
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->hasBatteryTemperatureMilliCentigrade()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 742
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->getBatteryTemperatureMilliCentigrade()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->setBatteryTemperatureMilliCentigrade(I)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    .line 744
    :cond_7
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->hasTotalBytesSent()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 745
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->getTotalBytesSent()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->setTotalBytesSent(J)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    .line 747
    :cond_8
    invoke-virtual {p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0

    .line 706
    :cond_9
    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->ensureFrequencyStatIsMutable()V

    .line 707
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    #getter for: Lcom/google/common/logging/GlassUserEventPerformanceStats;->frequencyStat_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->access$500(Lcom/google/common/logging/GlassUserEventPerformanceStats;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 712
    :cond_a
    #getter for: Lcom/google/common/logging/GlassUserEventPerformanceStats;->frequencyStat_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->access$500(Lcom/google/common/logging/GlassUserEventPerformanceStats;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 713
    iget-object v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 714
    iget-object v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 715
    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 716
    #getter for: Lcom/google/common/logging/GlassUserEventPerformanceStats;->frequencyStat_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->access$500(Lcom/google/common/logging/GlassUserEventPerformanceStats;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    .line 717
    iget v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 718
    invoke-static {}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->access$1400()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->getFrequencyStatFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_b
    iput-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2

    .line 722
    :cond_c
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
    .line 765
    const/4 v2, 0x0

    .line 767
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

    .line 772
    if-eqz v2, :cond_0

    .line 773
    invoke-virtual {p0, v2}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->mergeFrom(Lcom/google/common/logging/GlassUserEventPerformanceStats;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    .line 776
    :cond_0
    return-object p0

    .line 768
    :catch_0
    move-exception v1

    .line 769
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-object v2, v0

    .line 770
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 772
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 773
    invoke-virtual {p0, v2}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->mergeFrom(Lcom/google/common/logging/GlassUserEventPerformanceStats;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 690
    instance-of v0, p1, Lcom/google/common/logging/GlassUserEventPerformanceStats;

    if-eqz v0, :cond_0

    .line 691
    check-cast p1, Lcom/google/common/logging/GlassUserEventPerformanceStats;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->mergeFrom(Lcom/google/common/logging/GlassUserEventPerformanceStats;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object p0

    .line 694
    .end local p0
    :goto_0
    return-object p0

    .line 693
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
    .line 562
    invoke-virtual {p0, p1, p2}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 562
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
    .line 562
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
    .line 562
    invoke-virtual {p0, p1, p2}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 562
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
    .line 562
    invoke-virtual {p0, p1, p2}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeFrequencyStat(I)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 994
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 995
    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->ensureFrequencyStatIsMutable()V

    .line 996
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 997
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 1001
    :goto_0
    return-object p0

    .line 999
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setBatteryChargeWhenFullUah(I)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1269
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 1270
    iput p1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->batteryChargeWhenFullUah_:I

    .line 1271
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 1272
    return-object p0
.end method

.method public setBatteryStateOfChargeUah(I)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1221
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 1222
    iput p1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->batteryStateOfChargeUah_:I

    .line 1223
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 1224
    return-object p0
.end method

.method public setBatteryTemperatureMilliCentigrade(I)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1381
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 1382
    iput p1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->batteryTemperatureMilliCentigrade_:I

    .line 1383
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 1384
    return-object p0
.end method

.method public setBoardTemperatureMilliCentigrade(I)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1173
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 1174
    iput p1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->boardTemperatureMilliCentigrade_:I

    .line 1175
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 1176
    return-object p0
.end method

.method public setFrequencyStat(ILcom/google/common/logging/GlassUserEventFrequencyStat$Builder;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 864
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 865
    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->ensureFrequencyStatIsMutable()V

    .line 866
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/common/logging/GlassUserEventFrequencyStat$Builder;->build()Lcom/google/common/logging/GlassUserEventFrequencyStat;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 867
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 871
    :goto_0
    return-object p0

    .line 869
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
    .line 843
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 844
    if-nez p2, :cond_0

    .line 845
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 847
    :cond_0
    invoke-direct {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->ensureFrequencyStatIsMutable()V

    .line 848
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStat_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 849
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 853
    :goto_0
    return-object p0

    .line 851
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->frequencyStatBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setReportedSoc(I)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1329
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 1330
    iput p1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->reportedSoc_:I

    .line 1331
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 1332
    return-object p0
.end method

.method public setTotalBytesSent(J)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1429
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 1430
    iput-wide p1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->totalBytesSent_:J

    .line 1431
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 1432
    return-object p0
.end method

.method public setTotalKernelMs(J)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1124
    iget v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->bitField0_:I

    .line 1125
    iput-wide p1, p0, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->totalKernelMs_:J

    .line 1126
    invoke-virtual {p0}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->onChanged()V

    .line 1127
    return-object p0
.end method
