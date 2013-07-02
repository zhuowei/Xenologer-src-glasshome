.class public final Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;",
        ">;",
        "Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProtoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientMessageType_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$StreamOptions;",
            "Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;",
            "Lcom/google/protobuf/DescriptorProtos$StreamOptionsOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

.field private serverMessageType_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 15359
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 15506
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 15582
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->clientMessageType_:Ljava/lang/Object;

    .line 15688
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->serverMessageType_:Ljava/lang/Object;

    .line 15764
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    .line 15360
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->maybeForceBuilderInitialization()V

    .line 15361
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 15365
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 15506
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 15582
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->clientMessageType_:Ljava/lang/Object;

    .line 15688
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->serverMessageType_:Ljava/lang/Object;

    .line 15764
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    .line 15366
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->maybeForceBuilderInitialization()V

    .line 15367
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15342
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$11800()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 15342
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->create()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 15374
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 15348
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$11500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getOptionsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$StreamOptions;",
            "Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;",
            "Lcom/google/protobuf/DescriptorProtos$StreamOptionsOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15869
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 15870
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 15875
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    .line 15877
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 15369
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 15370
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->getOptionsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 15372
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;
    .locals 2

    .prologue
    .line 15408
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    .line 15409
    .local v0, result:Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;
    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 15410
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 15412
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 15342
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->build()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 15342
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->build()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;
    .locals 5

    .prologue
    .line 15416
    new-instance v1, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/protobuf/DescriptorProtos$1;)V

    .line 15417
    .local v1, result:Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 15418
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 15419
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 15420
    or-int/lit8 v2, v2, 0x1

    .line 15422
    :cond_0
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->access$12102(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15423
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 15424
    or-int/lit8 v2, v2, 0x2

    .line 15426
    :cond_1
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->clientMessageType_:Ljava/lang/Object;

    #setter for: Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->access$12202(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15427
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 15428
    or-int/lit8 v2, v2, 0x4

    .line 15430
    :cond_2
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->serverMessageType_:Ljava/lang/Object;

    #setter for: Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->access$12302(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15431
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 15432
    or-int/lit8 v2, v2, 0x8

    .line 15434
    :cond_3
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_4

    .line 15435
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    #setter for: Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->access$12402(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    .line 15439
    :goto_0
    #setter for: Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->access$12502(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;I)I

    .line 15440
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->onBuilt()V

    .line 15441
    return-object v1

    .line 15437
    :cond_4
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    #setter for: Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->access$12402(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    goto :goto_0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 15342
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 15342
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 15342
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 15378
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 15379
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 15380
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 15381
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->clientMessageType_:Ljava/lang/Object;

    .line 15382
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 15383
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->serverMessageType_:Ljava/lang/Object;

    .line 15384
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 15385
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 15386
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    .line 15390
    :goto_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 15391
    return-object p0

    .line 15388
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 15342
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 15342
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 15342
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearClientMessageType()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 15664
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 15665
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->getClientMessageType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->clientMessageType_:Ljava/lang/Object;

    .line 15666
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->onChanged()V

    .line 15667
    return-object p0
.end method

.method public clearName()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 15563
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 15564
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 15565
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->onChanged()V

    .line 15566
    return-object p0
.end method

.method public clearOptions()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 15836
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 15837
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    .line 15838
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->onChanged()V

    .line 15842
    :goto_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 15843
    return-object p0

    .line 15840
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearServerMessageType()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 15745
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 15746
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->getServerMessageType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->serverMessageType_:Ljava/lang/Object;

    .line 15747
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->onChanged()V

    .line 15748
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 15342
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 15342
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 15395
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->create()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 15342
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 15342
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 15342
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

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
    .line 15342
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientMessageType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 15603
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->clientMessageType_:Ljava/lang/Object;

    .line 15604
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 15605
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 15607
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 15608
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 15609
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->clientMessageType_:Ljava/lang/Object;

    .line 15613
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

.method public getClientMessageTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 15626
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->clientMessageType_:Ljava/lang/Object;

    .line 15627
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 15628
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15631
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->clientMessageType_:Ljava/lang/Object;

    .line 15634
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

.method public getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;
    .locals 1

    .prologue
    .line 15404
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 15342
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 15342
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 15400
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$11500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 15517
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 15518
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 15519
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 15521
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 15522
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 15523
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 15527
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
    .line 15535
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 15536
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 15537
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15540
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 15543
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

.method public getOptions()Lcom/google/protobuf/DescriptorProtos$StreamOptions;
    .locals 1

    .prologue
    .line 15777
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 15778
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    .line 15780
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    goto :goto_0
.end method

.method public getOptionsBuilder()Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;
    .locals 1

    .prologue
    .line 15849
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 15850
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->onChanged()V

    .line 15851
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->getOptionsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    return-object v0
.end method

.method public getOptionsOrBuilder()Lcom/google/protobuf/DescriptorProtos$StreamOptionsOrBuilder;
    .locals 1

    .prologue
    .line 15857
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 15858
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$StreamOptionsOrBuilder;

    .line 15860
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    goto :goto_0
.end method

.method public getServerMessageType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 15699
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->serverMessageType_:Ljava/lang/Object;

    .line 15700
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 15701
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 15703
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 15704
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 15705
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->serverMessageType_:Ljava/lang/Object;

    .line 15709
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

.method public getServerMessageTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 15717
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->serverMessageType_:Ljava/lang/Object;

    .line 15718
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 15719
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15722
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->serverMessageType_:Ljava/lang/Object;

    .line 15725
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

.method public hasClientMessageType()Z
    .locals 2

    .prologue
    .line 15592
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

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
    const/4 v0, 0x1

    .line 15511
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOptions()Z
    .locals 2

    .prologue
    .line 15771
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

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

.method public hasServerMessageType()Z
    .locals 2

    .prologue
    .line 15693
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 15353
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$11600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    const-class v2, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 15478
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15479
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->getOptions()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15481
    const/4 v0, 0x0

    .line 15484
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

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
    .line 15342
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15342
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

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
    .line 15342
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15491
    const/4 v2, 0x0

    .line 15493
    .local v2, parsedMessage:Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;
    :try_start_0
    sget-object v3, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15498
    if-eqz v2, :cond_0

    .line 15499
    invoke-virtual {p0, v2}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    .line 15502
    :cond_0
    return-object p0

    .line 15494
    :catch_0
    move-exception v1

    .line 15495
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    move-object v2, v0

    .line 15496
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15498
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 15499
    invoke-virtual {p0, v2}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 15454
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 15474
    :goto_0
    return-object p0

    .line 15455
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15456
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 15457
    #getter for: Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->access$12100(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 15458
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->onChanged()V

    .line 15460
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->hasClientMessageType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15461
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 15462
    #getter for: Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->access$12200(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->clientMessageType_:Ljava/lang/Object;

    .line 15463
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->onChanged()V

    .line 15465
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->hasServerMessageType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15466
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 15467
    #getter for: Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->access$12300(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->serverMessageType_:Ljava/lang/Object;

    .line 15468
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->onChanged()V

    .line 15470
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15471
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->getOptions()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->mergeOptions(Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    .line 15473
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 15445
    instance-of v0, p1, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    if-eqz v0, :cond_0

    .line 15446
    check-cast p1, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object p0

    .line 15449
    .end local p0
    :goto_0
    return-object p0

    .line 15448
    .restart local p0
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
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
    .line 15342
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15342
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

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
    .line 15342
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeOptions(Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 15817
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 15818
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 15820
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->newBuilder(Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    .line 15825
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->onChanged()V

    .line 15829
    :goto_1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 15830
    return-object p0

    .line 15823
    :cond_0
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    goto :goto_0

    .line 15827
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public setClientMessageType(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 15647
    if-nez p1, :cond_0

    .line 15648
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15650
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 15651
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->clientMessageType_:Ljava/lang/Object;

    .line 15652
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->onChanged()V

    .line 15653
    return-object p0
.end method

.method public setClientMessageTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 15679
    if-nez p1, :cond_0

    .line 15680
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15682
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 15683
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->clientMessageType_:Ljava/lang/Object;

    .line 15684
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->onChanged()V

    .line 15685
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 15551
    if-nez p1, :cond_0

    .line 15552
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15554
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 15555
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 15556
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->onChanged()V

    .line 15557
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 15573
    if-nez p1, :cond_0

    .line 15574
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15576
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 15577
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 15578
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->onChanged()V

    .line 15579
    return-object p0
.end method

.method public setOptions(Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 15804
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 15805
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->build()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    .line 15806
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->onChanged()V

    .line 15810
    :goto_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 15811
    return-object p0

    .line 15808
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->build()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setOptions(Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 15787
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 15788
    if-nez p1, :cond_0

    .line 15789
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15791
    :cond_0
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    .line 15792
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->onChanged()V

    .line 15796
    :goto_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 15797
    return-object p0

    .line 15794
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setServerMessageType(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 15733
    if-nez p1, :cond_0

    .line 15734
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15736
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 15737
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->serverMessageType_:Ljava/lang/Object;

    .line 15738
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->onChanged()V

    .line 15739
    return-object p0
.end method

.method public setServerMessageTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 15755
    if-nez p1, :cond_0

    .line 15756
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15758
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 15759
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->serverMessageType_:Ljava/lang/Object;

    .line 15760
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->onChanged()V

    .line 15761
    return-object p0
.end method
