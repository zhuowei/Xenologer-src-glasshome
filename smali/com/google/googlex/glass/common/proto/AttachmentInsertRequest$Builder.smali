.class public final Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "AttachmentInsertRequest.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/AttachmentInsertRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/AttachmentInsertRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private content_:Lcom/google/protobuf/ByteString;

.field private creationTime_:J

.field private description_:Ljava/lang/Object;

.field private deviceId_:Ljava/lang/Object;

.field private mimeType_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private source_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 657
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 820
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 920
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->mimeType_:Ljava/lang/Object;

    .line 1020
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->content_:Lcom/google/protobuf/ByteString;

    .line 1071
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->description_:Ljava/lang/Object;

    .line 1171
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->name_:Ljava/lang/Object;

    .line 1323
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->source_:Ljava/lang/Object;

    .line 658
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->maybeForceBuilderInitialization()V

    .line 659
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 663
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 820
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 920
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->mimeType_:Ljava/lang/Object;

    .line 1020
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->content_:Lcom/google/protobuf/ByteString;

    .line 1071
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->description_:Ljava/lang/Object;

    .line 1171
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->name_:Ljava/lang/Object;

    .line 1323
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->source_:Ljava/lang/Object;

    .line 664
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->maybeForceBuilderInitialization()V

    .line 665
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 640
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 1

    .prologue
    .line 640
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 1

    .prologue
    .line 671
    new-instance v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 646
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_AttachmentInsertRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 667
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;
    .locals 2

    .prologue
    .line 707
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    move-result-object v0

    .line 708
    .local v0, result:Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 709
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 711
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;
    .locals 5

    .prologue
    .line 715
    new-instance v1, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$1;)V

    .line 716
    .local v1, result:Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 717
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 718
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 719
    or-int/lit8 v2, v2, 0x1

    .line 721
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->deviceId_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->deviceId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->access$502(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 723
    or-int/lit8 v2, v2, 0x2

    .line 725
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->mimeType_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->mimeType_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->access$602(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 727
    or-int/lit8 v2, v2, 0x4

    .line 729
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->content_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->content_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->access$702(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 730
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 731
    or-int/lit8 v2, v2, 0x8

    .line 733
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->description_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->description_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->access$802(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 735
    or-int/lit8 v2, v2, 0x10

    .line 737
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->access$902(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 739
    or-int/lit8 v2, v2, 0x20

    .line 741
    :cond_5
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->creationTime_:J

    #setter for: Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->creationTime_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->access$1002(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;J)J

    .line 742
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 743
    or-int/lit8 v2, v2, 0x40

    .line 745
    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->source_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->source_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->access$1102(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    #setter for: Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->access$1202(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;I)I

    .line 747
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onBuilt()V

    .line 748
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 2

    .prologue
    .line 675
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 676
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 677
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 678
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->mimeType_:Ljava/lang/Object;

    .line 679
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 680
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->content_:Lcom/google/protobuf/ByteString;

    .line 681
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 682
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->description_:Ljava/lang/Object;

    .line 683
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 684
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->name_:Ljava/lang/Object;

    .line 685
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 686
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->creationTime_:J

    .line 687
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 688
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->source_:Ljava/lang/Object;

    .line 689
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 690
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearContent()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 1

    .prologue
    .line 1065
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 1066
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getContent()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->content_:Lcom/google/protobuf/ByteString;

    .line 1067
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 1068
    return-object p0
.end method

.method public clearCreationTime()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 2

    .prologue
    .line 1317
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 1318
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->creationTime_:J

    .line 1319
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 1320
    return-object p0
.end method

.method public clearDescription()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 1

    .prologue
    .line 1148
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 1149
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->description_:Ljava/lang/Object;

    .line 1150
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 1151
    return-object p0
.end method

.method public clearDeviceId()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 1

    .prologue
    .line 897
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 898
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 899
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 900
    return-object p0
.end method

.method public clearMimeType()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 1

    .prologue
    .line 997
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 998
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getMimeType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->mimeType_:Ljava/lang/Object;

    .line 999
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 1000
    return-object p0
.end method

.method public clearName()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 1

    .prologue
    .line 1248
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 1249
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->name_:Ljava/lang/Object;

    .line 1250
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 1251
    return-object p0
.end method

.method public clearSource()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 1

    .prologue
    .line 1410
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 1411
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getSource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->source_:Ljava/lang/Object;

    .line 1412
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 1413
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 2

    .prologue
    .line 694
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

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
    .line 640
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->content_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCreationTime()J
    .locals 2

    .prologue
    .line 1292
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->creationTime_:J

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;
    .locals 1

    .prologue
    .line 703
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1090
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->description_:Ljava/lang/Object;

    .line 1091
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1092
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1094
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1095
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1096
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->description_:Ljava/lang/Object;

    .line 1100
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
    .line 1112
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->description_:Ljava/lang/Object;

    .line 1113
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1114
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1117
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->description_:Ljava/lang/Object;

    .line 1120
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
    .line 699
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_AttachmentInsertRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 839
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 840
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 841
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 843
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 844
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 845
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 849
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

.method public getDeviceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 861
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 862
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 863
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 866
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 869
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

.method public getMimeType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 939
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->mimeType_:Ljava/lang/Object;

    .line 940
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 941
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 943
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 944
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 945
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->mimeType_:Ljava/lang/Object;

    .line 949
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

.method public getMimeTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 961
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->mimeType_:Ljava/lang/Object;

    .line 962
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 963
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 966
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->mimeType_:Ljava/lang/Object;

    .line 969
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
    .line 1190
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->name_:Ljava/lang/Object;

    .line 1191
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1192
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1194
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1195
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1196
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->name_:Ljava/lang/Object;

    .line 1200
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
    .line 1212
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->name_:Ljava/lang/Object;

    .line 1213
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1214
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1217
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->name_:Ljava/lang/Object;

    .line 1220
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

.method public getSource()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1346
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->source_:Ljava/lang/Object;

    .line 1347
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1348
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1350
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1351
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1352
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->source_:Ljava/lang/Object;

    .line 1356
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
    .line 1370
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->source_:Ljava/lang/Object;

    .line 1371
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1372
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1375
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->source_:Ljava/lang/Object;

    .line 1378
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

.method public hasContent()Z
    .locals 2

    .prologue
    .line 1029
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

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
    .line 1281
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

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

.method public hasDescription()Z
    .locals 2

    .prologue
    .line 1080
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

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

.method public hasDeviceId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 829
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMimeType()Z
    .locals 2

    .prologue
    .line 929
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    .prologue
    .line 1180
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

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
    .line 1334
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

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
    .line 651
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_AttachmentInsertRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    const-class v2, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 798
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 761
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 794
    :goto_0
    return-object p0

    .line 762
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->hasDeviceId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 763
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 764
    #getter for: Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->deviceId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->access$500(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 765
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 767
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->hasMimeType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 768
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 769
    #getter for: Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->mimeType_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->access$600(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->mimeType_:Ljava/lang/Object;

    .line 770
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 772
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 773
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getContent()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->setContent(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    .line 775
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->hasDescription()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 776
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 777
    #getter for: Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->description_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->access$800(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->description_:Ljava/lang/Object;

    .line 778
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 780
    :cond_4
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->hasName()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 781
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 782
    #getter for: Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->name_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->access$900(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->name_:Ljava/lang/Object;

    .line 783
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 785
    :cond_5
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->hasCreationTime()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 786
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getCreationTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->setCreationTime(J)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    .line 788
    :cond_6
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 789
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 790
    #getter for: Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->source_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->access$1100(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->source_:Ljava/lang/Object;

    .line 791
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 793
    :cond_7
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 805
    const/4 v2, 0x0

    .line 807
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    if-eqz v2, :cond_0

    .line 813
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    .line 816
    :cond_0
    return-object p0

    .line 808
    :catch_0
    move-exception v1

    .line 809
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    move-object v2, v0

    .line 810
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 812
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 813
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 752
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    if-eqz v0, :cond_0

    .line 753
    check-cast p1, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object p0

    .line 756
    .end local p0
    :goto_0
    return-object p0

    .line 755
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
    .line 640
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 640
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

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
    .line 640
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

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
    .line 640
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 640
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

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
    .line 640
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setContent(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1049
    if-nez p1, :cond_0

    .line 1050
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1052
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 1053
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->content_:Lcom/google/protobuf/ByteString;

    .line 1054
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 1055
    return-object p0
.end method

.method public setCreationTime(J)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1303
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 1304
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->creationTime_:J

    .line 1305
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 1306
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1132
    if-nez p1, :cond_0

    .line 1133
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1135
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 1136
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->description_:Ljava/lang/Object;

    .line 1137
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 1138
    return-object p0
.end method

.method public setDescriptionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1162
    if-nez p1, :cond_0

    .line 1163
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1165
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 1166
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->description_:Ljava/lang/Object;

    .line 1167
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 1168
    return-object p0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
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
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 885
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 886
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 887
    return-object p0
.end method

.method public setDeviceIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 911
    if-nez p1, :cond_0

    .line 912
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 914
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 915
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 916
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 917
    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 981
    if-nez p1, :cond_0

    .line 982
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 984
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 985
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->mimeType_:Ljava/lang/Object;

    .line 986
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 987
    return-object p0
.end method

.method public setMimeTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1011
    if-nez p1, :cond_0

    .line 1012
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1014
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 1015
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->mimeType_:Ljava/lang/Object;

    .line 1016
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 1017
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1232
    if-nez p1, :cond_0

    .line 1233
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1235
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 1236
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->name_:Ljava/lang/Object;

    .line 1237
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 1238
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1262
    if-nez p1, :cond_0

    .line 1263
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1265
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 1266
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->name_:Ljava/lang/Object;

    .line 1267
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 1268
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1392
    if-nez p1, :cond_0

    .line 1393
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1395
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 1396
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->source_:Ljava/lang/Object;

    .line 1397
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 1398
    return-object p0
.end method

.method public setSourceBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1426
    if-nez p1, :cond_0

    .line 1427
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1429
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 1430
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->source_:Ljava/lang/Object;

    .line 1431
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 1432
    return-object p0
.end method
