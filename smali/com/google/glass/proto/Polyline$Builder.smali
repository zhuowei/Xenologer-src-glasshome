.class public final Lcom/google/glass/proto/Polyline$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Polyline.java"

# interfaces
.implements Lcom/google/glass/proto/PolylineOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/proto/Polyline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/glass/proto/Polyline$Builder;",
        ">;",
        "Lcom/google/glass/proto/PolylineOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private colorArgb_:I

.field private vertexBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/glass/proto/LatLng;",
            "Lcom/google/glass/proto/LatLng$Builder;",
            "Lcom/google/glass/proto/LatLngOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private vertex_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/proto/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private width_:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 533
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertex_:Ljava/util/List;

    .line 384
    invoke-direct {p0}, Lcom/google/glass/proto/Polyline$Builder;->maybeForceBuilderInitialization()V

    .line 385
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 389
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 533
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertex_:Ljava/util/List;

    .line 390
    invoke-direct {p0}, Lcom/google/glass/proto/Polyline$Builder;->maybeForceBuilderInitialization()V

    .line 391
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/glass/proto/Polyline$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 366
    invoke-direct {p0, p1}, Lcom/google/glass/proto/Polyline$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/glass/proto/Polyline$Builder;
    .locals 1

    .prologue
    .line 366
    invoke-static {}, Lcom/google/glass/proto/Polyline$Builder;->create()Lcom/google/glass/proto/Polyline$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/glass/proto/Polyline$Builder;
    .locals 1

    .prologue
    .line 398
    new-instance v0, Lcom/google/glass/proto/Polyline$Builder;

    invoke-direct {v0}, Lcom/google/glass/proto/Polyline$Builder;-><init>()V

    return-object v0
.end method

.method private ensureVertexIsMutable()V
    .locals 2

    .prologue
    .line 536
    iget v0, p0, Lcom/google/glass/proto/Polyline$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 537
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/glass/proto/Polyline$Builder;->vertex_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertex_:Ljava/util/List;

    .line 538
    iget v0, p0, Lcom/google/glass/proto/Polyline$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/proto/Polyline$Builder;->bitField0_:I

    .line 540
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 372
    sget-object v0, Lcom/google/glass/proto/MapRenderingService;->internal_static_glass_proto_Polyline_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getVertexFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/glass/proto/LatLng;",
            "Lcom/google/glass/proto/LatLng$Builder;",
            "Lcom/google/glass/proto/LatLngOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 833
    iget-object v1, p0, Lcom/google/glass/proto/Polyline$Builder;->vertexBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_0

    .line 834
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/google/glass/proto/Polyline$Builder;->vertex_:Ljava/util/List;

    iget v3, p0, Lcom/google/glass/proto/Polyline$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/proto/Polyline$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/glass/proto/Polyline$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/google/glass/proto/Polyline$Builder;->vertexBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 840
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertex_:Ljava/util/List;

    .line 842
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertexBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 834
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 393
    invoke-static {}, Lcom/google/glass/proto/Polyline;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    invoke-direct {p0}, Lcom/google/glass/proto/Polyline$Builder;->getVertexFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 396
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllVertex(Ljava/lang/Iterable;)Lcom/google/glass/proto/Polyline$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/glass/proto/LatLng;",
            ">;)",
            "Lcom/google/glass/proto/Polyline$Builder;"
        }
    .end annotation

    .prologue
    .line 712
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/glass/proto/LatLng;>;"
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertexBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 713
    invoke-direct {p0}, Lcom/google/glass/proto/Polyline$Builder;->ensureVertexIsMutable()V

    .line 714
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertex_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 716
    invoke-virtual {p0}, Lcom/google/glass/proto/Polyline$Builder;->onChanged()V

    .line 720
    :goto_0
    return-object p0

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertexBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addVertex(ILcom/google/glass/proto/LatLng$Builder;)Lcom/google/glass/proto/Polyline$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 694
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertexBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 695
    invoke-direct {p0}, Lcom/google/glass/proto/Polyline$Builder;->ensureVertexIsMutable()V

    .line 696
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertex_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/glass/proto/LatLng$Builder;->build()Lcom/google/glass/proto/LatLng;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 697
    invoke-virtual {p0}, Lcom/google/glass/proto/Polyline$Builder;->onChanged()V

    .line 701
    :goto_0
    return-object p0

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertexBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/glass/proto/LatLng$Builder;->build()Lcom/google/glass/proto/LatLng;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addVertex(ILcom/google/glass/proto/LatLng;)Lcom/google/glass/proto/Polyline$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 655
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertexBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 656
    if-nez p2, :cond_0

    .line 657
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 659
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/proto/Polyline$Builder;->ensureVertexIsMutable()V

    .line 660
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertex_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 661
    invoke-virtual {p0}, Lcom/google/glass/proto/Polyline$Builder;->onChanged()V

    .line 665
    :goto_0
    return-object p0

    .line 663
    :cond_1
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertexBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addVertex(Lcom/google/glass/proto/LatLng$Builder;)Lcom/google/glass/proto/Polyline$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 676
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertexBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 677
    invoke-direct {p0}, Lcom/google/glass/proto/Polyline$Builder;->ensureVertexIsMutable()V

    .line 678
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertex_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/glass/proto/LatLng$Builder;->build()Lcom/google/glass/proto/LatLng;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 679
    invoke-virtual {p0}, Lcom/google/glass/proto/Polyline$Builder;->onChanged()V

    .line 683
    :goto_0
    return-object p0

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertexBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/google/glass/proto/LatLng$Builder;->build()Lcom/google/glass/proto/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addVertex(Lcom/google/glass/proto/LatLng;)Lcom/google/glass/proto/Polyline$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 634
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertexBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 635
    if-nez p1, :cond_0

    .line 636
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 638
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/proto/Polyline$Builder;->ensureVertexIsMutable()V

    .line 639
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertex_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 640
    invoke-virtual {p0}, Lcom/google/glass/proto/Polyline$Builder;->onChanged()V

    .line 644
    :goto_0
    return-object p0

    .line 642
    :cond_1
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertexBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addVertexBuilder()Lcom/google/glass/proto/LatLng$Builder;
    .locals 2

    .prologue
    .line 804
    invoke-direct {p0}, Lcom/google/glass/proto/Polyline$Builder;->getVertexFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/glass/proto/LatLng;->getDefaultInstance()Lcom/google/glass/proto/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/LatLng$Builder;

    return-object v0
