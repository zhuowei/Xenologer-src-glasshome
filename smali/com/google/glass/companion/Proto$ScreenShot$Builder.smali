.class public final Lcom/google/glass/companion/Proto$ScreenShot$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Proto.java"

# interfaces
.implements Lcom/google/glass/companion/Proto$ScreenShotOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto$ScreenShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/glass/companion/Proto$ScreenShot;",
        "Lcom/google/glass/companion/Proto$ScreenShot$Builder;",
        ">;",
        "Lcom/google/glass/companion/Proto$ScreenShotOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private screenshotBytesG2C_:Ljava/lang/Object;

.field private startScreenshotRequestC2G_:Z

.field private stopScreenshotRequestC2G_:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 9442
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 9635
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->screenshotBytesG2C_:Ljava/lang/Object;

    .line 9443
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->maybeForceBuilderInitialization()V

    .line 9444
    return-void
.end method

.method static synthetic access$8400()Lcom/google/glass/companion/Proto$ScreenShot$Builder;
    .locals 1

    .prologue
    .line 9435
    invoke-static {}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->create()Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/glass/companion/Proto$ScreenShot$Builder;
    .locals 1

    .prologue
    .line 9449
    new-instance v0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 9447
    return-void
.end method


# virtual methods
.method public build()Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 2

    .prologue
    .line 9472
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->buildPartial()Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v0

    .line 9473
    .local v0, result:Lcom/google/glass/companion/Proto$ScreenShot;
    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$ScreenShot;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9474
    invoke-static {v0}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 9476
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9435
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->build()Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 5

    .prologue
    .line 9480
    new-instance v1, Lcom/google/glass/companion/Proto$ScreenShot;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/glass/companion/Proto$ScreenShot;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V

    .line 9481
    .local v1, result:Lcom/google/glass/companion/Proto$ScreenShot;
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    .line 9482
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 9483
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 9484
    or-int/lit8 v2, v2, 0x1

    .line 9486
    :cond_0
    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->startScreenshotRequestC2G_:Z

    #setter for: Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G_:Z
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$ScreenShot;->access$8602(Lcom/google/glass/companion/Proto$ScreenShot;Z)Z

    .line 9487
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 9488
    or-int/lit8 v2, v2, 0x2

    .line 9490
    :cond_1
    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->stopScreenshotRequestC2G_:Z

    #setter for: Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$ScreenShot;->access$8702(Lcom/google/glass/companion/Proto$ScreenShot;Z)Z

    .line 9491
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 9492
    or-int/lit8 v2, v2, 0x4

    .line 9494
    :cond_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->screenshotBytesG2C_:Ljava/lang/Object;

    #setter for: Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$ScreenShot;->access$8802(Lcom/google/glass/companion/Proto$ScreenShot;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9495
    #setter for: Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/glass/companion/Proto$ScreenShot;->access$8902(Lcom/google/glass/companion/Proto$ScreenShot;I)I

    .line 9496
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9435
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->buildPartial()Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/glass/companion/Proto$ScreenShot$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9453
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 9454
    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->startScreenshotRequestC2G_:Z

    .line 9455
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    .line 9456
    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->stopScreenshotRequestC2G_:Z

    .line 9457
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    .line 9458
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->screenshotBytesG2C_:Ljava/lang/Object;

    .line 9459
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    .line 9460
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 9435
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->clear()Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9435
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->clear()Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearScreenshotBytesG2C()Lcom/google/glass/companion/Proto$ScreenShot$Builder;
    .locals 1

    .prologue
    .line 9709
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    .line 9710
    invoke-static {}, Lcom/google/glass/companion/Proto$ScreenShot;->getDefaultInstance()Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$ScreenShot;->getScreenshotBytesG2C()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->screenshotBytesG2C_:Ljava/lang/Object;

    .line 9712
    return-object p0
.end method

.method public clearStartScreenshotRequestC2G()Lcom/google/glass/companion/Proto$ScreenShot$Builder;
    .locals 1

    .prologue
    .line 9581
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    .line 9582
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->startScreenshotRequestC2G_:Z

    .line 9584
    return-object p0
.end method

.method public clearStopScreenshotRequestC2G()Lcom/google/glass/companion/Proto$ScreenShot$Builder;
    .locals 1

    .prologue
    .line 9629
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    .line 9630
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->stopScreenshotRequestC2G_:Z

    .line 9632
    return-object p0
.end method

.method public clone()Lcom/google/glass/companion/Proto$ScreenShot$Builder;
    .locals 2

    .prologue
    .line 9464
    invoke-static {}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->create()Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->buildPartial()Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$ScreenShot;)Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 9435
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->clone()Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 9435
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->clone()Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9435
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->clone()Lcom/google/glass/companion/Proto$ScreenShot$Builder;

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
    .line 9435
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->clone()Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1

    .prologue
    .line 9468
    invoke-static {}, Lcom/google/glass/companion/Proto$ScreenShot;->getDefaultInstance()Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 9435
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9435
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v0

    return-object v0
