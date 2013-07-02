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
    .line 9701
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 10190
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->levelId_:Ljava/lang/Object;

    .line 9702
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Location$Builder;->maybeForceBuilderInitialization()V

    .line 9703
    return-void
.end method

.method static synthetic access$8600()Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1

    .prologue
    .line 9694
    invoke-static {}, Lcom/google/glass/companion/Proto$Location$Builder;->create()Lcom/google/glass/companion/Proto$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1

    .prologue
    .line 9708
    new-instance v0, Lcom/google/glass/companion/Proto$Location$Builder;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Location$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 9706
    return-void
.end method


# virtual methods
.method public build()Lcom/google/glass/companion/Proto$Location;
    .locals 2

    .prologue
    .line 9747
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location$Builder;->buildPartial()Lcom/google/glass/companion/Proto$Location;

    move-result-object v0

    .line 9748
    .local v0, result:Lcom/google/glass/companion/Proto$Location;
    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Location;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9749
    invoke-static {v0}, Lcom/google/glass/companion/Proto$Location$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 9751
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9694
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location$Builder;->build()Lcom/google/glass/companion/Proto$Location;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/glass/companion/Proto$Location;
    .locals 5

    .prologue
    .line 9755
    new-instance v1, Lcom/google/glass/companion/Proto$Location;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/glass/companion/Proto$Location;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V

    .line 9756
    .local v1, result:Lcom/google/glass/companion/Proto$Location;
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 9757
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 9758
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 9759
    or-int/lit8 v2, v2, 0x1

    .line 9761
    :cond_0
    iget-wide v3, p0, Lcom/google/glass/companion/Proto$Location$Builder;->latitude_:D

    #setter for: Lcom/google/glass/companion/Proto$Location;->latitude_:D
    invoke-static {v1, v3, v4}, Lcom/google/glass/companion/Proto$Location;->access$8802(Lcom/google/glass/companion/Proto$Location;D)D

    .line 9762
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 9763
    or-int/lit8 v2, v2, 0x2

    .line 9765
    :cond_1
    iget-wide v3, p0, Lcom/google/glass/companion/Proto$Location$Builder;->longitude_:D

    #setter for: Lcom/google/glass/companion/Proto$Location;->longitude_:D
    invoke-static {v1, v3, v4}, Lcom/google/glass/companion/Proto$Location;->access$8902(Lcom/google/glass/companion/Proto$Location;D)D

    .line 9766
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 9767
    or-int/lit8 v2, v2, 0x4

    .line 9769
    :cond_2
    iget v3, p0, Lcom/google/glass/companion/Proto$Location$Builder;->accuracy_:F

    #setter for: Lcom/google/glass/companion/Proto$Location;->accuracy_:F
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Location;->access$9002(Lcom/google/glass/companion/Proto$Location;F)F

    .line 9770
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 9771
    or-int/lit8 v2, v2, 0x8

    .line 9773
    :cond_3
    iget-wide v3, p0, Lcom/google/glass/companion/Proto$Location$Builder;->altitude_:D

    #setter for: Lcom/google/glass/companion/Proto$Location;->altitude_:D
    invoke-static {v1, v3, v4}, Lcom/google/glass/companion/Proto$Location;->access$9102(Lcom/google/glass/companion/Proto$Location;D)D

    .line 9774
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 9775
    or-int/lit8 v2, v2, 0x10

    .line 9777
    :cond_4
    iget v3, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bearing_:F

    #setter for: Lcom/google/glass/companion/Proto$Location;->bearing_:F
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Location;->access$9202(Lcom/google/glass/companion/Proto$Location;F)F

    .line 9778
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 9779
    or-int/lit8 v2, v2, 0x20

    .line 9781
    :cond_5
    iget v3, p0, Lcom/google/glass/companion/Proto$Location$Builder;->speed_:F

    #setter for: Lcom/google/glass/companion/Proto$Location;->speed_:F
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Location;->access$9302(Lcom/google/glass/companion/Proto$Location;F)F

    .line 9782
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 9783
    or-int/lit8 v2, v2, 0x40

    .line 9785
    :cond_6
    iget-wide v3, p0, Lcom/google/glass/companion/Proto$Location$Builder;->time_:J

    #setter for: Lcom/google/glass/companion/Proto$Location;->time_:J
    invoke-static {v1, v3, v4}, Lcom/google/glass/companion/Proto$Location;->access$9402(Lcom/google/glass/companion/Proto$Location;J)J

    .line 9786
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 9787
    or-int/lit16 v2, v2, 0x80

    .line 9789
    :cond_7
    iget v3, p0, Lcom/google/glass/companion/Proto$Location$Builder;->satellitesUsedInFix_:I

    #setter for: Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix_:I
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Location;->access$9502(Lcom/google/glass/companion/Proto$Location;I)I

    .line 9790
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 9791
    or-int/lit16 v2, v2, 0x100

    .line 9793
    :cond_8
    iget v3, p0, Lcom/google/glass/companion/Proto$Location$Builder;->visibleSatellites_:I

    #setter for: Lcom/google/glass/companion/Proto$Location;->visibleSatellites_:I
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Location;->access$9602(Lcom/google/glass/companion/Proto$Location;I)I

    .line 9794
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 9795
    or-int/lit16 v2, v2, 0x200

    .line 9797
    :cond_9
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Location$Builder;->levelId_:Ljava/lang/Object;

    #setter for: Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Location;->access$9702(Lcom/google/glass/companion/Proto$Location;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9798
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 9799
    or-int/lit16 v2, v2, 0x400

    .line 9801
    :cond_a
    iget v3, p0, Lcom/google/glass/companion/Proto$Location$Builder;->levelNumberE3_:I

    #setter for: Lcom/google/glass/companion/Proto$Location;->levelNumberE3_:I
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Location;->access$9802(Lcom/google/glass/companion/Proto$Location;I)I

    .line 9802
    #setter for: Lcom/google/glass/companion/Proto$Location;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/glass/companion/Proto$Location;->access$9902(Lcom/google/glass/companion/Proto$Location;I)I

    .line 9803
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9694
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

    .line 9712
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 9713
    iput-wide v1, p0, Lcom/google/glass/companion/Proto$Location$Builder;->latitude_:D

    .line 9714
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 9715
    iput-wide v1, p0, Lcom/google/glass/companion/Proto$Location$Builder;->longitude_:D

    .line 9716
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 9717
    iput v3, p0, Lcom/google/glass/companion/Proto$Location$Builder;->accuracy_:F

    .line 9718
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 9719
    iput-wide v1, p0, Lcom/google/glass/companion/Proto$Location$Builder;->altitude_:D

    .line 9720
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 9721
    iput v3, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bearing_:F

    .line 9722
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 9723
    iput v3, p0, Lcom/google/glass/companion/Proto$Location$Builder;->speed_:F

    .line 9724
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 9725
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->time_:J

    .line 9726
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 9727
    iput v4, p0, Lcom/google/glass/companion/Proto$Location$Builder;->satellitesUsedInFix_:I

    .line 9728
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 9729
    iput v4, p0, Lcom/google/glass/companion/Proto$Location$Builder;->visibleSatellites_:I

    .line 9730
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 9731
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->levelId_:Ljava/lang/Object;

    .line 9732
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 9733
    iput v4, p0, Lcom/google/glass/companion/Proto$Location$Builder;->levelNumberE3_:I

    .line 9734
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 9735
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 9694
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location$Builder;->clear()Lcom/google/glass/companion/Proto$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9694
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location$Builder;->clear()Lcom/google/glass/companion/Proto$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAccuracy()Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1

    .prologue
    .line 9960
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 9961
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->accuracy_:F

    .line 9963
    return-object p0
