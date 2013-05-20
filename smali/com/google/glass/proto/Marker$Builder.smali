.class public final Lcom/google/glass/proto/Marker$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Marker.java"

# interfaces
.implements Lcom/google/glass/proto/MarkerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/proto/Marker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/glass/proto/Marker$Builder;",
        ">;",
        "Lcom/google/glass/proto/MarkerOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/glass/proto/LatLng;",
            "Lcom/google/glass/proto/LatLng$Builder;",
            "Lcom/google/glass/proto/LatLngOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private location_:Lcom/google/glass/proto/LatLng;

.field private type_:Lcom/google/glass/proto/Marker$MarkerType;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 528
    sget-object v0, Lcom/google/glass/proto/Marker$MarkerType;->TYPE_PLACEMARK:Lcom/google/glass/proto/Marker$MarkerType;

    iput-object v0, p0, Lcom/google/glass/proto/Marker$Builder;->type_:Lcom/google/glass/proto/Marker$MarkerType;

    .line 563
    invoke-static {}, Lcom/google/glass/proto/LatLng;->getDefaultInstance()Lcom/google/glass/proto/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/Marker$Builder;->location_:Lcom/google/glass/proto/LatLng;

    .line 412
    invoke-direct {p0}, Lcom/google/glass/proto/Marker$Builder;->maybeForceBuilderInitialization()V

    .line 413
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 417
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 528
    sget-object v0, Lcom/google/glass/proto/Marker$MarkerType;->TYPE_PLACEMARK:Lcom/google/glass/proto/Marker$MarkerType;

    iput-object v0, p0, Lcom/google/glass/proto/Marker$Builder;->type_:Lcom/google/glass/proto/Marker$MarkerType;

    .line 563
    invoke-static {}, Lcom/google/glass/proto/LatLng;->getDefaultInstance()Lcom/google/glass/proto/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/Marker$Builder;->location_:Lcom/google/glass/proto/LatLng;

    .line 418
    invoke-direct {p0}, Lcom/google/glass/proto/Marker$Builder;->maybeForceBuilderInitialization()V

    .line 419
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/glass/proto/Marker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 394
    invoke-direct {p0, p1}, Lcom/google/glass/proto/Marker$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/glass/proto/Marker$Builder;
    .locals 1

    .prologue
    .line 394
    invoke-static {}, Lcom/google/glass/proto/Marker$Builder;->create()Lcom/google/glass/proto/Marker$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/glass/proto/Marker$Builder;
    .locals 1

    .prologue
    .line 426
    new-instance v0, Lcom/google/glass/proto/Marker$Builder;

    invoke-direct {v0}, Lcom/google/glass/proto/Marker$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 400
    sget-object v0, Lcom/google/glass/proto/MapRenderingService;->internal_static_glass_proto_Marker_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getLocationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/glass/proto/LatLng;",
            "Lcom/google/glass/proto/LatLng$Builder;",
            "Lcom/google/glass/proto/LatLngOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 668
    iget-object v0, p0, Lcom/google/glass/proto/Marker$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 669
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/google/glass/proto/Marker$Builder;->location_:Lcom/google/glass/proto/LatLng;

    invoke-virtual {p0}, Lcom/google/glass/proto/Marker$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/glass/proto/Marker$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/glass/proto/Marker$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 674
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/proto/Marker$Builder;->location_:Lcom/google/glass/proto/LatLng;

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/Marker$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 421
    invoke-static {}, Lcom/google/glass/proto/Marker;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    invoke-direct {p0}, Lcom/google/glass/proto/Marker$Builder;->getLocationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 424
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/glass/proto/Marker;
    .locals 2

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/google/glass/proto/Marker$Builder;->buildPartial()Lcom/google/glass/proto/Marker;

    move-result-object v0

    .line 457
    .local v0, result:Lcom/google/glass/proto/Marker;
    invoke-virtual {v0}, Lcom/google/glass/proto/Marker;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 458
    invoke-static {v0}, Lcom/google/glass/proto/Marker$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 460
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/google/glass/proto/Marker$Builder;->build()Lcom/google/glass/proto/Marker;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/google/glass/proto/Marker$Builder;->build()Lcom/google/glass/proto/Marker;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/glass/proto/Marker;
    .locals 5

    .prologue
    .line 464
    new-instance v1, Lcom/google/glass/proto/Marker;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/glass/proto/Marker;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/glass/proto/Marker$1;)V

    .line 465
    .local v1, result:Lcom/google/glass/proto/Marker;
    iget v0, p0, Lcom/google/glass/proto/Marker$Builder;->bitField0_:I

    .line 466
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 467
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 468
    or-int/lit8 v2, v2, 0x1

    .line 470
    :cond_0
    iget-object v3, p0, Lcom/google/glass/proto/Marker$Builder;->type_:Lcom/google/glass/proto/Marker$MarkerType;

    #setter for: Lcom/google/glass/proto/Marker;->type_:Lcom/google/glass/proto/Marker$MarkerType;
    invoke-static {v1, v3}, Lcom/google/glass/proto/Marker;->access$502(Lcom/google/glass/proto/Marker;Lcom/google/glass/proto/Marker$MarkerType;)Lcom/google/glass/proto/Marker$MarkerType;

    .line 471
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 472
    or-int/lit8 v2, v2, 0x2

    .line 474
    :cond_1
    iget-object v3, p0, Lcom/google/glass/proto/Marker$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_2

    .line 475
    iget-object v3, p0, Lcom/google/glass/proto/Marker$Builder;->location_:Lcom/google/glass/proto/LatLng;

    #setter for: Lcom/google/glass/proto/Marker;->location_:Lcom/google/glass/proto/LatLng;
    invoke-static {v1, v3}, Lcom/google/glass/proto/Marker;->access$602(Lcom/google/glass/proto/Marker;Lcom/google/glass/proto/LatLng;)Lcom/google/glass/proto/LatLng;

    .line 479
    :goto_0
    #setter for: Lcom/google/glass/proto/Marker;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/glass/proto/Marker;->access$702(Lcom/google/glass/proto/Marker;I)I

    .line 480
    invoke-virtual {p0}, Lcom/google/glass/proto/Marker$Builder;->onBuilt()V

    .line 481
    return-object v1

    .line 477
    :cond_2
    iget-object v3, p0, Lcom/google/glass/proto/Marker$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/google/glass/proto/LatLng;

    #setter for: Lcom/google/glass/proto/Marker;->location_:Lcom/google/glass/proto/LatLng;
    invoke-static {v1, v3}, Lcom/google/glass/proto/Marker;->access$602(Lcom/google/glass/proto/Marker;Lcom/google/glass/proto/LatLng;)Lcom/google/glass/proto/LatLng;

    goto :goto_0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/google/glass/proto/Marker$Builder;->buildPartial()Lcom/google/glass/proto/Marker;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/google/glass/proto/Marker$Builder;->buildPartial()Lcom/google/glass/proto/Marker;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/glass/proto/Marker$Builder;
    .locals 1

    .prologue
    .line 430
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 431
    sget-object v0, Lcom/google/glass/proto/Marker$MarkerType;->TYPE_PLACEMARK:Lcom/google/glass/proto/Marker$MarkerType;

    iput-object v0, p0, Lcom/google/glass/proto/Marker$Builder;->type_:Lcom/google/glass/proto/Marker$MarkerType;

    .line 432
    iget v0, p0, Lcom/google/glass/proto/Marker$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/proto/Marker$Builder;->bitField0_:I

    .line 433
    iget-object v0, p0, Lcom/google/glass/proto/Marker$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 434
    invoke-static {}, Lcom/google/glass/proto/LatLng;->getDefaultInstance()Lcom/google/glass/proto/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/Marker$Builder;->location_:Lcom/google/glass/proto/LatLng;

    .line 438
    :goto_0
    iget v0, p0, Lcom/google/glass/proto/Marker$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/proto/Marker$Builder;->bitField0_:I

    .line 439
    return-object p0

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/Marker$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/google/glass/proto/Marker$Builder;->clear()Lcom/google/glass/proto/Marker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/google/glass/proto/Marker$Builder;->clear()Lcom/google/glass/proto/Marker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/google/glass/proto/Marker$Builder;->clear()Lcom/google/glass/proto/Marker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/google/glass/proto/Marker$Builder;->clear()Lcom/google/glass/proto/Marker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearLocation()Lcom/google/glass/proto/Marker$Builder;
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/google/glass/proto/Marker$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 636
    invoke-static {}, Lcom/google/glass/proto/LatLng;->getDefaultInstance()Lcom/google/glass/proto/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/Marker$Builder;->location_:Lcom/google/glass/proto/LatLng;

    .line 637
    invoke-virtual {p0}, Lcom/google/glass/proto/Marker$Builder;->onChanged()V

    .line 641
    :goto_0
    iget v0, p0, Lcom/google/glass/proto/Marker$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/proto/Marker$Builder;->bitField0_:I

    .line 642
    return-object p0

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/Marker$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearType()Lcom/google/glass/proto/Marker$Builder;
    .locals 1

    .prologue
    .line 557
    iget v0, p0, Lcom/google/glass/proto/Marker$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/proto/Marker$Builder;->bitField0_:I

    .line 558
    sget-object v0, Lcom/google/glass/proto/Marker$MarkerType;->TYPE_PLACEMARK:Lcom/google/glass/proto/Marker$MarkerType;

    iput-object v0, p0, Lcom/google/glass/proto/Marker$Builder;->type_:Lcom/google/glass/proto/Marker$MarkerType;

    .line 559
    invoke-virtual {p0}, Lcom/google/glass/proto/Marker$Builder;->onChanged()V

    .line 560
    return-object p0
