.class public final Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateSocialNetworkAction"
.end annotation


# static fields
.field public static final SOCIAL_NETWORK_FACEBOOK:I = 0x0

.field public static final SOCIAL_NETWORK_FIELD_NUMBER:I = 0x3

.field public static final SOCIAL_NETWORK_GOOGLE_PLUS:I = 0x1

.field public static final SOCIAL_NETWORK_TWITTER:I = 0x2

.field public static final STATUS_MESSAGE_FIELD_NUMBER:I = 0x1

.field public static final STATUS_MESSAGE_SPAN_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasSocialNetwork:Z

.field private hasStatusMessage:Z

.field private hasStatusMessageSpan:Z

.field private socialNetwork_:I

.field private statusMessageSpan_:Lcom/google/majel/proto/SpanProtos$Span;

.field private statusMessage_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6436
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 6446
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->statusMessage_:Ljava/lang/String;

    .line 6463
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->statusMessageSpan_:Lcom/google/majel/proto/SpanProtos$Span;

    .line 6483
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->socialNetwork_:I

    .line 6523
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->cachedSize:I

    .line 6436
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6593
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 6587
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;
    .locals 1

    .prologue
    .line 6498
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->clearStatusMessage()Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;

    .line 6499
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->clearStatusMessageSpan()Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;

    .line 6500
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->clearSocialNetwork()Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;

    .line 6501
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->cachedSize:I

    .line 6502
    return-object p0
.end method

.method public clearSocialNetwork()Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6492
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->hasSocialNetwork:Z

    .line 6493
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->socialNetwork_:I

    .line 6494
    return-object p0
.end method

.method public clearStatusMessage()Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;
    .locals 1

    .prologue
    .line 6455
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->hasStatusMessage:Z

    .line 6456
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->statusMessage_:Ljava/lang/String;

    .line 6457
    return-object p0
.end method

.method public clearStatusMessageSpan()Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;
    .locals 1

    .prologue
    .line 6475
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->hasStatusMessageSpan:Z

    .line 6476
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->statusMessageSpan_:Lcom/google/majel/proto/SpanProtos$Span;

    .line 6477
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 6526
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->cachedSize:I

    if-gez v0, :cond_0

    .line 6528
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->getSerializedSize()I

    .line 6530
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 6535
    const/4 v0, 0x0

    .line 6536
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->hasStatusMessage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6537
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6540
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->hasStatusMessageSpan()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6541
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->getStatusMessageSpan()Lcom/google/majel/proto/SpanProtos$Span;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6544
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->hasSocialNetwork()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6545
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->getSocialNetwork()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6548
    :cond_2
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->cachedSize:I

    .line 6549
    return v0
.end method

.method public getSocialNetwork()I
    .locals 1

    .prologue
    .line 6484
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->socialNetwork_:I

    return v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6447
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->statusMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusMessageSpan()Lcom/google/majel/proto/SpanProtos$Span;
    .locals 1

    .prologue
    .line 6465
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->statusMessageSpan_:Lcom/google/majel/proto/SpanProtos$Span;

    return-object v0
.end method

.method public hasSocialNetwork()Z
    .locals 1

    .prologue
    .line 6485
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->hasSocialNetwork:Z

    return v0
.end method

.method public hasStatusMessage()Z
    .locals 1

    .prologue
    .line 6448
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->hasStatusMessage:Z

    return v0
.end method

.method public hasStatusMessageSpan()Z
    .locals 1

    .prologue
    .line 6464
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->hasStatusMessageSpan:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 6506
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6557
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 6558
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 6562
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6563
    :sswitch_0
    return-object p0

    .line 6568
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->setStatusMessage(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;

    goto :goto_0

    .line 6572
    :sswitch_2
    new-instance v1, Lcom/google/majel/proto/SpanProtos$Span;

    invoke-direct {v1}, Lcom/google/majel/proto/SpanProtos$Span;-><init>()V

    .line 6573
    .local v1, value:Lcom/google/majel/proto/SpanProtos$Span;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 6574
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->setStatusMessageSpan(Lcom/google/majel/proto/SpanProtos$Span;)Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;

    goto :goto_0

    .line 6578
    .end local v1           #value:Lcom/google/majel/proto/SpanProtos$Span;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->setSocialNetwork(I)Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;

    goto :goto_0

    .line 6558
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6433
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;

    move-result-object v0

    return-object v0
.end method

.method public setSocialNetwork(I)Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 6487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->hasSocialNetwork:Z

    .line 6488
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->socialNetwork_:I

    .line 6489
    return-object p0
.end method

.method public setStatusMessage(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 6450
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->hasStatusMessage:Z

    .line 6451
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->statusMessage_:Ljava/lang/String;

    .line 6452
    return-object p0
.end method

.method public setStatusMessageSpan(Lcom/google/majel/proto/SpanProtos$Span;)Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 6467
    if-nez p1, :cond_0

    .line 6468
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6470
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->hasStatusMessageSpan:Z

    .line 6471
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->statusMessageSpan_:Lcom/google/majel/proto/SpanProtos$Span;

    .line 6472
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6512
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->hasStatusMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6513
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6515
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->hasStatusMessageSpan()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6516
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->getStatusMessageSpan()Lcom/google/majel/proto/SpanProtos$Span;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 6518
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->hasSocialNetwork()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6519
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$UpdateSocialNetworkAction;->getSocialNetwork()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 6521
    :cond_2
    return-void
.end method
