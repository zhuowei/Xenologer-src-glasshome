.class public final Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ApkGlasswareMetadata.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$VersionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$VersionOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private label_:Ljava/lang/Object;

.field private uploadTimestamp_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 512
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 622
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->label_:Ljava/lang/Object;

    .line 513
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->maybeForceBuilderInitialization()V

    .line 514
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 518
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 622
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->label_:Ljava/lang/Object;

    .line 519
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->maybeForceBuilderInitialization()V

    .line 520
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 495
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;
    .locals 1

    .prologue
    .line 495
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->create()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;
    .locals 1

    .prologue
    .line 526
    new-instance v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 501
    sget-object v0, Lcom/google/googlex/glass/common/proto/Glassware;->internal_static_googlex_glass_common_proto_ApkGlasswareMetadata_Version_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 522
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;
    .locals 2

    .prologue
    .line 552
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    move-result-object v0

    .line 553
    .local v0, result:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 554
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 556
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->build()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->build()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;
    .locals 5

    .prologue
    .line 560
    new-instance v1, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$1;)V

    .line 561
    .local v1, result:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->bitField0_:I

    .line 562
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 563
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 564
    or-int/lit8 v2, v2, 0x1

    .line 566
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->label_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->label_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->access$602(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 568
    or-int/lit8 v2, v2, 0x2

    .line 570
    :cond_1
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->uploadTimestamp_:J

    #setter for: Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->uploadTimestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->access$702(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;J)J

    .line 571
    #setter for: Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->access$802(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;I)I

    .line 572
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->onBuilt()V

    .line 573
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;
    .locals 2

    .prologue
    .line 530
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 531
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->label_:Ljava/lang/Object;

    .line 532
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->bitField0_:I

    .line 533
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->uploadTimestamp_:J

    .line 534
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->bitField0_:I

    .line 535
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->clear()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->clear()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->clear()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->clear()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearLabel()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;
    .locals 1

    .prologue
    .line 709
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->bitField0_:I

    .line 710
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->label_:Ljava/lang/Object;

    .line 711
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->onChanged()V

    .line 712
    return-object p0
.end method

.method public clearUploadTimestamp()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;
    .locals 2

    .prologue
    .line 776
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->bitField0_:I

    .line 777
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->uploadTimestamp_:J

    .line 778
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->onChanged()V

    .line 779
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;
    .locals 2

    .prologue
    .line 539
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->create()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->clone()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->clone()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->clone()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->clone()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->clone()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;

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
    .line 495
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->clone()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;
    .locals 1

    .prologue
    .line 548
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 544
    sget-object v0, Lcom/google/googlex/glass/common/proto/Glassware;->internal_static_googlex_glass_common_proto_ApkGlasswareMetadata_Version_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 645
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->label_:Ljava/lang/Object;

    .line 646
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 647
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 649
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 650
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 651
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->label_:Ljava/lang/Object;

    .line 655
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

.method public getLabelBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 669
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->label_:Ljava/lang/Object;

    .line 670
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 671
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 674
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->label_:Ljava/lang/Object;

    .line 677
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

.method public getUploadTimestamp()J
    .locals 2

    .prologue
    .line 753
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->uploadTimestamp_:J

    return-wide v0
.end method

.method public hasLabel()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 633
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUploadTimestamp()Z
    .locals 2

    .prologue
    .line 743
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->bitField0_:I

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
    .line 506
    sget-object v0, Lcom/google/googlex/glass/common/proto/Glassware;->internal_static_googlex_glass_common_proto_ApkGlasswareMetadata_Version_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    const-class v2, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 600
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 586
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 596
    :goto_0
    return-object p0

    .line 587
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 588
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->bitField0_:I

    .line 589
    #getter for: Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->label_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->access$600(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->label_:Ljava/lang/Object;

    .line 590
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->onChanged()V

    .line 592
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->hasUploadTimestamp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 593
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->getUploadTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->setUploadTimestamp(J)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;

    .line 595
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 607
    const/4 v2, 0x0

    .line 609
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    if-eqz v2, :cond_0

    .line 615
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;

    .line 618
    :cond_0
    return-object p0

    .line 610
    :catch_0
    move-exception v1

    .line 611
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    move-object v2, v0

    .line 612
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 614
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 615
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 577
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    if-eqz v0, :cond_0

    .line 578
    check-cast p1, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;

    move-result-object p0

    .line 581
    .end local p0
    :goto_0
    return-object p0

    .line 580
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
    .line 495
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 495
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;

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
    .line 495
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;

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
    .line 495
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 495
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;

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
    .line 495
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 691
    if-nez p1, :cond_0

    .line 692
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 694
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->bitField0_:I

    .line 695
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->label_:Ljava/lang/Object;

    .line 696
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->onChanged()V

    .line 697
    return-object p0
.end method

.method public setLabelBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 725
    if-nez p1, :cond_0

    .line 726
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 728
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->bitField0_:I

    .line 729
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->label_:Ljava/lang/Object;

    .line 730
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->onChanged()V

    .line 731
    return-object p0
.end method

.method public setUploadTimestamp(J)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 763
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->bitField0_:I

    .line 764
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->uploadTimestamp_:J

    .line 765
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->onChanged()V

    .line 766
    return-object p0
.end method
