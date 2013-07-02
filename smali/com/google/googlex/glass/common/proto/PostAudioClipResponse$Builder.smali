.class public final Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "PostAudioClipResponse.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/PostAudioClipResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/PostAudioClipResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private audioClipDownloadUrl_:Ljava/lang/Object;

.field private audioClipPlayUrl_:Ljava/lang/Object;

.field private bitField0_:I

.field private confidence_:F

.field private htmlTranscript_:Ljava/lang/Object;

.field private plainTranscript_:Ljava/lang/Object;

.field private rawAudioClipDownloadUrl_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 621
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 775
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->htmlTranscript_:Ljava/lang/Object;

    .line 875
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->plainTranscript_:Ljava/lang/Object;

    .line 1023
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipDownloadUrl_:Ljava/lang/Object;

    .line 1123
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipPlayUrl_:Ljava/lang/Object;

    .line 1223
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->rawAudioClipDownloadUrl_:Ljava/lang/Object;

    .line 622
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->maybeForceBuilderInitialization()V

    .line 623
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 627
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 775
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->htmlTranscript_:Ljava/lang/Object;

    .line 875
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->plainTranscript_:Ljava/lang/Object;

    .line 1023
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipDownloadUrl_:Ljava/lang/Object;

    .line 1123
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipPlayUrl_:Ljava/lang/Object;

    .line 1223
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->rawAudioClipDownloadUrl_:Ljava/lang/Object;

    .line 628
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->maybeForceBuilderInitialization()V

    .line 629
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 604
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1

    .prologue
    .line 604
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1

    .prologue
    .line 635
    new-instance v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 610
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClip;->internal_static_googlex_glass_common_proto_PostAudioClipResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 631
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;
    .locals 2

    .prologue
    .line 669
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    move-result-object v0

    .line 670
    .local v0, result:Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 671
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 673
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->build()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->build()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;
    .locals 5

    .prologue
    .line 677
    new-instance v1, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$1;)V

    .line 678
    .local v1, result:Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 679
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 680
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 681
    or-int/lit8 v2, v2, 0x1

    .line 683
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->htmlTranscript_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->htmlTranscript_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->access$502(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 685
    or-int/lit8 v2, v2, 0x2

    .line 687
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->plainTranscript_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->plainTranscript_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->access$602(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 689
    or-int/lit8 v2, v2, 0x4

    .line 691
    :cond_2
    iget v3, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->confidence_:F

    #setter for: Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->confidence_:F
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->access$702(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;F)F

    .line 692
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 693
    or-int/lit8 v2, v2, 0x8

    .line 695
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipDownloadUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->audioClipDownloadUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->access$802(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 697
    or-int/lit8 v2, v2, 0x10

    .line 699
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipPlayUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->audioClipPlayUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->access$902(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 701
    or-int/lit8 v2, v2, 0x20

    .line 703
    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->rawAudioClipDownloadUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->rawAudioClipDownloadUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->access$1002(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    #setter for: Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->access$1102(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;I)I

    .line 705
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onBuilt()V

    .line 706
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1

    .prologue
    .line 639
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 640
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->htmlTranscript_:Ljava/lang/Object;

    .line 641
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 642
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->plainTranscript_:Ljava/lang/Object;

    .line 643
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 644
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->confidence_:F

    .line 645
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 646
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipDownloadUrl_:Ljava/lang/Object;

    .line 647
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 648
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipPlayUrl_:Ljava/lang/Object;

    .line 649
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 650
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->rawAudioClipDownloadUrl_:Ljava/lang/Object;

    .line 651
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 652
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAudioClipDownloadUrl()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1

    .prologue
    .line 1100
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 1101
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getAudioClipDownloadUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipDownloadUrl_:Ljava/lang/Object;

    .line 1102
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 1103
    return-object p0
.end method

.method public clearAudioClipPlayUrl()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1

    .prologue
    .line 1200
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 1201
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getAudioClipPlayUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipPlayUrl_:Ljava/lang/Object;

    .line 1202
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 1203
    return-object p0
.end method

.method public clearConfidence()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1

    .prologue
    .line 1017
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 1018
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->confidence_:F

    .line 1019
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 1020
    return-object p0
.end method

.method public clearHtmlTranscript()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1

    .prologue
    .line 852
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 853
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getHtmlTranscript()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->htmlTranscript_:Ljava/lang/Object;

    .line 854
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 855
    return-object p0
.end method

.method public clearPlainTranscript()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1

    .prologue
    .line 952
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 953
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getPlainTranscript()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->plainTranscript_:Ljava/lang/Object;

    .line 954
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 955
    return-object p0
.end method

.method public clearRawAudioClipDownloadUrl()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1

    .prologue
    .line 1310
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 1311
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getRawAudioClipDownloadUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->rawAudioClipDownloadUrl_:Ljava/lang/Object;

    .line 1312
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 1313
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 2

    .prologue
    .line 656
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

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
    .line 604
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAudioClipDownloadUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1042
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipDownloadUrl_:Ljava/lang/Object;

    .line 1043
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1044
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1046
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1047
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1048
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipDownloadUrl_:Ljava/lang/Object;

    .line 1052
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

.method public getAudioClipDownloadUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1064
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipDownloadUrl_:Ljava/lang/Object;

    .line 1065
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1066
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1069
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipDownloadUrl_:Ljava/lang/Object;

    .line 1072
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

.method public getAudioClipPlayUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1142
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipPlayUrl_:Ljava/lang/Object;

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
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipPlayUrl_:Ljava/lang/Object;

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

.method public getAudioClipPlayUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1164
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipPlayUrl_:Ljava/lang/Object;

    .line 1165
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1166
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1169
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipPlayUrl_:Ljava/lang/Object;

    .line 1172
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

.method public getConfidence()F
    .locals 1

    .prologue
    .line 994
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->confidence_:F

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;
    .locals 1

    .prologue
    .line 665
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 661
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClip;->internal_static_googlex_glass_common_proto_PostAudioClipResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getHtmlTranscript()Ljava/lang/String;
    .locals 4

    .prologue
    .line 794
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->htmlTranscript_:Ljava/lang/Object;

    .line 795
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 796
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 798
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 799
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 800
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->htmlTranscript_:Ljava/lang/Object;

    .line 804
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

.method public getHtmlTranscriptBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 816
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->htmlTranscript_:Ljava/lang/Object;

    .line 817
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 818
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 821
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->htmlTranscript_:Ljava/lang/Object;

    .line 824
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

.method public getPlainTranscript()Ljava/lang/String;
    .locals 4

    .prologue
    .line 894
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->plainTranscript_:Ljava/lang/Object;

    .line 895
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 896
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 898
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 899
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 900
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->plainTranscript_:Ljava/lang/Object;

    .line 904
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

.method public getPlainTranscriptBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 916
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->plainTranscript_:Ljava/lang/Object;

    .line 917
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 918
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 921
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->plainTranscript_:Ljava/lang/Object;

    .line 924
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

.method public getRawAudioClipDownloadUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1246
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->rawAudioClipDownloadUrl_:Ljava/lang/Object;

    .line 1247
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1248
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1250
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1251
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1252
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->rawAudioClipDownloadUrl_:Ljava/lang/Object;

    .line 1256
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

.method public getRawAudioClipDownloadUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1270
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->rawAudioClipDownloadUrl_:Ljava/lang/Object;

    .line 1271
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1272
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1275
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->rawAudioClipDownloadUrl_:Ljava/lang/Object;

    .line 1278
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

.method public hasAudioClipDownloadUrl()Z
    .locals 2

    .prologue
    .line 1032
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

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

.method public hasAudioClipPlayUrl()Z
    .locals 2

    .prologue
    .line 1132
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

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

.method public hasConfidence()Z
    .locals 2

    .prologue
    .line 984
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

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

.method public hasHtmlTranscript()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 784
    iget v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPlainTranscript()Z
    .locals 2

    .prologue
    .line 884
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

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

.method public hasRawAudioClipDownloadUrl()Z
    .locals 2

    .prologue
    .line 1234
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 615
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClip;->internal_static_googlex_glass_common_proto_PostAudioClipResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    const-class v2, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 753
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 719
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 749
    :goto_0
    return-object p0

    .line 720
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->hasHtmlTranscript()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 721
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 722
    #getter for: Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->htmlTranscript_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->access$500(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->htmlTranscript_:Ljava/lang/Object;

    .line 723
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 725
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->hasPlainTranscript()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 726
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 727
    #getter for: Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->plainTranscript_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->access$600(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->plainTranscript_:Ljava/lang/Object;

    .line 728
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 730
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->hasConfidence()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 731
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getConfidence()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->setConfidence(F)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    .line 733
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->hasAudioClipDownloadUrl()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 734
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 735
    #getter for: Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->audioClipDownloadUrl_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->access$800(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipDownloadUrl_:Ljava/lang/Object;

    .line 736
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 738
    :cond_4
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->hasAudioClipPlayUrl()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 739
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 740
    #getter for: Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->audioClipPlayUrl_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->access$900(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipPlayUrl_:Ljava/lang/Object;

    .line 741
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 743
    :cond_5
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->hasRawAudioClipDownloadUrl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 744
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 745
    #getter for: Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->rawAudioClipDownloadUrl_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->access$1000(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->rawAudioClipDownloadUrl_:Ljava/lang/Object;

    .line 746
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 748
    :cond_6
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 760
    const/4 v2, 0x0

    .line 762
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    if-eqz v2, :cond_0

    .line 768
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    .line 771
    :cond_0
    return-object p0

    .line 763
    :catch_0
    move-exception v1

    .line 764
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    move-object v2, v0

    .line 765
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 767
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 768
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 710
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    if-eqz v0, :cond_0

    .line 711
    check-cast p1, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    move-result-object p0

    .line 714
    .end local p0
    :goto_0
    return-object p0

    .line 713
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
    .line 604
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 604
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

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
    .line 604
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

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
    .line 604
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 604
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

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
    .line 604
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAudioClipDownloadUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1084
    if-nez p1, :cond_0

    .line 1085
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1087
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 1088
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipDownloadUrl_:Ljava/lang/Object;

    .line 1089
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 1090
    return-object p0
.end method

.method public setAudioClipDownloadUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
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
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 1118
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipDownloadUrl_:Ljava/lang/Object;

    .line 1119
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 1120
    return-object p0
.end method

.method public setAudioClipPlayUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1184
    if-nez p1, :cond_0

    .line 1185
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1187
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 1188
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipPlayUrl_:Ljava/lang/Object;

    .line 1189
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 1190
    return-object p0
.end method

.method public setAudioClipPlayUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1214
    if-nez p1, :cond_0

    .line 1215
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1217
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 1218
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipPlayUrl_:Ljava/lang/Object;

    .line 1219
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 1220
    return-object p0
.end method

.method public setConfidence(F)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1004
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 1005
    iput p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->confidence_:F

    .line 1006
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 1007
    return-object p0
.end method

.method public setHtmlTranscript(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 836
    if-nez p1, :cond_0

    .line 837
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 839
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 840
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->htmlTranscript_:Ljava/lang/Object;

    .line 841
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 842
    return-object p0
.end method

.method public setHtmlTranscriptBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 866
    if-nez p1, :cond_0

    .line 867
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 869
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 870
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->htmlTranscript_:Ljava/lang/Object;

    .line 871
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 872
    return-object p0
.end method

.method public setPlainTranscript(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 936
    if-nez p1, :cond_0

    .line 937
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 939
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 940
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->plainTranscript_:Ljava/lang/Object;

    .line 941
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 942
    return-object p0
.end method

.method public setPlainTranscriptBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 966
    if-nez p1, :cond_0

    .line 967
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 969
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 970
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->plainTranscript_:Ljava/lang/Object;

    .line 971
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 972
    return-object p0
.end method

.method public setRawAudioClipDownloadUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1292
    if-nez p1, :cond_0

    .line 1293
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1295
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 1296
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->rawAudioClipDownloadUrl_:Ljava/lang/Object;

    .line 1297
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 1298
    return-object p0
.end method

.method public setRawAudioClipDownloadUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1326
    if-nez p1, :cond_0

    .line 1327
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1329
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 1330
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->rawAudioClipDownloadUrl_:Ljava/lang/Object;

    .line 1331
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 1332
    return-object p0
.end method
