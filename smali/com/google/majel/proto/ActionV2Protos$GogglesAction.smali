.class public final Lcom/google/majel/proto/ActionV2Protos$GogglesAction;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GogglesAction"
.end annotation


# instance fields
.field private cachedSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7590
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 7605
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$GogglesAction;->cachedSize:I

    .line 7590
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$GogglesAction;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7649
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$GogglesAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$GogglesAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$GogglesAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$GogglesAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$GogglesAction;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 7643
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$GogglesAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$GogglesAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$GogglesAction;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$GogglesAction;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$GogglesAction;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/ActionV2Protos$GogglesAction;
    .locals 1

    .prologue
    .line 7593
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$GogglesAction;->cachedSize:I

    .line 7594
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 7608
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$GogglesAction;->cachedSize:I

    if-gez v0, :cond_0

    .line 7610
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$GogglesAction;->getSerializedSize()I

    .line 7612
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$GogglesAction;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 1

    .prologue
    .line 7617
    const/4 v0, 0x0

    .line 7618
    .local v0, size:I
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$GogglesAction;->cachedSize:I

    .line 7619
    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 7598
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$GogglesAction;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7627
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 7628
    .local v0, tag:I
    packed-switch v0, :pswitch_data_0

    .line 7632
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$GogglesAction;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7633
    :pswitch_0
    return-object p0

    .line 7628
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
    .line 7587
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$GogglesAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$GogglesAction;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 0
    .parameter "output"

    .prologue
    .line 7603
    return-void
.end method