.end method

.method public getScreenshotBytesG2C()Ljava/lang/String;
    .locals 3

    .prologue
    .line 9654
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->screenshotBytesG2C_:Ljava/lang/Object;

    .line 9655
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 9656
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 9658
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->screenshotBytesG2C_:Ljava/lang/Object;

    .line 9661
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

.method public getScreenshotBytesG2CBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 9673
    iget-object v1, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->screenshotBytesG2C_:Ljava/lang/Object;

    .line 9674
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 9675
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 9678
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->screenshotBytesG2C_:Ljava/lang/Object;

    .line 9681
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

.method public getStartScreenshotRequestC2G()Z
    .locals 1

    .prologue
    .line 9558
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->startScreenshotRequestC2G_:Z

    return v0
.end method

.method public getStopScreenshotRequestC2G()Z
    .locals 1

    .prologue
    .line 9606
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->stopScreenshotRequestC2G_:Z

    return v0
.end method

.method public hasScreenshotBytesG2C()Z
    .locals 2

    .prologue
    .line 9644
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

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

.method public hasStartScreenshotRequestC2G()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 9548
    iget v1, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStopScreenshotRequestC2G()Z
    .locals 2

    .prologue
    .line 9596
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 9517
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/glass/companion/Proto$ScreenShot;)Lcom/google/glass/companion/Proto$ScreenShot$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 9500
    invoke-static {}, Lcom/google/glass/companion/Proto$ScreenShot;->getDefaultInstance()Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 9513
    :goto_0
    return-object p0

    .line 9501
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ScreenShot;->hasStartScreenshotRequestC2G()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9502
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ScreenShot;->getStartScreenshotRequestC2G()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->setStartScreenshotRequestC2G(Z)Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    .line 9504
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ScreenShot;->hasStopScreenshotRequestC2G()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9505
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ScreenShot;->getStopScreenshotRequestC2G()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->setStopScreenshotRequestC2G(Z)Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    .line 9507
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ScreenShot;->hasScreenshotBytesG2C()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9508
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    .line 9509
    #getter for: Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$ScreenShot;->access$8800(Lcom/google/glass/companion/Proto$ScreenShot;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->screenshotBytesG2C_:Ljava/lang/Object;

    .line 9512
    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    #getter for: Lcom/google/glass/companion/Proto$ScreenShot;->unknownFields:Lcom/google/protobuf/ByteString;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$ScreenShot;->access$9000(Lcom/google/glass/companion/Proto$ScreenShot;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->concat(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->setUnknownFields(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$ScreenShot$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9524
    const/4 v2, 0x0

    .line 9526
    .local v2, parsedMessage:Lcom/google/glass/companion/Proto$ScreenShot;
    :try_start_0
    sget-object v3, Lcom/google/glass/companion/Proto$ScreenShot;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/companion/Proto$ScreenShot;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9531
    if-eqz v2, :cond_0

    .line 9532
    invoke-virtual {p0, v2}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$ScreenShot;)Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    .line 9535
    :cond_0
    return-object p0

    .line 9527
    :catch_0
    move-exception v1

    .line 9528
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/companion/Proto$ScreenShot;

    move-object v2, v0

    .line 9529
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9531
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 9532
    invoke-virtual {p0, v2}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$ScreenShot;)Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    :cond_1
    throw v3
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
    .line 9435
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9435
    check-cast p1, Lcom/google/glass/companion/Proto$ScreenShot;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$ScreenShot;)Lcom/google/glass/companion/Proto$ScreenShot$Builder;

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
    .line 9435
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setScreenshotBytesG2C(Ljava/lang/String;)Lcom/google/glass/companion/Proto$ScreenShot$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 9693
    if-nez p1, :cond_0

    .line 9694
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9696
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    .line 9697
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->screenshotBytesG2C_:Ljava/lang/Object;

    .line 9699
    return-object p0
.end method

.method public setScreenshotBytesG2CBytes(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$ScreenShot$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 9723
    if-nez p1, :cond_0

    .line 9724
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9726
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    .line 9727
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->screenshotBytesG2C_:Ljava/lang/Object;

    .line 9729
    return-object p0
.end method

.method public setStartScreenshotRequestC2G(Z)Lcom/google/glass/companion/Proto$ScreenShot$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 9568
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    .line 9569
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->startScreenshotRequestC2G_:Z

    .line 9571
    return-object p0
.end method

.method public setStopScreenshotRequestC2G(Z)Lcom/google/glass/companion/Proto$ScreenShot$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 9616
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    .line 9617
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->stopScreenshotRequestC2G_:Z

    .line 9619
    return-object p0
.end method
