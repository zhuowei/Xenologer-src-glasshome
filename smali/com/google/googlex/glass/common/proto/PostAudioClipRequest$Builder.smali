.class public final Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "PostAudioClipRequest.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/PostAudioClipRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/PostAudioClipRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private audioFormat_:Lcom/google/googlex/glass/common/proto/AudioFormat;

.field private bitField0_:I

.field private clientPlatform_:Ljava/lang/Object;

.field private idBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/AudioClipId;",
            "Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;",
            "Lcom/google/googlex/glass/common/proto/AudioClipIdOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private id_:Lcom/google/googlex/glass/common/proto/AudioClipId;

.field private rawAudio_:Lcom/google/protobuf/ByteString;

.field private storeAudio_:Z

.field private storeRawAudio_:Z

.field private storeTranscript_:Z

.field private transcribe_:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 595
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 768
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AudioClipId;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AudioClipId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->id_:Lcom/google/googlex/glass/common/proto/AudioClipId;

    .line 920
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->rawAudio_:Lcom/google/protobuf/ByteString;

    .line 971
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioFormat;->AMR:Lcom/google/googlex/glass/common/proto/AudioFormat;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->audioFormat_:Lcom/google/googlex/glass/common/proto/AudioFormat;

    .line 1182
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->clientPlatform_:Ljava/lang/Object;

    .line 596
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->maybeForceBuilderInitialization()V

    .line 597
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 601
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 768
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AudioClipId;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AudioClipId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->id_:Lcom/google/googlex/glass/common/proto/AudioClipId;

    .line 920
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->rawAudio_:Lcom/google/protobuf/ByteString;

    .line 971
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioFormat;->AMR:Lcom/google/googlex/glass/common/proto/AudioFormat;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->audioFormat_:Lcom/google/googlex/glass/common/proto/AudioFormat;

    .line 1182
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->clientPlatform_:Ljava/lang/Object;

    .line 602
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->maybeForceBuilderInitialization()V

    .line 603
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 578
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1

    .prologue
    .line 578
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1

    .prologue
    .line 610
    new-instance v0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 584
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClip;->internal_static_googlex_glass_common_proto_PostAudioClipRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getIdFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/AudioClipId;",
            "Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;",
            "Lcom/google/googlex/glass/common/proto/AudioClipIdOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 909
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->idBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 910
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->id_:Lcom/google/googlex/glass/common/proto/AudioClipId;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->idBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 915
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->id_:Lcom/google/googlex/glass/common/proto/AudioClipId;

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->idBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 605
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->getIdFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 608
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;
    .locals 2

    .prologue
    .line 652
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    move-result-object v0

    .line 653
    .local v0, result:Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 654
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 656
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;
    .locals 5

    .prologue
    .line 660
    new-instance v1, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$1;)V

    .line 661
    .local v1, result:Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 662
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 663
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 664
    or-int/lit8 v2, v2, 0x1

    .line 666
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->idBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_8

    .line 667
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->id_:Lcom/google/googlex/glass/common/proto/AudioClipId;

    #setter for: Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->id_:Lcom/google/googlex/glass/common/proto/AudioClipId;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->access$502(Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;Lcom/google/googlex/glass/common/proto/AudioClipId;)Lcom/google/googlex/glass/common/proto/AudioClipId;

    .line 671
    :goto_0
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 672
    or-int/lit8 v2, v2, 0x2

    .line 674
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->rawAudio_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->rawAudio_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->access$602(Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 675
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 676
    or-int/lit8 v2, v2, 0x4

    .line 678
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->audioFormat_:Lcom/google/googlex/glass/common/proto/AudioFormat;

    #setter for: Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->audioFormat_:Lcom/google/googlex/glass/common/proto/AudioFormat;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->access$702(Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;Lcom/google/googlex/glass/common/proto/AudioFormat;)Lcom/google/googlex/glass/common/proto/AudioFormat;

    .line 679
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 680
    or-int/lit8 v2, v2, 0x8

    .line 682
    :cond_3
    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->transcribe_:Z

    #setter for: Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->transcribe_:Z
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->access$802(Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;Z)Z

    .line 683
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 684
    or-int/lit8 v2, v2, 0x10

    .line 686
    :cond_4
    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->storeAudio_:Z

    #setter for: Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->storeAudio_:Z
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->access$902(Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;Z)Z

    .line 687
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 688
    or-int/lit8 v2, v2, 0x20

    .line 690
    :cond_5
    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->storeTranscript_:Z

    #setter for: Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->storeTranscript_:Z
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->access$1002(Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;Z)Z

    .line 691
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 692
    or-int/lit8 v2, v2, 0x40

    .line 694
    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->clientPlatform_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->clientPlatform_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->access$1102(Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 696
    or-int/lit16 v2, v2, 0x80

    .line 698
    :cond_7
    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->storeRawAudio_:Z

    #setter for: Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->storeRawAudio_:Z
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->access$1202(Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;Z)Z

    .line 699
    #setter for: Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->access$1302(Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;I)I

    .line 700
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onBuilt()V

    .line 701
    return-object v1

    .line 669
    :cond_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->idBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/AudioClipId;

    #setter for: Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->id_:Lcom/google/googlex/glass/common/proto/AudioClipId;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->access$502(Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;Lcom/google/googlex/glass/common/proto/AudioClipId;)Lcom/google/googlex/glass/common/proto/AudioClipId;

    goto :goto_0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 614
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 615
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->idBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 616
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AudioClipId;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AudioClipId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->id_:Lcom/google/googlex/glass/common/proto/AudioClipId;

    .line 620
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 621
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->rawAudio_:Lcom/google/protobuf/ByteString;

    .line 622
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 623
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioFormat;->AMR:Lcom/google/googlex/glass/common/proto/AudioFormat;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->audioFormat_:Lcom/google/googlex/glass/common/proto/AudioFormat;

    .line 624
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 625
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->transcribe_:Z

    .line 626
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 627
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->storeAudio_:Z

    .line 628
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 629
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->storeTranscript_:Z

    .line 630
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 631
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->clientPlatform_:Ljava/lang/Object;

    .line 632
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 633
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->storeRawAudio_:Z

    .line 634
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 635
    return-object p0

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->idBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAudioFormat()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1

    .prologue
    .line 1016
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 1017
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioFormat;->AMR:Lcom/google/googlex/glass/common/proto/AudioFormat;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->audioFormat_:Lcom/google/googlex/glass/common/proto/AudioFormat;

    .line 1018
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onChanged()V

    .line 1019
    return-object p0
.end method

.method public clearClientPlatform()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1

    .prologue
    .line 1261
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 1262
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->getClientPlatform()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->clientPlatform_:Ljava/lang/Object;

    .line 1263
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onChanged()V

    .line 1264
    return-object p0
.end method

.method public clearId()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->idBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 865
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AudioClipId;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AudioClipId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->id_:Lcom/google/googlex/glass/common/proto/AudioClipId;

    .line 866
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onChanged()V

    .line 870
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 871
    return-object p0

    .line 868
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->idBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearRawAudio()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1

    .prologue
    .line 965
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 966
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->getRawAudio()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->rawAudio_:Lcom/google/protobuf/ByteString;

    .line 967
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onChanged()V

    .line 968
    return-object p0
.end method

.method public clearStoreAudio()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1

    .prologue
    .line 1124
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 1125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->storeAudio_:Z

    .line 1126
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onChanged()V

    .line 1127
    return-object p0
.end method

.method public clearStoreRawAudio()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1

    .prologue
    .line 1331
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 1332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->storeRawAudio_:Z

    .line 1333
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onChanged()V

    .line 1334
    return-object p0
.end method

.method public clearStoreTranscript()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1

    .prologue
    .line 1176
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 1177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->storeTranscript_:Z

    .line 1178
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onChanged()V

    .line 1179
    return-object p0
.end method

.method public clearTranscribe()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1

    .prologue
    .line 1068
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 1069
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->transcribe_:Z

    .line 1070
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onChanged()V

    .line 1071
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 2

    .prologue
    .line 639
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

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
    .line 578
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAudioFormat()Lcom/google/googlex/glass/common/proto/AudioFormat;
    .locals 1

    .prologue
    .line 990
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->audioFormat_:Lcom/google/googlex/glass/common/proto/AudioFormat;

    return-object v0
.end method

.method public getClientPlatform()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->clientPlatform_:Ljava/lang/Object;

    .line 1204
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1205
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1207
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->clientPlatform_:Ljava/lang/Object;

    .line 1210
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

.method public getClientPlatformBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1223
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->clientPlatform_:Ljava/lang/Object;

    .line 1224
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1225
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1228
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->clientPlatform_:Ljava/lang/Object;

    .line 1231
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

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;
    .locals 1

    .prologue
    .line 648
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 644
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClip;->internal_static_googlex_glass_common_proto_PostAudioClipRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getId()Lcom/google/googlex/glass/common/proto/AudioClipId;
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->idBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->id_:Lcom/google/googlex/glass/common/proto/AudioClipId;

    .line 792
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->idBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipId;

    goto :goto_0
.end method

.method public getIdBuilder()Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;
    .locals 1

    .prologue
    .line 881
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 882
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onChanged()V

    .line 883
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->getIdFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

    return-object v0
.end method

.method public getIdOrBuilder()Lcom/google/googlex/glass/common/proto/AudioClipIdOrBuilder;
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->idBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->idBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipIdOrBuilder;

    .line 896
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->id_:Lcom/google/googlex/glass/common/proto/AudioClipId;

    goto :goto_0
.end method

.method public getRawAudio()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 939
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->rawAudio_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getStoreAudio()Z
    .locals 1

    .prologue
    .line 1097
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->storeAudio_:Z

    return v0
.end method

.method public getStoreRawAudio()Z
    .locals 1

    .prologue
    .line 1306
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->storeRawAudio_:Z

    return v0
.end method

.method public getStoreTranscript()Z
    .locals 1

    .prologue
    .line 1151
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->storeTranscript_:Z

    return v0
.end method

.method public getTranscribe()Z
    .locals 1

    .prologue
    .line 1043
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->transcribe_:Z

    return v0
.end method

.method public hasAudioFormat()Z
    .locals 2

    .prologue
    .line 980
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

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

.method public hasClientPlatform()Z
    .locals 2

    .prologue
    .line 1192
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

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

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 779
    iget v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRawAudio()Z
    .locals 2

    .prologue
    .line 929
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

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

.method public hasStoreAudio()Z
    .locals 2

    .prologue
    .line 1085
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

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

.method public hasStoreRawAudio()Z
    .locals 2

    .prologue
    .line 1295
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStoreTranscript()Z
    .locals 2

    .prologue
    .line 1140
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

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

.method public hasTranscribe()Z
    .locals 2

    .prologue
    .line 1032
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

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
    .line 589
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClip;->internal_static_googlex_glass_common_proto_PostAudioClipRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    const-class v2, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 746
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 714
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 742
    :goto_0
    return-object p0

    .line 715
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 716
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->getId()Lcom/google/googlex/glass/common/proto/AudioClipId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->mergeId(Lcom/google/googlex/glass/common/proto/AudioClipId;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    .line 718
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->hasRawAudio()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 719
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->getRawAudio()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->setRawAudio(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    .line 721
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->hasAudioFormat()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 722
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->getAudioFormat()Lcom/google/googlex/glass/common/proto/AudioFormat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->setAudioFormat(Lcom/google/googlex/glass/common/proto/AudioFormat;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    .line 724
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->hasTranscribe()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 725
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->getTranscribe()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->setTranscribe(Z)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    .line 727
    :cond_4
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->hasStoreAudio()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 728
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->getStoreAudio()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->setStoreAudio(Z)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    .line 730
    :cond_5
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->hasStoreTranscript()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 731
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->getStoreTranscript()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->setStoreTranscript(Z)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    .line 733
    :cond_6
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->hasClientPlatform()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 734
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 735
    #getter for: Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->clientPlatform_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->access$1100(Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->clientPlatform_:Ljava/lang/Object;

    .line 736
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onChanged()V

    .line 738
    :cond_7
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->hasStoreRawAudio()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 739
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->getStoreRawAudio()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->setStoreRawAudio(Z)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    .line 741
    :cond_8
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 753
    const/4 v2, 0x0

    .line 755
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    if-eqz v2, :cond_0

    .line 761
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    .line 764
    :cond_0
    return-object p0

    .line 756
    :catch_0
    move-exception v1

    .line 757
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    move-object v2, v0

    .line 758
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 760
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 761
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 705
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    if-eqz v0, :cond_0

    .line 706
    check-cast p1, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

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
    .line 578
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 578
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

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
    .line 578
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

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
    .line 578
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 578
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

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
    .line 578
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/google/googlex/glass/common/proto/AudioClipId;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 841
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->idBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 842
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->id_:Lcom/google/googlex/glass/common/proto/AudioClipId;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/AudioClipId;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AudioClipId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 844
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->id_:Lcom/google/googlex/glass/common/proto/AudioClipId;

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/AudioClipId;->newBuilder(Lcom/google/googlex/glass/common/proto/AudioClipId;)Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AudioClipId;)Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AudioClipId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->id_:Lcom/google/googlex/glass/common/proto/AudioClipId;

    .line 849
    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onChanged()V

    .line 853
    :goto_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 854
    return-object p0

    .line 847
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->id_:Lcom/google/googlex/glass/common/proto/AudioClipId;

    goto :goto_0

    .line 851
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->idBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public setAudioFormat(Lcom/google/googlex/glass/common/proto/AudioFormat;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1000
    if-nez p1, :cond_0

    .line 1001
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1003
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 1004
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->audioFormat_:Lcom/google/googlex/glass/common/proto/AudioFormat;

    .line 1005
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onChanged()V

    .line 1006
    return-object p0
.end method

.method public setClientPlatform(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1244
    if-nez p1, :cond_0

    .line 1245
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1247
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 1248
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->clientPlatform_:Ljava/lang/Object;

    .line 1249
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onChanged()V

    .line 1250
    return-object p0
.end method

.method public setClientPlatformBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1276
    if-nez p1, :cond_0

    .line 1277
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1279
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 1280
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->clientPlatform_:Ljava/lang/Object;

    .line 1281
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onChanged()V

    .line 1282
    return-object p0
.end method

.method public setId(Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 824
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->idBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 825
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->build()Lcom/google/googlex/glass/common/proto/AudioClipId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->id_:Lcom/google/googlex/glass/common/proto/AudioClipId;

    .line 826
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onChanged()V

    .line 830
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 831
    return-object p0

    .line 828
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->idBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->build()Lcom/google/googlex/glass/common/proto/AudioClipId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setId(Lcom/google/googlex/glass/common/proto/AudioClipId;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 803
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->idBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 804
    if-nez p1, :cond_0

    .line 805
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 807
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->id_:Lcom/google/googlex/glass/common/proto/AudioClipId;

    .line 808
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onChanged()V

    .line 812
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 813
    return-object p0

    .line 810
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->idBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setRawAudio(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 949
    if-nez p1, :cond_0

    .line 950
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 952
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 953
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->rawAudio_:Lcom/google/protobuf/ByteString;

    .line 954
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onChanged()V

    .line 955
    return-object p0
.end method

.method public setStoreAudio(Z)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1109
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 1110
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->storeAudio_:Z

    .line 1111
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onChanged()V

    .line 1112
    return-object p0
.end method

.method public setStoreRawAudio(Z)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1317
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 1318
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->storeRawAudio_:Z

    .line 1319
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onChanged()V

    .line 1320
    return-object p0
.end method

.method public setStoreTranscript(Z)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1162
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 1163
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->storeTranscript_:Z

    .line 1164
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onChanged()V

    .line 1165
    return-object p0
.end method

.method public setTranscribe(Z)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1054
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 1055
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->transcribe_:Z

    .line 1056
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onChanged()V

    .line 1057
    return-object p0
.end method
