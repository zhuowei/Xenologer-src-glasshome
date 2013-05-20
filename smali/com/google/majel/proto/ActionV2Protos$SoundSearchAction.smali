.class public final Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SoundSearchAction"
.end annotation


# instance fields
.field private cachedSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7523
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 7538
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;->cachedSize:I

    .line 7523
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7582
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 7576
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;
    .locals 1

    .prologue
    .line 7526
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;->cachedSize:I

    .line 7527
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 7541
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;->cachedSize:I

    if-gez v0, :cond_0

    .line 7543
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;->getSerializedSize()I

    .line 7545
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 1

    .prologue
    .line 7550
    const/4 v0, 0x0

    .line 7551
    .local v0, size:I
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;->cachedSize:I

    .line 7552
    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 7531
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7560
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 7561
    .local v0, tag:I
    packed-switch v0, :pswitch_data_0

    .line 7565
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7566
    :pswitch_0
    return-object p0

    .line 7561
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
    .line 7520
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$SoundSearchAction;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 0
    .parameter "output"

    .prologue
    .line 7536
    return-void
.end method
