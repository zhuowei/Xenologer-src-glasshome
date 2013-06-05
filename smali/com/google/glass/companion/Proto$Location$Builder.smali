.class public final Lcom/google/glass/companion/Proto$Location$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Proto.java"

# interfaces
.implements Lcom/google/glass/companion/Proto$LocationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto$Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/glass/companion/Proto$Location;",
        "Lcom/google/glass/companion/Proto$Location$Builder;",
        ">;",
        "Lcom/google/glass/companion/Proto$LocationOrBuilder;"
    }
.end annotation


# instance fields
.field private accuracy_:F

.field private altitude_:D

.field private bearing_:F

.field private bitField0_:I

.field private latitude_:D

.field private levelId_:Ljava/lang/Object;

.field private levelNumberE3_:I

.field private longitude_:D

.field private satellitesUsedInFix_:I

.field private speed_:F

.field private time_:J

.field private visibleSatellites_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 6366
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 6855
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->levelId_:Ljava/lang/Object;

    .line 6367
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Location$Builder;->maybeForceBuilderInitialization()V

    .line 6368
    return-void
.end method

.method static synthetic access$4500()Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1

    .prologue
    .line 6359
    invoke-static {}, Lcom/google/glass/companion/Proto$Location$Builder;->create()Lcom/google/glass/companion/Proto$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1

    .prologue
    .line 6373
    new-instance v0, Lcom/google/glass/companion/Proto$Location$Builder;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Location$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 6371
    return-void
.end method