.end method

.method public clone()Lcom/google/glass/proto/Marker$Builder;
    .locals 2

    .prologue
    .line 443
    invoke-static {}, Lcom/google/glass/proto/Marker$Builder;->create()Lcom/google/glass/proto/Marker$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/proto/Marker$Builder;->buildPartial()Lcom/google/glass/proto/Marker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/proto/Marker$Builder;->mergeFrom(Lcom/google/glass/proto/Marker;)Lcom/google/glass/proto/Marker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/google/glass/proto/Marker$Builder;->clone()Lcom/google/glass/proto/Marker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/google/glass/proto/Marker$Builder;->clone()Lcom/google/glass/proto/Marker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/google/glass/proto/Marker$Builder;->clone()Lcom/google/glass/proto/Marker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/google/glass/proto/Marker$Builder;->clone()Lcom/google/glass/proto/Marker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/google/glass/proto/Marker$Builder;->clone()Lcom/google/glass/proto/Marker$Builder;

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
    .line 394
    invoke-virtual {p0}, Lcom/google/glass/proto/Marker$Builder;->clone()Lcom/google/glass/proto/Marker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/glass/proto/Marker;
    .locals 1

    .prologue
    .line 452
    invoke-static {}, Lcom/google/glass/proto/Marker;->getDefaultInstance()Lcom/google/glass/proto/Marker;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/google/glass/proto/Marker$Builder;->getDefaultInstanceForType()Lcom/google/glass/proto/Marker;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/google/glass/proto/Marker$Builder;->getDefaultInstanceForType()Lcom/google/glass/proto/Marker;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 448
    sget-object v0, Lcom/google/glass/proto/MapRenderingService;->internal_static_glass_proto_Marker_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getLocation()Lcom/google/glass/proto/LatLng;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/google/glass/proto/Marker$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/google/glass/proto/Marker$Builder;->location_:Lcom/google/glass/proto/LatLng;

    .line 579
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/Marker$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/LatLng;

    goto :goto_0
