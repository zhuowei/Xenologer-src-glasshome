.class public final Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "AudioClipTranscript.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/AudioClipTranscript$TokenOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/AudioClipTranscript$TokenOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private confidence_:F

.field private token_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 496
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 654
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->token_:Ljava/lang/Object;

    .line 497
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->maybeForceBuilderInitialization()V

    .line 498
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 502
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 654
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->token_:Ljava/lang/Object;

    .line 503
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->maybeForceBuilderInitialization()V

    .line 504
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/AudioClipTranscript$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 479
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;
    .locals 1

    .prologue
    .line 479
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->create()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;
    .locals 1

    .prologue
    .line 510
    new-instance v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 485
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClip;->internal_static_googlex_glass_common_proto_AudioClipTranscript_Token_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 506
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;
    .locals 2

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    move-result-object v0

    .line 537
    .local v0, result:Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 538
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 540
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->build()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->build()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;
    .locals 5

    .prologue
    .line 544
    new-instance v1, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/AudioClipTranscript$1;)V

    .line 545
    .local v1, result:Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->bitField0_:I

    .line 546
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 547
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 548
    or-int/lit8 v2, v2, 0x1

    .line 550
    :cond_0
    iget v3, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->confidence_:F

    #setter for: Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->confidence_:F
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->access$602(Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;F)F

    .line 551
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 552
    or-int/lit8 v2, v2, 0x2

    .line 554
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->token_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->token_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->access$702(Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    #setter for: Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->access$802(Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;I)I

    .line 556
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->onBuilt()V

    .line 557
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;
    .locals 1

    .prologue
    .line 514
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 515
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->confidence_:F

    .line 516
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->bitField0_:I

    .line 517
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->token_:Ljava/lang/Object;

    .line 518
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->bitField0_:I

    .line 519
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->clear()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->clear()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->clear()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->clear()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearConfidence()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;
    .locals 1

    .prologue
    .line 648
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->bitField0_:I

    .line 649
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->confidence_:F

    .line 650
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->onChanged()V

    .line 651
    return-object p0
.end method

.method public clearToken()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;
    .locals 1

    .prologue
    .line 731
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->bitField0_:I

    .line 732
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->token_:Ljava/lang/Object;

    .line 733
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->onChanged()V

    .line 734
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;
    .locals 2

    .prologue
    .line 523
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->create()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->clone()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->clone()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->clone()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->clone()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->clone()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;

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
    .line 479
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->clone()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConfidence()F
    .locals 1

    .prologue
    .line 625
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->confidence_:F

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;
    .locals 1

    .prologue
    .line 532
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 528
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClip;->internal_static_googlex_glass_common_proto_AudioClipTranscript_Token_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 4

    .prologue
    .line 673
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->token_:Ljava/lang/Object;

    .line 674
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 675
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 677
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 678
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 679
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->token_:Ljava/lang/Object;

    .line 683
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

.method public getTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 695
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->token_:Ljava/lang/Object;

    .line 696
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 697
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 700
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->token_:Ljava/lang/Object;

    .line 703
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

.method public hasConfidence()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 615
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasToken()Z
    .locals 2

    .prologue
    .line 663
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->bitField0_:I

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
    .line 490
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClip;->internal_static_googlex_glass_common_proto_AudioClipTranscript_Token_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    const-class v2, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 584
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 570
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 580
    :goto_0
    return-object p0

    .line 571
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->hasConfidence()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->getConfidence()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->setConfidence(F)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;

    .line 574
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->hasToken()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 575
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->bitField0_:I

    .line 576
    #getter for: Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->token_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->access$700(Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->token_:Ljava/lang/Object;

    .line 577
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->onChanged()V

    .line 579
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 591
    const/4 v2, 0x0

    .line 593
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    if-eqz v2, :cond_0

    .line 599
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;

    .line 602
    :cond_0
    return-object p0

    .line 594
    :catch_0
    move-exception v1

    .line 595
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    move-object v2, v0

    .line 596
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 598
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 599
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 561
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    if-eqz v0, :cond_0

    .line 562
    check-cast p1, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;

    move-result-object p0

    .line 565
    .end local p0
    :goto_0
    return-object p0

    .line 564
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
    .line 479
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 479
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;

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
    .line 479
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;

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
    .line 479
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 479
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;

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
    .line 479
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setConfidence(F)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 635
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->bitField0_:I

    .line 636
    iput p1, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->confidence_:F

    .line 637
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->onChanged()V

    .line 638
    return-object p0
.end method

.method public setToken(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 715
    if-nez p1, :cond_0

    .line 716
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 718
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->bitField0_:I

    .line 719
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->token_:Ljava/lang/Object;

    .line 720
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->onChanged()V

    .line 721
    return-object p0
.end method

.method public setTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 745
    if-nez p1, :cond_0

    .line 746
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 748
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->bitField0_:I

    .line 749
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->token_:Ljava/lang/Object;

    .line 750
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->onChanged()V

    .line 751
    return-object p0
.end method
