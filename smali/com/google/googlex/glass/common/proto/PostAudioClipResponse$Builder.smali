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
    .line 616
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 770
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->htmlTranscript_:Ljava/lang/Object;

    .line 867
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->plainTranscript_:Ljava/lang/Object;

    .line 1012
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipDownloadUrl_:Ljava/lang/Object;

    .line 1109
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipPlayUrl_:Ljava/lang/Object;

    .line 1206
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->rawAudioClipDownloadUrl_:Ljava/lang/Object;

    .line 617
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->maybeForceBuilderInitialization()V

    .line 618
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 622
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 770
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->htmlTranscript_:Ljava/lang/Object;

    .line 867
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->plainTranscript_:Ljava/lang/Object;

    .line 1012
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipDownloadUrl_:Ljava/lang/Object;

    .line 1109
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipPlayUrl_:Ljava/lang/Object;

    .line 1206
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->rawAudioClipDownloadUrl_:Ljava/lang/Object;

    .line 623
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->maybeForceBuilderInitialization()V

    .line 624
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 599
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1

    .prologue
    .line 599
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->create()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1

    .prologue
    .line 630
    new-instance v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 605
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClip;->internal_static_googlex_glass_common_proto_PostAudioClipResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 626
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;
    .locals 2

    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    move-result-object v0

    .line 665
    .local v0, result:Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 666
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 668
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->build()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->build()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;
    .locals 5

    .prologue
    .line 672
    new-instance v1, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$1;)V

    .line 673
    .local v1, result:Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 674
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 675
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 676
    or-int/lit8 v2, v2, 0x1

    .line 678
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->htmlTranscript_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->htmlTranscript_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->access$502(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 680
    or-int/lit8 v2, v2, 0x2

    .line 682
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->plainTranscript_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->plainTranscript_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->access$602(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 684
    or-int/lit8 v2, v2, 0x4

    .line 686
    :cond_2
    iget v3, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->confidence_:F

    #setter for: Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->confidence_:F
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->access$702(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;F)F

    .line 687
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 688
    or-int/lit8 v2, v2, 0x8

    .line 690
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipDownloadUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->audioClipDownloadUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->access$802(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 692
    or-int/lit8 v2, v2, 0x10

    .line 694
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipPlayUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->audioClipPlayUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->access$902(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 696
    or-int/lit8 v2, v2, 0x20

    .line 698
    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->rawAudioClipDownloadUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->rawAudioClipDownloadUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->access$1002(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    #setter for: Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->access$1102(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;I)I

    .line 700
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onBuilt()V

    .line 701
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1

    .prologue
    .line 634
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 635
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->htmlTranscript_:Ljava/lang/Object;

    .line 636
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 637
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->plainTranscript_:Ljava/lang/Object;

    .line 638
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 639
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->confidence_:F

    .line 640
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 641
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipDownloadUrl_:Ljava/lang/Object;

    .line 642
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 643
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipPlayUrl_:Ljava/lang/Object;

    .line 644
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 645
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->rawAudioClipDownloadUrl_:Ljava/lang/Object;

    .line 646
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 647
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->clear()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAudioClipDownloadUrl()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1

    .prologue
    .line 1086
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 1087
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getAudioClipDownloadUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipDownloadUrl_:Ljava/lang/Object;

    .line 1088
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 1089
    return-object p0
.end method

.method public clearAudioClipPlayUrl()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1

    .prologue
    .line 1183
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 1184
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getAudioClipPlayUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipPlayUrl_:Ljava/lang/Object;

    .line 1185
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 1186
    return-object p0
.end method

.method public clearConfidence()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1

    .prologue
    .line 1006
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 1007
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->confidence_:F

    .line 1008
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 1009
    return-object p0
.end method

.method public clearHtmlTranscript()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1

    .prologue
    .line 844
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 845
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getHtmlTranscript()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->htmlTranscript_:Ljava/lang/Object;

    .line 846
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 847
    return-object p0
.end method

.method public clearPlainTranscript()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1

    .prologue
    .line 941
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 942
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getPlainTranscript()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->plainTranscript_:Ljava/lang/Object;

    .line 943
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 944
    return-object p0
.end method

.method public clearRawAudioClipDownloadUrl()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1

    .prologue
    .line 1290
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 1291
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getRawAudioClipDownloadUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->rawAudioClipDownloadUrl_:Ljava/lang/Object;

    .line 1292
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 1293
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 2

    .prologue
    .line 651
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
    .line 599
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 599
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
    .line 599
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->clone()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAudioClipDownloadUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipDownloadUrl_:Ljava/lang/Object;

    .line 1032
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1033
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1035
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipDownloadUrl_:Ljava/lang/Object;

    .line 1038
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

.method public getAudioClipDownloadUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1050
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipDownloadUrl_:Ljava/lang/Object;

    .line 1051
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1052
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1055
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipDownloadUrl_:Ljava/lang/Object;

    .line 1058
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
    .locals 3

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipPlayUrl_:Ljava/lang/Object;

    .line 1129
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1130
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1132
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipPlayUrl_:Ljava/lang/Object;

    .line 1135
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

.method public getAudioClipPlayUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1147
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipPlayUrl_:Ljava/lang/Object;

    .line 1148
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1149
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1152
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipPlayUrl_:Ljava/lang/Object;

    .line 1155
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
    .line 983
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->confidence_:F

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;
    .locals 1

    .prologue
    .line 660
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 656
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClip;->internal_static_googlex_glass_common_proto_PostAudioClipResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getHtmlTranscript()Ljava/lang/String;
    .locals 3

    .prologue
    .line 789
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->htmlTranscript_:Ljava/lang/Object;

    .line 790
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 791
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 793
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->htmlTranscript_:Ljava/lang/Object;

    .line 796
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

.method public getHtmlTranscriptBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 808
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->htmlTranscript_:Ljava/lang/Object;

    .line 809
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 810
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 813
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->htmlTranscript_:Ljava/lang/Object;

    .line 816
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
    .locals 3

    .prologue
    .line 886
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->plainTranscript_:Ljava/lang/Object;

    .line 887
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 888
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 890
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->plainTranscript_:Ljava/lang/Object;

    .line 893
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

.method public getPlainTranscriptBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 905
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->plainTranscript_:Ljava/lang/Object;

    .line 906
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 907
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 910
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->plainTranscript_:Ljava/lang/Object;

    .line 913
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
    .locals 3

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->rawAudioClipDownloadUrl_:Ljava/lang/Object;

    .line 1230
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1231
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1233
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->rawAudioClipDownloadUrl_:Ljava/lang/Object;

    .line 1236
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

.method public getRawAudioClipDownloadUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1250
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->rawAudioClipDownloadUrl_:Ljava/lang/Object;

    .line 1251
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1252
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1255
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->rawAudioClipDownloadUrl_:Ljava/lang/Object;

    .line 1258
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
    .line 1021
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
    .line 1118
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
    .line 973
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

    .line 779
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
    .line 876
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
    .line 1217
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
    .line 610
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
    .line 748
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 714
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 744
    :goto_0
    return-object p0

    .line 715
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->hasHtmlTranscript()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 716
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 717
    #getter for: Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->htmlTranscript_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->access$500(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->htmlTranscript_:Ljava/lang/Object;

    .line 718
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 720
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->hasPlainTranscript()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 721
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 722
    #getter for: Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->plainTranscript_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->access$600(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->plainTranscript_:Ljava/lang/Object;

    .line 723
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 725
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->hasConfidence()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 726
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->getConfidence()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->setConfidence(F)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    .line 728
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->hasAudioClipDownloadUrl()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 729
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 730
    #getter for: Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->audioClipDownloadUrl_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->access$800(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipDownloadUrl_:Ljava/lang/Object;

    .line 731
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 733
    :cond_4
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->hasAudioClipPlayUrl()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 734
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 735
    #getter for: Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->audioClipPlayUrl_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->access$900(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipPlayUrl_:Ljava/lang/Object;

    .line 736
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 738
    :cond_5
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->hasRawAudioClipDownloadUrl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 739
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 740
    #getter for: Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->rawAudioClipDownloadUrl_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;->access$1000(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->rawAudioClipDownloadUrl_:Ljava/lang/Object;

    .line 741
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 743
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
    .line 755
    const/4 v2, 0x0

    .line 757
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

    .line 762
    if-eqz v2, :cond_0

    .line 763
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    .line 766
    :cond_0
    return-object p0

    .line 758
    :catch_0
    move-exception v1

    .line 759
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    move-object v2, v0

    .line 760
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 762
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 763
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 705
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    if-eqz v0, :cond_0

    .line 706
    check-cast p1, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/PostAudioClipResponse;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    move-result-object p0

    .line 709
    .end local p0
    :goto_0
    return-object p0

    .line 708
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
    .line 599
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 599
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
    .line 599
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
    .line 599
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 599
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
    .line 599
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAudioClipDownloadUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1070
    if-nez p1, :cond_0

    .line 1071
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1073
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 1074
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipDownloadUrl_:Ljava/lang/Object;

    .line 1075
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 1076
    return-object p0
.end method

.method public setAudioClipDownloadUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1100
    if-nez p1, :cond_0

    .line 1101
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1103
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 1104
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipDownloadUrl_:Ljava/lang/Object;

    .line 1105
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 1106
    return-object p0
.end method

.method public setAudioClipPlayUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1167
    if-nez p1, :cond_0

    .line 1168
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1170
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 1171
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipPlayUrl_:Ljava/lang/Object;

    .line 1172
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 1173
    return-object p0
.end method

.method public setAudioClipPlayUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1197
    if-nez p1, :cond_0

    .line 1198
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1200
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 1201
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->audioClipPlayUrl_:Ljava/lang/Object;

    .line 1202
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 1203
    return-object p0
.end method

.method public setConfidence(F)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 993
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 994
    iput p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->confidence_:F

    .line 995
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 996
    return-object p0
.end method

.method public setHtmlTranscript(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 828
    if-nez p1, :cond_0

    .line 829
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 831
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 832
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->htmlTranscript_:Ljava/lang/Object;

    .line 833
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 834
    return-object p0
.end method

.method public setHtmlTranscriptBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 858
    if-nez p1, :cond_0

    .line 859
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 861
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 862
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->htmlTranscript_:Ljava/lang/Object;

    .line 863
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 864
    return-object p0
.end method

.method public setPlainTranscript(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 925
    if-nez p1, :cond_0

    .line 926
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 928
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 929
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->plainTranscript_:Ljava/lang/Object;

    .line 930
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 931
    return-object p0
.end method

.method public setPlainTranscriptBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 955
    if-nez p1, :cond_0

    .line 956
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 958
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 959
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->plainTranscript_:Ljava/lang/Object;

    .line 960
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 961
    return-object p0
.end method

.method public setRawAudioClipDownloadUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1272
    if-nez p1, :cond_0

    .line 1273
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1275
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 1276
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->rawAudioClipDownloadUrl_:Ljava/lang/Object;

    .line 1277
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 1278
    return-object p0
.end method

.method public setRawAudioClipDownloadUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1306
    if-nez p1, :cond_0

    .line 1307
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1309
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->bitField0_:I

    .line 1310
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->rawAudioClipDownloadUrl_:Ljava/lang/Object;

    .line 1311
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipResponse$Builder;->onChanged()V

    .line 1312
    return-object p0
.end method
