.class public final Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "InstalledGlassware.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private packageName_:Ljava/lang/Object;

.field private versionLabel_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 548
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 660
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->versionLabel_:Ljava/lang/Object;

    .line 760
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->packageName_:Ljava/lang/Object;

    .line 549
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->maybeForceBuilderInitialization()V

    .line 550
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 554
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 660
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->versionLabel_:Ljava/lang/Object;

    .line 760
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->packageName_:Ljava/lang/Object;

    .line 555
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->maybeForceBuilderInitialization()V

    .line 556
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/InstalledGlassware$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 531
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;
    .locals 1

    .prologue
    .line 531
    invoke-static {}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->create()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;
    .locals 1

    .prologue
    .line 562
    new-instance v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 537
    sget-object v0, Lcom/google/googlex/glass/common/proto/Boutique;->internal_static_googlex_glass_common_proto_InstalledGlassware_ApkMetadata_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 558
    invoke-static {}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;
    .locals 2

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    move-result-object v0

    .line 589
    .local v0, result:Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 590
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 592
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->build()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->build()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;
    .locals 5

    .prologue
    .line 596
    new-instance v1, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/InstalledGlassware$1;)V

    .line 597
    .local v1, result:Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->bitField0_:I

    .line 598
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 599
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 600
    or-int/lit8 v2, v2, 0x1

    .line 602
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->versionLabel_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->versionLabel_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->access$602(Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 604
    or-int/lit8 v2, v2, 0x2

    .line 606
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->packageName_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->packageName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->access$702(Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    #setter for: Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->access$802(Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;I)I

    .line 608
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->onBuilt()V

    .line 609
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;
    .locals 1

    .prologue
    .line 566
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 567
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->versionLabel_:Ljava/lang/Object;

    .line 568
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->bitField0_:I

    .line 569
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->packageName_:Ljava/lang/Object;

    .line 570
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->bitField0_:I

    .line 571
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->clear()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->clear()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->clear()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->clear()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearPackageName()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;
    .locals 1

    .prologue
    .line 837
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->bitField0_:I

    .line 838
    invoke-static {}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->packageName_:Ljava/lang/Object;

    .line 839
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->onChanged()V

    .line 840
    return-object p0
.end method

.method public clearVersionLabel()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;
    .locals 1

    .prologue
    .line 737
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->bitField0_:I

    .line 738
    invoke-static {}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->getVersionLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->versionLabel_:Ljava/lang/Object;

    .line 739
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->onChanged()V

    .line 740
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;
    .locals 2

    .prologue
    .line 575
    invoke-static {}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->create()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->clone()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->clone()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->clone()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->clone()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->clone()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;

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
    .line 531
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->clone()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;
    .locals 1

    .prologue
    .line 584
    invoke-static {}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 580
    sget-object v0, Lcom/google/googlex/glass/common/proto/Boutique;->internal_static_googlex_glass_common_proto_InstalledGlassware_ApkMetadata_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 779
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->packageName_:Ljava/lang/Object;

    .line 780
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 781
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 783
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 784
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 785
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->packageName_:Ljava/lang/Object;

    .line 789
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

.method public getPackageNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 801
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->packageName_:Ljava/lang/Object;

    .line 802
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 803
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 806
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->packageName_:Ljava/lang/Object;

    .line 809
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

.method public getVersionLabel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 679
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->versionLabel_:Ljava/lang/Object;

    .line 680
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 681
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 683
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 684
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 685
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->versionLabel_:Ljava/lang/Object;

    .line 689
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

.method public getVersionLabelBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 701
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->versionLabel_:Ljava/lang/Object;

    .line 702
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 703
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 706
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->versionLabel_:Ljava/lang/Object;

    .line 709
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

.method public hasPackageName()Z
    .locals 2

    .prologue
    .line 769
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->bitField0_:I

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

.method public hasVersionLabel()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 669
    iget v1, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->bitField0_:I

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
    .line 542
    sget-object v0, Lcom/google/googlex/glass/common/proto/Boutique;->internal_static_googlex_glass_common_proto_InstalledGlassware_ApkMetadata_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    const-class v2, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 638
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 622
    invoke-static {}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 634
    :goto_0
    return-object p0

    .line 623
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->hasVersionLabel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 624
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->bitField0_:I

    .line 625
    #getter for: Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->versionLabel_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->access$600(Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->versionLabel_:Ljava/lang/Object;

    .line 626
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->onChanged()V

    .line 628
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->hasPackageName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 629
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->bitField0_:I

    .line 630
    #getter for: Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->packageName_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->access$700(Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->packageName_:Ljava/lang/Object;

    .line 631
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->onChanged()V

    .line 633
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 645
    const/4 v2, 0x0

    .line 647
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    if-eqz v2, :cond_0

    .line 653
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;

    .line 656
    :cond_0
    return-object p0

    .line 648
    :catch_0
    move-exception v1

    .line 649
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    move-object v2, v0

    .line 650
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 652
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 653
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 613
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    if-eqz v0, :cond_0

    .line 614
    check-cast p1, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;

    move-result-object p0

    .line 617
    .end local p0
    :goto_0
    return-object p0

    .line 616
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
    .line 531
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 531
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;

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
    .line 531
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;

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
    .line 531
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 531
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;

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
    .line 531
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 821
    if-nez p1, :cond_0

    .line 822
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 824
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->bitField0_:I

    .line 825
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->packageName_:Ljava/lang/Object;

    .line 826
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->onChanged()V

    .line 827
    return-object p0
.end method

.method public setPackageNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 851
    if-nez p1, :cond_0

    .line 852
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 854
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->bitField0_:I

    .line 855
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->packageName_:Ljava/lang/Object;

    .line 856
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->onChanged()V

    .line 857
    return-object p0
.end method

.method public setVersionLabel(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 721
    if-nez p1, :cond_0

    .line 722
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 724
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->bitField0_:I

    .line 725
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->versionLabel_:Ljava/lang/Object;

    .line 726
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->onChanged()V

    .line 727
    return-object p0
.end method

.method public setVersionLabelBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 751
    if-nez p1, :cond_0

    .line 752
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 754
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->bitField0_:I

    .line 755
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->versionLabel_:Ljava/lang/Object;

    .line 756
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->onChanged()V

    .line 757
    return-object p0
.end method
