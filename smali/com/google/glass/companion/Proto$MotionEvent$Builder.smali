.class public final Lcom/google/glass/companion/Proto$MotionEvent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Proto.java"

# interfaces
.implements Lcom/google/glass/companion/Proto$MotionEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto$MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/glass/companion/Proto$MotionEvent;",
        "Lcom/google/glass/companion/Proto$MotionEvent$Builder;",
        ">;",
        "Lcom/google/glass/companion/Proto$MotionEventOrBuilder;"
    }
.end annotation


# instance fields
.field private action_:I

.field private bitField0_:I

.field private buttonState_:I

.field private deviceId_:I

.field private downTime_:J

.field private edgeFlags_:I

.field private eventTime_:J

.field private flags_:I

.field private metaState_:I

.field private pointerCoords_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;",
            ">;"
        }
    .end annotation
.end field

.field private pointerCount_:I

.field private pointerProperties_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;",
            ">;"
        }
    .end annotation
.end field

.field private source_:I

.field private xPrecision_:F

.field private yPrecision_:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 6040
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 6378
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerProperties_:Ljava/util/List;

    .line 6551
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerCoords_:Ljava/util/List;

    .line 6041
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->maybeForceBuilderInitialization()V

    .line 6042
    return-void
.end method

.method static synthetic access$4700()Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 1

    .prologue
    .line 6033
    invoke-static {}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->create()Lcom/google/glass/companion/Proto$MotionEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 1

    .prologue
    .line 6047
    new-instance v0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;-><init>()V

    return-object v0
.end method

.method private ensurePointerCoordsIsMutable()V
    .locals 2

    .prologue
    .line 6554
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 6555
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerCoords_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerCoords_:Ljava/util/List;

    .line 6556
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6558
    :cond_0
    return-void
.end method

.method private ensurePointerPropertiesIsMutable()V
    .locals 2

    .prologue
    .line 6381
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 6382
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerProperties_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerProperties_:Ljava/util/List;

    .line 6383
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6385
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 6045
    return-void
.end method


# virtual methods
.method public addAllPointerCoords(Ljava/lang/Iterable;)Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;",
            ">;)",
            "Lcom/google/glass/companion/Proto$MotionEvent$Builder;"
        }
    .end annotation

    .prologue
    .line 6651
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;>;"
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->ensurePointerCoordsIsMutable()V

    .line 6652
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerCoords_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 6655
    return-object p0
.end method

.method public addAllPointerProperties(Ljava/lang/Iterable;)Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;",
            ">;)",
            "Lcom/google/glass/companion/Proto$MotionEvent$Builder;"
        }
    .end annotation

    .prologue
    .line 6518
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;>;"
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->ensurePointerPropertiesIsMutable()V

    .line 6519
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerProperties_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 6522
    return-object p0
.end method

.method public addPointerCoords(ILcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;)Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 6641
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->ensurePointerCoordsIsMutable()V

    .line 6642
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerCoords_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->build()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6644
    return-object p0
.end method

.method public addPointerCoords(ILcom/google/glass/companion/Proto$MotionEvent$PointerCoords;)Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 6618
    if-nez p2, :cond_0

    .line 6619
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6621
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->ensurePointerCoordsIsMutable()V

    .line 6622
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerCoords_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6624
    return-object p0
.end method

.method public addPointerCoords(Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;)Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 6631
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->ensurePointerCoordsIsMutable()V

    .line 6632
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerCoords_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->build()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6634
    return-object p0
.end method

.method public addPointerCoords(Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;)Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6605
    if-nez p1, :cond_0

    .line 6606
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6608
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->ensurePointerCoordsIsMutable()V

    .line 6609
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerCoords_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6611
    return-object p0
.end method

.method public addPointerProperties(ILcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;)Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 6504
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->ensurePointerPropertiesIsMutable()V

    .line 6505
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerProperties_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->build()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6507
    return-object p0
.end method

.method public addPointerProperties(ILcom/google/glass/companion/Proto$MotionEvent$PointerProperties;)Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 6473
    if-nez p2, :cond_0

    .line 6474
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6476
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->ensurePointerPropertiesIsMutable()V

    .line 6477
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerProperties_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6479
    return-object p0
.end method

.method public addPointerProperties(Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;)Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 6490
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->ensurePointerPropertiesIsMutable()V

    .line 6491
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerProperties_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->build()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6493
    return-object p0
