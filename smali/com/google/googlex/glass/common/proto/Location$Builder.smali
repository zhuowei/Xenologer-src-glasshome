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
    .line 769
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 959
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->id_:Ljava/lang/Object;

    .line 1056
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->source_:Ljava/lang/Object;

    .line 1349
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->levelId_:Ljava/lang/Object;

    .line 1514
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->displayName_:Ljava/lang/Object;

    .line 1617
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->address_:Ljava/lang/Object;

    .line 770
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->maybeForceBuilderInitialization()V

    .line 771
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 775
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 959
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->id_:Ljava/lang/Object;

    .line 1056
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->source_:Ljava/lang/Object;

    .line 1349
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->levelId_:Ljava/lang/Object;

    .line 1514
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->displayName_:Ljava/lang/Object;

    .line 1617
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->address_:Ljava/lang/Object;

    .line 776
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->maybeForceBuilderInitialization()V

    .line 777
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/Location$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 752
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/Location$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1

    .prologue
    .line 752
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location$Builder;->create()Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1

    .prologue
    .line 783
    new-instance v0, Lcom/google/googlex/glass/common/proto/Location$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Location$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 758
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_Location_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 779
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/Location;
    .locals 2

    .prologue
    .line 825
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    .line 826
    .local v0, result:Lcom/google/googlex/glass/common/proto/Location;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Location;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 827
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 829
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 752
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->build()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 752
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->build()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/Location;
    .locals 5

    .prologue
    .line 833
    new-instance v1, Lcom/google/googlex/glass/common/proto/Location;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/Location;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/Location$1;)V

    .line 834
    .local v1, result:Lcom/google/googlex/glass/common/proto/Location;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 835
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 836
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 837
    or-int/lit8 v2, v2, 0x1

    .line 839
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Location;->id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Location;->access$502(Lcom/google/googlex/glass/common/proto/Location;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 841
    or-int/lit8 v2, v2, 0x2

    .line 843
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->source_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Location;->source_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Location;->access$602(Lcom/google/googlex/glass/common/proto/Location;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 845
    or-int/lit8 v2, v2, 0x4

    .line 847
    :cond_2
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->timestamp_:J

    #setter for: Lcom/google/googlex/glass/common/proto/Location;->timestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/Location;->access$702(Lcom/google/googlex/glass/common/proto/Location;J)J

    .line 848
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 849
    or-int/lit8 v2, v2, 0x8

    .line 851
    :cond_3
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->latitude_:D

    #setter for: Lcom/google/googlex/glass/common/proto/Location;->latitude_:D
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/Location;->access$802(Lcom/google/googlex/glass/common/proto/Location;D)D

    .line 852
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 853
    or-int/lit8 v2, v2, 0x10

    .line 855
    :cond_4
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->longitude_:D

    #setter for: Lcom/google/googlex/glass/common/proto/Location;->longitude_:D
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/Location;->access$902(Lcom/google/googlex/glass/common/proto/Location;D)D

    .line 856
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 857
    or-int/lit8 v2, v2, 0x20

    .line 859
    :cond_5
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->accuracy_:D

    #setter for: Lcom/google/googlex/glass/common/proto/Location;->accuracy_:D
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/Location;->access$1002(Lcom/google/googlex/glass/common/proto/Location;D)D

    .line 860
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 861
    or-int/lit8 v2, v2, 0x40

    .line 863
    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->levelId_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Location;->levelId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Location;->access$1102(Lcom/google/googlex/glass/common/proto/Location;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 865
    or-int/lit16 v2, v2, 0x80

    .line 867
    :cond_7
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->levelNumber_:F

    #setter for: Lcom/google/googlex/glass/common/proto/Location;->levelNumber_:F
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Location;->access$1202(Lcom/google/googlex/glass/common/proto/Location;F)F

    .line 868
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 869
    or-int/lit16 v2, v2, 0x100

    .line 871
    :cond_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->displayName_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Location;->displayName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Location;->access$1302(Lcom/google/googlex/glass/common/proto/Location;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 873
    or-int/lit16 v2, v2, 0x200

    .line 875
    :cond_9
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->address_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Location;->address_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Location;->access$1402(Lcom/google/googlex/glass/common/proto/Location;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    #setter for: Lcom/google/googlex/glass/common/proto/Location;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/Location;->access$1502(Lcom/google/googlex/glass/common/proto/Location;I)I

    .line 877
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onBuilt()V

    .line 878
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 752
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 752
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 787
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 788
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->id_:Ljava/lang/Object;

    .line 789
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 790
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->source_:Ljava/lang/Object;

    .line 791
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 792
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->timestamp_:J

    .line 793
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 794
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->latitude_:D

    .line 795
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 796
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->longitude_:D

    .line 797
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 798
    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->accuracy_:D

    .line 799
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 800
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->levelId_:Ljava/lang/Object;

    .line 801
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 802
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->levelNumber_:F

    .line 803
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 804
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->displayName_:Ljava/lang/Object;

    .line 805
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 806
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->address_:Ljava/lang/Object;

    .line 807
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 808
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 752
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->clear()Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 752
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->clear()Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 752
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->clear()Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 752
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->clear()Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAccuracy()Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 2

    .prologue
    .line 1343
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1344
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->accuracy_:D

    .line 1345
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1346
    return-object p0
.end method

.method public clearAddress()Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1

    .prologue
    .line 1691
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1692
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Location;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->address_:Ljava/lang/Object;

    .line 1693
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1694
    return-object p0
.end method

.method public clearDisplayName()Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1

    .prologue
    .line 1593
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1594
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Location;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->displayName_:Ljava/lang/Object;

    .line 1595
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1596
    return-object p0
.end method

.method public clearId()Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1

    .prologue
    .line 1033
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1034
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Location;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->id_:Ljava/lang/Object;

    .line 1035
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1036
    return-object p0
.end method

.method public clearLatitude()Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 2

    .prologue
    .line 1247
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1248
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->latitude_:D

    .line 1249
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1250
    return-object p0
.end method

.method public clearLevelId()Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1

    .prologue
    .line 1433
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1434
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Location;->getLevelId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->levelId_:Ljava/lang/Object;

    .line 1435
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1436
    return-object p0
.end method

.method public clearLevelNumber()Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1

    .prologue
    .line 1508
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1509
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->levelNumber_:F

    .line 1510
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1511
    return-object p0
.end method

.method public clearLongitude()Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 2

    .prologue
    .line 1295
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1296
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->longitude_:D

    .line 1297
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1298
    return-object p0
.end method

.method public clearSource()Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1

    .prologue
    .line 1130
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1131
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Location;->getSource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->source_:Ljava/lang/Object;

    .line 1132
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1133
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 2

    .prologue
    .line 1199
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1200
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->timestamp_:J

    .line 1201
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1202
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 2

    .prologue
    .line 812
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
    .line 752
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->clone()Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 752
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->clone()Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 752
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->clone()Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 752
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->clone()Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 752
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
    .line 752
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->clone()Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAccuracy()D
    .locals 2

    .prologue
    .line 1320
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->accuracy_:D

    return-wide v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->address_:Ljava/lang/Object;

    .line 1637
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1638
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1640
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->address_:Ljava/lang/Object;

    .line 1643
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

.method public getAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1655
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->address_:Ljava/lang/Object;

    .line 1656
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1657
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1660
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->address_:Ljava/lang/Object;

    .line 1663
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
    .line 821
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 752
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 752
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 817
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_Location_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->displayName_:Ljava/lang/Object;

    .line 1536
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1537
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1539
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->displayName_:Ljava/lang/Object;

    .line 1542
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

.method public getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1555
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->displayName_:Ljava/lang/Object;

    .line 1556
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1557
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1560
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->displayName_:Ljava/lang/Object;

    .line 1563
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
    .locals 3

    .prologue
    .line 978
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->id_:Ljava/lang/Object;

    .line 979
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 980
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 982
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->id_:Ljava/lang/Object;

    .line 985
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

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 997
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->id_:Ljava/lang/Object;

    .line 998
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 999
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1002
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->id_:Ljava/lang/Object;

    .line 1005
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
    .line 1224
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->latitude_:D

    return-wide v0
.end method

.method public getLevelId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->levelId_:Ljava/lang/Object;

    .line 1373
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1374
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1376
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->levelId_:Ljava/lang/Object;

    .line 1379
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
    .line 1393
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->levelId_:Ljava/lang/Object;

    .line 1394
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1395
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1398
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->levelId_:Ljava/lang/Object;

    .line 1401
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
    .line 1481
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->levelNumber_:F

    return v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 1272
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->longitude_:D

    return-wide v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->source_:Ljava/lang/Object;

    .line 1076
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1077
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1079
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->source_:Ljava/lang/Object;

    .line 1082
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

.method public getSourceBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1094
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->source_:Ljava/lang/Object;

    .line 1095
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1096
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1099
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->source_:Ljava/lang/Object;

    .line 1102
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
    .line 1174
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->timestamp_:J

    return-wide v0
.end method

.method public hasAccuracy()Z
    .locals 2

    .prologue
    .line 1310
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
    .line 1626
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
    .line 1524
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

    .line 968
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
    .line 1214
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
    .line 1360
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
    .line 1469
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
    .line 1262
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
    .line 1065
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
    .line 1163
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
    .line 763
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
    .line 937
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 891
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Location;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 933
    :goto_0
    return-object p0

    .line 892
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Location;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 893
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 894
    #getter for: Lcom/google/googlex/glass/common/proto/Location;->id_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Location;->access$500(Lcom/google/googlex/glass/common/proto/Location;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->id_:Ljava/lang/Object;

    .line 895
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 897
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Location;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 898
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 899
    #getter for: Lcom/google/googlex/glass/common/proto/Location;->source_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Location;->access$600(Lcom/google/googlex/glass/common/proto/Location;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->source_:Ljava/lang/Object;

    .line 900
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 902
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Location;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 903
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Location;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/Location$Builder;->setTimestamp(J)Lcom/google/googlex/glass/common/proto/Location$Builder;

    .line 905
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Location;->hasLatitude()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 906
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/Location$Builder;->setLatitude(D)Lcom/google/googlex/glass/common/proto/Location$Builder;

    .line 908
    :cond_4
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Location;->hasLongitude()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 909
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/Location$Builder;->setLongitude(D)Lcom/google/googlex/glass/common/proto/Location$Builder;

    .line 911
    :cond_5
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 912
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Location;->getAccuracy()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/Location$Builder;->setAccuracy(D)Lcom/google/googlex/glass/common/proto/Location$Builder;

    .line 914
    :cond_6
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Location;->hasLevelId()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 915
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 916
    #getter for: Lcom/google/googlex/glass/common/proto/Location;->levelId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Location;->access$1100(Lcom/google/googlex/glass/common/proto/Location;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->levelId_:Ljava/lang/Object;

    .line 917
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 919
    :cond_7
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Location;->hasLevelNumber()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 920
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Location;->getLevelNumber()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->setLevelNumber(F)Lcom/google/googlex/glass/common/proto/Location$Builder;

    .line 922
    :cond_8
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Location;->hasDisplayName()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 923
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 924
    #getter for: Lcom/google/googlex/glass/common/proto/Location;->displayName_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Location;->access$1300(Lcom/google/googlex/glass/common/proto/Location;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->displayName_:Ljava/lang/Object;

    .line 925
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 927
    :cond_9
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Location;->hasAddress()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 928
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 929
    #getter for: Lcom/google/googlex/glass/common/proto/Location;->address_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Location;->access$1400(Lcom/google/googlex/glass/common/proto/Location;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->address_:Ljava/lang/Object;

    .line 930
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 932
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
    .line 944
    const/4 v2, 0x0

    .line 946
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

    .line 951
    if-eqz v2, :cond_0

    .line 952
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/Location$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/Location$Builder;

    .line 955
    :cond_0
    return-object p0

    .line 947
    :catch_0
    move-exception v1

    .line 948
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/Location;

    move-object v2, v0

    .line 949
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 951
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 952
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/Location$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/Location$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 882
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/Location;

    if-eqz v0, :cond_0

    .line 883
    check-cast p1, Lcom/google/googlex/glass/common/proto/Location;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Location$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Location;)Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object p0

    .line 886
    .end local p0
    :goto_0
    return-object p0

    .line 885
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
    .line 752
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Location$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 752
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
    .line 752
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
    .line 752
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Location$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 752
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
    .line 752
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Location$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAccuracy(D)Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1330
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1331
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->accuracy_:D

    .line 1332
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1333
    return-object p0
.end method

.method public setAddress(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1675
    if-nez p1, :cond_0

    .line 1676
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1678
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1679
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->address_:Ljava/lang/Object;

    .line 1680
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1681
    return-object p0
.end method

.method public setAddressBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1705
    if-nez p1, :cond_0

    .line 1706
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1708
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1709
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->address_:Ljava/lang/Object;

    .line 1710
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1711
    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1576
    if-nez p1, :cond_0

    .line 1577
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1579
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1580
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->displayName_:Ljava/lang/Object;

    .line 1581
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1582
    return-object p0
.end method

.method public setDisplayNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1608
    if-nez p1, :cond_0

    .line 1609
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1611
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1612
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->displayName_:Ljava/lang/Object;

    .line 1613
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1614
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1017
    if-nez p1, :cond_0

    .line 1018
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1020
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1021
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->id_:Ljava/lang/Object;

    .line 1022
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1023
    return-object p0
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1047
    if-nez p1, :cond_0

    .line 1048
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1050
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1051
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->id_:Ljava/lang/Object;

    .line 1052
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1053
    return-object p0
.end method

.method public setLatitude(D)Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1234
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1235
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->latitude_:D

    .line 1236
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1237
    return-object p0
.end method

.method public setLevelId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1415
    if-nez p1, :cond_0

    .line 1416
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1418
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1419
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->levelId_:Ljava/lang/Object;

    .line 1420
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1421
    return-object p0
.end method

.method public setLevelIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1449
    if-nez p1, :cond_0

    .line 1450
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1452
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1453
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->levelId_:Ljava/lang/Object;

    .line 1454
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1455
    return-object p0
.end method

.method public setLevelNumber(F)Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1493
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1494
    iput p1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->levelNumber_:F

    .line 1495
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1496
    return-object p0
.end method

.method public setLongitude(D)Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1282
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1283
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->longitude_:D

    .line 1284
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1285
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1114
    if-nez p1, :cond_0

    .line 1115
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1117
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1118
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->source_:Ljava/lang/Object;

    .line 1119
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1120
    return-object p0
.end method

.method public setSourceBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1144
    if-nez p1, :cond_0

    .line 1145
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1147
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1148
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->source_:Ljava/lang/Object;

    .line 1149
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1150
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/googlex/glass/common/proto/Location$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1185
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->bitField0_:I

    .line 1186
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/Location$Builder;->timestamp_:J

    .line 1187
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Location$Builder;->onChanged()V

    .line 1188
    return-object p0
.end method
