.class public final Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "GlasswareMessages.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/GlasswareMessagesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/GlasswareMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/GlasswareMessagesOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private description_:Ljava/lang/Object;

.field private locale_:Ljava/lang/Object;

.field private moreInfoTitle_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private permissions_:Ljava/lang/Object;

.field private shortDescription_:Ljava/lang/Object;

.field private speakableName_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 742
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 909
    const-string v0, "en_US"

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->locale_:Ljava/lang/Object;

    .line 1021
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->name_:Ljava/lang/Object;

    .line 1121
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->description_:Ljava/lang/Object;

    .line 1227
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->shortDescription_:Ljava/lang/Object;

    .line 1339
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->moreInfoTitle_:Ljava/lang/Object;

    .line 1445
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->permissions_:Ljava/lang/Object;

    .line 1557
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->speakableName_:Ljava/lang/Object;

    .line 743
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->maybeForceBuilderInitialization()V

    .line 744
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 748
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 909
    const-string v0, "en_US"

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->locale_:Ljava/lang/Object;

    .line 1021
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->name_:Ljava/lang/Object;

    .line 1121
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->description_:Ljava/lang/Object;

    .line 1227
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->shortDescription_:Ljava/lang/Object;

    .line 1339
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->moreInfoTitle_:Ljava/lang/Object;

    .line 1445
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->permissions_:Ljava/lang/Object;

    .line 1557
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->speakableName_:Ljava/lang/Object;

    .line 749
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->maybeForceBuilderInitialization()V

    .line 750
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/GlasswareMessages$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 725
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1

    .prologue
    .line 725
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->create()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1

    .prologue
    .line 756
    new-instance v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 731
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryOuterClass;->internal_static_googlex_glass_common_proto_GlasswareMessages_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 752
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/GlasswareMessages;
    .locals 2

    .prologue
    .line 792
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v0

    .line 793
    .local v0, result:Lcom/google/googlex/glass/common/proto/GlasswareMessages;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 794
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 796
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->build()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->build()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/GlasswareMessages;
    .locals 5

    .prologue
    .line 800
    new-instance v1, Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/GlasswareMessages$1;)V

    .line 801
    .local v1, result:Lcom/google/googlex/glass/common/proto/GlasswareMessages;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 802
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 803
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 804
    or-int/lit8 v2, v2, 0x1

    .line 806
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->locale_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareMessages;->locale_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->access$502(Lcom/google/googlex/glass/common/proto/GlasswareMessages;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 808
    or-int/lit8 v2, v2, 0x2

    .line 810
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareMessages;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->access$602(Lcom/google/googlex/glass/common/proto/GlasswareMessages;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 812
    or-int/lit8 v2, v2, 0x4

    .line 814
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->description_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareMessages;->description_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->access$702(Lcom/google/googlex/glass/common/proto/GlasswareMessages;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 816
    or-int/lit8 v2, v2, 0x8

    .line 818
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->shortDescription_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareMessages;->shortDescription_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->access$802(Lcom/google/googlex/glass/common/proto/GlasswareMessages;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 820
    or-int/lit8 v2, v2, 0x10

    .line 822
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->moreInfoTitle_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareMessages;->moreInfoTitle_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->access$902(Lcom/google/googlex/glass/common/proto/GlasswareMessages;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 824
    or-int/lit8 v2, v2, 0x20

    .line 826
    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->permissions_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareMessages;->permissions_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->access$1002(Lcom/google/googlex/glass/common/proto/GlasswareMessages;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 828
    or-int/lit8 v2, v2, 0x40

    .line 830
    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->speakableName_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareMessages;->speakableName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->access$1102(Lcom/google/googlex/glass/common/proto/GlasswareMessages;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareMessages;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->access$1202(Lcom/google/googlex/glass/common/proto/GlasswareMessages;I)I

    .line 832
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onBuilt()V

    .line 833
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1

    .prologue
    .line 760
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 761
    const-string v0, "en_US"

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->locale_:Ljava/lang/Object;

    .line 762
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 763
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->name_:Ljava/lang/Object;

    .line 764
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 765
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->description_:Ljava/lang/Object;

    .line 766
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 767
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->shortDescription_:Ljava/lang/Object;

    .line 768
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 769
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->moreInfoTitle_:Ljava/lang/Object;

    .line 770
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 771
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->permissions_:Ljava/lang/Object;

    .line 772
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 773
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->speakableName_:Ljava/lang/Object;

    .line 774
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 775
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->clear()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->clear()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->clear()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->clear()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDescription()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1

    .prologue
    .line 1203
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 1204
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->description_:Ljava/lang/Object;

    .line 1205
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 1206
    return-object p0
.end method

.method public clearLocale()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1

    .prologue
    .line 996
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 997
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getLocale()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->locale_:Ljava/lang/Object;

    .line 998
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 999
    return-object p0
.end method

.method public clearMoreInfoTitle()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1

    .prologue
    .line 1421
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 1422
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getMoreInfoTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->moreInfoTitle_:Ljava/lang/Object;

    .line 1423
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 1424
    return-object p0
.end method

.method public clearName()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1

    .prologue
    .line 1098
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 1099
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->name_:Ljava/lang/Object;

    .line 1100
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 1101
    return-object p0
.end method

.method public clearPermissions()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1

    .prologue
    .line 1532
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 1533
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getPermissions()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->permissions_:Ljava/lang/Object;

    .line 1534
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 1535
    return-object p0
.end method

.method public clearShortDescription()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1

    .prologue
    .line 1314
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 1315
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getShortDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->shortDescription_:Ljava/lang/Object;

    .line 1316
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 1317
    return-object p0
.end method

.method public clearSpeakableName()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1

    .prologue
    .line 1639
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 1640
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getSpeakableName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->speakableName_:Ljava/lang/Object;

    .line 1641
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 1642
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 2

    .prologue
    .line 779
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->create()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GlasswareMessages;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->clone()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->clone()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->clone()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->clone()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->clone()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

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
    .line 725
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->clone()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GlasswareMessages;
    .locals 1

    .prologue
    .line 788
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1142
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->description_:Ljava/lang/Object;

    .line 1143
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1144
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1146
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1147
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1148
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->description_:Ljava/lang/Object;

    .line 1152
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

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1165
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->description_:Ljava/lang/Object;

    .line 1166
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1167
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1170
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->description_:Ljava/lang/Object;

    .line 1173
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

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 784
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryOuterClass;->internal_static_googlex_glass_common_proto_GlasswareMessages_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 4

    .prologue
    .line 932
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->locale_:Ljava/lang/Object;

    .line 933
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 934
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 936
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 937
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 938
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->locale_:Ljava/lang/Object;

    .line 942
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

.method public getLocaleBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 956
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->locale_:Ljava/lang/Object;

    .line 957
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 958
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 961
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->locale_:Ljava/lang/Object;

    .line 964
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

.method public getMoreInfoTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1360
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->moreInfoTitle_:Ljava/lang/Object;

    .line 1361
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1362
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1364
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1365
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1366
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->moreInfoTitle_:Ljava/lang/Object;

    .line 1370
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

.method public getMoreInfoTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1383
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->moreInfoTitle_:Ljava/lang/Object;

    .line 1384
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1385
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1388
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->moreInfoTitle_:Ljava/lang/Object;

    .line 1391
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

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1040
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->name_:Ljava/lang/Object;

    .line 1041
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1042
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1044
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1045
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1046
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->name_:Ljava/lang/Object;

    .line 1050
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

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1062
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->name_:Ljava/lang/Object;

    .line 1063
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1064
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1067
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->name_:Ljava/lang/Object;

    .line 1070
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

.method public getPermissions()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1468
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->permissions_:Ljava/lang/Object;

    .line 1469
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1470
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1472
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1473
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1474
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->permissions_:Ljava/lang/Object;

    .line 1478
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

.method public getPermissionsBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1492
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->permissions_:Ljava/lang/Object;

    .line 1493
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1494
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1497
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->permissions_:Ljava/lang/Object;

    .line 1500
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

.method public getShortDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1250
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->shortDescription_:Ljava/lang/Object;

    .line 1251
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1252
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1254
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1255
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1256
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->shortDescription_:Ljava/lang/Object;

    .line 1260
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

.method public getShortDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1274
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->shortDescription_:Ljava/lang/Object;

    .line 1275
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1276
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1279
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->shortDescription_:Ljava/lang/Object;

    .line 1282
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

.method public getSpeakableName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1578
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->speakableName_:Ljava/lang/Object;

    .line 1579
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1580
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1582
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1583
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1584
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->speakableName_:Ljava/lang/Object;

    .line 1588
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

.method public getSpeakableNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1601
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->speakableName_:Ljava/lang/Object;

    .line 1602
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1603
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1606
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->speakableName_:Ljava/lang/Object;

    .line 1609
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

.method public hasDescription()Z
    .locals 2

    .prologue
    .line 1131
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

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

.method public hasLocale()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 920
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMoreInfoTitle()Z
    .locals 2

    .prologue
    .line 1349
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    .prologue
    .line 1030
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

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

.method public hasPermissions()Z
    .locals 2

    .prologue
    .line 1456
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

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

.method public hasShortDescription()Z
    .locals 2

    .prologue
    .line 1238
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

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

.method public hasSpeakableName()Z
    .locals 2

    .prologue
    .line 1567
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 736
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryOuterClass;->internal_static_googlex_glass_common_proto_GlasswareMessages_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    const-class v2, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 887
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/GlasswareMessages;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 846
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 883
    :goto_0
    return-object p0

    .line 847
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->hasLocale()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 848
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 849
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareMessages;->locale_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->access$500(Lcom/google/googlex/glass/common/proto/GlasswareMessages;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->locale_:Ljava/lang/Object;

    .line 850
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 852
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->hasName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 853
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 854
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareMessages;->name_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->access$600(Lcom/google/googlex/glass/common/proto/GlasswareMessages;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->name_:Ljava/lang/Object;

    .line 855
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 857
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->hasDescription()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 858
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 859
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareMessages;->description_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->access$700(Lcom/google/googlex/glass/common/proto/GlasswareMessages;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->description_:Ljava/lang/Object;

    .line 860
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 862
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->hasShortDescription()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 863
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 864
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareMessages;->shortDescription_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->access$800(Lcom/google/googlex/glass/common/proto/GlasswareMessages;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->shortDescription_:Ljava/lang/Object;

    .line 865
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 867
    :cond_4
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->hasMoreInfoTitle()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 868
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 869
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareMessages;->moreInfoTitle_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->access$900(Lcom/google/googlex/glass/common/proto/GlasswareMessages;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->moreInfoTitle_:Ljava/lang/Object;

    .line 870
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 872
    :cond_5
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->hasPermissions()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 873
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 874
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareMessages;->permissions_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->access$1000(Lcom/google/googlex/glass/common/proto/GlasswareMessages;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->permissions_:Ljava/lang/Object;

    .line 875
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 877
    :cond_6
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->hasSpeakableName()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 878
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 879
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareMessages;->speakableName_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->access$1100(Lcom/google/googlex/glass/common/proto/GlasswareMessages;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->speakableName_:Ljava/lang/Object;

    .line 880
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 882
    :cond_7
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 894
    const/4 v2, 0x0

    .line 896
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/GlasswareMessages;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 901
    if-eqz v2, :cond_0

    .line 902
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GlasswareMessages;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    .line 905
    :cond_0
    return-object p0

    .line 897
    :catch_0
    move-exception v1

    .line 898
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-object v2, v0

    .line 899
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 901
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 902
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GlasswareMessages;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 837
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    if-eqz v0, :cond_0

    .line 838
    check-cast p1, Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GlasswareMessages;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    move-result-object p0

    .line 841
    .end local p0
    :goto_0
    return-object p0

    .line 840
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
    .line 725
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 725
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

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
    .line 725
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

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
    .line 725
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 725
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

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
    .line 725
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1186
    if-nez p1, :cond_0

    .line 1187
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1189
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 1190
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->description_:Ljava/lang/Object;

    .line 1191
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 1192
    return-object p0
.end method

.method public setDescriptionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1218
    if-nez p1, :cond_0

    .line 1219
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1221
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 1222
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->description_:Ljava/lang/Object;

    .line 1223
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 1224
    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 978
    if-nez p1, :cond_0

    .line 979
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 981
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 982
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->locale_:Ljava/lang/Object;

    .line 983
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 984
    return-object p0
.end method

.method public setLocaleBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1012
    if-nez p1, :cond_0

    .line 1013
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1015
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 1016
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->locale_:Ljava/lang/Object;

    .line 1017
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 1018
    return-object p0
.end method

.method public setMoreInfoTitle(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1404
    if-nez p1, :cond_0

    .line 1405
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1407
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 1408
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->moreInfoTitle_:Ljava/lang/Object;

    .line 1409
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 1410
    return-object p0
.end method

.method public setMoreInfoTitleBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1436
    if-nez p1, :cond_0

    .line 1437
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1439
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 1440
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->moreInfoTitle_:Ljava/lang/Object;

    .line 1441
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 1442
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1082
    if-nez p1, :cond_0

    .line 1083
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1085
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 1086
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->name_:Ljava/lang/Object;

    .line 1087
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 1088
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1112
    if-nez p1, :cond_0

    .line 1113
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1115
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 1116
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->name_:Ljava/lang/Object;

    .line 1117
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 1118
    return-object p0
.end method

.method public setPermissions(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1514
    if-nez p1, :cond_0

    .line 1515
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1517
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 1518
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->permissions_:Ljava/lang/Object;

    .line 1519
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 1520
    return-object p0
.end method

.method public setPermissionsBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1548
    if-nez p1, :cond_0

    .line 1549
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1551
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 1552
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->permissions_:Ljava/lang/Object;

    .line 1553
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 1554
    return-object p0
.end method

.method public setShortDescription(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1296
    if-nez p1, :cond_0

    .line 1297
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1299
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 1300
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->shortDescription_:Ljava/lang/Object;

    .line 1301
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 1302
    return-object p0
.end method

.method public setShortDescriptionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1330
    if-nez p1, :cond_0

    .line 1331
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1333
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 1334
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->shortDescription_:Ljava/lang/Object;

    .line 1335
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 1336
    return-object p0
.end method

.method public setSpeakableName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1622
    if-nez p1, :cond_0

    .line 1623
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1625
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 1626
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->speakableName_:Ljava/lang/Object;

    .line 1627
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 1628
    return-object p0
.end method

.method public setSpeakableNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1654
    if-nez p1, :cond_0

    .line 1655
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1657
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 1658
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->speakableName_:Ljava/lang/Object;

    .line 1659
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 1660
    return-object p0
.end method