.end method

.method public addPointerProperties(Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;)Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6456
    if-nez p1, :cond_0

    .line 6457
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6459
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->ensurePointerPropertiesIsMutable()V

    .line 6460
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerProperties_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6462
    return-object p0
.end method

.method public build()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 2

    .prologue
    .line 6092
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->buildPartial()Lcom/google/glass/companion/Proto$MotionEvent;

    move-result-object v0

    .line 6093
    .local v0, result:Lcom/google/glass/companion/Proto$MotionEvent;
    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$MotionEvent;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6094
    invoke-static {v0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 6096
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6033
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->build()Lcom/google/glass/companion/Proto$MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 5

    .prologue
    .line 6100
    new-instance v1, Lcom/google/glass/companion/Proto$MotionEvent;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/glass/companion/Proto$MotionEvent;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V

    .line 6101
    .local v1, result:Lcom/google/glass/companion/Proto$MotionEvent;
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6102
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 6103
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 6104
    or-int/lit8 v2, v2, 0x1

    .line 6106
    :cond_0
    iget-wide v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->downTime_:J

    #setter for: Lcom/google/glass/companion/Proto$MotionEvent;->downTime_:J
    invoke-static {v1, v3, v4}, Lcom/google/glass/companion/Proto$MotionEvent;->access$4902(Lcom/google/glass/companion/Proto$MotionEvent;J)J

    .line 6107
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 6108
    or-int/lit8 v2, v2, 0x2

    .line 6110
    :cond_1
    iget-wide v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->eventTime_:J

    #setter for: Lcom/google/glass/companion/Proto$MotionEvent;->eventTime_:J
    invoke-static {v1, v3, v4}, Lcom/google/glass/companion/Proto$MotionEvent;->access$5002(Lcom/google/glass/companion/Proto$MotionEvent;J)J

    .line 6111
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 6112
    or-int/lit8 v2, v2, 0x4

    .line 6114
    :cond_2
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->action_:I

    #setter for: Lcom/google/glass/companion/Proto$MotionEvent;->action_:I
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$MotionEvent;->access$5102(Lcom/google/glass/companion/Proto$MotionEvent;I)I

    .line 6115
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 6116
    or-int/lit8 v2, v2, 0x8

    .line 6118
    :cond_3
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerCount_:I

    #setter for: Lcom/google/glass/companion/Proto$MotionEvent;->pointerCount_:I
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$MotionEvent;->access$5202(Lcom/google/glass/companion/Proto$MotionEvent;I)I

    .line 6119
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 6120
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerProperties_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerProperties_:Ljava/util/List;

    .line 6121
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6123
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerProperties_:Ljava/util/List;

    #setter for: Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$MotionEvent;->access$5302(Lcom/google/glass/companion/Proto$MotionEvent;Ljava/util/List;)Ljava/util/List;

    .line 6124
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 6125
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerCoords_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerCoords_:Ljava/util/List;

    .line 6126
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6128
    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerCoords_:Ljava/util/List;

    #setter for: Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$MotionEvent;->access$5402(Lcom/google/glass/companion/Proto$MotionEvent;Ljava/util/List;)Ljava/util/List;

    .line 6129
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 6130
    or-int/lit8 v2, v2, 0x10

    .line 6132
    :cond_6
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->metaState_:I

    #setter for: Lcom/google/glass/companion/Proto$MotionEvent;->metaState_:I
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$MotionEvent;->access$5502(Lcom/google/glass/companion/Proto$MotionEvent;I)I

    .line 6133
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 6134
    or-int/lit8 v2, v2, 0x20

    .line 6136
    :cond_7
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->buttonState_:I

    #setter for: Lcom/google/glass/companion/Proto$MotionEvent;->buttonState_:I
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$MotionEvent;->access$5602(Lcom/google/glass/companion/Proto$MotionEvent;I)I

    .line 6137
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 6138
    or-int/lit8 v2, v2, 0x40

    .line 6140
    :cond_8
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->xPrecision_:F

    #setter for: Lcom/google/glass/companion/Proto$MotionEvent;->xPrecision_:F
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$MotionEvent;->access$5702(Lcom/google/glass/companion/Proto$MotionEvent;F)F

    .line 6141
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 6142
    or-int/lit16 v2, v2, 0x80

    .line 6144
    :cond_9
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->yPrecision_:F

    #setter for: Lcom/google/glass/companion/Proto$MotionEvent;->yPrecision_:F
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$MotionEvent;->access$5802(Lcom/google/glass/companion/Proto$MotionEvent;F)F

    .line 6145
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 6146
    or-int/lit16 v2, v2, 0x100

    .line 6148
    :cond_a
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->deviceId_:I

    #setter for: Lcom/google/glass/companion/Proto$MotionEvent;->deviceId_:I
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$MotionEvent;->access$5902(Lcom/google/glass/companion/Proto$MotionEvent;I)I

    .line 6149
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 6150
    or-int/lit16 v2, v2, 0x200

    .line 6152
    :cond_b
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->edgeFlags_:I

    #setter for: Lcom/google/glass/companion/Proto$MotionEvent;->edgeFlags_:I
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$MotionEvent;->access$6002(Lcom/google/glass/companion/Proto$MotionEvent;I)I

    .line 6153
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c

    .line 6154
    or-int/lit16 v2, v2, 0x400

    .line 6156
    :cond_c
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->source_:I

    #setter for: Lcom/google/glass/companion/Proto$MotionEvent;->source_:I
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$MotionEvent;->access$6102(Lcom/google/glass/companion/Proto$MotionEvent;I)I

    .line 6157
    and-int/lit16 v3, v0, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_d

    .line 6158
    or-int/lit16 v2, v2, 0x800

    .line 6160
    :cond_d
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->flags_:I

    #setter for: Lcom/google/glass/companion/Proto$MotionEvent;->flags_:I
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$MotionEvent;->access$6202(Lcom/google/glass/companion/Proto$MotionEvent;I)I

    .line 6161
    #setter for: Lcom/google/glass/companion/Proto$MotionEvent;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/glass/companion/Proto$MotionEvent;->access$6302(Lcom/google/glass/companion/Proto$MotionEvent;I)I

    .line 6162
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6033
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->buildPartial()Lcom/google/glass/companion/Proto$MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 6051
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 6052
    iput-wide v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->downTime_:J

    .line 6053
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6054
    iput-wide v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->eventTime_:J

    .line 6055
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6056
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->action_:I

    .line 6057
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6058
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerCount_:I

    .line 6059
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6060
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerProperties_:Ljava/util/List;

    .line 6061
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6062
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerCoords_:Ljava/util/List;

    .line 6063
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6064
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->metaState_:I

    .line 6065
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6066
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->buttonState_:I

    .line 6067
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6068
    iput v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->xPrecision_:F

    .line 6069
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6070
    iput v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->yPrecision_:F

    .line 6071
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6072
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->deviceId_:I

    .line 6073
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6074
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->edgeFlags_:I

    .line 6075
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6076
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->source_:I

    .line 6077
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6078
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->flags_:I

    .line 6079
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6080
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 6033
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->clear()Lcom/google/glass/companion/Proto$MotionEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6033
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->clear()Lcom/google/glass/companion/Proto$MotionEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAction()Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 1

    .prologue
    .line 6340
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6341
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->action_:I

    .line 6343
    return-object p0
.end method

.method public clearButtonState()Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 1

    .prologue
    .line 6734
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6735
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->buttonState_:I

    .line 6737
    return-object p0
.end method

.method public clearDeviceId()Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 1

    .prologue
    .line 6830
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6831
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->deviceId_:I

    .line 6833
    return-object p0
.end method

.method public clearDownTime()Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 2

    .prologue
    .line 6276
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6277
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->downTime_:J

    .line 6279
    return-object p0
.end method

.method public clearEdgeFlags()Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 1

    .prologue
    .line 6862
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6863
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->edgeFlags_:I

    .line 6865
    return-object p0
.end method

.method public clearEventTime()Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 2

    .prologue
    .line 6308
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6309
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->eventTime_:J

    .line 6311
    return-object p0
.end method

.method public clearFlags()Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 1

    .prologue
    .line 6926
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6927
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->flags_:I

    .line 6929
    return-object p0
.end method

.method public clearMetaState()Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 1

    .prologue
    .line 6702
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6703
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->metaState_:I

    .line 6705
    return-object p0
.end method

.method public clearPointerCoords()Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 1

    .prologue
    .line 6661
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerCoords_:Ljava/util/List;

    .line 6662
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6664
    return-object p0
.end method

.method public clearPointerCount()Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 1

    .prologue
    .line 6372
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6373
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerCount_:I

    .line 6375
    return-object p0
.end method

.method public clearPointerProperties()Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 1

    .prologue
    .line 6532
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerProperties_:Ljava/util/List;

    .line 6533
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6535
    return-object p0
.end method

.method public clearSource()Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 1

    .prologue
    .line 6894
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6895
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->source_:I

    .line 6897
    return-object p0
.end method

.method public clearXPrecision()Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 1

    .prologue
    .line 6766
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6767
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->xPrecision_:F

    .line 6769
    return-object p0
.end method

.method public clearYPrecision()Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 1

    .prologue
    .line 6798
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6799
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->yPrecision_:F

    .line 6801
    return-object p0
.end method

.method public clone()Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 2

    .prologue
    .line 6084
    invoke-static {}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->create()Lcom/google/glass/companion/Proto$MotionEvent$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->buildPartial()Lcom/google/glass/companion/Proto$MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$MotionEvent;)Lcom/google/glass/companion/Proto$MotionEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 6033
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->clone()Lcom/google/glass/companion/Proto$MotionEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 6033
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->clone()Lcom/google/glass/companion/Proto$MotionEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6033
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->clone()Lcom/google/glass/companion/Proto$MotionEvent$Builder;

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
    .line 6033
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->clone()Lcom/google/glass/companion/Proto$MotionEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAction()I
    .locals 1

    .prologue
    .line 6325
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->action_:I

    return v0
