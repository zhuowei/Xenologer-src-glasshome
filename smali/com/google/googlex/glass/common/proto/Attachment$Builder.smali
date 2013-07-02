.class public final Lcom/google/googlex/glass/common/proto/Attachment$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Attachment.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/AttachmentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/Attachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/Attachment$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/AttachmentOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientCachePath_:Ljava/lang/Object;

.field private contentType_:Ljava/lang/Object;

.field private contentUrl_:Ljava/lang/Object;

.field private creationTime_:J

.field private id_:Ljava/lang/Object;

.field private isProcessingContent_:Z

.field private thumbnailUrl_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 661
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 824
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->id_:Ljava/lang/Object;

    .line 930
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentType_:Ljava/lang/Object;

    .line 1030
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentUrl_:Ljava/lang/Object;

    .line 1130
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 1230
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clientCachePath_:Ljava/lang/Object;

    .line 662
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->maybeForceBuilderInitialization()V

    .line 663
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 667
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 824
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->id_:Ljava/lang/Object;

    .line 930
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentType_:Ljava/lang/Object;

    .line 1030
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentUrl_:Ljava/lang/Object;

    .line 1130
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 1230
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clientCachePath_:Ljava/lang/Object;

    .line 668
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->maybeForceBuilderInitialization()V

    .line 669
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/Attachment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 644
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 1

    .prologue
    .line 644
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->create()Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 1

    .prologue
    .line 675
    new-instance v0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 650
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_Attachment_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 671
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Attachment;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/Attachment;
    .locals 2

    .prologue
    .line 711
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    .line 712
    .local v0, result:Lcom/google/googlex/glass/common/proto/Attachment;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Attachment;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 713
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 715
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->build()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->build()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/Attachment;
    .locals 5

    .prologue
    .line 719
    new-instance v1, Lcom/google/googlex/glass/common/proto/Attachment;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/Attachment;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/Attachment$1;)V

    .line 720
    .local v1, result:Lcom/google/googlex/glass/common/proto/Attachment;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 721
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 722
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 723
    or-int/lit8 v2, v2, 0x1

    .line 725
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Attachment;->id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Attachment;->access$502(Lcom/google/googlex/glass/common/proto/Attachment;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 727
    or-int/lit8 v2, v2, 0x2

    .line 729
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentType_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Attachment;->contentType_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Attachment;->access$602(Lcom/google/googlex/glass/common/proto/Attachment;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 731
    or-int/lit8 v2, v2, 0x4

    .line 733
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Attachment;->contentUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Attachment;->access$702(Lcom/google/googlex/glass/common/proto/Attachment;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 735
    or-int/lit8 v2, v2, 0x8

    .line 737
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->thumbnailUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Attachment;->thumbnailUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Attachment;->access$802(Lcom/google/googlex/glass/common/proto/Attachment;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 739
    or-int/lit8 v2, v2, 0x10

    .line 741
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clientCachePath_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Attachment;->clientCachePath_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Attachment;->access$902(Lcom/google/googlex/glass/common/proto/Attachment;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 743
    or-int/lit8 v2, v2, 0x20

    .line 745
    :cond_5
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->creationTime_:J

    #setter for: Lcom/google/googlex/glass/common/proto/Attachment;->creationTime_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/Attachment;->access$1002(Lcom/google/googlex/glass/common/proto/Attachment;J)J

    .line 746
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 747
    or-int/lit8 v2, v2, 0x40

    .line 749
    :cond_6
    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->isProcessingContent_:Z

    #setter for: Lcom/google/googlex/glass/common/proto/Attachment;->isProcessingContent_:Z
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Attachment;->access$1102(Lcom/google/googlex/glass/common/proto/Attachment;Z)Z

    .line 750
    #setter for: Lcom/google/googlex/glass/common/proto/Attachment;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/Attachment;->access$1202(Lcom/google/googlex/glass/common/proto/Attachment;I)I

    .line 751
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onBuilt()V

    .line 752
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 2

    .prologue
    .line 679
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 680
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->id_:Ljava/lang/Object;

    .line 681
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 682
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentType_:Ljava/lang/Object;

    .line 683
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 684
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentUrl_:Ljava/lang/Object;

    .line 685
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 686
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 687
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 688
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clientCachePath_:Ljava/lang/Object;

    .line 689
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 690
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->creationTime_:J

    .line 691
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 692
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->isProcessingContent_:Z

    .line 693
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 694
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clear()Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clear()Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clear()Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clear()Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearClientCachePath()Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 1

    .prologue
    .line 1312
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 1313
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Attachment;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clientCachePath_:Ljava/lang/Object;

    .line 1314
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 1315
    return-object p0
.end method

.method public clearContentType()Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 1

    .prologue
    .line 1007
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 1008
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Attachment;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentType_:Ljava/lang/Object;

    .line 1009
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 1010
    return-object p0
.end method

.method public clearContentUrl()Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 1

    .prologue
    .line 1107
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 1108
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Attachment;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Attachment;->getContentUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentUrl_:Ljava/lang/Object;

    .line 1109
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 1110
    return-object p0
.end method

.method public clearCreationTime()Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 2

    .prologue
    .line 1382
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 1383
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->creationTime_:J

    .line 1384
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 1385
    return-object p0
.end method

.method public clearId()Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 1

    .prologue
    .line 906
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 907
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Attachment;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->id_:Ljava/lang/Object;

    .line 908
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 909
    return-object p0
.end method

.method public clearIsProcessingContent()Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 1

    .prologue
    .line 1438
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 1439
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->isProcessingContent_:Z

    .line 1440
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 1441
    return-object p0
.end method

.method public clearThumbnailUrl()Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 1

    .prologue
    .line 1207
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 1208
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Attachment;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Attachment;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 1209
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 1210
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 2

    .prologue
    .line 698
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->create()Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clone()Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clone()Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clone()Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clone()Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clone()Lcom/google/googlex/glass/common/proto/Attachment$Builder;

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
    .line 644
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clone()Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientCachePath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1251
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clientCachePath_:Ljava/lang/Object;

    .line 1252
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1253
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1255
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1256
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1257
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clientCachePath_:Ljava/lang/Object;

    .line 1261
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

.method public getClientCachePathBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1274
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clientCachePath_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clientCachePath_:Ljava/lang/Object;

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

.method public getContentType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 949
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentType_:Ljava/lang/Object;

    .line 950
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 951
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 953
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 954
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 955
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentType_:Ljava/lang/Object;

    .line 959
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

.method public getContentTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 971
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentType_:Ljava/lang/Object;

    .line 972
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 973
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 976
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentType_:Ljava/lang/Object;

    .line 979
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

.method public getContentUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1049
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentUrl_:Ljava/lang/Object;

    .line 1050
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1051
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1053
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1054
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1055
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentUrl_:Ljava/lang/Object;

    .line 1059
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

.method public getContentUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1071
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentUrl_:Ljava/lang/Object;

    .line 1072
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1073
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1076
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentUrl_:Ljava/lang/Object;

    .line 1079
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

.method public getCreationTime()J
    .locals 2

    .prologue
    .line 1357
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->creationTime_:J

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Attachment;
    .locals 1

    .prologue
    .line 707
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Attachment;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 703
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_Attachment_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 845
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->id_:Ljava/lang/Object;

    .line 846
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 847
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 849
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 850
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 851
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->id_:Ljava/lang/Object;

    .line 855
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
    .line 868
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->id_:Ljava/lang/Object;

    .line 869
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 870
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 873
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->id_:Ljava/lang/Object;

    .line 876
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

.method public getIsProcessingContent()Z
    .locals 1

    .prologue
    .line 1411
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->isProcessingContent_:Z

    return v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1149
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 1150
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1151
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1153
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1154
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1155
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 1159
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

.method public getThumbnailUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1171
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 1172
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1173
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1176
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 1179
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

.method public hasClientCachePath()Z
    .locals 2

    .prologue
    .line 1240
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

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

.method public hasContentType()Z
    .locals 2

    .prologue
    .line 939
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

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

.method public hasContentUrl()Z
    .locals 2

    .prologue
    .line 1039
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

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

.method public hasCreationTime()Z
    .locals 2

    .prologue
    .line 1346
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

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

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 834
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsProcessingContent()Z
    .locals 2

    .prologue
    .line 1399
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

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

.method public hasThumbnailUrl()Z
    .locals 2

    .prologue
    .line 1139
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 655
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_Attachment_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/Attachment;

    const-class v2, Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 802
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 765
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Attachment;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 798
    :goto_0
    return-object p0

    .line 766
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 767
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 768
    #getter for: Lcom/google/googlex/glass/common/proto/Attachment;->id_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->access$500(Lcom/google/googlex/glass/common/proto/Attachment;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->id_:Ljava/lang/Object;

    .line 769
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 771
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->hasContentType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 772
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 773
    #getter for: Lcom/google/googlex/glass/common/proto/Attachment;->contentType_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->access$600(Lcom/google/googlex/glass/common/proto/Attachment;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentType_:Ljava/lang/Object;

    .line 774
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 776
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->hasContentUrl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 777
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 778
    #getter for: Lcom/google/googlex/glass/common/proto/Attachment;->contentUrl_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->access$700(Lcom/google/googlex/glass/common/proto/Attachment;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentUrl_:Ljava/lang/Object;

    .line 779
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 781
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->hasThumbnailUrl()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 782
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 783
    #getter for: Lcom/google/googlex/glass/common/proto/Attachment;->thumbnailUrl_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->access$800(Lcom/google/googlex/glass/common/proto/Attachment;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 784
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 786
    :cond_4
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->hasClientCachePath()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 787
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 788
    #getter for: Lcom/google/googlex/glass/common/proto/Attachment;->clientCachePath_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->access$900(Lcom/google/googlex/glass/common/proto/Attachment;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clientCachePath_:Ljava/lang/Object;

    .line 789
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 791
    :cond_5
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->hasCreationTime()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 792
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getCreationTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->setCreationTime(J)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    .line 794
    :cond_6
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->hasIsProcessingContent()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 795
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getIsProcessingContent()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->setIsProcessingContent(Z)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    .line 797
    :cond_7
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 809
    const/4 v2, 0x0

    .line 811
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/Attachment;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/Attachment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/Attachment;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 816
    if-eqz v2, :cond_0

    .line 817
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    .line 820
    :cond_0
    return-object p0

    .line 812
    :catch_0
    move-exception v1

    .line 813
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/Attachment;

    move-object v2, v0

    .line 814
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 816
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 817
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 756
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/Attachment;

    if-eqz v0, :cond_0

    .line 757
    check-cast p1, Lcom/google/googlex/glass/common/proto/Attachment;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object p0

    .line 760
    .end local p0
    :goto_0
    return-object p0

    .line 759
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
    .line 644
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 644
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

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
    .line 644
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

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
    .line 644
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 644
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

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
    .line 644
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setClientCachePath(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1295
    if-nez p1, :cond_0

    .line 1296
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1298
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 1299
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clientCachePath_:Ljava/lang/Object;

    .line 1300
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 1301
    return-object p0
.end method

.method public setClientCachePathBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1327
    if-nez p1, :cond_0

    .line 1328
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1330
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 1331
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clientCachePath_:Ljava/lang/Object;

    .line 1332
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 1333
    return-object p0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 991
    if-nez p1, :cond_0

    .line 992
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 994
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 995
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentType_:Ljava/lang/Object;

    .line 996
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 997
    return-object p0
.end method

.method public setContentTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1021
    if-nez p1, :cond_0

    .line 1022
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1024
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 1025
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentType_:Ljava/lang/Object;

    .line 1026
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 1027
    return-object p0
.end method

.method public setContentUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1091
    if-nez p1, :cond_0

    .line 1092
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1094
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 1095
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentUrl_:Ljava/lang/Object;

    .line 1096
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 1097
    return-object p0
.end method

.method public setContentUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1121
    if-nez p1, :cond_0

    .line 1122
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1124
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 1125
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentUrl_:Ljava/lang/Object;

    .line 1126
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 1127
    return-object p0
.end method

.method public setCreationTime(J)Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1368
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 1369
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->creationTime_:J

    .line 1370
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 1371
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 889
    if-nez p1, :cond_0

    .line 890
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 892
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 893
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->id_:Ljava/lang/Object;

    .line 894
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 895
    return-object p0
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 921
    if-nez p1, :cond_0

    .line 922
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 924
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 925
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->id_:Ljava/lang/Object;

    .line 926
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 927
    return-object p0
.end method

.method public setIsProcessingContent(Z)Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1423
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 1424
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->isProcessingContent_:Z

    .line 1425
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 1426
    return-object p0
.end method

.method public setThumbnailUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1191
    if-nez p1, :cond_0

    .line 1192
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1194
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 1195
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 1196
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 1197
    return-object p0
.end method

.method public setThumbnailUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1221
    if-nez p1, :cond_0

    .line 1222
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1224
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 1225
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 1226
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 1227
    return-object p0
.end method
