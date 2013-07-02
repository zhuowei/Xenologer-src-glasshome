.class public final Lcom/google/googlex/glass/common/proto/Location$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Location.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/LocationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/Location$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/LocationOrBuilder;"
    }
.end annotation


# instance fields
.field private accuracy_:D

.field private address_:Ljava/lang/Object;

.field private bitField0_:I

.field private displayName_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private latitude_:D

.field private levelId_:Ljava/lang/Object;

.field private levelNumber_:F

.field private longitude_:D

.field private source_:Ljava/lang/Object;

.field private timestamp_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 774
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 964
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->id_:Ljava/lang/Object;

    .line 1064
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->source_:Ljava/lang/Object;

    .line 1360
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->levelId_:Ljava/lang/Object;

    .line 1528
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->displayName_:Ljava/lang/Object;

    .line 1634
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->address_:Ljava/lang/Object;

    .line 775
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->maybeForceBuilderInitialization()V

    .line 776
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 780
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 964
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->id_:Ljava/lang/Object;

    .line 1064
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->source_:Ljava/lang/Object;

    .line 1360
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->levelId_:Ljava/lang/Object;

    .line 1528
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->displayName_:Ljava/lang/Object;

    .line 1634
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->address_:Ljava/lang/Object;

    .line 781
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->maybeForceBuilderInitialization()V

    .line 782
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/Location$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 757
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/Location$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1

    .prologue
    .line 757
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location$Builder;->create()Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1

    .prologue
    .line 788
    new-instance v0, Lcom/google/googlex/glass/common/proto/Location$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Location$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 763
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_Location_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 784
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/Location;
    .locals 2

    .prologue
    .line 830
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    .line 831
    .local v0, result:Lcom/google/googlex/glass/common/proto/Location;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Location;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 832
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 834
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 757
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->build()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 757
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->build()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/Location;
    .locals 5

    .prologue
    .line 838
    new-instance v1, Lcom/google/googlex/glass/common/proto/Location;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/Location;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/Location$1;)V

    .line 839
    .local v1, result:Lcom/google/googlex/glass/common/proto/Location;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 840
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 841
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 842
    or-int/lit8 v2, v2, 0x1

    .line 844
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Location;->id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Location;->access$502(Lcom/google/googlex/glass/common/proto/Location;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 846
    or-int/lit8 v2, v2, 0x2

    .line 848
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->source_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Location;->source_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Location;->access$602(Lcom/google/googlex/glass/common/proto/Location;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 850
    or-int/lit8 v2, v2, 0x4

    .line 852
    :cond_2
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->timestamp_:J

    #setter for: Lcom/google/googlex/glass/common/proto/Location;->timestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/Location;->access$702(Lcom/google/googlex/glass/common/proto/Location;J)J

    .line 853
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 854
    or-int/lit8 v2, v2, 0x8

    .line 856
    :cond_3
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->latitude_:D

    #setter for: Lcom/google/googlex/glass/common/proto/Location;->latitude_:D
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/Location;->access$802(Lcom/google/googlex/glass/common/proto/Location;D)D

    .line 857
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 858
    or-int/lit8 v2, v2, 0x10

    .line 860
    :cond_4
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->longitude_:D

    #setter for: Lcom/google/googlex/glass/common/proto/Location;->longitude_:D
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/Location;->access$902(Lcom/google/googlex/glass/common/proto/Location;D)D

    .line 861
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 862
    or-int/lit8 v2, v2, 0x20

    .line 864
    :cond_5
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->accuracy_:D

    #setter for: Lcom/google/googlex/glass/common/proto/Location;->accuracy_:D
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/Location;->access$1002(Lcom/google/googlex/glass/common/proto/Location;D)D

    .line 865
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 866
    or-int/lit8 v2, v2, 0x40

    .line 868
    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->levelId_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Location;->levelId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Location;->access$1102(Lcom/google/googlex/glass/common/proto/Location;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 870
    or-int/lit16 v2, v2, 0x80

    .line 872
    :cond_7
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->levelNumber_:F

    #setter for: Lcom/google/googlex/glass/common/proto/Location;->levelNumber_:F
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Location;->access$1202(Lcom/google/googlex/glass/common/proto/Location;F)F

    .line 873
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 874
    or-int/lit16 v2, v2, 0x100

    .line 876
    :cond_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->displayName_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Location;->displayName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Location;->access$1302(Lcom/google/googlex/glass/common/proto/Location;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 878
    or-int/lit16 v2, v2, 0x200

    .line 880
    :cond_9
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->address_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Location;->address_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Location;->access$1402(Lcom/google/googlex/glass/common/proto/Location;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    #setter for: Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/Location;->access$1502(Lcom/google/googlex/glass/common/proto/Location;I)I

    .line 882
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onBuilt()V

    .line 883
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 757
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 757
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 792
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 793
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->id_:Ljava/lang/Object;

    .line 794
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 795
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->source_:Ljava/lang/Object;

    .line 796
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 797
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->timestamp_:J

    .line 798
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 799
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->latitude_:D

    .line 800
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 801
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->longitude_:D

    .line 802
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 803
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->accuracy_:D

    .line 804
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 805
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->levelId_:Ljava/lang/Object;

    .line 806
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 807
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->levelNumber_:F

    .line 808
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 809
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->displayName_:Ljava/lang/Object;

    .line 810
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 811
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->address_:Ljava/lang/Object;

    .line 812
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 813
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 757
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->clear()Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 757
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->clear()Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 757
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->clear()Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 757
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->clear()Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAccuracy()Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 2

    .prologue
    .line 1354
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1355
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->accuracy_:D

    .line 1356
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1357
    return-object p0
.end method

.method public clearAddress()Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1

    .prologue
    .line 1711
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1712
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Location;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->address_:Ljava/lang/Object;

    .line 1713
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1714
    return-object p0
.end method

.method public clearDisplayName()Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1

    .prologue
    .line 1610
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1611
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Location;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->displayName_:Ljava/lang/Object;

    .line 1612
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1613
    return-object p0
.end method

.method public clearId()Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1

    .prologue
    .line 1041
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1042
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Location;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->id_:Ljava/lang/Object;

    .line 1043
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1044
    return-object p0
.end method

.method public clearLatitude()Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 2

    .prologue
    .line 1258
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1259
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->latitude_:D

    .line 1260
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1261
    return-object p0
.end method

.method public clearLevelId()Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1

    .prologue
    .line 1447
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1448
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Location;->getLevelId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->levelId_:Ljava/lang/Object;

    .line 1449
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1450
    return-object p0
.end method

.method public clearLevelNumber()Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1

    .prologue
    .line 1522
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1523
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->levelNumber_:F

    .line 1524
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1525
    return-object p0
.end method

.method public clearLongitude()Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 2

    .prologue
    .line 1306
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1307
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->longitude_:D

    .line 1308
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1309
    return-object p0
.end method

.method public clearSource()Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1

    .prologue
    .line 1141
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1142
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Location;->getSource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->source_:Ljava/lang/Object;

    .line 1143
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1144
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 2

    .prologue
    .line 1210
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1211
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->timestamp_:J

    .line 1212
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1213
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 2

    .prologue
    .line 817
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location$Builder;->create()Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/Location$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 757
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->clone()Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 757
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->clone()Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 757
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->clone()Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 757
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->clone()Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 757
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->clone()Lcom/google/googlex/glass/common/proto/Location$Builder;

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
    .line 757
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->clone()Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAccuracy()D
    .locals 2

    .prologue
    .line 1331
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->accuracy_:D

    return-wide v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1653
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->address_:Ljava/lang/Object;

    .line 1654
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1655
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1657
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1658
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1659
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->address_:Ljava/lang/Object;

    .line 1663
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

.method public getAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1675
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->address_:Ljava/lang/Object;

    .line 1676
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1677
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1680
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->address_:Ljava/lang/Object;

    .line 1683
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

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Location;
    .locals 1

    .prologue
    .line 826
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 757
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 757
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 822
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_Location_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1549
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->displayName_:Ljava/lang/Object;

    .line 1550
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1551
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1553
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1554
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1555
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->displayName_:Ljava/lang/Object;

    .line 1559
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

.method public getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1572
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->displayName_:Ljava/lang/Object;

    .line 1573
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1574
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1577
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->displayName_:Ljava/lang/Object;

    .line 1580
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

.method public getId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 983
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->id_:Ljava/lang/Object;

    .line 984
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 985
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 987
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 988
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 989
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->id_:Ljava/lang/Object;

    .line 993
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

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1005
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->id_:Ljava/lang/Object;

    .line 1006
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1007
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1010
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->id_:Ljava/lang/Object;

    .line 1013
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

.method public getLatitude()D
    .locals 2

    .prologue
    .line 1235
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->latitude_:D

    return-wide v0
.end method

.method public getLevelId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1383
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->levelId_:Ljava/lang/Object;

    .line 1384
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1385
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1387
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1388
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1389
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->levelId_:Ljava/lang/Object;

    .line 1393
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
    .line 1407
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->levelId_:Ljava/lang/Object;

    .line 1408
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1409
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1412
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->levelId_:Ljava/lang/Object;

    .line 1415
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

.method public getLevelNumber()F
    .locals 1

    .prologue
    .line 1495
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->levelNumber_:F

    return v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 1283
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->longitude_:D

    return-wide v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1083
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->source_:Ljava/lang/Object;

    .line 1084
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1085
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1087
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1088
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1089
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->source_:Ljava/lang/Object;

    .line 1093
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

.method public getSourceBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1105
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->source_:Ljava/lang/Object;

    .line 1106
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1107
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1110
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->source_:Ljava/lang/Object;

    .line 1113
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

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 1185
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->timestamp_:J

    return-wide v0
.end method

.method public hasAccuracy()Z
    .locals 2

    .prologue
    .line 1321
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

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

.method public hasAddress()Z
    .locals 2

    .prologue
    .line 1643
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

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

.method public hasDisplayName()Z
    .locals 2

    .prologue
    .line 1538
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

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

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 973
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLatitude()Z
    .locals 2

    .prologue
    .line 1225
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

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

.method public hasLevelId()Z
    .locals 2

    .prologue
    .line 1371
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

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

.method public hasLevelNumber()Z
    .locals 2

    .prologue
    .line 1483
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

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

.method public hasLongitude()Z
    .locals 2

    .prologue
    .line 1273
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

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

.method public hasSource()Z
    .locals 2

    .prologue
    .line 1073
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

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

.method public hasTimestamp()Z
    .locals 2

    .prologue
    .line 1174
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 768
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_Location_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/Location;

    const-class v2, Lcom/google/googlex/glass/common/proto/Location$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 942
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 896
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 938
    :goto_0
    return-object p0

    .line 897
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Location;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 898
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 899
    #getter for: Lcom/google/googlex/glass/common/proto/Location;->id_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Location;->access$500(Lcom/google/googlex/glass/common/proto/Location;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->id_:Ljava/lang/Object;

    .line 900
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 902
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Location;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 903
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 904
    #getter for: Lcom/google/googlex/glass/common/proto/Location;->source_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Location;->access$600(Lcom/google/googlex/glass/common/proto/Location;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->source_:Ljava/lang/Object;

    .line 905
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 907
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Location;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 908
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Location;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/Location$Builder;->setTimestamp(J)Lcom/google/googlex/glass/common/proto/Location$Builder;

    .line 910
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Location;->hasLatitude()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 911
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/Location$Builder;->setLatitude(D)Lcom/google/googlex/glass/common/proto/Location$Builder;

    .line 913
    :cond_4
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Location;->hasLongitude()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 914
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/Location$Builder;->setLongitude(D)Lcom/google/googlex/glass/common/proto/Location$Builder;

    .line 916
    :cond_5
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 917
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Location;->getAccuracy()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/Location$Builder;->setAccuracy(D)Lcom/google/googlex/glass/common/proto/Location$Builder;

    .line 919
    :cond_6
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Location;->hasLevelId()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 920
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 921
    #getter for: Lcom/google/googlex/glass/common/proto/Location;->levelId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Location;->access$1100(Lcom/google/googlex/glass/common/proto/Location;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->levelId_:Ljava/lang/Object;

    .line 922
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 924
    :cond_7
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Location;->hasLevelNumber()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 925
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Location;->getLevelNumber()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->setLevelNumber(F)Lcom/google/googlex/glass/common/proto/Location$Builder;

    .line 927
    :cond_8
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Location;->hasDisplayName()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 928
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 929
    #getter for: Lcom/google/googlex/glass/common/proto/Location;->displayName_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Location;->access$1300(Lcom/google/googlex/glass/common/proto/Location;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->displayName_:Ljava/lang/Object;

    .line 930
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 932
    :cond_9
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Location;->hasAddress()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 933
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 934
    #getter for: Lcom/google/googlex/glass/common/proto/Location;->address_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Location;->access$1400(Lcom/google/googlex/glass/common/proto/Location;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->address_:Ljava/lang/Object;

    .line 935
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 937
    :cond_a
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Location;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 949
    const/4 v2, 0x0

    .line 951
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/Location;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/Location;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/Location;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 956
    if-eqz v2, :cond_0

    .line 957
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/Location$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/Location$Builder;

    .line 960
    :cond_0
    return-object p0

    .line 952
    :catch_0
    move-exception v1

    .line 953
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/Location;

    move-object v2, v0

    .line 954
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 956
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 957
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/Location$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/Location$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 887
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/Location;

    if-eqz v0, :cond_0

    .line 888
    check-cast p1, Lcom/google/googlex/glass/common/proto/Location;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Location$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object p0

    .line 891
    .end local p0
    :goto_0
    return-object p0

    .line 890
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
    .line 757
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Location$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 757
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Location$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/Location$Builder;

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
    .line 757
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Location$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Location$Builder;

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
    .line 757
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Location$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 757
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Location$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/Location$Builder;

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
    .line 757
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Location$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAccuracy(D)Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1341
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1342
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->accuracy_:D

    .line 1343
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1344
    return-object p0
.end method

.method public setAddress(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1695
    if-nez p1, :cond_0

    .line 1696
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1698
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1699
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->address_:Ljava/lang/Object;

    .line 1700
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1701
    return-object p0
.end method

.method public setAddressBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1725
    if-nez p1, :cond_0

    .line 1726
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1728
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1729
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->address_:Ljava/lang/Object;

    .line 1730
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1731
    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1593
    if-nez p1, :cond_0

    .line 1594
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1596
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1597
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->displayName_:Ljava/lang/Object;

    .line 1598
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1599
    return-object p0
.end method

.method public setDisplayNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1625
    if-nez p1, :cond_0

    .line 1626
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1628
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1629
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->displayName_:Ljava/lang/Object;

    .line 1630
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1631
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1025
    if-nez p1, :cond_0

    .line 1026
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1028
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1029
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->id_:Ljava/lang/Object;

    .line 1030
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1031
    return-object p0
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1055
    if-nez p1, :cond_0

    .line 1056
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1058
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1059
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->id_:Ljava/lang/Object;

    .line 1060
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1061
    return-object p0
.end method

.method public setLatitude(D)Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1245
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1246
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->latitude_:D

    .line 1247
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1248
    return-object p0
.end method

.method public setLevelId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1429
    if-nez p1, :cond_0

    .line 1430
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1432
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1433
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->levelId_:Ljava/lang/Object;

    .line 1434
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1435
    return-object p0
.end method

.method public setLevelIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1463
    if-nez p1, :cond_0

    .line 1464
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1466
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1467
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->levelId_:Ljava/lang/Object;

    .line 1468
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1469
    return-object p0
.end method

.method public setLevelNumber(F)Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1507
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1508
    iput p1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->levelNumber_:F

    .line 1509
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1510
    return-object p0
.end method

.method public setLongitude(D)Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1293
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1294
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->longitude_:D

    .line 1295
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1296
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1125
    if-nez p1, :cond_0

    .line 1126
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1128
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1129
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->source_:Ljava/lang/Object;

    .line 1130
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1131
    return-object p0
.end method

.method public setSourceBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1155
    if-nez p1, :cond_0

    .line 1156
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1158
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1159
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->source_:Ljava/lang/Object;

    .line 1160
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1161
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1196
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1197
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->timestamp_:J

    .line 1198
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1199
    return-object p0
.end method