.end method

.method public getButtonState()I
    .locals 1

    .prologue
    .line 6719
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->buttonState_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$MotionEvent;
    .locals 1

    .prologue
    .line 6088
    invoke-static {}, Lcom/google/glass/companion/Proto$MotionEvent;->getDefaultInstance()Lcom/google/glass/companion/Proto$MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 6033
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6033
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()I
    .locals 1

    .prologue
    .line 6815
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->deviceId_:I

    return v0
.end method

.method public getDownTime()J
    .locals 2

    .prologue
    .line 6261
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->downTime_:J

    return-wide v0
.end method

.method public getEdgeFlags()I
    .locals 1

    .prologue
    .line 6847
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->edgeFlags_:I

    return v0
.end method

.method public getEventTime()J
    .locals 2

    .prologue
    .line 6293
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->eventTime_:J

    return-wide v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 6911
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->flags_:I

    return v0
.end method

.method public getMetaState()I
    .locals 1

    .prologue
    .line 6687
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->metaState_:I

    return v0
.end method

.method public getPointerCoords(I)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1
    .parameter "index"

    .prologue
    .line 6576
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerCoords_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    return-object v0
.end method

.method public getPointerCoordsCount()I
    .locals 1

    .prologue
    .line 6570
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerCoords_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPointerCoordsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6564
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerCoords_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPointerCount()I
    .locals 1

    .prologue
    .line 6357
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerCount_:I

    return v0
