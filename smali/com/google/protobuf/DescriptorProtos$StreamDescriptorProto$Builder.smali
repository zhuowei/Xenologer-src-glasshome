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
    .line 14316
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 14463
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 14536
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->clientMessageType_:Ljava/lang/Object;

    .line 14639
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->serverMessageType_:Ljava/lang/Object;

    .line 14712
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    .line 14317
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->maybeForceBuilderInitialization()V

    .line 14318
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 14322
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 14463
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 14536
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->clientMessageType_:Ljava/lang/Object;

    .line 14639
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->serverMessageType_:Ljava/lang/Object;

    .line 14712
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    .line 14323
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->maybeForceBuilderInitialization()V

    .line 14324
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14299
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$10800()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 14299
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->create()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 14331
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 14305
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$10500()Lcom/google/protobuf/Descriptors$Descriptor;

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
    .line 14817
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 14818
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 14823
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    .line 14825
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 14326
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 14327
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->getOptionsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 14329
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;
    .locals 2

    .prologue
    .line 14365
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    .line 14366
    .local v0, result:Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;
    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 14367
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 14369
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 14299
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->build()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14299
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->build()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;
    .locals 5

    .prologue
    .line 14373
    new-instance v1, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/protobuf/DescriptorProtos$1;)V

    .line 14374
    .local v1, result:Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 14375
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 14376
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 14377
    or-int/lit8 v2, v2, 0x1

    .line 14379
    :cond_0
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->access$11102(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14380
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 14381
    or-int/lit8 v2, v2, 0x2

    .line 14383
    :cond_1
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->clientMessageType_:Ljava/lang/Object;

    #setter for: Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->access$11202(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14384
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 14385
    or-int/lit8 v2, v2, 0x4

    .line 14387
    :cond_2
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->serverMessageType_:Ljava/lang/Object;

    #setter for: Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->access$11302(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14388
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 14389
    or-int/lit8 v2, v2, 0x8

    .line 14391
    :cond_3
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_4

    .line 14392
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    #setter for: Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->access$11402(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    .line 14396
    :goto_0
    #setter for: Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->access$11502(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;I)I

    .line 14397
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->onBuilt()V

    .line 14398
    return-object v1

    .line 14394
    :cond_4
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    #setter for: Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;
    invoke-static {v1, v3}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->access$11402(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    goto :goto_0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 14299
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14299
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 14299
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 14335
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 14336
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 14337
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 14338
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->clientMessageType_:Ljava/lang/Object;

    .line 14339
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 14340
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->serverMessageType_:Ljava/lang/Object;

    .line 14341
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 14342
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 14343
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    .line 14347
    :goto_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 14348
    return-object p0

    .line 14345
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 14299
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14299
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14299
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->clear()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearClientMessageType()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 14615
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 14616
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->getClientMessageType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->clientMessageType_:Ljava/lang/Object;

    .line 14617
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->onChanged()V

    .line 14618
    return-object p0
.end method

.method public clearName()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 14517
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 14518
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 14519
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->onChanged()V

    .line 14520
    return-object p0
.end method

.method public clearOptions()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 14784
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 14785
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    .line 14786
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->onChanged()V

    .line 14790
    :goto_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 14791
    return-object p0

    .line 14788
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearServerMessageType()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 14693
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 14694
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->getServerMessageType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->serverMessageType_:Ljava/lang/Object;

    .line 14695
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->onChanged()V

    .line 14696
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 14299
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 14299
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 14352
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
    .line 14299
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14299
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14299
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
    .line 14299
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->clone()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientMessageType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 14557
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->clientMessageType_:Ljava/lang/Object;

    .line 14558
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 14559
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 14561
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->clientMessageType_:Ljava/lang/Object;

    .line 14564
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

.method public getClientMessageTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 14577
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->clientMessageType_:Ljava/lang/Object;

    .line 14578
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 14579
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14582
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->clientMessageType_:Ljava/lang/Object;

    .line 14585
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
    .line 14361
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 14299
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14299
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 14357
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$10500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 14474
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 14475
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 14476
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 14478
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 14481
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
    .line 14489
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 14490
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 14491
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14494
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 14497
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
    .line 14725
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 14726
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    .line 14728
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
    .line 14797
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 14798
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->onChanged()V

    .line 14799
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
    .line 14805
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 14806
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$StreamOptionsOrBuilder;

    .line 14808
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    goto :goto_0
.end method

.method public getServerMessageType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 14650
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->serverMessageType_:Ljava/lang/Object;

    .line 14651
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 14652
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 14654
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->serverMessageType_:Ljava/lang/Object;

    .line 14657
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

.method public getServerMessageTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 14665
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->serverMessageType_:Ljava/lang/Object;

    .line 14666
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 14667
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14670
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->serverMessageType_:Ljava/lang/Object;

    .line 14673
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
    .line 14546
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

    .line 14468
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
    .line 14719
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
    .line 14644
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
    .line 14310
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$10600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

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
    .line 14435
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14436
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->getOptions()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14438
    const/4 v0, 0x0

    .line 14441
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
    .line 14299
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14299
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
    .line 14299
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
    .line 14448
    const/4 v2, 0x0

    .line 14450
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

    .line 14455
    if-eqz v2, :cond_0

    .line 14456
    invoke-virtual {p0, v2}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    .line 14459
    :cond_0
    return-object p0

    .line 14451
    :catch_0
    move-exception v1

    .line 14452
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    move-object v2, v0

    .line 14453
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14455
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 14456
    invoke-virtual {p0, v2}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 14411
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 14431
    :goto_0
    return-object p0

    .line 14412
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14413
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 14414
    #getter for: Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->name_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->access$11100(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 14415
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->onChanged()V

    .line 14417
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->hasClientMessageType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14418
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 14419
    #getter for: Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->clientMessageType_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->access$11200(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->clientMessageType_:Ljava/lang/Object;

    .line 14420
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->onChanged()V

    .line 14422
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->hasServerMessageType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14423
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 14424
    #getter for: Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->serverMessageType_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->access$11300(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->serverMessageType_:Ljava/lang/Object;

    .line 14425
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->onChanged()V

    .line 14427
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14428
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;->getOptions()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->mergeOptions(Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    .line 14430
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
    .line 14402
    instance-of v0, p1, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    if-eqz v0, :cond_0

    .line 14403
    check-cast p1, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object p0

    .line 14406
    .end local p0
    :goto_0
    return-object p0

    .line 14405
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
    .line 14299
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14299
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
    .line 14299
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeOptions(Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 14765
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 14766
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 14768
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions;->newBuilder(Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$StreamOptions;)Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    .line 14773
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->onChanged()V

    .line 14777
    :goto_1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 14778
    return-object p0

    .line 14771
    :cond_0
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    goto :goto_0

    .line 14775
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public setClientMessageType(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 14598
    if-nez p1, :cond_0

    .line 14599
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14601
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 14602
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->clientMessageType_:Ljava/lang/Object;

    .line 14603
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->onChanged()V

    .line 14604
    return-object p0
.end method

.method public setClientMessageTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 14630
    if-nez p1, :cond_0

    .line 14631
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14633
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 14634
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->clientMessageType_:Ljava/lang/Object;

    .line 14635
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->onChanged()V

    .line 14636
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 14505
    if-nez p1, :cond_0

    .line 14506
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14508
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 14509
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 14510
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->onChanged()V

    .line 14511
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 14527
    if-nez p1, :cond_0

    .line 14528
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14530
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 14531
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 14532
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->onChanged()V

    .line 14533
    return-object p0
.end method

.method public setOptions(Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 14752
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 14753
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$StreamOptions$Builder;->build()Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    .line 14754
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->onChanged()V

    .line 14758
    :goto_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 14759
    return-object p0

    .line 14756
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
    .line 14735
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 14736
    if-nez p1, :cond_0

    .line 14737
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14739
    :cond_0
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->options_:Lcom/google/protobuf/DescriptorProtos$StreamOptions;

    .line 14740
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->onChanged()V

    .line 14744
    :goto_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 14745
    return-object p0

    .line 14742
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->optionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setServerMessageType(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 14681
    if-nez p1, :cond_0

    .line 14682
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14684
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 14685
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->serverMessageType_:Ljava/lang/Object;

    .line 14686
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->onChanged()V

    .line 14687
    return-object p0
.end method

.method public setServerMessageTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 14703
    if-nez p1, :cond_0

    .line 14704
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14706
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->bitField0_:I

    .line 14707
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->serverMessageType_:Ljava/lang/Object;

    .line 14708
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$StreamDescriptorProto$Builder;->onChanged()V

    .line 14709
    return-object p0
.end method