.end method

.method public clearAltitude()Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 2

    .prologue
    .line 9992
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 9993
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->altitude_:D

    .line 9995
    return-object p0
.end method

.method public clearBearing()Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1

    .prologue
    .line 10024
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 10025
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bearing_:F

    .line 10027
    return-object p0
.end method

.method public clearLatitude()Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 2

    .prologue
    .line 9896
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 9897
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->latitude_:D

    .line 9899
    return-object p0
.end method

.method public clearLevelId()Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1

    .prologue
    .line 10267
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 10268
    invoke-static {}, Lcom/google/glass/companion/Proto$Location;->getDefaultInstance()Lcom/google/glass/companion/Proto$Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Location;->getLevelId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->levelId_:Ljava/lang/Object;

    .line 10270
    return-object p0
.end method

.method public clearLevelNumberE3()Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1

    .prologue
    .line 10340
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 10341
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->levelNumberE3_:I

    .line 10343
    return-object p0
.end method

.method public clearLongitude()Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 2

    .prologue
    .line 9928
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 9929
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->longitude_:D

    .line 9931
    return-object p0
.end method

.method public clearSatellitesUsedInFix()Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1

    .prologue
    .line 10136
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 10137
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->satellitesUsedInFix_:I

    .line 10139
    return-object p0
.end method

.method public clearSpeed()Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1

    .prologue
    .line 10056
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 10057
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->speed_:F

    .line 10059
    return-object p0