.end method

.method public getPointerProperties(I)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .locals 1
    .parameter "index"

    .prologue
    .line 6415
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerProperties_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    return-object v0
.end method

.method public getPointerPropertiesCount()I
    .locals 1

    .prologue
    .line 6405
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerProperties_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPointerPropertiesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6395
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerProperties_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSource()I
    .locals 1

    .prologue
    .line 6879
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->source_:I

    return v0
.end method

.method public getXPrecision()F
    .locals 1

    .prologue
    .line 6751
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->xPrecision_:F

    return v0
.end method

.method public getYPrecision()F
    .locals 1

    .prologue
    .line 6783
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->yPrecision_:F

    return v0
.end method

.method public hasAction()Z
    .locals 2

    .prologue
    .line 6319
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

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

.method public hasButtonState()Z
    .locals 2

    .prologue
    .line 6713
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

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

.method public hasDeviceId()Z
    .locals 2

    .prologue
    .line 6809
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDownTime()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 6255
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEdgeFlags()Z
    .locals 2

    .prologue
    .line 6841
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEventTime()Z
    .locals 2

    .prologue
    .line 6287
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

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

.method public hasFlags()Z
    .locals 2

    .prologue
    .line 6905
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMetaState()Z
    .locals 2

    .prologue
    .line 6681
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

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

