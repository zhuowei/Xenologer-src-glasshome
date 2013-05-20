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
    .line 656
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 819
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->id_:Ljava/lang/Object;

    .line 922
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentType_:Ljava/lang/Object;

    .line 1019
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentUrl_:Ljava/lang/Object;

    .line 1116
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 1213
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clientCachePath_:Ljava/lang/Object;

    .line 657
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->maybeForceBuilderInitialization()V

    .line 658
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 662
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 819
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->id_:Ljava/lang/Object;

    .line 922
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentType_:Ljava/lang/Object;

    .line 1019
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentUrl_:Ljava/lang/Object;

    .line 1116
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 1213
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clientCachePath_:Ljava/lang/Object;

    .line 663
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->maybeForceBuilderInitialization()V

    .line 664
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/Attachment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 639
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 1

    .prologue
    .line 639
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->create()Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 1

    .prologue
    .line 670
    new-instance v0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 645
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_Attachment_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 666
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Attachment;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 668
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/Attachment;
    .locals 2

    .prologue
    .line 706
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    .line 707
    .local v0, result:Lcom/google/googlex/glass/common/proto/Attachment;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Attachment;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 708
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 710
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->build()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->build()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/Attachment;
    .locals 5

    .prologue
    .line 714
    new-instance v1, Lcom/google/googlex/glass/common/proto/Attachment;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/Attachment;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/Attachment$1;)V

    .line 715
    .local v1, result:Lcom/google/googlex/glass/common/proto/Attachment;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 716
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 717
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 718
    or-int/lit8 v2, v2, 0x1

    .line 720
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Attachment;->id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Attachment;->access$502(Lcom/google/googlex/glass/common/proto/Attachment;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 722
    or-int/lit8 v2, v2, 0x2

    .line 724
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentType_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Attachment;->contentType_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Attachment;->access$602(Lcom/google/googlex/glass/common/proto/Attachment;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 726
    or-int/lit8 v2, v2, 0x4

    .line 728
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Attachment;->contentUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Attachment;->access$702(Lcom/google/googlex/glass/common/proto/Attachment;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 730
    or-int/lit8 v2, v2, 0x8

    .line 732
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->thumbnailUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Attachment;->thumbnailUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Attachment;->access$802(Lcom/google/googlex/glass/common/proto/Attachment;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 734
    or-int/lit8 v2, v2, 0x10

    .line 736
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clientCachePath_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Attachment;->clientCachePath_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Attachment;->access$902(Lcom/google/googlex/glass/common/proto/Attachment;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 738
    or-int/lit8 v2, v2, 0x20

    .line 740
    :cond_5
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->creationTime_:J

    #setter for: Lcom/google/googlex/glass/common/proto/Attachment;->creationTime_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/Attachment;->access$1002(Lcom/google/googlex/glass/common/proto/Attachment;J)J

    .line 741
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 742
    or-int/lit8 v2, v2, 0x40

    .line 744
    :cond_6
    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->isProcessingContent_:Z

    #setter for: Lcom/google/googlex/glass/common/proto/Attachment;->isProcessingContent_:Z
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Attachment;->access$1102(Lcom/google/googlex/glass/common/proto/Attachment;Z)Z

    .line 745
    #setter for: Lcom/google/googlex/glass/common/proto/Attachment;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/Attachment;->access$1202(Lcom/google/googlex/glass/common/proto/Attachment;I)I

    .line 746
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onBuilt()V

    .line 747
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 2

    .prologue
    .line 674
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 675
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->id_:Ljava/lang/Object;

    .line 676
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 677
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentType_:Ljava/lang/Object;

    .line 678
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 679
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentUrl_:Ljava/lang/Object;

    .line 680
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 681
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 682
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 683
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clientCachePath_:Ljava/lang/Object;

    .line 684
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 685
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->creationTime_:J

    .line 686
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 687
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->isProcessingContent_:Z

    .line 688
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 689
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clear()Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clear()Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clear()Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clear()Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearClientCachePath()Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 1

    .prologue
    .line 1292
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 1293
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Attachment;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clientCachePath_:Ljava/lang/Object;

    .line 1294
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 1295
    return-object p0
.end method

.method public clearContentType()Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 1

    .prologue
    .line 996
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 997
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Attachment;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentType_:Ljava/lang/Object;

    .line 998
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 999
    return-object p0
.end method

.method public clearContentUrl()Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 1

    .prologue
    .line 1093
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 1094
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Attachment;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Attachment;->getContentUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentUrl_:Ljava/lang/Object;

    .line 1095
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 1096
    return-object p0
.end method

.method public clearCreationTime()Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 2

    .prologue
    .line 1362
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 1363
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->creationTime_:J

    .line 1364
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 1365
    return-object p0
.end method

.method public clearId()Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 1

    .prologue
    .line 898
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 899
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Attachment;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->id_:Ljava/lang/Object;

    .line 900
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 901
    return-object p0
.end method

.method public clearIsProcessingContent()Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 1

    .prologue
    .line 1418
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 1419
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->isProcessingContent_:Z

    .line 1420
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 1421
    return-object p0
.end method

.method public clearThumbnailUrl()Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 1

    .prologue
    .line 1190
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 1191
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Attachment;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Attachment;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 1192
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 1193
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 2

    .prologue
    .line 693
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
    .line 639
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clone()Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clone()Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clone()Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clone()Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 639
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
    .line 639
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clone()Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientCachePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clientCachePath_:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clientCachePath_:Ljava/lang/Object;

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

.method public getClientCachePathBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1254
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clientCachePath_:Ljava/lang/Object;

    .line 1255
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1256
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1259
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clientCachePath_:Ljava/lang/Object;

    .line 1262
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
    .locals 3

    .prologue
    .line 941
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentType_:Ljava/lang/Object;

    .line 942
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 943
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 945
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentType_:Ljava/lang/Object;

    .line 948
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

.method public getContentTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 960
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentType_:Ljava/lang/Object;

    .line 961
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 962
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 965
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentType_:Ljava/lang/Object;

    .line 968
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
    .locals 3

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentUrl_:Ljava/lang/Object;

    .line 1039
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1040
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1042
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentUrl_:Ljava/lang/Object;

    .line 1045
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

.method public getContentUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1057
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentUrl_:Ljava/lang/Object;

    .line 1058
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1059
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1062
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentUrl_:Ljava/lang/Object;

    .line 1065
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
    .line 1337
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->creationTime_:J

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Attachment;
    .locals 1

    .prologue
    .line 702
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Attachment;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 698
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_Attachment_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 840
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->id_:Ljava/lang/Object;

    .line 841
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 842
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 844
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->id_:Ljava/lang/Object;

    .line 847
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
    .line 860
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->id_:Ljava/lang/Object;

    .line 861
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 862
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 865
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->id_:Ljava/lang/Object;

    .line 868
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
    .line 1391
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->isProcessingContent_:Z

    return v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 1136
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1137
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1139
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 1142
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

.method public getThumbnailUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1154
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 1155
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1156
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1159
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 1162
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
    .line 1223
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
    .line 931
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
    .line 1028
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
    .line 1326
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

    .line 829
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
    .line 1379
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
    .line 1125
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
    .line 650
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
    .line 797
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 760
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Attachment;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 793
    :goto_0
    return-object p0

    .line 761
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 762
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 763
    #getter for: Lcom/google/googlex/glass/common/proto/Attachment;->id_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->access$500(Lcom/google/googlex/glass/common/proto/Attachment;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->id_:Ljava/lang/Object;

    .line 764
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 766
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->hasContentType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 767
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 768
    #getter for: Lcom/google/googlex/glass/common/proto/Attachment;->contentType_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->access$600(Lcom/google/googlex/glass/common/proto/Attachment;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentType_:Ljava/lang/Object;

    .line 769
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 771
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->hasContentUrl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 772
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 773
    #getter for: Lcom/google/googlex/glass/common/proto/Attachment;->contentUrl_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->access$700(Lcom/google/googlex/glass/common/proto/Attachment;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentUrl_:Ljava/lang/Object;

    .line 774
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 776
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->hasThumbnailUrl()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 777
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 778
    #getter for: Lcom/google/googlex/glass/common/proto/Attachment;->thumbnailUrl_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->access$800(Lcom/google/googlex/glass/common/proto/Attachment;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 779
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 781
    :cond_4
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->hasClientCachePath()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 782
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 783
    #getter for: Lcom/google/googlex/glass/common/proto/Attachment;->clientCachePath_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->access$900(Lcom/google/googlex/glass/common/proto/Attachment;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clientCachePath_:Ljava/lang/Object;

    .line 784
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 786
    :cond_5
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->hasCreationTime()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 787
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getCreationTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->setCreationTime(J)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    .line 789
    :cond_6
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->hasIsProcessingContent()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 790
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Attachment;->getIsProcessingContent()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->setIsProcessingContent(Z)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    .line 792
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
    .line 804
    const/4 v2, 0x0

    .line 806
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

    .line 811
    if-eqz v2, :cond_0

    .line 812
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    .line 815
    :cond_0
    return-object p0

    .line 807
    :catch_0
    move-exception v1

    .line 808
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/Attachment;

    move-object v2, v0

    .line 809
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 811
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 812
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 751
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/Attachment;

    if-eqz v0, :cond_0

    .line 752
    check-cast p1, Lcom/google/googlex/glass/common/proto/Attachment;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object p0

    .line 755
    .end local p0
    :goto_0
    return-object p0

    .line 754
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
    .line 639
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 639
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
    .line 639
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
    .line 639
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 639
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
    .line 639
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setClientCachePath(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1275
    if-nez p1, :cond_0

    .line 1276
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1278
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 1279
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clientCachePath_:Ljava/lang/Object;

    .line 1280
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 1281
    return-object p0
.end method

.method public setClientCachePathBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1307
    if-nez p1, :cond_0

    .line 1308
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1310
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 1311
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->clientCachePath_:Ljava/lang/Object;

    .line 1312
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 1313
    return-object p0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 980
    if-nez p1, :cond_0

    .line 981
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 983
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 984
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentType_:Ljava/lang/Object;

    .line 985
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 986
    return-object p0
.end method

.method public setContentTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1010
    if-nez p1, :cond_0

    .line 1011
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1013
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 1014
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentType_:Ljava/lang/Object;

    .line 1015
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 1016
    return-object p0
.end method

.method public setContentUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1077
    if-nez p1, :cond_0

    .line 1078
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1080
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 1081
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentUrl_:Ljava/lang/Object;

    .line 1082
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 1083
    return-object p0
.end method

.method public setContentUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1107
    if-nez p1, :cond_0

    .line 1108
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1110
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 1111
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->contentUrl_:Ljava/lang/Object;

    .line 1112
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 1113
    return-object p0
.end method

.method public setCreationTime(J)Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1348
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 1349
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->creationTime_:J

    .line 1350
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 1351
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 881
    if-nez p1, :cond_0

    .line 882
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 884
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 885
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->id_:Ljava/lang/Object;

    .line 886
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 887
    return-object p0
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 913
    if-nez p1, :cond_0

    .line 914
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 916
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 917
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->id_:Ljava/lang/Object;

    .line 918
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 919
    return-object p0
.end method

.method public setIsProcessingContent(Z)Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1403
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 1404
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->isProcessingContent_:Z

    .line 1405
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 1406
    return-object p0
.end method

.method public setThumbnailUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1174
    if-nez p1, :cond_0

    .line 1175
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1177
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 1178
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 1179
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 1180
    return-object p0
.end method

.method public setThumbnailUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1204
    if-nez p1, :cond_0

    .line 1205
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1207
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->bitField0_:I

    .line 1208
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->thumbnailUrl_:Ljava/lang/Object;

    .line 1209
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->onChanged()V

    .line 1210
    return-object p0
.end method