.end method

.method public addVertexBuilder(I)Lcom/google/glass/proto/LatLng$Builder;
    .locals 2
    .parameter "index"

    .prologue
    .line 816
    invoke-direct {p0}, Lcom/google/glass/proto/Polyline$Builder;->getVertexFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/glass/proto/LatLng;->getDefaultInstance()Lcom/google/glass/proto/LatLng;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/LatLng$Builder;

    return-object v0
.end method

.method public build()Lcom/google/glass/proto/Polyline;
    .locals 2

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/google/glass/proto/Polyline$Builder;->buildPartial()Lcom/google/glass/proto/Polyline;

    move-result-object v0

    .line 431
    .local v0, result:Lcom/google/glass/proto/Polyline;
    invoke-virtual {v0}, Lcom/google/glass/proto/Polyline;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 432
    invoke-static {v0}, Lcom/google/glass/proto/Polyline$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 434
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/google/glass/proto/Polyline$Builder;->build()Lcom/google/glass/proto/Polyline;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/google/glass/proto/Polyline$Builder;->build()Lcom/google/glass/proto/Polyline;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/glass/proto/Polyline;
    .locals 5

    .prologue
    .line 438
    new-instance v1, Lcom/google/glass/proto/Polyline;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/glass/proto/Polyline;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/glass/proto/Polyline$1;)V

    .line 439
    .local v1, result:Lcom/google/glass/proto/Polyline;
    iget v0, p0, Lcom/google/glass/proto/Polyline$Builder;->bitField0_:I

    .line 440
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 441
    .local v2, to_bitField0_:I
    iget-object v3, p0, Lcom/google/glass/proto/Polyline$Builder;->vertexBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_3

    .line 442
    iget v3, p0, Lcom/google/glass/proto/Polyline$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 443
    iget-object v3, p0, Lcom/google/glass/proto/Polyline$Builder;->vertex_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/proto/Polyline$Builder;->vertex_:Ljava/util/List;

    .line 444
    iget v3, p0, Lcom/google/glass/proto/Polyline$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/glass/proto/Polyline$Builder;->bitField0_:I

    .line 446
    :cond_0
    iget-object v3, p0, Lcom/google/glass/proto/Polyline$Builder;->vertex_:Ljava/util/List;

    #setter for: Lcom/google/glass/proto/Polyline;->vertex_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/glass/proto/Polyline;->access$502(Lcom/google/glass/proto/Polyline;Ljava/util/List;)Ljava/util/List;

    .line 450
    :goto_0
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 451
    or-int/lit8 v2, v2, 0x1

    .line 453
    :cond_1
    iget v3, p0, Lcom/google/glass/proto/Polyline$Builder;->width_:F

    #setter for: Lcom/google/glass/proto/Polyline;->width_:F
    invoke-static {v1, v3}, Lcom/google/glass/proto/Polyline;->access$602(Lcom/google/glass/proto/Polyline;F)F

    .line 454
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 455
    or-int/lit8 v2, v2, 0x2

    .line 457
    :cond_2
    iget v3, p0, Lcom/google/glass/proto/Polyline$Builder;->colorArgb_:I

    #setter for: Lcom/google/glass/proto/Polyline;->colorArgb_:I
    invoke-static {v1, v3}, Lcom/google/glass/proto/Polyline;->access$702(Lcom/google/glass/proto/Polyline;I)I

    .line 458
    #setter for: Lcom/google/glass/proto/Polyline;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/glass/proto/Polyline;->access$802(Lcom/google/glass/proto/Polyline;I)I

    .line 459
    invoke-virtual {p0}, Lcom/google/glass/proto/Polyline$Builder;->onBuilt()V

    .line 460
    return-object v1

    .line 448
    :cond_3
    iget-object v3, p0, Lcom/google/glass/proto/Polyline$Builder;->vertexBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    #setter for: Lcom/google/glass/proto/Polyline;->vertex_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/glass/proto/Polyline;->access$502(Lcom/google/glass/proto/Polyline;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/google/glass/proto/Polyline$Builder;->buildPartial()Lcom/google/glass/proto/Polyline;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/google/glass/proto/Polyline$Builder;->buildPartial()Lcom/google/glass/proto/Polyline;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/glass/proto/Polyline$Builder;
    .locals 1

    .prologue
    .line 402
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 403
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertexBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 404
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertex_:Ljava/util/List;

    .line 405
    iget v0, p0, Lcom/google/glass/proto/Polyline$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/proto/Polyline$Builder;->bitField0_:I

    .line 409
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/proto/Polyline$Builder;->width_:F

    .line 410
    iget v0, p0, Lcom/google/glass/proto/Polyline$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/proto/Polyline$Builder;->bitField0_:I

    .line 411
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/proto/Polyline$Builder;->colorArgb_:I

    .line 412
    iget v0, p0, Lcom/google/glass/proto/Polyline$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/proto/Polyline$Builder;->bitField0_:I

    .line 413
    return-object p0

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertexBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/google/glass/proto/Polyline$Builder;->clear()Lcom/google/glass/proto/Polyline$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/google/glass/proto/Polyline$Builder;->clear()Lcom/google/glass/proto/Polyline$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/google/glass/proto/Polyline$Builder;->clear()Lcom/google/glass/proto/Polyline$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/google/glass/proto/Polyline$Builder;->clear()Lcom/google/glass/proto/Polyline$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearColorArgb()Lcom/google/glass/proto/Polyline$Builder;
    .locals 1

    .prologue
    .line 935
    iget v0, p0, Lcom/google/glass/proto/Polyline$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/proto/Polyline$Builder;->bitField0_:I

    .line 936
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/proto/Polyline$Builder;->colorArgb_:I

    .line 937
    invoke-virtual {p0}, Lcom/google/glass/proto/Polyline$Builder;->onChanged()V

    .line 938
    return-object p0