.method public hasPointerCount()Z
    .locals 2

    .prologue
    .line 6351
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

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

.method public hasSource()Z
    .locals 2

    .prologue
    .line 6873
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasXPrecision()Z
    .locals 2

    .prologue
    .line 6745
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasYPrecision()Z
    .locals 2

    .prologue
    .line 6777
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

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
    .line 6228
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/glass/companion/Proto$MotionEvent;)Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 6166
    invoke-static {}, Lcom/google/glass/companion/Proto$MotionEvent;->getDefaultInstance()Lcom/google/glass/companion/Proto$MotionEvent;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 6224
    :goto_0
    return-object p0

    .line 6167
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent;->hasDownTime()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6168
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->setDownTime(J)Lcom/google/glass/companion/Proto$MotionEvent$Builder;

    .line 6170
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent;->hasEventTime()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6171
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->setEventTime(J)Lcom/google/glass/companion/Proto$MotionEvent$Builder;

    .line 6173
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent;->hasAction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6174
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->setAction(I)Lcom/google/glass/companion/Proto$MotionEvent$Builder;

    .line 6176
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent;->hasPointerCount()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6177
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent;->getPointerCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->setPointerCount(I)Lcom/google/glass/companion/Proto$MotionEvent$Builder;

    .line 6179
    :cond_4
    #getter for: Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$MotionEvent;->access$5300(Lcom/google/glass/companion/Proto$MotionEvent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 6180
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerProperties_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 6181
    #getter for: Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$MotionEvent;->access$5300(Lcom/google/glass/companion/Proto$MotionEvent;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerProperties_:Ljava/util/List;

    .line 6182
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6189
    :cond_5
    :goto_1
    #getter for: Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$MotionEvent;->access$5400(Lcom/google/glass/companion/Proto$MotionEvent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 6190
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerCoords_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 6191
    #getter for: Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$MotionEvent;->access$5400(Lcom/google/glass/companion/Proto$MotionEvent;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerCoords_:Ljava/util/List;

    .line 6192
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6199
    :cond_6
    :goto_2
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent;->hasMetaState()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6200
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent;->getMetaState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->setMetaState(I)Lcom/google/glass/companion/Proto$MotionEvent$Builder;

    .line 6202
    :cond_7
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent;->hasButtonState()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6203
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent;->getButtonState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->setButtonState(I)Lcom/google/glass/companion/Proto$MotionEvent$Builder;

    .line 6205
    :cond_8
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent;->hasXPrecision()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6206
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent;->getXPrecision()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->setXPrecision(F)Lcom/google/glass/companion/Proto$MotionEvent$Builder;

    .line 6208
    :cond_9
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent;->hasYPrecision()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 6209
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent;->getYPrecision()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->setYPrecision(F)Lcom/google/glass/companion/Proto$MotionEvent$Builder;

    .line 6211
    :cond_a
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent;->hasDeviceId()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 6212
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent;->getDeviceId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->setDeviceId(I)Lcom/google/glass/companion/Proto$MotionEvent$Builder;

    .line 6214
    :cond_b
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent;->hasEdgeFlags()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 6215
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent;->getEdgeFlags()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->setEdgeFlags(I)Lcom/google/glass/companion/Proto$MotionEvent$Builder;

    .line 6217
    :cond_c
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 6218
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent;->getSource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->setSource(I)Lcom/google/glass/companion/Proto$MotionEvent$Builder;

    .line 6220
    :cond_d
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent;->hasFlags()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 6221
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent;->getFlags()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->setFlags(I)Lcom/google/glass/companion/Proto$MotionEvent$Builder;

    .line 6223
    :cond_e
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    #getter for: Lcom/google/glass/companion/Proto$MotionEvent;->unknownFields:Lcom/google/protobuf/ByteString;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$MotionEvent;->access$6400(Lcom/google/glass/companion/Proto$MotionEvent;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->concat(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->setUnknownFields(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    goto/16 :goto_0

    .line 6184
    :cond_f
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->ensurePointerPropertiesIsMutable()V

    .line 6185
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerProperties_:Ljava/util/List;

    #getter for: Lcom/google/glass/companion/Proto$MotionEvent;->pointerProperties_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$MotionEvent;->access$5300(Lcom/google/glass/companion/Proto$MotionEvent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 6194
    :cond_10
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->ensurePointerCoordsIsMutable()V

    .line 6195
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerCoords_:Ljava/util/List;

    #getter for: Lcom/google/glass/companion/Proto$MotionEvent;->pointerCoords_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$MotionEvent;->access$5400(Lcom/google/glass/companion/Proto$MotionEvent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6235
    const/4 v2, 0x0

    .line 6237
    .local v2, parsedMessage:Lcom/google/glass/companion/Proto$MotionEvent;
    :try_start_0
    sget-object v3, Lcom/google/glass/companion/Proto$MotionEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6242
    if-eqz v2, :cond_0

    .line 6243
    invoke-virtual {p0, v2}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$MotionEvent;)Lcom/google/glass/companion/Proto$MotionEvent$Builder;

    .line 6246
    :cond_0
    return-object p0

    .line 6238
    :catch_0
    move-exception v1

    .line 6239
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent;

    move-object v2, v0

    .line 6240
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6242
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 6243
    invoke-virtual {p0, v2}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$MotionEvent;)Lcom/google/glass/companion/Proto$MotionEvent$Builder;

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
    .line 6033
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$MotionEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6033
    check-cast p1, Lcom/google/glass/companion/Proto$MotionEvent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$MotionEvent;)Lcom/google/glass/companion/Proto$MotionEvent$Builder;

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
    .line 6033
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$MotionEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removePointerCoords(I)Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 6670
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->ensurePointerCoordsIsMutable()V

    .line 6671
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerCoords_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6673
    return-object p0
