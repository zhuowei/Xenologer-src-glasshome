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
    .line 12789
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 12982
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->screenshotBytesG2C_:Ljava/lang/Object;

    .line 12790
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->maybeForceBuilderInitialization()V

    .line 12791
    return-void
.end method

.method static synthetic access$12500()Lcom/google/glass/companion/Proto$ScreenShot$Builder;
    .locals 1

    .prologue
    .line 12782
    invoke-static {}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->create()Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/glass/companion/Proto$ScreenShot$Builder;
    .locals 1

    .prologue
    .line 12796
    new-instance v0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 12794
    return-void
.end method


# virtual methods
.method public build()Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 2

    .prologue
    .line 12819
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->buildPartial()Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v0

    .line 12820
    .local v0, result:Lcom/google/glass/companion/Proto$ScreenShot;
    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$ScreenShot;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 12821
    invoke-static {v0}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 12823
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12782
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->build()Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 5

    .prologue
    .line 12827
    new-instance v1, Lcom/google/glass/companion/Proto$ScreenShot;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/glass/companion/Proto$ScreenShot;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V

    .line 12828
    .local v1, result:Lcom/google/glass/companion/Proto$ScreenShot;
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    .line 12829
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 12830
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 12831
    or-int/lit8 v2, v2, 0x1

    .line 12833
    :cond_0
    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->startScreenshotRequestC2G_:Z

    #setter for: Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G_:Z
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$ScreenShot;->access$12702(Lcom/google/glass/companion/Proto$ScreenShot;Z)Z

    .line 12834
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 12835
    or-int/lit8 v2, v2, 0x2

    .line 12837
    :cond_1
    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->stopScreenshotRequestC2G_:Z

    #setter for: Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$ScreenShot;->access$12802(Lcom/google/glass/companion/Proto$ScreenShot;Z)Z

    .line 12838
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 12839
    or-int/lit8 v2, v2, 0x4

    .line 12841
    :cond_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->screenshotBytesG2C_:Ljava/lang/Object;

    #setter for: Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$ScreenShot;->access$12902(Lcom/google/glass/companion/Proto$ScreenShot;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12842
    #setter for: Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/glass/companion/Proto$ScreenShot;->access$13002(Lcom/google/glass/companion/Proto$ScreenShot;I)I

    .line 12843
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12782
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->buildPartial()Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/glass/companion/Proto$ScreenShot$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12800
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 12801
    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->startScreenshotRequestC2G_:Z

    .line 12802
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    .line 12803
    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->stopScreenshotRequestC2G_:Z

    .line 12804
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    .line 12805
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->screenshotBytesG2C_:Ljava/lang/Object;

    .line 12806
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    .line 12807
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 12782
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->clear()Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12782
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->clear()Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearScreenshotBytesG2C()Lcom/google/glass/companion/Proto$ScreenShot$Builder;
    .locals 1

    .prologue
    .line 13059
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    .line 13060
    invoke-static {}, Lcom/google/glass/companion/Proto$ScreenShot;->getDefaultInstance()Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$ScreenShot;->getScreenshotBytesG2C()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->screenshotBytesG2C_:Ljava/lang/Object;

    .line 13062
    return-object p0
.end method

.method public clearStartScreenshotRequestC2G()Lcom/google/glass/companion/Proto$ScreenShot$Builder;
    .locals 1

    .prologue
    .line 12928
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    .line 12929
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->startScreenshotRequestC2G_:Z

    .line 12931
    return-object p0
.end method

.method public clearStopScreenshotRequestC2G()Lcom/google/glass/companion/Proto$ScreenShot$Builder;
    .locals 1

    .prologue
    .line 12976
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    .line 12977
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->stopScreenshotRequestC2G_:Z

    .line 12979
    return-object p0
.end method

.method public clone()Lcom/google/glass/companion/Proto$ScreenShot$Builder;
    .locals 2

    .prologue
    .line 12811
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
    .line 12782
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->clone()Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 12782
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->clone()Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12782
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
    .line 12782
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->clone()Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1

    .prologue
    .line 12815
    invoke-static {}, Lcom/google/glass/companion/Proto$ScreenShot;->getDefaultInstance()Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 12782
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12782
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v0

    return-object v0
