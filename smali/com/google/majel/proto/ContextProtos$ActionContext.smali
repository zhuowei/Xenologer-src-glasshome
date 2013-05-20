.class public final Lcom/google/majel/proto/ContextProtos$ActionContext;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ContextProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ContextProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionContext"
.end annotation


# static fields
.field public static final ACTION_FIELD_NUMBER:I = 0x1


# instance fields
.field private action_:Lcom/google/majel/proto/ActionV2Protos$ActionV2;

.field private cachedSize:I

.field private hasAction:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ContextProtos$ActionContext;->action_:Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ContextProtos$ActionContext;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ContextProtos$ActionContext;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Lcom/google/majel/proto/ContextProtos$ActionContext;

    invoke-direct {v0}, Lcom/google/majel/proto/ContextProtos$ActionContext;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ContextProtos$ActionContext;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ContextProtos$ActionContext;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ContextProtos$ActionContext;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Lcom/google/majel/proto/ContextProtos$ActionContext;

    invoke-direct {v0}, Lcom/google/majel/proto/ContextProtos$ActionContext;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ContextProtos$ActionContext;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ContextProtos$ActionContext;

    check-cast v0, Lcom/google/majel/proto/ContextProtos$ActionContext;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/ContextProtos$ActionContext;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/majel/proto/ContextProtos$ActionContext;->clearAction()Lcom/google/majel/proto/ContextProtos$ActionContext;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ContextProtos$ActionContext;->cachedSize:I

    .line 35
    return-object p0
.end method

.method public clearAction()Lcom/google/majel/proto/ContextProtos$ActionContext;
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ContextProtos$ActionContext;->hasAction:Z

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ContextProtos$ActionContext;->action_:Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    .line 29
    return-object p0
.end method

.method public getAction()Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/majel/proto/ContextProtos$ActionContext;->action_:Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/google/majel/proto/ContextProtos$ActionContext;->cachedSize:I

    if-gez v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/google/majel/proto/ContextProtos$ActionContext;->getSerializedSize()I

    .line 57
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ContextProtos$ActionContext;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ContextProtos$ActionContext;->hasAction()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ContextProtos$ActionContext;->getAction()Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 67
    :cond_0
    iput v0, p0, Lcom/google/majel/proto/ContextProtos$ActionContext;->cachedSize:I

    .line 68
    return v0
.end method

.method public hasAction()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/google/majel/proto/ContextProtos$ActionContext;->hasAction:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ContextProtos$ActionContext;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 77
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 81
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ContextProtos$ActionContext;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    :sswitch_0
    return-object p0

    .line 87
    :sswitch_1
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$ActionV2;-><init>()V

    .line 88
    .local v1, value:Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 89
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ContextProtos$ActionContext;->setAction(Lcom/google/majel/proto/ActionV2Protos$ActionV2;)Lcom/google/majel/proto/ContextProtos$ActionContext;

    goto :goto_0

    .line 77
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ContextProtos$ActionContext;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ContextProtos$ActionContext;

    move-result-object v0

    return-object v0
.end method

.method public setAction(Lcom/google/majel/proto/ActionV2Protos$ActionV2;)Lcom/google/majel/proto/ContextProtos$ActionContext;
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    if-nez p1, :cond_0

    .line 20
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ContextProtos$ActionContext;->hasAction:Z

    .line 23
    iput-object p1, p0, Lcom/google/majel/proto/ContextProtos$ActionContext;->action_:Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    .line 24
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
    .line 45
    invoke-virtual {p0}, Lcom/google/majel/proto/ContextProtos$ActionContext;->hasAction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ContextProtos$ActionContext;->getAction()Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 48
    :cond_0
    return-void
.end method
