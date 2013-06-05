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
    .line 735
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 902
    const-string v0, "en_US"

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->locale_:Ljava/lang/Object;

    .line 1011
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->name_:Ljava/lang/Object;

    .line 1108
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->description_:Ljava/lang/Object;

    .line 1211
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->shortDescription_:Ljava/lang/Object;

    .line 1320
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->moreInfoTitle_:Ljava/lang/Object;

    .line 1423
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->permissions_:Ljava/lang/Object;

    .line 1532
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->speakableName_:Ljava/lang/Object;

    .line 736
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->maybeForceBuilderInitialization()V

    .line 737
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 741
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 902
    const-string v0, "en_US"

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->locale_:Ljava/lang/Object;

    .line 1011
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->name_:Ljava/lang/Object;

    .line 1108
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->description_:Ljava/lang/Object;

    .line 1211
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->shortDescription_:Ljava/lang/Object;

    .line 1320
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->moreInfoTitle_:Ljava/lang/Object;

    .line 1423
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->permissions_:Ljava/lang/Object;

    .line 1532
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->speakableName_:Ljava/lang/Object;

    .line 742
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->maybeForceBuilderInitialization()V

    .line 743
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/GlasswareMessages$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 718
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1

    .prologue
    .line 718
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->create()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1

    .prologue
    .line 749
    new-instance v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 724
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryOuterClass;->internal_static_googlex_glass_common_proto_GlasswareMessages_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 745
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/GlasswareMessages;
    .locals 2

    .prologue
    .line 785
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v0

    .line 786
    .local v0, result:Lcom/google/googlex/glass/common/proto/GlasswareMessages;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 787
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 789
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 718
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->build()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 718
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->build()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/GlasswareMessages;
    .locals 5

    .prologue
    .line 793
    new-instance v1, Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/GlasswareMessages$1;)V

    .line 794
    .local v1, result:Lcom/google/googlex/glass/common/proto/GlasswareMessages;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 795
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 796
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 797
    or-int/lit8 v2, v2, 0x1

    .line 799
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->locale_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareMessages;->locale_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->access$502(Lcom/google/googlex/glass/common/proto/GlasswareMessages;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 801
    or-int/lit8 v2, v2, 0x2

    .line 803
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareMessages;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->access$602(Lcom/google/googlex/glass/common/proto/GlasswareMessages;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 805
    or-int/lit8 v2, v2, 0x4

    .line 807
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->description_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareMessages;->description_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->access$702(Lcom/google/googlex/glass/common/proto/GlasswareMessages;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 809
    or-int/lit8 v2, v2, 0x8

    .line 811
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->shortDescription_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareMessages;->shortDescription_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->access$802(Lcom/google/googlex/glass/common/proto/GlasswareMessages;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 813
    or-int/lit8 v2, v2, 0x10

    .line 815
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->moreInfoTitle_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareMessages;->moreInfoTitle_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->access$902(Lcom/google/googlex/glass/common/proto/GlasswareMessages;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 817
    or-int/lit8 v2, v2, 0x20

    .line 819
    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->permissions_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareMessages;->permissions_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->access$1002(Lcom/google/googlex/glass/common/proto/GlasswareMessages;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 821
    or-int/lit8 v2, v2, 0x40

    .line 823
    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->speakableName_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareMessages;->speakableName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->access$1102(Lcom/google/googlex/glass/common/proto/GlasswareMessages;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareMessages;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->access$1202(Lcom/google/googlex/glass/common/proto/GlasswareMessages;I)I

    .line 825
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onBuilt()V

    .line 826
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 718
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 718
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1

    .prologue
    .line 753
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 754
    const-string v0, "en_US"

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->locale_:Ljava/lang/Object;

    .line 755
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 756
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->name_:Ljava/lang/Object;

    .line 757
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 758
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->description_:Ljava/lang/Object;

    .line 759
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 760
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->shortDescription_:Ljava/lang/Object;

    .line 761
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 762
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->moreInfoTitle_:Ljava/lang/Object;

    .line 763
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 764
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->permissions_:Ljava/lang/Object;

    .line 765
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 766
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->speakableName_:Ljava/lang/Object;

    .line 767
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 768
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 718
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->clear()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 718
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->clear()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 718
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->clear()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 718
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->clear()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDescription()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1

    .prologue
    .line 1187
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 1188
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->description_:Ljava/lang/Object;

    .line 1189
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 1190
    return-object p0
.end method

.method public clearLocale()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1

    .prologue
    .line 986
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 987
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getLocale()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->locale_:Ljava/lang/Object;

    .line 988
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 989
    return-object p0
.end method

.method public clearMoreInfoTitle()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1

    .prologue
    .line 1399
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 1400
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getMoreInfoTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->moreInfoTitle_:Ljava/lang/Object;

    .line 1401
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 1402
    return-object p0
.end method

.method public clearName()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1

    .prologue
    .line 1085
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 1086
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->name_:Ljava/lang/Object;

    .line 1087
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 1088
    return-object p0
.end method

.method public clearPermissions()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1

    .prologue
    .line 1507
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 1508
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getPermissions()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->permissions_:Ljava/lang/Object;

    .line 1509
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 1510
    return-object p0
.end method

.method public clearShortDescription()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1

    .prologue
    .line 1295
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 1296
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getShortDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->shortDescription_:Ljava/lang/Object;

    .line 1297
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 1298
    return-object p0
.end method

.method public clearSpeakableName()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1

    .prologue
    .line 1611
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 1612
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getSpeakableName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->speakableName_:Ljava/lang/Object;

    .line 1613
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 1614
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 2

    .prologue
    .line 772
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
    .line 718
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->clone()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 718
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->clone()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 718
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->clone()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 718
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->clone()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 718
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
    .line 718
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->clone()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GlasswareMessages;
    .locals 1

    .prologue
    .line 781
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 718
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 718
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->description_:Ljava/lang/Object;

    .line 1130
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1131
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1133
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->description_:Ljava/lang/Object;

    .line 1136
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

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1149
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->description_:Ljava/lang/Object;

    .line 1150
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1151
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1154
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->description_:Ljava/lang/Object;

    .line 1157
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
    .line 777
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryOuterClass;->internal_static_googlex_glass_common_proto_GlasswareMessages_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 3

    .prologue
    .line 925
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->locale_:Ljava/lang/Object;

    .line 926
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 927
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 929
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->locale_:Ljava/lang/Object;

    .line 932
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

.method public getLocaleBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 946
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->locale_:Ljava/lang/Object;

    .line 947
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 948
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 951
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->locale_:Ljava/lang/Object;

    .line 954
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
    .locals 3

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->moreInfoTitle_:Ljava/lang/Object;

    .line 1342
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1343
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1345
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->moreInfoTitle_:Ljava/lang/Object;

    .line 1348
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

.method public getMoreInfoTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1361
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->moreInfoTitle_:Ljava/lang/Object;

    .line 1362
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1363
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1366
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->moreInfoTitle_:Ljava/lang/Object;

    .line 1369
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
    .locals 3

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->name_:Ljava/lang/Object;

    .line 1031
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1032
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1034
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->name_:Ljava/lang/Object;

    .line 1037
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

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1049
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->name_:Ljava/lang/Object;

    .line 1050
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1051
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1054
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->name_:Ljava/lang/Object;

    .line 1057
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
    .locals 3

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->permissions_:Ljava/lang/Object;

    .line 1447
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1448
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1450
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->permissions_:Ljava/lang/Object;

    .line 1453
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

.method public getPermissionsBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1467
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->permissions_:Ljava/lang/Object;

    .line 1468
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1469
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1472
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->permissions_:Ljava/lang/Object;

    .line 1475
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
    .locals 3

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->shortDescription_:Ljava/lang/Object;

    .line 1235
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1236
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1238
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->shortDescription_:Ljava/lang/Object;

    .line 1241
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

.method public getShortDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1255
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->shortDescription_:Ljava/lang/Object;

    .line 1256
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1257
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1260
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->shortDescription_:Ljava/lang/Object;

    .line 1263
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
    .locals 3

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->speakableName_:Ljava/lang/Object;

    .line 1554
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1555
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1557
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->speakableName_:Ljava/lang/Object;

    .line 1560
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

.method public getSpeakableNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1573
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->speakableName_:Ljava/lang/Object;

    .line 1574
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1575
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1578
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->speakableName_:Ljava/lang/Object;

    .line 1581
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
    .line 1118
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

    .line 913
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
    .line 1330
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
    .line 1020
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
    .line 1434
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
    .line 1222
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
    .line 1542
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
    .line 729
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
    .line 880
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/GlasswareMessages;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 839
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 876
    :goto_0
    return-object p0

    .line 840
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->hasLocale()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 841
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 842
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareMessages;->locale_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->access$500(Lcom/google/googlex/glass/common/proto/GlasswareMessages;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->locale_:Ljava/lang/Object;

    .line 843
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 845
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->hasName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 846
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 847
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareMessages;->name_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->access$600(Lcom/google/googlex/glass/common/proto/GlasswareMessages;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->name_:Ljava/lang/Object;

    .line 848
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 850
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->hasDescription()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 851
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 852
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareMessages;->description_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->access$700(Lcom/google/googlex/glass/common/proto/GlasswareMessages;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->description_:Ljava/lang/Object;

    .line 853
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 855
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->hasShortDescription()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 856
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 857
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareMessages;->shortDescription_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->access$800(Lcom/google/googlex/glass/common/proto/GlasswareMessages;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->shortDescription_:Ljava/lang/Object;

    .line 858
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 860
    :cond_4
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->hasMoreInfoTitle()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 861
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 862
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareMessages;->moreInfoTitle_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->access$900(Lcom/google/googlex/glass/common/proto/GlasswareMessages;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->moreInfoTitle_:Ljava/lang/Object;

    .line 863
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 865
    :cond_5
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->hasPermissions()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 866
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 867
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareMessages;->permissions_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->access$1000(Lcom/google/googlex/glass/common/proto/GlasswareMessages;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->permissions_:Ljava/lang/Object;

    .line 868
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 870
    :cond_6
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->hasSpeakableName()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 871
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 872
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareMessages;->speakableName_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->access$1100(Lcom/google/googlex/glass/common/proto/GlasswareMessages;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->speakableName_:Ljava/lang/Object;

    .line 873
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 875
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
    .line 887
    const/4 v2, 0x0

    .line 889
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

    .line 894
    if-eqz v2, :cond_0

    .line 895
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GlasswareMessages;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    .line 898
    :cond_0
    return-object p0

    .line 890
    :catch_0
    move-exception v1

    .line 891
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-object v2, v0

    .line 892
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 894
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 895
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GlasswareMessages;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 830
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    if-eqz v0, :cond_0

    .line 831
    check-cast p1, Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GlasswareMessages;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    move-result-object p0

    .line 834
    .end local p0
    :goto_0
    return-object p0

    .line 833
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
    .line 718
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 718
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
    .line 718
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
    .line 718
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 718
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
    .line 718
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1170
    if-nez p1, :cond_0

    .line 1171
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1173
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 1174
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->description_:Ljava/lang/Object;

    .line 1175
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 1176
    return-object p0
.end method

.method public setDescriptionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1202
    if-nez p1, :cond_0

    .line 1203
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1205
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 1206
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->description_:Ljava/lang/Object;

    .line 1207
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 1208
    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 968
    if-nez p1, :cond_0

    .line 969
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 971
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 972
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->locale_:Ljava/lang/Object;

    .line 973
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 974
    return-object p0
.end method

.method public setLocaleBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1002
    if-nez p1, :cond_0

    .line 1003
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1005
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 1006
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->locale_:Ljava/lang/Object;

    .line 1007
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 1008
    return-object p0
.end method

.method public setMoreInfoTitle(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1382
    if-nez p1, :cond_0

    .line 1383
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1385
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 1386
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->moreInfoTitle_:Ljava/lang/Object;

    .line 1387
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 1388
    return-object p0
.end method

.method public setMoreInfoTitleBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1414
    if-nez p1, :cond_0

    .line 1415
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1417
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 1418
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->moreInfoTitle_:Ljava/lang/Object;

    .line 1419
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 1420
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1069
    if-nez p1, :cond_0

    .line 1070
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1072
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 1073
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->name_:Ljava/lang/Object;

    .line 1074
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 1075
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1099
    if-nez p1, :cond_0

    .line 1100
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1102
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 1103
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->name_:Ljava/lang/Object;

    .line 1104
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 1105
    return-object p0
.end method

.method public setPermissions(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1489
    if-nez p1, :cond_0

    .line 1490
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1492
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 1493
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->permissions_:Ljava/lang/Object;

    .line 1494
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 1495
    return-object p0
.end method

.method public setPermissionsBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1523
    if-nez p1, :cond_0

    .line 1524
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1526
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 1527
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->permissions_:Ljava/lang/Object;

    .line 1528
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 1529
    return-object p0
.end method

.method public setShortDescription(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1277
    if-nez p1, :cond_0

    .line 1278
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1280
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 1281
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->shortDescription_:Ljava/lang/Object;

    .line 1282
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 1283
    return-object p0
.end method

.method public setShortDescriptionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1311
    if-nez p1, :cond_0

    .line 1312
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1314
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 1315
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->shortDescription_:Ljava/lang/Object;

    .line 1316
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 1317
    return-object p0
.end method

.method public setSpeakableName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1594
    if-nez p1, :cond_0

    .line 1595
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1597
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 1598
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->speakableName_:Ljava/lang/Object;

    .line 1599
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 1600
    return-object p0
.end method

.method public setSpeakableNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1626
    if-nez p1, :cond_0

    .line 1627
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1629
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->bitField0_:I

    .line 1630
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->speakableName_:Ljava/lang/Object;

    .line 1631
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->onChanged()V

    .line 1632
    return-object p0
.end method