# virtual methods
.method public build()Lcom/google/glass/companion/Proto$Location;
    .locals 2

    .prologue
    .line 6412
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location$Builder;->buildPartial()Lcom/google/glass/companion/Proto$Location;

    move-result-object v0

    .line 6413
    .local v0, result:Lcom/google/glass/companion/Proto$Location;
    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Location;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6414
    invoke-static {v0}, Lcom/google/glass/companion/Proto$Location$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 6416
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6359
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location$Builder;->build()Lcom/google/glass/companion/Proto$Location;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/glass/companion/Proto$Location;
    .locals 5

    .prologue
    .line 6420
    new-instance v1, Lcom/google/glass/companion/Proto$Location;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/glass/companion/Proto$Location;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V

    .line 6421
    .local v1, result:Lcom/google/glass/companion/Proto$Location;
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 6422
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 6423
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 6424
    or-int/lit8 v2, v2, 0x1

    .line 6426
    :cond_0
    iget-wide v3, p0, Lcom/google/glass/companion/Proto$Location$Builder;->latitude_:D

    #setter for: Lcom/google/glass/companion/Proto$Location;->latitude_:D
    invoke-static {v1, v3, v4}, Lcom/google/glass/companion/Proto$Location;->access$4702(Lcom/google/glass/companion/Proto$Location;D)D

    .line 6427
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 6428
    or-int/lit8 v2, v2, 0x2

    .line 6430
    :cond_1
    iget-wide v3, p0, Lcom/google/glass/companion/Proto$Location$Builder;->longitude_:D

    #setter for: Lcom/google/glass/companion/Proto$Location;->longitude_:D
    invoke-static {v1, v3, v4}, Lcom/google/glass/companion/Proto$Location;->access$4802(Lcom/google/glass/companion/Proto$Location;D)D

    .line 6431
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 6432
    or-int/lit8 v2, v2, 0x4

    .line 6434
    :cond_2
    iget v3, p0, Lcom/google/glass/companion/Proto$Location$Builder;->accuracy_:F

    #setter for: Lcom/google/glass/companion/Proto$Location;->accuracy_:F
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Location;->access$4902(Lcom/google/glass/companion/Proto$Location;F)F

    .line 6435
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 6436
    or-int/lit8 v2, v2, 0x8

    .line 6438
    :cond_3
    iget-wide v3, p0, Lcom/google/glass/companion/Proto$Location$Builder;->altitude_:D

    #setter for: Lcom/google/glass/companion/Proto$Location;->altitude_:D
    invoke-static {v1, v3, v4}, Lcom/google/glass/companion/Proto$Location;->access$5002(Lcom/google/glass/companion/Proto$Location;D)D

    .line 6439
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 6440
    or-int/lit8 v2, v2, 0x10

    .line 6442
    :cond_4
    iget v3, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bearing_:F

    #setter for: Lcom/google/glass/companion/Proto$Location;->bearing_:F
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Location;->access$5102(Lcom/google/glass/companion/Proto$Location;F)F

    .line 6443
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 6444
    or-int/lit8 v2, v2, 0x20

    .line 6446
    :cond_5
    iget v3, p0, Lcom/google/glass/companion/Proto$Location$Builder;->speed_:F

    #setter for: Lcom/google/glass/companion/Proto$Location;->speed_:F
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Location;->access$5202(Lcom/google/glass/companion/Proto$Location;F)F

    .line 6447
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 6448
    or-int/lit8 v2, v2, 0x40

    .line 6450
    :cond_6
    iget-wide v3, p0, Lcom/google/glass/companion/Proto$Location$Builder;->time_:J

    #setter for: Lcom/google/glass/companion/Proto$Location;->time_:J
    invoke-static {v1, v3, v4}, Lcom/google/glass/companion/Proto$Location;->access$5302(Lcom/google/glass/companion/Proto$Location;J)J

    .line 6451
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 6452
    or-int/lit16 v2, v2, 0x80

    .line 6454
    :cond_7
    iget v3, p0, Lcom/google/glass/companion/Proto$Location$Builder;->satellitesUsedInFix_:I

    #setter for: Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Location;->access$5402(Lcom/google/glass/companion/Proto$Location;I)I

    .line 6455
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 6456
    or-int/lit16 v2, v2, 0x100

    .line 6458
    :cond_8
    iget v3, p0, Lcom/google/glass/companion/Proto$Location$Builder;->visibleSatellites_:I

    #setter for: Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Location;->access$5502(Lcom/google/glass/companion/Proto$Location;I)I

    .line 6459
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 6460
    or-int/lit16 v2, v2, 0x200

    .line 6462
    :cond_9
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Location$Builder;->levelId_:Ljava/lang/Object;

    #setter for: Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Location;->access$5602(Lcom/google/glass/companion/Proto$Location;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6463
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 6464
    or-int/lit16 v2, v2, 0x400

    .line 6466
    :cond_a
    iget v3, p0, Lcom/google/glass/companion/Proto$Location$Builder;->levelNumberE3_:I

    #setter for: Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Location;->access$5702(Lcom/google/glass/companion/Proto$Location;I)I

    .line 6467
    #setter for: Lcom/google/glass/companion/Proto$Location;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/glass/companion/Proto$Location;->access$5802(Lcom/google/glass/companion/Proto$Location;I)I

    .line 6468
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6359
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location$Builder;->buildPartial()Lcom/google/glass/companion/Proto$Location;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 6377
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 6378
    iput-wide v1, p0, Lcom/google/glass/companion/Proto$Location$Builder;->latitude_:D

    .line 6379
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 6380
    iput-wide v1, p0, Lcom/google/glass/companion/Proto$Location$Builder;->longitude_:D

    .line 6381
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 6382
    iput v3, p0, Lcom/google/glass/companion/Proto$Location$Builder;->accuracy_:F

    .line 6383
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 6384
    iput-wide v1, p0, Lcom/google/glass/companion/Proto$Location$Builder;->altitude_:D

    .line 6385
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 6386
    iput v3, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bearing_:F

    .line 6387
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 6388
    iput v3, p0, Lcom/google/glass/companion/Proto$Location$Builder;->speed_:F

    .line 6389
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 6390
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->time_:J

    .line 6391
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 6392
    iput v4, p0, Lcom/google/glass/companion/Proto$Location$Builder;->satellitesUsedInFix_:I

    .line 6393
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 6394
    iput v4, p0, Lcom/google/glass/companion/Proto$Location$Builder;->visibleSatellites_:I

    .line 6395
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 6396
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->levelId_:Ljava/lang/Object;

    .line 6397
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 6398
    iput v4, p0, Lcom/google/glass/companion/Proto$Location$Builder;->levelNumberE3_:I

    .line 6399
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 6400
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 6359
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location$Builder;->clear()Lcom/google/glass/companion/Proto$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6359
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location$Builder;->clear()Lcom/google/glass/companion/Proto$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAccuracy()Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1

    .prologue
    .line 6625
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 6626
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->accuracy_:F

    .line 6628
    return-object p0
