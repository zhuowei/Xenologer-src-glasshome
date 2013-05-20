.class public final Lcom/google/majel/proto/ActionProtos$IdentifyAudio;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IdentifyAudio"
.end annotation


# instance fields
.field private cachedSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 541
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 556
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionProtos$IdentifyAudio;->cachedSize:I

    .line 541
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionProtos$IdentifyAudio;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 600
    new-instance v0, Lcom/google/majel/proto/ActionProtos$IdentifyAudio;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionProtos$IdentifyAudio;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionProtos$IdentifyAudio;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionProtos$IdentifyAudio;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionProtos$IdentifyAudio;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 594
    new-instance v0, Lcom/google/majel/proto/ActionProtos$IdentifyAudio;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionProtos$IdentifyAudio;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionProtos$IdentifyAudio;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionProtos$IdentifyAudio;

    check-cast v0, Lcom/google/majel/proto/ActionProtos$IdentifyAudio;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/ActionProtos$IdentifyAudio;
    .locals 1

    .prologue
    .line 544
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionProtos$IdentifyAudio;->cachedSize:I

    .line 545
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 559
    iget v0, p0, Lcom/google/majel/proto/ActionProtos$IdentifyAudio;->cachedSize:I

    if-gez v0, :cond_0

    .line 561
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$IdentifyAudio;->getSerializedSize()I

    .line 563
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionProtos$IdentifyAudio;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 1

    .prologue
    .line 568
    const/4 v0, 0x0

    .line 569
    .local v0, size:I
    iput v0, p0, Lcom/google/majel/proto/ActionProtos$IdentifyAudio;->cachedSize:I

    .line 570
    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 549
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionProtos$IdentifyAudio;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 578
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 579
    .local v0, tag:I
    packed-switch v0, :pswitch_data_0

    .line 583
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionProtos$IdentifyAudio;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 584
    :pswitch_0
    return-object p0

    .line 579
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
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
    .line 538
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionProtos$IdentifyAudio;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionProtos$IdentifyAudio;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 0
    .parameter "output"

    .prologue
    .line 554
    return-void
.end method
