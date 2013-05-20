.class public final Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Recognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/speech/s3/Recognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognizerEvent"
.end annotation


# static fields
.field public static final RECOGNITION_EVENT_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasRecognitionEvent:Z

.field private recognitionEvent_:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 717
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 722
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->recognitionEvent_:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .line 760
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->cachedSize:I

    .line 717
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 814
    new-instance v0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 808
    new-instance v0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    check-cast v0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;
    .locals 1

    .prologue
    .line 740
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->clearRecognitionEvent()Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    .line 741
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->cachedSize:I

    .line 742
    return-object p0
.end method

.method public clearRecognitionEvent()Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;
    .locals 1

    .prologue
    .line 734
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->hasRecognitionEvent:Z

    .line 735
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->recognitionEvent_:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .line 736
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 763
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->cachedSize:I

    if-gez v0, :cond_0

    .line 765
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->getSerializedSize()I

    .line 767
    :cond_0
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->cachedSize:I

    return v0
.end method

.method public getRecognitionEvent()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->recognitionEvent_:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 772
    const/4 v0, 0x0

    .line 773
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->hasRecognitionEvent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 774
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->getRecognitionEvent()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 777
    :cond_0
    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->cachedSize:I

    .line 778
    return v0
.end method

.method public hasRecognitionEvent()Z
    .locals 1

    .prologue
    .line 723
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->hasRecognitionEvent:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 746
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->hasRecognitionEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->getRecognitionEvent()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 749
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
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
    .line 714
    invoke-virtual {p0, p1}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 786
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 787
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 791
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 792
    :sswitch_0
    return-object p0

    .line 797
    :sswitch_1
    new-instance v1, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    invoke-direct {v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;-><init>()V

    .line 798
    .local v1, value:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 799
    invoke-virtual {p0, v1}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->setRecognitionEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    goto :goto_0

    .line 787
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public setRecognitionEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 726
    if-nez p1, :cond_0

    .line 727
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 729
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->hasRecognitionEvent:Z

    .line 730
    iput-object p1, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->recognitionEvent_:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .line 731
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
    .line 755
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->hasRecognitionEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->getRecognitionEvent()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 758
    :cond_0
    return-void
.end method