.end method

.method public clearVertex()Lcom/google/glass/proto/Polyline$Builder;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertexBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 731
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertex_:Ljava/util/List;

    .line 732
    iget v0, p0, Lcom/google/glass/proto/Polyline$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/proto/Polyline$Builder;->bitField0_:I

    .line 733
    invoke-virtual {p0}, Lcom/google/glass/proto/Polyline$Builder;->onChanged()V

    .line 737
    :goto_0
    return-object p0

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertexBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearWidth()Lcom/google/glass/proto/Polyline$Builder;
    .locals 1

    .prologue
    .line 887
    iget v0, p0, Lcom/google/glass/proto/Polyline$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/proto/Polyline$Builder;->bitField0_:I

    .line 888
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/proto/Polyline$Builder;->width_:F

    .line 889
    invoke-virtual {p0}, Lcom/google/glass/proto/Polyline$Builder;->onChanged()V

    .line 890
    return-object p0
.end method

.method public clone()Lcom/google/glass/proto/Polyline$Builder;
    .locals 2

    .prologue
    .line 417
    invoke-static {}, Lcom/google/glass/proto/Polyline$Builder;->create()Lcom/google/glass/proto/Polyline$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/proto/Polyline$Builder;->buildPartial()Lcom/google/glass/proto/Polyline;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/proto/Polyline$Builder;->mergeFrom(Lcom/google/glass/proto/Polyline;)Lcom/google/glass/proto/Polyline$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/google/glass/proto/Polyline$Builder;->clone()Lcom/google/glass/proto/Polyline$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/google/glass/proto/Polyline$Builder;->clone()Lcom/google/glass/proto/Polyline$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/google/glass/proto/Polyline$Builder;->clone()Lcom/google/glass/proto/Polyline$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/google/glass/proto/Polyline$Builder;->clone()Lcom/google/glass/proto/Polyline$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/google/glass/proto/Polyline$Builder;->clone()Lcom/google/glass/proto/Polyline$Builder;

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
    .line 366
    invoke-virtual {p0}, Lcom/google/glass/proto/Polyline$Builder;->clone()Lcom/google/glass/proto/Polyline$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getColorArgb()I
    .locals 1

    .prologue
    .line 912
    iget v0, p0, Lcom/google/glass/proto/Polyline$Builder;->colorArgb_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/glass/proto/Polyline;
    .locals 1

    .prologue
    .line 426
    invoke-static {}, Lcom/google/glass/proto/Polyline;->getDefaultInstance()Lcom/google/glass/proto/Polyline;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/google/glass/proto/Polyline$Builder;->getDefaultInstanceForType()Lcom/google/glass/proto/Polyline;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/google/glass/proto/Polyline$Builder;->getDefaultInstanceForType()Lcom/google/glass/proto/Polyline;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 422
    sget-object v0, Lcom/google/glass/proto/MapRenderingService;->internal_static_glass_proto_Polyline_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getVertex(I)Lcom/google/glass/proto/LatLng;
    .locals 1
    .parameter "index"

    .prologue
    .line 581
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertexBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertex_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/LatLng;

    .line 584
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertexBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/LatLng;

    goto :goto_0