.end method

.method public removePointerProperties(I)Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 6545
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->ensurePointerPropertiesIsMutable()V

    .line 6546
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerProperties_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6548
    return-object p0
.end method

.method public setAction(I)Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6331
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6332
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->action_:I

    .line 6334
    return-object p0
.end method

.method public setButtonState(I)Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6725
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6726
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->buttonState_:I

    .line 6728
    return-object p0
.end method

.method public setDeviceId(I)Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6821
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6822
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->deviceId_:I

    .line 6824
    return-object p0
.end method

.method public setDownTime(J)Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6267
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6268
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->downTime_:J

    .line 6270
    return-object p0
.end method

.method public setEdgeFlags(I)Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6853
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6854
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->edgeFlags_:I

    .line 6856
    return-object p0
.end method

.method public setEventTime(J)Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6299
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6300
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->eventTime_:J

    .line 6302
    return-object p0
.end method

.method public setFlags(I)Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6917
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6918
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->flags_:I

    .line 6920
    return-object p0
.end method

.method public setMetaState(I)Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6693
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6694
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->metaState_:I

    .line 6696
    return-object p0
.end method

.method public setPointerCoords(ILcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;)Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 6596
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->ensurePointerCoordsIsMutable()V

    .line 6597
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerCoords_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->build()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6599
    return-object p0
.end method

.method public setPointerCoords(ILcom/google/glass/companion/Proto$MotionEvent$PointerCoords;)Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 6583
    if-nez p2, :cond_0

    .line 6584
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6586
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->ensurePointerCoordsIsMutable()V

    .line 6587
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerCoords_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6589
    return-object p0
.end method

.method public setPointerCount(I)Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6363
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6364
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerCount_:I

    .line 6366
    return-object p0
.end method

.method public setPointerProperties(ILcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;)Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 6443
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->ensurePointerPropertiesIsMutable()V

    .line 6444
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerProperties_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->build()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6446
    return-object p0
.end method

.method public setPointerProperties(ILcom/google/glass/companion/Proto$MotionEvent$PointerProperties;)Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 6426
    if-nez p2, :cond_0

    .line 6427
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6429
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->ensurePointerPropertiesIsMutable()V

    .line 6430
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->pointerProperties_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6432
    return-object p0
.end method

.method public setSource(I)Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6885
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6886
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->source_:I

    .line 6888
    return-object p0
.end method

.method public setXPrecision(F)Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6757
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6758
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->xPrecision_:F

    .line 6760
    return-object p0
.end method

.method public setYPrecision(F)Lcom/google/glass/companion/Proto$MotionEvent$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6789
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->bitField0_:I

    .line 6790
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$Builder;->yPrecision_:F

    .line 6792
    return-object p0
.end method