.end method

.method public getScreenshotBytesG2C()Ljava/lang/String;
    .locals 4

    .prologue
    .line 13001
    iget-object v1, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->screenshotBytesG2C_:Ljava/lang/Object;

    .line 13002
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 13003
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 13005
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 13006
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 13007
    iput-object v2, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->screenshotBytesG2C_:Ljava/lang/Object;

    .line 13011
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

.method public getScreenshotBytesG2CBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 13023
    iget-object v1, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->screenshotBytesG2C_:Ljava/lang/Object;

    .line 13024
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 13025
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 13028
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->screenshotBytesG2C_:Ljava/lang/Object;

    .line 13031
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
    .line 12905
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->startScreenshotRequestC2G_:Z

    return v0
.end method

.method public getStopScreenshotRequestC2G()Z
    .locals 1

    .prologue
    .line 12953
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->stopScreenshotRequestC2G_:Z

    return v0
.end method

.method public hasScreenshotBytesG2C()Z
    .locals 2

    .prologue
    .line 12991
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

    .line 12895
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
    .line 12943
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
    .line 12864
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/glass/companion/Proto$ScreenShot;)Lcom/google/glass/companion/Proto$ScreenShot$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 12847
    invoke-static {}, Lcom/google/glass/companion/Proto$ScreenShot;->getDefaultInstance()Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 12860
    :goto_0
    return-object p0

    .line 12848
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ScreenShot;->hasStartScreenshotRequestC2G()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12849
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ScreenShot;->getStartScreenshotRequestC2G()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->setStartScreenshotRequestC2G(Z)Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    .line 12851
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ScreenShot;->hasStopScreenshotRequestC2G()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12852
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ScreenShot;->getStopScreenshotRequestC2G()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->setStopScreenshotRequestC2G(Z)Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    .line 12854
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ScreenShot;->hasScreenshotBytesG2C()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12855
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    .line 12856
    #getter for: Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$ScreenShot;->access$12900(Lcom/google/glass/companion/Proto$ScreenShot;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->screenshotBytesG2C_:Ljava/lang/Object;

    .line 12859
    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    #getter for: Lcom/google/glass/companion/Proto$ScreenShot;->unknownFields:Lcom/google/protobuf/ByteString;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$ScreenShot;->access$13100(Lcom/google/glass/companion/Proto$ScreenShot;)Lcom/google/protobuf/ByteString;

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
    .line 12871
    const/4 v2, 0x0

    .line 12873
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

    .line 12878
    if-eqz v2, :cond_0

    .line 12879
    invoke-virtual {p0, v2}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$ScreenShot;)Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    .line 12882
    :cond_0
    return-object p0

    .line 12874
    :catch_0
    move-exception v1

    .line 12875
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/companion/Proto$ScreenShot;

    move-object v2, v0

    .line 12876
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12878
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 12879
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
    .line 12782
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12782
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
    .line 12782
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setScreenshotBytesG2C(Ljava/lang/String;)Lcom/google/glass/companion/Proto$ScreenShot$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 13043
    if-nez p1, :cond_0

    .line 13044
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13046
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    .line 13047
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->screenshotBytesG2C_:Ljava/lang/Object;

    .line 13049
    return-object p0
.end method

.method public setScreenshotBytesG2CBytes(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$ScreenShot$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 13073
    if-nez p1, :cond_0

    .line 13074
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13076
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    .line 13077
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->screenshotBytesG2C_:Ljava/lang/Object;

    .line 13079
    return-object p0
.end method

.method public setStartScreenshotRequestC2G(Z)Lcom/google/glass/companion/Proto$ScreenShot$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 12915
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    .line 12916
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->startScreenshotRequestC2G_:Z

    .line 12918
    return-object p0
.end method

.method public setStopScreenshotRequestC2G(Z)Lcom/google/glass/companion/Proto$ScreenShot$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 12963
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->bitField0_:I

    .line 12964
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->stopScreenshotRequestC2G_:Z

    .line 12966
    return-object p0
.end method
