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


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 579
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 731
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 828
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->mimeType_:Ljava/lang/Object;

    .line 925
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->content_:Lcom/google/protobuf/ByteString;

    .line 976
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->description_:Ljava/lang/Object;

    .line 1073
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->name_:Ljava/lang/Object;

    .line 580
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->maybeForceBuilderInitialization()V

    .line 581
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 585
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 731
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 828
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->mimeType_:Ljava/lang/Object;

    .line 925
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->content_:Lcom/google/protobuf/ByteString;

    .line 976
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->description_:Ljava/lang/Object;

    .line 1073
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->name_:Ljava/lang/Object;

    .line 586
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->maybeForceBuilderInitialization()V

    .line 587
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 562
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 1

    .prologue
    .line 562
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 1

    .prologue
    .line 593
    new-instance v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 568
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_AttachmentInsertRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 589
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;
    .locals 2

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    move-result-object v0

    .line 628
    .local v0, result:Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 629
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 631
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;
    .locals 5

    .prologue
    .line 635
    new-instance v1, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$1;)V

    .line 636
    .local v1, result:Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 637
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 638
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 639
    or-int/lit8 v2, v2, 0x1

    .line 641
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->deviceId_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->deviceId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->access$502(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 643
    or-int/lit8 v2, v2, 0x2

    .line 645
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->mimeType_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->mimeType_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->access$602(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 647
    or-int/lit8 v2, v2, 0x4

    .line 649
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->content_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->content_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->access$702(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 650
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 651
    or-int/lit8 v2, v2, 0x8

    .line 653
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->description_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->description_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->access$802(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 655
    or-int/lit8 v2, v2, 0x10

    .line 657
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->access$902(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 659
    or-int/lit8 v2, v2, 0x20

    .line 661
    :cond_5
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->creationTime_:J

    #setter for: Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->creationTime_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->access$1002(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;J)J

    .line 662
    #setter for: Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->access$1102(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;I)I

    .line 663
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onBuilt()V

    .line 664
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 2

    .prologue
    .line 597
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 598
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 599
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 600
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->mimeType_:Ljava/lang/Object;

    .line 601
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 602
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->content_:Lcom/google/protobuf/ByteString;

    .line 603
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 604
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->description_:Ljava/lang/Object;

    .line 605
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 606
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->name_:Ljava/lang/Object;

    .line 607
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 608
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->creationTime_:J

    .line 609
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 610
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearContent()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 1

    .prologue
    .line 970
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 971
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getContent()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->content_:Lcom/google/protobuf/ByteString;

    .line 972
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 973
    return-object p0
.end method

.method public clearCreationTime()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 2

    .prologue
    .line 1216
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 1217
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->creationTime_:J

    .line 1218
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 1219
    return-object p0
.end method

.method public clearDescription()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 1

    .prologue
    .line 1050
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 1051
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->description_:Ljava/lang/Object;

    .line 1052
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 1053
    return-object p0
.end method

.method public clearDeviceId()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 1

    .prologue
    .line 805
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 806
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 807
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 808
    return-object p0
.end method

.method public clearMimeType()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 1

    .prologue
    .line 902
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 903
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getMimeType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->mimeType_:Ljava/lang/Object;

    .line 904
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 905
    return-object p0
.end method

.method public clearName()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 1

    .prologue
    .line 1147
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 1148
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->name_:Ljava/lang/Object;

    .line 1149
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 1150
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 2

    .prologue
    .line 614
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
    .line 562
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 562
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
    .line 562
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->content_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCreationTime()J
    .locals 2

    .prologue
    .line 1191
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->creationTime_:J

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;
    .locals 1

    .prologue
    .line 623
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 3

    .prologue
    .line 995
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->description_:Ljava/lang/Object;

    .line 996
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 997
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 999
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->description_:Ljava/lang/Object;

    .line 1002
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
    .line 1014
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->description_:Ljava/lang/Object;

    .line 1015
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1016
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1019
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->description_:Ljava/lang/Object;

    .line 1022
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
    .line 619
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_AttachmentInsertRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 750
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 751
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 752
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 754
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 757
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

.method public getDeviceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 769
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 770
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 771
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 774
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 777
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
    .locals 3

    .prologue
    .line 847
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->mimeType_:Ljava/lang/Object;

    .line 848
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 849
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 851
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->mimeType_:Ljava/lang/Object;

    .line 854
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

.method public getMimeTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 866
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->mimeType_:Ljava/lang/Object;

    .line 867
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 868
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 871
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->mimeType_:Ljava/lang/Object;

    .line 874
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
    .line 1092
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->name_:Ljava/lang/Object;

    .line 1093
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1094
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1096
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->name_:Ljava/lang/Object;

    .line 1099
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
    .line 1111
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->name_:Ljava/lang/Object;

    .line 1112
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1113
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1116
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->name_:Ljava/lang/Object;

    .line 1119
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
    .line 934
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
    .line 1180
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
    .line 985
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

    .line 740
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
    .line 837
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
    .line 1082
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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 573
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
    .line 709
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 677
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 705
    :goto_0
    return-object p0

    .line 678
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->hasDeviceId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 679
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 680
    #getter for: Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->deviceId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->access$500(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 681
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 683
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->hasMimeType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 684
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 685
    #getter for: Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->mimeType_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->access$600(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->mimeType_:Ljava/lang/Object;

    .line 686
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 688
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 689
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getContent()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->setContent(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    .line 691
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->hasDescription()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 692
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 693
    #getter for: Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->description_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->access$800(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->description_:Ljava/lang/Object;

    .line 694
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 696
    :cond_4
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->hasName()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 697
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 698
    #getter for: Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->name_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->access$900(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->name_:Ljava/lang/Object;

    .line 699
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 701
    :cond_5
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->hasCreationTime()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 702
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getCreationTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->setCreationTime(J)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    .line 704
    :cond_6
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
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
    .line 716
    const/4 v2, 0x0

    .line 718
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

    .line 723
    if-eqz v2, :cond_0

    .line 724
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    .line 727
    :cond_0
    return-object p0

    .line 719
    :catch_0
    move-exception v1

    .line 720
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    move-object v2, v0

    .line 721
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 723
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 724
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 668
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    if-eqz v0, :cond_0

    .line 669
    check-cast p1, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object p0

    .line 672
    .end local p0
    :goto_0
    return-object p0

    .line 671
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
    .line 562
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 562
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
    .line 562
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
    .line 562
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 562
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
    .line 562
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setContent(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 954
    if-nez p1, :cond_0

    .line 955
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 957
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 958
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->content_:Lcom/google/protobuf/ByteString;

    .line 959
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 960
    return-object p0
.end method

.method public setCreationTime(J)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1202
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 1203
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->creationTime_:J

    .line 1204
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 1205
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1034
    if-nez p1, :cond_0

    .line 1035
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1037
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 1038
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->description_:Ljava/lang/Object;

    .line 1039
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 1040
    return-object p0
.end method

.method public setDescriptionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1064
    if-nez p1, :cond_0

    .line 1065
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1067
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 1068
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->description_:Ljava/lang/Object;

    .line 1069
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 1070
    return-object p0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 789
    if-nez p1, :cond_0

    .line 790
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 792
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 793
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 794
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 795
    return-object p0
.end method

.method public setDeviceIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 819
    if-nez p1, :cond_0

    .line 820
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 822
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 823
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 824
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 825
    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 886
    if-nez p1, :cond_0

    .line 887
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 889
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 890
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->mimeType_:Ljava/lang/Object;

    .line 891
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 892
    return-object p0
.end method

.method public setMimeTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 916
    if-nez p1, :cond_0

    .line 917
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 919
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 920
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->mimeType_:Ljava/lang/Object;

    .line 921
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 922
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1131
    if-nez p1, :cond_0

    .line 1132
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1134
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 1135
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->name_:Ljava/lang/Object;

    .line 1136
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 1137
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1161
    if-nez p1, :cond_0

    .line 1162
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1164
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->bitField0_:I

    .line 1165
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->name_:Ljava/lang/Object;

    .line 1166
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AttachmentInsertRequest$Builder;->onChanged()V

    .line 1167
    return-object p0
.end method
