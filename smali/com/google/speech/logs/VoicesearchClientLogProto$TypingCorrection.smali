.class public final Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VoicesearchClientLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/VoicesearchClientLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TypingCorrection"
.end annotation


# static fields
.field public static final RECOGNIZER_SEGMENT_INDEX_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasRecognizerSegmentIndex:Z

.field private recognizerSegmentIndex_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2401
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2406
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->recognizerSegmentIndex_:I

    .line 2438
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->cachedSize:I

    .line 2401
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2490
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2484
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;
    .locals 1

    .prologue
    .line 2421
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->clearRecognizerSegmentIndex()Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;

    .line 2422
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->cachedSize:I

    .line 2423
    return-object p0
.end method

.method public clearRecognizerSegmentIndex()Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2415
    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->hasRecognizerSegmentIndex:Z

    .line 2416
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->recognizerSegmentIndex_:I

    .line 2417
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2441
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->cachedSize:I

    if-gez v0, :cond_0

    .line 2443
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->getSerializedSize()I

    .line 2445
    :cond_0
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->cachedSize:I

    return v0
.end method

.method public getRecognizerSegmentIndex()I
    .locals 1

    .prologue
    .line 2407
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->recognizerSegmentIndex_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2450
    const/4 v0, 0x0

    .line 2451
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->hasRecognizerSegmentIndex()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2452
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->getRecognizerSegmentIndex()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2455
    :cond_0
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->cachedSize:I

    .line 2456
    return v0
.end method

.method public hasRecognizerSegmentIndex()Z
    .locals 1

    .prologue
    .line 2408
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->hasRecognizerSegmentIndex:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2427
    const/4 v0, 0x1

    return v0
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
    .line 2398
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2464
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2465
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2469
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2470
    :sswitch_0
    return-object p0

    .line 2475
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->setRecognizerSegmentIndex(I)Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;

    goto :goto_0

    .line 2465
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setRecognizerSegmentIndex(I)Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;
    .locals 1
    .parameter "value"

    .prologue
    .line 2410
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->hasRecognizerSegmentIndex:Z

    .line 2411
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->recognizerSegmentIndex_:I

    .line 2412
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
    .line 2433
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->hasRecognizerSegmentIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2434
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->getRecognizerSegmentIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2436
    :cond_0
    return-void
.end method