.end method

.method public clearAltitude()Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 2

    .prologue
    .line 6657
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 6658
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->altitude_:D

    .line 6660
    return-object p0
.end method

.method public clearBearing()Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1

    .prologue
    .line 6689
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 6690
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bearing_:F

    .line 6692
    return-object p0
.end method

.method public clearLatitude()Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 2

    .prologue
    .line 6561
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 6562
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->latitude_:D

    .line 6564
    return-object p0
.end method

.method public clearLevelId()Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1

    .prologue
    .line 6929
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 6930
    invoke-static {}, Lcom/google/glass/companion/Proto$Location;->getDefaultInstance()Lcom/google/glass/companion/Proto$Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Location;->getLevelId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->levelId_:Ljava/lang/Object;

    .line 6932
    return-object p0
.end method

.method public clearLevelNumberE3()Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1

    .prologue
    .line 7002
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 7003
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->levelNumberE3_:I

    .line 7005
    return-object p0
.end method

.method public clearLongitude()Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 2

    .prologue
    .line 6593
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 6594
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->longitude_:D

    .line 6596
    return-object p0
.end method

.method public clearSatellitesUsedInFix()Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1

    .prologue
    .line 6801
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 6802
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->satellitesUsedInFix_:I

    .line 6804
    return-object p0
.end method

.method public clearSpeed()Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1

    .prologue
    .line 6721
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 6722
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->speed_:F

    .line 6724
    return-object p0
.end method

.method public clearTime()Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 2

    .prologue
    .line 6753
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 6754
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->time_:J

    .line 6756
    return-object p0
.end method

.method public clearVisibleSatellites()Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1

    .prologue
    .line 6849
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 6850
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->visibleSatellites_:I

    .line 6852
    return-object p0
.end method

.method public clone()Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 2

    .prologue
    .line 6404
    invoke-static {}, Lcom/google/glass/companion/Proto$Location$Builder;->create()Lcom/google/glass/companion/Proto$Location$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location$Builder;->buildPartial()Lcom/google/glass/companion/Proto$Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/companion/Proto$Location$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$Location;)Lcom/google/glass/companion/Proto$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 6359
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location$Builder;->clone()Lcom/google/glass/companion/Proto$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 6359
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location$Builder;->clone()Lcom/google/glass/companion/Proto$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6359
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location$Builder;->clone()Lcom/google/glass/companion/Proto$Location$Builder;

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
    .line 6359
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location$Builder;->clone()Lcom/google/glass/companion/Proto$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAccuracy()F
    .locals 1

    .prologue
    .line 6610
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->accuracy_:F

    return v0
.end method

.method public getAltitude()D
    .locals 2

    .prologue
    .line 6642
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->altitude_:D

    return-wide v0
.end method

.method public getBearing()F
    .locals 1

    .prologue
    .line 6674
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bearing_:F

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 6408
    invoke-static {}, Lcom/google/glass/companion/Proto$Location;->getDefaultInstance()Lcom/google/glass/companion/Proto$Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 6359
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6359
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$Location;

    move-result-object v0

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 6546
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->latitude_:D

    return-wide v0
.end method

.method public getLevelId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 6874
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->levelId_:Ljava/lang/Object;

    .line 6875
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 6876
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 6878
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/glass/companion/Proto$Location$Builder;->levelId_:Ljava/lang/Object;

    .line 6881
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