.end method

.method public clearTime()Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 2

    .prologue
    .line 10088
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 10089
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->time_:J

    .line 10091
    return-object p0
.end method

.method public clearVisibleSatellites()Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1

    .prologue
    .line 10184
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 10185
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->visibleSatellites_:I

    .line 10187
    return-object p0
.end method

.method public clone()Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 2

    .prologue
    .line 9739
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
    .line 9694
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location$Builder;->clone()Lcom/google/glass/companion/Proto$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 9694
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location$Builder;->clone()Lcom/google/glass/companion/Proto$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9694
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
    .line 9694
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location$Builder;->clone()Lcom/google/glass/companion/Proto$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAccuracy()F
    .locals 1

    .prologue
    .line 9945
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->accuracy_:F

    return v0
.end method

.method public getAltitude()D
    .locals 2

    .prologue
    .line 9977
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->altitude_:D

    return-wide v0
.end method

.method public getBearing()F
    .locals 1

    .prologue
    .line 10009
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bearing_:F

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 9743
    invoke-static {}, Lcom/google/glass/companion/Proto$Location;->getDefaultInstance()Lcom/google/glass/companion/Proto$Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 9694
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9694
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$Location;

    move-result-object v0

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 9881
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->latitude_:D

    return-wide v0
.end method

.method public getLevelId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 10209
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location$Builder;->levelId_:Ljava/lang/Object;

    .line 10210
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 10211
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 10213
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 10214
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 10215
    iput-object v2, p0, Lcom/google/glass/companion/Proto$Location$Builder;->levelId_:Ljava/lang/Object;

    .line 10219
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

.method public getLevelIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 10231
    iget-object v1, p0, Lcom/google/glass/companion/Proto$Location$Builder;->levelId_:Ljava/lang/Object;

    .line 10232
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 10233
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10236
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->levelId_:Ljava/lang/Object;

    .line 10239
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
    .line 10313
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->levelNumberE3_:I

    return v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 9913
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->longitude_:D

    return-wide v0
.end method

.method public getSatellitesUsedInFix()I
    .locals 1

    .prologue
    .line 10113
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->satellitesUsedInFix_:I

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .prologue
    .line 10041
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->speed_:F

    return v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 10073
    iget-wide v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->time_:J

    return-wide v0
.end method

.method public getVisibleSatellites()I
    .locals 1

    .prologue
    .line 10161
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->visibleSatellites_:I

    return v0
.end method

