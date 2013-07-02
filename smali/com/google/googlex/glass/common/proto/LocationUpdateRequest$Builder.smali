.class public final Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "LocationUpdateRequest.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/LocationUpdateRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/LocationUpdateRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private deviceId_:Ljava/lang/Object;

.field private locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/Location;",
            "Lcom/google/googlex/glass/common/proto/Location$Builder;",
            "Lcom/google/googlex/glass/common/proto/LocationOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private location_:Lcom/google/googlex/glass/common/proto/Location;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 470
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    .line 622
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 352
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->maybeForceBuilderInitialization()V

    .line 353
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 470
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    .line 622
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 358
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->maybeForceBuilderInitialization()V

    .line 359
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 334
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;
    .locals 1

    .prologue
    .line 334
    invoke-static {}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;
    .locals 1

    .prologue
    .line 366
    new-instance v0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 340
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationRequest;->internal_static_googlex_glass_common_proto_LocationUpdateRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getLocationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/Location;",
            "Lcom/google/googlex/glass/common/proto/Location$Builder;",
            "Lcom/google/googlex/glass/common/proto/LocationOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 611
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 612
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 617
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 361
    invoke-static {}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->getLocationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 364
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;
    .locals 2

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;

    move-result-object v0

    .line 397
    .local v0, result:Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 398
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 400
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;
    .locals 5

    .prologue
    .line 404
    new-instance v1, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$1;)V

    .line 405
    .local v1, result:Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->bitField0_:I

    .line 406
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 407
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 408
    or-int/lit8 v2, v2, 0x1

    .line 410
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_2

    .line 411
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    #setter for: Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->location_:Lcom/google/googlex/glass/common/proto/Location;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->access$502(Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/Location;

    .line 415
    :goto_0
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 416
    or-int/lit8 v2, v2, 0x2

    .line 418
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->deviceId_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->deviceId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->access$602(Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    #setter for: Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->access$702(Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;I)I

    .line 420
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->onBuilt()V

    .line 421
    return-object v1

    .line 413
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/Location;

    #setter for: Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->location_:Lcom/google/googlex/glass/common/proto/Location;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->access$502(Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/Location;

    goto :goto_0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;
    .locals 1

    .prologue
    .line 370
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 371
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 372
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    .line 376
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->bitField0_:I

    .line 377
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 378
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->bitField0_:I

    .line 379
    return-object p0

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDeviceId()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;
    .locals 1

    .prologue
    .line 699
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->bitField0_:I

    .line 700
    invoke-static {}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 701
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->onChanged()V

    .line 702
    return-object p0
.end method

.method public clearLocation()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 567
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    .line 568
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->onChanged()V

    .line 572
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->bitField0_:I

    .line 573
    return-object p0

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;
    .locals 2

    .prologue
    .line 383
    invoke-static {}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;)Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;

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
    .line 334
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;
    .locals 1

    .prologue
    .line 392
    invoke-static {}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 388
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationRequest;->internal_static_googlex_glass_common_proto_LocationUpdateRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 641
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 642
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 643
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 645
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 646
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 647
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 651
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v1           #ref:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_1
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method public getDeviceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 663
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 664
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 665
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 668
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 671
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

.method public getLocation()Lcom/google/googlex/glass/common/proto/Location;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    .line 494
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Location;

    goto :goto_0
.end method

.method public getLocationBuilder()Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1

    .prologue
    .line 583
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->bitField0_:I

    .line 584
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->onChanged()V

    .line 585
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->getLocationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Location$Builder;

    return-object v0
.end method

.method public getLocationOrBuilder()Lcom/google/googlex/glass/common/proto/LocationOrBuilder;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/LocationOrBuilder;

    .line 598
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    goto :goto_0
.end method

.method public hasDeviceId()Z
    .locals 2

    .prologue
    .line 631
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->bitField0_:I

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

.method public hasLocation()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 481
    iget v1, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->bitField0_:I

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
    .line 345
    sget-object v0, Lcom/google/googlex/glass/common/proto/LocationRequest;->internal_static_googlex_glass_common_proto_LocationUpdateRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;

    const-class v2, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 448
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;)Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 434
    invoke-static {}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 444
    :goto_0
    return-object p0

    .line 435
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->hasLocation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->getLocation()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->mergeLocation(Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;

    .line 438
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->hasDeviceId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 439
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->bitField0_:I

    .line 440
    #getter for: Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->deviceId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->access$600(Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 441
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->onChanged()V

    .line 443
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 455
    const/4 v2, 0x0

    .line 457
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    if-eqz v2, :cond_0

    .line 463
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;)Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;

    .line 466
    :cond_0
    return-object p0

    .line 458
    :catch_0
    move-exception v1

    .line 459
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;

    move-object v2, v0

    .line 460
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 463
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;)Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 425
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;

    if-eqz v0, :cond_0

    .line 426
    check-cast p1, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/LocationUpdateRequest;)Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;

    move-result-object p0

    .line 429
    .end local p0
    :goto_0
    return-object p0

    .line 428
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
    .line 334
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 334
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;

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
    .line 334
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;

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
    .line 334
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 334
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;

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
    .line 334
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeLocation(Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 543
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 544
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 546
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Location;->newBuilder(Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/Location$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    .line 551
    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->onChanged()V

    .line 555
    :goto_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->bitField0_:I

    .line 556
    return-object p0

    .line 549
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    goto :goto_0

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 683
    if-nez p1, :cond_0

    .line 684
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 686
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->bitField0_:I

    .line 687
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 688
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->onChanged()V

    .line 689
    return-object p0
.end method

.method public setDeviceIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 713
    if-nez p1, :cond_0

    .line 714
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 716
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->bitField0_:I

    .line 717
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 718
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->onChanged()V

    .line 719
    return-object p0
.end method

.method public setLocation(Lcom/google/googlex/glass/common/proto/Location$Builder;)Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 526
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 527
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Location$Builder;->build()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    .line 528
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->onChanged()V

    .line 532
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->bitField0_:I

    .line 533
    return-object p0

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Location$Builder;->build()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setLocation(Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 505
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 506
    if-nez p1, :cond_0

    .line 507
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 509
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->location_:Lcom/google/googlex/glass/common/proto/Location;

    .line 510
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->onChanged()V

    .line 514
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->bitField0_:I

    .line 515
    return-object p0

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LocationUpdateRequest$Builder;->locationBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method