.method public getLevelIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 6893
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location$Builder;->levelId_:Ljava/lang/Object;

    .line 6894
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 6895
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6898
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->levelId_:Ljava/lang/Object;

    .line 6901
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

.method public getLevelNumberE3()I
    .locals 1

    .prologue
    .line 6975
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->levelNumberE3_:I

    return v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 6578
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->longitude_:D

    return-wide v0
.end method

.method public getSatellitesUsedInFix()I
    .locals 1

    .prologue
    .line 6778
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->satellitesUsedInFix_:I

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .prologue
    .line 6706
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->speed_:F

    return v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 6738
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->time_:J

    return-wide v0
.end method

.method public getVisibleSatellites()I
    .locals 1

    .prologue
    .line 6826
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->visibleSatellites_:I

    return v0
.end method

.method public hasAccuracy()Z
    .locals 2

    .prologue
    .line 6604
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

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

.method public hasAltitude()Z
    .locals 2

    .prologue
    .line 6636
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

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

.method public hasBearing()Z
    .locals 2

    .prologue
    .line 6668
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

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

.method public hasLatitude()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 6540
    iget v1, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLevelId()Z
    .locals 2

    .prologue
    .line 6864
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

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

.method public hasLevelNumberE3()Z
    .locals 2

    .prologue
    .line 6963
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

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

.method public hasLongitude()Z
    .locals 2

    .prologue
    .line 6572
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

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

.method public hasSatellitesUsedInFix()Z
    .locals 2

    .prologue
    .line 6768
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

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

.method public hasSpeed()Z
    .locals 2

    .prologue
    .line 6700
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

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

.method public hasTime()Z
    .locals 2

    .prologue
    .line 6732
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

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

.method public hasVisibleSatellites()Z
    .locals 2

    .prologue
    .line 6816
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 6513
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/glass/companion/Proto$Location;)Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 6472
    invoke-static {}, Lcom/google/glass/companion/Proto$Location;->getDefaultInstance()Lcom/google/glass/companion/Proto$Location;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 6509
    :goto_0
    return-object p0

    .line 6473
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location;->hasLatitude()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6474
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/companion/Proto$Location$Builder;->setLatitude(D)Lcom/google/glass/companion/Proto$Location$Builder;

    .line 6476
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location;->hasLongitude()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6477
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/companion/Proto$Location$Builder;->setLongitude(D)Lcom/google/glass/companion/Proto$Location$Builder;

    .line 6479
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6480
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$Location$Builder;->setAccuracy(F)Lcom/google/glass/companion/Proto$Location$Builder;

    .line 6482
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6483
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location;->getAltitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/companion/Proto$Location$Builder;->setAltitude(D)Lcom/google/glass/companion/Proto$Location$Builder;

    .line 6485
    :cond_4
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location;->hasBearing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6486
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location;->getBearing()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$Location$Builder;->setBearing(F)Lcom/google/glass/companion/Proto$Location$Builder;

    .line 6488
    :cond_5
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6489
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location;->getSpeed()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$Location$Builder;->setSpeed(F)Lcom/google/glass/companion/Proto$Location$Builder;

    .line 6491
    :cond_6
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location;->hasTime()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6492
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/companion/Proto$Location$Builder;->setTime(J)Lcom/google/glass/companion/Proto$Location$Builder;

    .line 6494
    :cond_7
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location;->hasSatellitesUsedInFix()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6495
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location;->getSatellitesUsedInFix()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$Location$Builder;->setSatellitesUsedInFix(I)Lcom/google/glass/companion/Proto$Location$Builder;

    .line 6497
    :cond_8
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location;->hasVisibleSatellites()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6498
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location;->getVisibleSatellites()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$Location$Builder;->setVisibleSatellites(I)Lcom/google/glass/companion/Proto$Location$Builder;

    .line 6500
    :cond_9
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location;->hasLevelId()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 6501
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 6502
    #getter for: Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$Location;->access$5600(Lcom/google/glass/companion/Proto$Location;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->levelId_:Ljava/lang/Object;

    .line 6505
    :cond_a
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location;->hasLevelNumberE3()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 6506
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location;->getLevelNumberE3()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$Location$Builder;->setLevelNumberE3(I)Lcom/google/glass/companion/Proto$Location$Builder;

    .line 6508
    :cond_b
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    #getter for: Lcom/google/glass/companion/Proto$Location;->unknownFields:Lcom/google/protobuf/ByteString;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$Location;->access$5900(Lcom/google/glass/companion/Proto$Location;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->concat(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$Location$Builder;->setUnknownFields(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6520
    const/4 v2, 0x0

    .line 6522
    .local v2, parsedMessage:Lcom/google/glass/companion/Proto$Location;
    :try_start_0
    sget-object v3, Lcom/google/glass/companion/Proto$Location;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/companion/Proto$Location;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6527
    if-eqz v2, :cond_0

    .line 6528
    invoke-virtual {p0, v2}, Lcom/google/glass/companion/Proto$Location$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$Location;)Lcom/google/glass/companion/Proto$Location$Builder;

    .line 6531
    :cond_0
    return-object p0

    .line 6523
    :catch_0
    move-exception v1

    .line 6524
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/companion/Proto$Location;

    move-object v2, v0

    .line 6525
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6527
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 6528
    invoke-virtual {p0, v2}, Lcom/google/glass/companion/Proto$Location$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$Location;)Lcom/google/glass/companion/Proto$Location$Builder;

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
    .line 6359
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$Location$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6359
    check-cast p1, Lcom/google/glass/companion/Proto$Location;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$Location$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$Location;)Lcom/google/glass/companion/Proto$Location$Builder;

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
    .line 6359
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$Location$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAccuracy(F)Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6616
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 6617
    iput p1, p0, Lcom/google/glass/companion/Proto$Location$Builder;->accuracy_:F

    .line 6619
    return-object p0