.end method

.method public getVertexBuilder(I)Lcom/google/glass/proto/LatLng$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 765
    invoke-direct {p0}, Lcom/google/glass/proto/Polyline$Builder;->getVertexFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/LatLng$Builder;

    return-object v0
.end method

.method public getVertexBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/proto/LatLng$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 828
    invoke-direct {p0}, Lcom/google/glass/proto/Polyline$Builder;->getVertexFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVertexCount()I
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertexBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertex_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 570
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertexBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getVertexList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/proto/LatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 553
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertexBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertex_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 556
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertexBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getVertexOrBuilder(I)Lcom/google/glass/proto/LatLngOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 776
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertexBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertex_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/LatLngOrBuilder;

    .line 778
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertexBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/LatLngOrBuilder;

    goto :goto_0
.end method

.method public getVertexOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/proto/LatLngOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 790
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertexBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertexBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 793
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertex_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 864
    iget v0, p0, Lcom/google/glass/proto/Polyline$Builder;->width_:F

    return v0
.end method

.method public hasColorArgb()Z
    .locals 2

    .prologue
    .line 902
    iget v0, p0, Lcom/google/glass/proto/Polyline$Builder;->bitField0_:I

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

.method public hasWidth()Z
    .locals 2

    .prologue
    .line 854
    iget v0, p0, Lcom/google/glass/proto/Polyline$Builder;->bitField0_:I

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
    .line 377
    sget-object v0, Lcom/google/glass/proto/MapRenderingService;->internal_static_glass_proto_Polyline_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/glass/proto/Polyline;

    const-class v2, Lcom/google/glass/proto/Polyline$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 511
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/glass/proto/Polyline;)Lcom/google/glass/proto/Polyline$Builder;
    .locals 2
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 473
    invoke-static {}, Lcom/google/glass/proto/Polyline;->getDefaultInstance()Lcom/google/glass/proto/Polyline;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 507
    :goto_0
    return-object p0

    .line 474
    :cond_0
    iget-object v1, p0, Lcom/google/glass/proto/Polyline$Builder;->vertexBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_5

    .line 475
    #getter for: Lcom/google/glass/proto/Polyline;->vertex_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/proto/Polyline;->access$500(Lcom/google/glass/proto/Polyline;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertex_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 477
    #getter for: Lcom/google/glass/proto/Polyline;->vertex_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/proto/Polyline;->access$500(Lcom/google/glass/proto/Polyline;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertex_:Ljava/util/List;

    .line 478
    iget v0, p0, Lcom/google/glass/proto/Polyline$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/proto/Polyline$Builder;->bitField0_:I

    .line 483
    :goto_1
    invoke-virtual {p0}, Lcom/google/glass/proto/Polyline$Builder;->onChanged()V

    .line 500
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/google/glass/proto/Polyline;->hasWidth()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 501
    invoke-virtual {p1}, Lcom/google/glass/proto/Polyline;->getWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/proto/Polyline$Builder;->setWidth(F)Lcom/google/glass/proto/Polyline$Builder;

    .line 503
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/proto/Polyline;->hasColorArgb()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 504
    invoke-virtual {p1}, Lcom/google/glass/proto/Polyline;->getColorArgb()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/proto/Polyline$Builder;->setColorArgb(I)Lcom/google/glass/proto/Polyline$Builder;

    .line 506
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/proto/Polyline;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/proto/Polyline$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 480
    :cond_4
    invoke-direct {p0}, Lcom/google/glass/proto/Polyline$Builder;->ensureVertexIsMutable()V

    .line 481
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertex_:Ljava/util/List;

    #getter for: Lcom/google/glass/proto/Polyline;->vertex_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/proto/Polyline;->access$500(Lcom/google/glass/proto/Polyline;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 486
    :cond_5
    #getter for: Lcom/google/glass/proto/Polyline;->vertex_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/proto/Polyline;->access$500(Lcom/google/glass/proto/Polyline;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 487
    iget-object v1, p0, Lcom/google/glass/proto/Polyline$Builder;->vertexBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 488
    iget-object v1, p0, Lcom/google/glass/proto/Polyline$Builder;->vertexBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 489
    iput-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertexBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 490
    #getter for: Lcom/google/glass/proto/Polyline;->vertex_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/proto/Polyline;->access$500(Lcom/google/glass/proto/Polyline;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/proto/Polyline$Builder;->vertex_:Ljava/util/List;

    .line 491
    iget v1, p0, Lcom/google/glass/proto/Polyline$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/glass/proto/Polyline$Builder;->bitField0_:I

    .line 492
    invoke-static {}, Lcom/google/glass/proto/Polyline;->access$900()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/google/glass/proto/Polyline$Builder;->getVertexFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_6
    iput-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertexBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 496
    :cond_7
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertexBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/glass/proto/Polyline;->vertex_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/proto/Polyline;->access$500(Lcom/google/glass/proto/Polyline;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/proto/Polyline$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 518
    const/4 v2, 0x0

    .line 520
    .local v2, parsedMessage:Lcom/google/glass/proto/Polyline;
    :try_start_0
    sget-object v3, Lcom/google/glass/proto/Polyline;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/proto/Polyline;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    if-eqz v2, :cond_0

    .line 526
    invoke-virtual {p0, v2}, Lcom/google/glass/proto/Polyline$Builder;->mergeFrom(Lcom/google/glass/proto/Polyline;)Lcom/google/glass/proto/Polyline$Builder;

    .line 529
    :cond_0
    return-object p0

    .line 521
    :catch_0
    move-exception v1

    .line 522
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/proto/Polyline;

    move-object v2, v0

    .line 523
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 525
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 526
    invoke-virtual {p0, v2}, Lcom/google/glass/proto/Polyline$Builder;->mergeFrom(Lcom/google/glass/proto/Polyline;)Lcom/google/glass/proto/Polyline$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/glass/proto/Polyline$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 464
    instance-of v0, p1, Lcom/google/glass/proto/Polyline;

    if-eqz v0, :cond_0

    .line 465
    check-cast p1, Lcom/google/glass/proto/Polyline;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/proto/Polyline$Builder;->mergeFrom(Lcom/google/glass/proto/Polyline;)Lcom/google/glass/proto/Polyline$Builder;

    move-result-object p0

    .line 468
    .end local p0
    :goto_0
    return-object p0

    .line 467
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
    .line 366
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/proto/Polyline$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/proto/Polyline$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 366
    invoke-virtual {p0, p1}, Lcom/google/glass/proto/Polyline$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/glass/proto/Polyline$Builder;

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
    .line 366
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/proto/Polyline$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/proto/Polyline$Builder;

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
    .line 366
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/proto/Polyline$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/proto/Polyline$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 366
    invoke-virtual {p0, p1}, Lcom/google/glass/proto/Polyline$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/glass/proto/Polyline$Builder;

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
    .line 366
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/proto/Polyline$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/proto/Polyline$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeVertex(I)Lcom/google/glass/proto/Polyline$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 747
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertexBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 748
    invoke-direct {p0}, Lcom/google/glass/proto/Polyline$Builder;->ensureVertexIsMutable()V

    .line 749
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertex_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 750
    invoke-virtual {p0}, Lcom/google/glass/proto/Polyline$Builder;->onChanged()V

    .line 754
    :goto_0
    return-object p0

    .line 752
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertexBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setColorArgb(I)Lcom/google/glass/proto/Polyline$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 922
    iget v0, p0, Lcom/google/glass/proto/Polyline$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/proto/Polyline$Builder;->bitField0_:I

    .line 923
    iput p1, p0, Lcom/google/glass/proto/Polyline$Builder;->colorArgb_:I

    .line 924
    invoke-virtual {p0}, Lcom/google/glass/proto/Polyline$Builder;->onChanged()V

    .line 925
    return-object p0
.end method

.method public setVertex(ILcom/google/glass/proto/LatLng$Builder;)Lcom/google/glass/proto/Polyline$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 617
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertexBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 618
    invoke-direct {p0}, Lcom/google/glass/proto/Polyline$Builder;->ensureVertexIsMutable()V

    .line 619
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertex_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/glass/proto/LatLng$Builder;->build()Lcom/google/glass/proto/LatLng;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 620
    invoke-virtual {p0}, Lcom/google/glass/proto/Polyline$Builder;->onChanged()V

    .line 624
    :goto_0
    return-object p0

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertexBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/glass/proto/LatLng$Builder;->build()Lcom/google/glass/proto/LatLng;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setVertex(ILcom/google/glass/proto/LatLng;)Lcom/google/glass/proto/Polyline$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 596
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertexBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 597
    if-nez p2, :cond_0

    .line 598
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 600
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/proto/Polyline$Builder;->ensureVertexIsMutable()V

    .line 601
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertex_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 602
    invoke-virtual {p0}, Lcom/google/glass/proto/Polyline$Builder;->onChanged()V

    .line 606
    :goto_0
    return-object p0

    .line 604
    :cond_1
    iget-object v0, p0, Lcom/google/glass/proto/Polyline$Builder;->vertexBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setWidth(F)Lcom/google/glass/proto/Polyline$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 874
    iget v0, p0, Lcom/google/glass/proto/Polyline$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/proto/Polyline$Builder;->bitField0_:I

    .line 875
    iput p1, p0, Lcom/google/glass/proto/Polyline$Builder;->width_:F

    .line 876
    invoke-virtual {p0}, Lcom/google/glass/proto/Polyline$Builder;->onChanged()V

    .line 877
    return-object p0
.end method
