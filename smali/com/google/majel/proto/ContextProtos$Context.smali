.class public final Lcom/google/majel/proto/ContextProtos$Context;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ContextProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ContextProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Context"
.end annotation


# static fields
.field public static final ACTION_CONTEXT_FIELD_NUMBER:I = 0x2

.field public static final TEXTUAL_CONTEXT_FIELD_NUMBER:I = 0x1


# instance fields
.field private actionContext_:Lcom/google/majel/proto/ContextProtos$ActionContext;

.field private cachedSize:I

.field private hasActionContext:Z

.field private hasTextualContext:Z

.field private textualContext_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ContextProtos$Context;->textualContext_:Ljava/lang/String;

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ContextProtos$Context;->actionContext_:Lcom/google/majel/proto/ContextProtos$ActionContext;

    .line 173
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ContextProtos$Context;->cachedSize:I

    .line 112
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ContextProtos$Context;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    new-instance v0, Lcom/google/majel/proto/ContextProtos$Context;

    invoke-direct {v0}, Lcom/google/majel/proto/ContextProtos$Context;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ContextProtos$Context;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ContextProtos$Context;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ContextProtos$Context;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 229
    new-instance v0, Lcom/google/majel/proto/ContextProtos$Context;

    invoke-direct {v0}, Lcom/google/majel/proto/ContextProtos$Context;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ContextProtos$Context;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ContextProtos$Context;

    check-cast v0, Lcom/google/majel/proto/ContextProtos$Context;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/ContextProtos$Context;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/google/majel/proto/ContextProtos$Context;->clearTextualContext()Lcom/google/majel/proto/ContextProtos$Context;

    .line 153
    invoke-virtual {p0}, Lcom/google/majel/proto/ContextProtos$Context;->clearActionContext()Lcom/google/majel/proto/ContextProtos$Context;

    .line 154
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ContextProtos$Context;->cachedSize:I

    .line 155
    return-object p0
.end method

.method public clearActionContext()Lcom/google/majel/proto/ContextProtos$Context;
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ContextProtos$Context;->hasActionContext:Z

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ContextProtos$Context;->actionContext_:Lcom/google/majel/proto/ContextProtos$ActionContext;

    .line 148
    return-object p0
.end method

.method public clearTextualContext()Lcom/google/majel/proto/ContextProtos$Context;
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ContextProtos$Context;->hasTextualContext:Z

    .line 127
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ContextProtos$Context;->textualContext_:Ljava/lang/String;

    .line 128
    return-object p0
.end method

.method public getActionContext()Lcom/google/majel/proto/ContextProtos$ActionContext;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/majel/proto/ContextProtos$Context;->actionContext_:Lcom/google/majel/proto/ContextProtos$ActionContext;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/google/majel/proto/ContextProtos$Context;->cachedSize:I

    if-gez v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/google/majel/proto/ContextProtos$Context;->getSerializedSize()I

    .line 180
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ContextProtos$Context;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ContextProtos$Context;->hasTextualContext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ContextProtos$Context;->getTextualContext()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ContextProtos$Context;->hasActionContext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ContextProtos$Context;->getActionContext()Lcom/google/majel/proto/ContextProtos$ActionContext;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 194
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/ContextProtos$Context;->cachedSize:I

    .line 195
    return v0
.end method

.method public getTextualContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/majel/proto/ContextProtos$Context;->textualContext_:Ljava/lang/String;

    return-object v0
.end method

.method public hasActionContext()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/google/majel/proto/ContextProtos$Context;->hasActionContext:Z

    return v0
.end method

.method public hasTextualContext()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/google/majel/proto/ContextProtos$Context;->hasTextualContext:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ContextProtos$Context;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 204
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 208
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ContextProtos$Context;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 209
    :sswitch_0
    return-object p0

    .line 214
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ContextProtos$Context;->setTextualContext(Ljava/lang/String;)Lcom/google/majel/proto/ContextProtos$Context;

    goto :goto_0

    .line 218
    :sswitch_2
    new-instance v1, Lcom/google/majel/proto/ContextProtos$ActionContext;

    invoke-direct {v1}, Lcom/google/majel/proto/ContextProtos$ActionContext;-><init>()V

    .line 219
    .local v1, value:Lcom/google/majel/proto/ContextProtos$ActionContext;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 220
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ContextProtos$Context;->setActionContext(Lcom/google/majel/proto/ContextProtos$ActionContext;)Lcom/google/majel/proto/ContextProtos$Context;

    goto :goto_0

    .line 204
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 109
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ContextProtos$Context;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ContextProtos$Context;

    move-result-object v0

    return-object v0
.end method

.method public setActionContext(Lcom/google/majel/proto/ContextProtos$ActionContext;)Lcom/google/majel/proto/ContextProtos$Context;
    .locals 1
    .parameter "value"

    .prologue
    .line 138
    if-nez p1, :cond_0

    .line 139
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 141
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ContextProtos$Context;->hasActionContext:Z

    .line 142
    iput-object p1, p0, Lcom/google/majel/proto/ContextProtos$Context;->actionContext_:Lcom/google/majel/proto/ContextProtos$ActionContext;

    .line 143
    return-object p0
.end method

.method public setTextualContext(Ljava/lang/String;)Lcom/google/majel/proto/ContextProtos$Context;
    .locals 1
    .parameter "value"

    .prologue
    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ContextProtos$Context;->hasTextualContext:Z

    .line 122
    iput-object p1, p0, Lcom/google/majel/proto/ContextProtos$Context;->textualContext_:Ljava/lang/String;

    .line 123
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
    .line 165
    invoke-virtual {p0}, Lcom/google/majel/proto/ContextProtos$Context;->hasTextualContext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ContextProtos$Context;->getTextualContext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ContextProtos$Context;->hasActionContext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ContextProtos$Context;->getActionContext()Lcom/google/majel/proto/ContextProtos$ActionContext;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 171
    :cond_1
    return-void
.end method