.end method

.method public setAltitude(D)Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6648
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 6649
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Location$Builder;->altitude_:D

    .line 6651
    return-object p0
.end method

.method public setBearing(F)Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6680
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 6681
    iput p1, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bearing_:F

    .line 6683
    return-object p0
.end method

.method public setLatitude(D)Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6552
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 6553
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Location$Builder;->latitude_:D

    .line 6555
    return-object p0
.end method

.method public setLevelId(Ljava/lang/String;)Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6913
    if-nez p1, :cond_0

    .line 6914
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6916
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 6917
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Location$Builder;->levelId_:Ljava/lang/Object;

    .line 6919
    return-object p0
.end method

.method public setLevelIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6943
    if-nez p1, :cond_0

    .line 6944
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6946
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 6947
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Location$Builder;->levelId_:Ljava/lang/Object;

    .line 6949
    return-object p0
.end method

.method public setLevelNumberE3(I)Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6987
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 6988
    iput p1, p0, Lcom/google/glass/companion/Proto$Location$Builder;->levelNumberE3_:I

    .line 6990
    return-object p0
.end method

.method public setLongitude(D)Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6584
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 6585
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Location$Builder;->longitude_:D

    .line 6587
    return-object p0
.end method

.method public setSatellitesUsedInFix(I)Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6788
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 6789
    iput p1, p0, Lcom/google/glass/companion/Proto$Location$Builder;->satellitesUsedInFix_:I

    .line 6791
    return-object p0
.end method

.method public setSpeed(F)Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6712
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 6713
    iput p1, p0, Lcom/google/glass/companion/Proto$Location$Builder;->speed_:F

    .line 6715
    return-object p0
.end method

.method public setTime(J)Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6744
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 6745
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Location$Builder;->time_:J

    .line 6747
    return-object p0
.end method

.method public setVisibleSatellites(I)Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6836
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 6837
    iput p1, p0, Lcom/google/glass/companion/Proto$Location$Builder;->visibleSatellites_:I

    .line 6839
    return-object p0
.end method