.end method

.method public getLocationBuilder()Lcom/google/glass/proto/LatLng$Builder;
    .locals 1

    .prologue
    .line 648
    iget v0, p0, Lcom/google/glass/proto/Marker$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/proto/Marker$Builder;->bitField0_:I

    .line 649
    invoke-virtual {p0}, Lcom/google/glass/proto/Marker$Builder;->onChanged()V

    .line 650
    invoke-direct {p0}, Lcom/google/glass/proto/Marker$Builder;->getLocationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/LatLng$Builder;

    return-object v0
.end method

.method public getLocationOrBuilder()Lcom/google/glass/proto/LatLngOrBuilder;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/google/glass/proto/Marker$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/google/glass/proto/Marker$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/LatLngOrBuilder;

    .line 659
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/Marker$Builder;->location_:Lcom/google/glass/proto/LatLng;

    goto :goto_0
.end method

.method public getType()Lcom/google/glass/proto/Marker$MarkerType;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/google/glass/proto/Marker$Builder;->type_:Lcom/google/glass/proto/Marker$MarkerType;

    return-object v0
.end method

.method public hasLocation()Z
    .locals 2

    .prologue
    .line 570
    iget v0, p0, Lcom/google/glass/proto/Marker$Builder;->bitField0_:I

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

    .line 533
    iget v1, p0, Lcom/google/glass/proto/Marker$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 405
    sget-object v0, Lcom/google/glass/proto/MapRenderingService;->internal_static_glass_proto_Marker_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/glass/proto/Marker;

    const-class v2, Lcom/google/glass/proto/Marker$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 506
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/glass/proto/Marker;)Lcom/google/glass/proto/Marker$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 494
    invoke-static {}, Lcom/google/glass/proto/Marker;->getDefaultInstance()Lcom/google/glass/proto/Marker;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 502
    :goto_0
    return-object p0

    .line 495
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/proto/Marker;->hasType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    invoke-virtual {p1}, Lcom/google/glass/proto/Marker;->getType()Lcom/google/glass/proto/Marker$MarkerType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/proto/Marker$Builder;->setType(Lcom/google/glass/proto/Marker$MarkerType;)Lcom/google/glass/proto/Marker$Builder;

    .line 498
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/proto/Marker;->hasLocation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 499
    invoke-virtual {p1}, Lcom/google/glass/proto/Marker;->getLocation()Lcom/google/glass/proto/LatLng;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/proto/Marker$Builder;->mergeLocation(Lcom/google/glass/proto/LatLng;)Lcom/google/glass/proto/Marker$Builder;

    .line 501
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/proto/Marker;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/proto/Marker$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/proto/Marker$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 513
    const/4 v2, 0x0

    .line 515
    .local v2, parsedMessage:Lcom/google/glass/proto/Marker;
    :try_start_0
    sget-object v3, Lcom/google/glass/proto/Marker;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/proto/Marker;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    if-eqz v2, :cond_0

    .line 521
    invoke-virtual {p0, v2}, Lcom/google/glass/proto/Marker$Builder;->mergeFrom(Lcom/google/glass/proto/Marker;)Lcom/google/glass/proto/Marker$Builder;

    .line 524
    :cond_0
    return-object p0

    .line 516
    :catch_0
    move-exception v1

    .line 517
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/proto/Marker;

    move-object v2, v0

    .line 518
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 520
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 521
    invoke-virtual {p0, v2}, Lcom/google/glass/proto/Marker$Builder;->mergeFrom(Lcom/google/glass/proto/Marker;)Lcom/google/glass/proto/Marker$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/glass/proto/Marker$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 485
    instance-of v0, p1, Lcom/google/glass/proto/Marker;

    if-eqz v0, :cond_0

    .line 486
    check-cast p1, Lcom/google/glass/proto/Marker;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/proto/Marker$Builder;->mergeFrom(Lcom/google/glass/proto/Marker;)Lcom/google/glass/proto/Marker$Builder;

    move-result-object p0

    .line 489
    .end local p0
    :goto_0
    return-object p0

    .line 488
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
    .line 394
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/proto/Marker$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/proto/Marker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 394
    invoke-virtual {p0, p1}, Lcom/google/glass/proto/Marker$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/glass/proto/Marker$Builder;

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
    .line 394
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/proto/Marker$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/proto/Marker$Builder;

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
    .line 394
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/proto/Marker$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/proto/Marker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 394
    invoke-virtual {p0, p1}, Lcom/google/glass/proto/Marker$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/glass/proto/Marker$Builder;

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
    .line 394
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/proto/Marker$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/proto/Marker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeLocation(Lcom/google/glass/proto/LatLng;)Lcom/google/glass/proto/Marker$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 616
    iget-object v0, p0, Lcom/google/glass/proto/Marker$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 617
    iget v0, p0, Lcom/google/glass/proto/Marker$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/proto/Marker$Builder;->location_:Lcom/google/glass/proto/LatLng;

    invoke-static {}, Lcom/google/glass/proto/LatLng;->getDefaultInstance()Lcom/google/glass/proto/LatLng;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 619
    iget-object v0, p0, Lcom/google/glass/proto/Marker$Builder;->location_:Lcom/google/glass/proto/LatLng;

    invoke-static {v0}, Lcom/google/glass/proto/LatLng;->newBuilder(Lcom/google/glass/proto/LatLng;)Lcom/google/glass/proto/LatLng$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/proto/LatLng$Builder;->mergeFrom(Lcom/google/glass/proto/LatLng;)Lcom/google/glass/proto/LatLng$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/proto/LatLng$Builder;->buildPartial()Lcom/google/glass/proto/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/Marker$Builder;->location_:Lcom/google/glass/proto/LatLng;

    .line 624
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/proto/Marker$Builder;->onChanged()V

    .line 628
    :goto_1
    iget v0, p0, Lcom/google/glass/proto/Marker$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/proto/Marker$Builder;->bitField0_:I

    .line 629
    return-object p0

    .line 622
    :cond_0
    iput-object p1, p0, Lcom/google/glass/proto/Marker$Builder;->location_:Lcom/google/glass/proto/LatLng;

    goto :goto_0

    .line 626
    :cond_1
    iget-object v0, p0, Lcom/google/glass/proto/Marker$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public setLocation(Lcom/google/glass/proto/LatLng$Builder;)Lcom/google/glass/proto/Marker$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 603
    iget-object v0, p0, Lcom/google/glass/proto/Marker$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 604
    invoke-virtual {p1}, Lcom/google/glass/proto/LatLng$Builder;->build()Lcom/google/glass/proto/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/Marker$Builder;->location_:Lcom/google/glass/proto/LatLng;

    .line 605
    invoke-virtual {p0}, Lcom/google/glass/proto/Marker$Builder;->onChanged()V

    .line 609
    :goto_0
    iget v0, p0, Lcom/google/glass/proto/Marker$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/proto/Marker$Builder;->bitField0_:I

    .line 610
    return-object p0

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/Marker$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/google/glass/proto/LatLng$Builder;->build()Lcom/google/glass/proto/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setLocation(Lcom/google/glass/proto/LatLng;)Lcom/google/glass/proto/Marker$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 586
    iget-object v0, p0, Lcom/google/glass/proto/Marker$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 587
    if-nez p1, :cond_0

    .line 588
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 590
    :cond_0
    iput-object p1, p0, Lcom/google/glass/proto/Marker$Builder;->location_:Lcom/google/glass/proto/LatLng;

    .line 591
    invoke-virtual {p0}, Lcom/google/glass/proto/Marker$Builder;->onChanged()V

    .line 595
    :goto_0
    iget v0, p0, Lcom/google/glass/proto/Marker$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/proto/Marker$Builder;->bitField0_:I

    .line 596
    return-object p0

    .line 593
    :cond_1
    iget-object v0, p0, Lcom/google/glass/proto/Marker$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setType(Lcom/google/glass/proto/Marker$MarkerType;)Lcom/google/glass/proto/Marker$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 545
    if-nez p1, :cond_0

    .line 546
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 548
    :cond_0
    iget v0, p0, Lcom/google/glass/proto/Marker$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/proto/Marker$Builder;->bitField0_:I

    .line 549
    iput-object p1, p0, Lcom/google/glass/proto/Marker$Builder;->type_:Lcom/google/glass/proto/Marker$MarkerType;

    .line 550
    invoke-virtual {p0}, Lcom/google/glass/proto/Marker$Builder;->onChanged()V

    .line 551
    return-object p0
.end method