.method public hasAccuracy()Z
    .locals 2

    .prologue
    .line 9939
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
    .line 9971
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
    .line 10003
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

    .line 9875
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
    .line 10199
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
    .line 10301
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
    .line 9907
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
    .line 10103
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
    .line 10035
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
    .line 10067
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
    .line 10151
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
    .line 9848
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/glass/companion/Proto$Location;)Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 9807
    invoke-static {}, Lcom/google/glass/companion/Proto$Location;->getDefaultInstance()Lcom/google/glass/companion/Proto$Location;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 9844
    :goto_0
    return-object p0

    .line 9808
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location;->hasLatitude()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9809
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/companion/Proto$Location$Builder;->setLatitude(D)Lcom/google/glass/companion/Proto$Location$Builder;

    .line 9811
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location;->hasLongitude()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9812
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/companion/Proto$Location$Builder;->setLongitude(D)Lcom/google/glass/companion/Proto$Location$Builder;

    .line 9814
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9815
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$Location$Builder;->setAccuracy(F)Lcom/google/glass/companion/Proto$Location$Builder;

    .line 9817
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9818
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location;->getAltitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/companion/Proto$Location$Builder;->setAltitude(D)Lcom/google/glass/companion/Proto$Location$Builder;

    .line 9820
    :cond_4
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location;->hasBearing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9821
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location;->getBearing()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$Location$Builder;->setBearing(F)Lcom/google/glass/companion/Proto$Location$Builder;

    .line 9823
    :cond_5
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9824
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location;->getSpeed()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$Location$Builder;->setSpeed(F)Lcom/google/glass/companion/Proto$Location$Builder;

    .line 9826
    :cond_6
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location;->hasTime()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9827
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/companion/Proto$Location$Builder;->setTime(J)Lcom/google/glass/companion/Proto$Location$Builder;

    .line 9829
    :cond_7
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location;->hasSatellitesUsedInFix()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 9830
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location;->getSatellitesUsedInFix()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$Location$Builder;->setSatellitesUsedInFix(I)Lcom/google/glass/companion/Proto$Location$Builder;

    .line 9832
    :cond_8
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location;->hasVisibleSatellites()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 9833
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location;->getVisibleSatellites()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$Location$Builder;->setVisibleSatellites(I)Lcom/google/glass/companion/Proto$Location$Builder;

    .line 9835
    :cond_9
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location;->hasLevelId()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 9836
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 9837
    #getter for: Lcom/google/glass/companion/Proto$Location;->levelId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$Location;->access$9700(Lcom/google/glass/companion/Proto$Location;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->levelId_:Ljava/lang/Object;

    .line 9840
    :cond_a
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location;->hasLevelNumberE3()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 9841
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Location;->getLevelNumberE3()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$Location$Builder;->setLevelNumberE3(I)Lcom/google/glass/companion/Proto$Location$Builder;

    .line 9843
    :cond_b
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Location$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    #getter for: Lcom/google/glass/companion/Proto$Location;->unknownFields:Lcom/google/protobuf/ByteString;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$Location;->access$10000(Lcom/google/glass/companion/Proto$Location;)Lcom/google/protobuf/ByteString;

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
    .line 9855
    const/4 v2, 0x0

    .line 9857
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

    .line 9862
    if-eqz v2, :cond_0

    .line 9863
    invoke-virtual {p0, v2}, Lcom/google/glass/companion/Proto$Location$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$Location;)Lcom/google/glass/companion/Proto$Location$Builder;

    .line 9866
    :cond_0
    return-object p0

    .line 9858
    :catch_0
    move-exception v1

    .line 9859
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/companion/Proto$Location;

    move-object v2, v0

    .line 9860
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9862
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 9863
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
    .line 9694
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$Location$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9694
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
    .line 9694
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$Location$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAccuracy(F)Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 9951
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 9952
    iput p1, p0, Lcom/google/glass/companion/Proto$Location$Builder;->accuracy_:F

    .line 9954
    return-object p0
.end method

.method public setAltitude(D)Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 9983
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 9984
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Location$Builder;->altitude_:D

    .line 9986
    return-object p0
.end method

.method public setBearing(F)Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 10015
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 10016
    iput p1, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bearing_:F

    .line 10018
    return-object p0
.end method

.method public setLatitude(D)Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 9887
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 9888
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Location$Builder;->latitude_:D

    .line 9890
    return-object p0
.end method

.method public setLevelId(Ljava/lang/String;)Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 10251
    if-nez p1, :cond_0

    .line 10252
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10254
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 10255
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Location$Builder;->levelId_:Ljava/lang/Object;

    .line 10257
    return-object p0
.end method

.method public setLevelIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 10281
    if-nez p1, :cond_0

    .line 10282
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10284
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 10285
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Location$Builder;->levelId_:Ljava/lang/Object;

    .line 10287
    return-object p0
.end method

.method public setLevelNumberE3(I)Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 10325
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 10326
    iput p1, p0, Lcom/google/glass/companion/Proto$Location$Builder;->levelNumberE3_:I

    .line 10328
    return-object p0
.end method

.method public setLongitude(D)Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 9919
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 9920
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Location$Builder;->longitude_:D

    .line 9922
    return-object p0
.end method

.method public setSatellitesUsedInFix(I)Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 10123
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 10124
    iput p1, p0, Lcom/google/glass/companion/Proto$Location$Builder;->satellitesUsedInFix_:I

    .line 10126
    return-object p0
.end method

.method public setSpeed(F)Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 10047
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 10048
    iput p1, p0, Lcom/google/glass/companion/Proto$Location$Builder;->speed_:F

    .line 10050
    return-object p0
.end method

.method public setTime(J)Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 10079
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 10080
    iput-wide p1, p0, Lcom/google/glass/companion/Proto$Location$Builder;->time_:J

    .line 10082
    return-object p0
.end method

.method public setVisibleSatellites(I)Lcom/google/glass/companion/Proto$Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 10171
    iget v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/glass/companion/Proto$Location$Builder;->bitField0_:I

    .line 10172
    iput p1, p0, Lcom/google/glass/companion/Proto$Location$Builder;->visibleSatellites_:I

    .line 10174
    return-object p0
.end method
