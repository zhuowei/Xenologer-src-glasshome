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
    .line 596
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 769
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AudioClipId;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AudioClipId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->id_:Lcom/google/googlex/glass/common/proto/AudioClipId;

    .line 921
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->rawAudio_:Lcom/google/protobuf/ByteString;

    .line 972
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioFormat;->AMR:Lcom/google/googlex/glass/common/proto/AudioFormat;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->audioFormat_:Lcom/google/googlex/glass/common/proto/AudioFormat;

    .line 1183
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->clientPlatform_:Ljava/lang/Object;

    .line 597
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->maybeForceBuilderInitialization()V

    .line 598
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 602
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 769
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AudioClipId;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AudioClipId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->id_:Lcom/google/googlex/glass/common/proto/AudioClipId;

    .line 921
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->rawAudio_:Lcom/google/protobuf/ByteString;

    .line 972
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioFormat;->AMR:Lcom/google/googlex/glass/common/proto/AudioFormat;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->audioFormat_:Lcom/google/googlex/glass/common/proto/AudioFormat;

    .line 1183
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->clientPlatform_:Ljava/lang/Object;

    .line 603
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->maybeForceBuilderInitialization()V

    .line 604
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 579
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1

    .prologue
    .line 579
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1

    .prologue
    .line 611
    new-instance v0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 585
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
    .line 910
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->idBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 911
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->id_:Lcom/google/googlex/glass/common/proto/AudioClipId;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->idBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 916
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->id_:Lcom/google/googlex/glass/common/proto/AudioClipId;

    .line 918
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->idBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 606
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->getIdFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 609
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;
    .locals 2

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    move-result-object v0

    .line 654
    .local v0, result:Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 655
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 657
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;
    .locals 5

    .prologue
    .line 661
    new-instance v1, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$1;)V

    .line 662
    .local v1, result:Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 663
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 664
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 665
    or-int/lit8 v2, v2, 0x1

    .line 667
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->idBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_8

    .line 668
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->id_:Lcom/google/googlex/glass/common/proto/AudioClipId;

    #setter for: Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->id_:Lcom/google/googlex/glass/common/proto/AudioClipId;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->access$502(Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;Lcom/google/googlex/glass/common/proto/AudioClipId;)Lcom/google/googlex/glass/common/proto/AudioClipId;

    .line 672
    :goto_0
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 673
    or-int/lit8 v2, v2, 0x2

    .line 675
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->rawAudio_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->rawAudio_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->access$602(Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 676
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 677
    or-int/lit8 v2, v2, 0x4

    .line 679
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->audioFormat_:Lcom/google/googlex/glass/common/proto/AudioFormat;

    #setter for: Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->audioFormat_:Lcom/google/googlex/glass/common/proto/AudioFormat;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->access$702(Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;Lcom/google/googlex/glass/common/proto/AudioFormat;)Lcom/google/googlex/glass/common/proto/AudioFormat;

    .line 680
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 681
    or-int/lit8 v2, v2, 0x8

    .line 683
    :cond_3
    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->transcribe_:Z

    #setter for: Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->transcribe_:Z
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->access$802(Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;Z)Z

    .line 684
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 685
    or-int/lit8 v2, v2, 0x10

    .line 687
    :cond_4
    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->storeAudio_:Z

    #setter for: Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->storeAudio_:Z
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->access$902(Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;Z)Z

    .line 688
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 689
    or-int/lit8 v2, v2, 0x20

    .line 691
    :cond_5
    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->storeTranscript_:Z

    #setter for: Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->storeTranscript_:Z
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->access$1002(Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;Z)Z

    .line 692
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 693
    or-int/lit8 v2, v2, 0x40

    .line 695
    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->clientPlatform_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->clientPlatform_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->access$1102(Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 697
    or-int/lit16 v2, v2, 0x80

    .line 699
    :cond_7
    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->storeRawAudio_:Z

    #setter for: Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->storeRawAudio_:Z
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->access$1202(Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;Z)Z

    .line 700
    #setter for: Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->access$1302(Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;I)I

    .line 701
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onBuilt()V

    .line 702
    return-object v1

    .line 670
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
    .line 579
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 615
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 616
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->idBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 617
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AudioClipId;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AudioClipId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->id_:Lcom/google/googlex/glass/common/proto/AudioClipId;

    .line 621
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 622
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->rawAudio_:Lcom/google/protobuf/ByteString;

    .line 623
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 624
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioFormat;->AMR:Lcom/google/googlex/glass/common/proto/AudioFormat;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->audioFormat_:Lcom/google/googlex/glass/common/proto/AudioFormat;

    .line 625
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 626
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->transcribe_:Z

    .line 627
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 628
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->storeAudio_:Z

    .line 629
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 630
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->storeTranscript_:Z

    .line 631
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 632
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->clientPlatform_:Ljava/lang/Object;

    .line 633
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 634
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->storeRawAudio_:Z

    .line 635
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 636
    return-object p0

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->idBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAudioFormat()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1

    .prologue
    .line 1017
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 1018
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioFormat;->AMR:Lcom/google/googlex/glass/common/proto/AudioFormat;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->audioFormat_:Lcom/google/googlex/glass/common/proto/AudioFormat;

    .line 1019
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onChanged()V

    .line 1020
    return-object p0
.end method

.method public clearClientPlatform()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1

    .prologue
    .line 1265
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 1266
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->getClientPlatform()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->clientPlatform_:Ljava/lang/Object;

    .line 1267
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onChanged()V

    .line 1268
    return-object p0
.end method

.method public clearId()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1

    .prologue
    .line 865
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->idBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 866
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AudioClipId;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AudioClipId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->id_:Lcom/google/googlex/glass/common/proto/AudioClipId;

    .line 867
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onChanged()V

    .line 871
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 872
    return-object p0

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->idBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearRawAudio()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1

    .prologue
    .line 966
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 967
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->getRawAudio()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->rawAudio_:Lcom/google/protobuf/ByteString;

    .line 968
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onChanged()V

    .line 969
    return-object p0
.end method

.method public clearStoreAudio()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1

    .prologue
    .line 1125
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 1126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->storeAudio_:Z

    .line 1127
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onChanged()V

    .line 1128
    return-object p0
.end method

.method public clearStoreRawAudio()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1

    .prologue
    .line 1335
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 1336
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->storeRawAudio_:Z

    .line 1337
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onChanged()V

    .line 1338
    return-object p0
.end method

.method public clearStoreTranscript()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1

    .prologue
    .line 1177
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 1178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->storeTranscript_:Z

    .line 1179
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onChanged()V

    .line 1180
    return-object p0
.end method

.method public clearTranscribe()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1

    .prologue
    .line 1069
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 1070
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->transcribe_:Z

    .line 1071
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onChanged()V

    .line 1072
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 2

    .prologue
    .line 640
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
    .line 579
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 579
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
    .line 579
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAudioFormat()Lcom/google/googlex/glass/common/proto/AudioFormat;
    .locals 1

    .prologue
    .line 991
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->audioFormat_:Lcom/google/googlex/glass/common/proto/AudioFormat;

    return-object v0
.end method

.method public getClientPlatform()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1204
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->clientPlatform_:Ljava/lang/Object;

    .line 1205
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1206
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1208
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1209
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1210
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->clientPlatform_:Ljava/lang/Object;

    .line 1214
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

.method public getClientPlatformBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1227
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->clientPlatform_:Ljava/lang/Object;

    .line 1228
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1229
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1232
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->clientPlatform_:Ljava/lang/Object;

    .line 1235
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
    .line 649
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 645
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClip;->internal_static_googlex_glass_common_proto_PostAudioClipRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getId()Lcom/google/googlex/glass/common/proto/AudioClipId;
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->idBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->id_:Lcom/google/googlex/glass/common/proto/AudioClipId;

    .line 793
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
    .line 882
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 883
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onChanged()V

    .line 884
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
    .line 894
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->idBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->idBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipIdOrBuilder;

    .line 897
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->id_:Lcom/google/googlex/glass/common/proto/AudioClipId;

    goto :goto_0
.end method

.method public getRawAudio()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->rawAudio_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getStoreAudio()Z
    .locals 1

    .prologue
    .line 1098
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->storeAudio_:Z

    return v0
.end method

.method public getStoreRawAudio()Z
    .locals 1

    .prologue
    .line 1310
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->storeRawAudio_:Z

    return v0
.end method

.method public getStoreTranscript()Z
    .locals 1

    .prologue
    .line 1152
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->storeTranscript_:Z

    return v0
.end method

.method public getTranscribe()Z
    .locals 1

    .prologue
    .line 1044
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->transcribe_:Z

    return v0
.end method

.method public hasAudioFormat()Z
    .locals 2

    .prologue
    .line 981
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
    .line 1193
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

    .line 780
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
    .line 930
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
    .line 1086
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
    .line 1299
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
    .line 1141
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
    .line 1033
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
    .line 590
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
    .line 747
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 715
    invoke-static {}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 743
    :goto_0
    return-object p0

    .line 716
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 717
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->getId()Lcom/google/googlex/glass/common/proto/AudioClipId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->mergeId(Lcom/google/googlex/glass/common/proto/AudioClipId;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    .line 719
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->hasRawAudio()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 720
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->getRawAudio()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->setRawAudio(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    .line 722
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->hasAudioFormat()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 723
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->getAudioFormat()Lcom/google/googlex/glass/common/proto/AudioFormat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->setAudioFormat(Lcom/google/googlex/glass/common/proto/AudioFormat;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    .line 725
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->hasTranscribe()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 726
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->getTranscribe()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->setTranscribe(Z)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    .line 728
    :cond_4
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->hasStoreAudio()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 729
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->getStoreAudio()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->setStoreAudio(Z)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    .line 731
    :cond_5
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->hasStoreTranscript()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 732
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->getStoreTranscript()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->setStoreTranscript(Z)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    .line 734
    :cond_6
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->hasClientPlatform()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 735
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 736
    #getter for: Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->clientPlatform_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->access$1100(Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->clientPlatform_:Ljava/lang/Object;

    .line 737
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onChanged()V

    .line 739
    :cond_7
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->hasStoreRawAudio()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 740
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;->getStoreRawAudio()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->setStoreRawAudio(Z)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    .line 742
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
    .line 754
    const/4 v2, 0x0

    .line 756
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

    .line 761
    if-eqz v2, :cond_0

    .line 762
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    .line 765
    :cond_0
    return-object p0

    .line 757
    :catch_0
    move-exception v1

    .line 758
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    move-object v2, v0

    .line 759
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 761
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 762
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 706
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    if-eqz v0, :cond_0

    .line 707
    check-cast p1, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/PostAudioClipRequest;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    move-result-object p0

    .line 710
    .end local p0
    :goto_0
    return-object p0

    .line 709
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
    .line 579
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 579
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
    .line 579
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
    .line 579
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 579
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
    .line 579
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/google/googlex/glass/common/proto/AudioClipId;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 842
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->idBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 843
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->id_:Lcom/google/googlex/glass/common/proto/AudioClipId;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/AudioClipId;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AudioClipId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 845
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->id_:Lcom/google/googlex/glass/common/proto/AudioClipId;

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/AudioClipId;->newBuilder(Lcom/google/googlex/glass/common/proto/AudioClipId;)Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AudioClipId;)Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AudioClipId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->id_:Lcom/google/googlex/glass/common/proto/AudioClipId;

    .line 850
    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onChanged()V

    .line 854
    :goto_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 855
    return-object p0

    .line 848
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->id_:Lcom/google/googlex/glass/common/proto/AudioClipId;

    goto :goto_0

    .line 852
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->idBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public setAudioFormat(Lcom/google/googlex/glass/common/proto/AudioFormat;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1001
    if-nez p1, :cond_0

    .line 1002
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1004
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 1005
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->audioFormat_:Lcom/google/googlex/glass/common/proto/AudioFormat;

    .line 1006
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onChanged()V

    .line 1007
    return-object p0
.end method

.method public setClientPlatform(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1248
    if-nez p1, :cond_0

    .line 1249
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1251
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 1252
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->clientPlatform_:Ljava/lang/Object;

    .line 1253
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onChanged()V

    .line 1254
    return-object p0
.end method

.method public setClientPlatformBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1280
    if-nez p1, :cond_0

    .line 1281
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1283
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 1284
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->clientPlatform_:Ljava/lang/Object;

    .line 1285
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onChanged()V

    .line 1286
    return-object p0
.end method

.method public setId(Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 825
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->idBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 826
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AudioClipId$Builder;->build()Lcom/google/googlex/glass/common/proto/AudioClipId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->id_:Lcom/google/googlex/glass/common/proto/AudioClipId;

    .line 827
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onChanged()V

    .line 831
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 832
    return-object p0

    .line 829
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
    .line 804
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->idBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 805
    if-nez p1, :cond_0

    .line 806
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 808
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->id_:Lcom/google/googlex/glass/common/proto/AudioClipId;

    .line 809
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onChanged()V

    .line 813
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 814
    return-object p0

    .line 811
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->idBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setRawAudio(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 950
    if-nez p1, :cond_0

    .line 951
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 953
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 954
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->rawAudio_:Lcom/google/protobuf/ByteString;

    .line 955
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onChanged()V

    .line 956
    return-object p0
.end method

.method public setStoreAudio(Z)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1110
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 1111
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->storeAudio_:Z

    .line 1112
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onChanged()V

    .line 1113
    return-object p0
.end method

.method public setStoreRawAudio(Z)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1321
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 1322
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->storeRawAudio_:Z

    .line 1323
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onChanged()V

    .line 1324
    return-object p0
.end method

.method public setStoreTranscript(Z)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1163
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 1164
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->storeTranscript_:Z

    .line 1165
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onChanged()V

    .line 1166
    return-object p0
.end method

.method public setTranscribe(Z)Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1055
    iget v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->bitField0_:I

    .line 1056
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->transcribe_:Z

    .line 1057
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/PostAudioClipRequest$Builder;->onChanged()V

    .line 1058
    return-object p0
.end method
