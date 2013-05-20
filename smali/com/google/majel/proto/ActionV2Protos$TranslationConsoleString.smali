.class public final Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TranslationConsoleString"
.end annotation


# static fields
.field public static final MESSAGE_ID_FIELD_NUMBER:I = 0x2

.field public static final SET_ID_FIELD_NUMBER:I = 0x1

.field public static final TEXT_FIELD_NUMBER:I = 0x3


# instance fields
.field private cachedSize:I

.field private hasMessageId:Z

.field private hasSetId:Z

.field private hasText:Z

.field private messageId_:I

.field private setId_:I

.field private text_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7895
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 7900
    const/16 v0, 0x36

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->setId_:I

    .line 7917
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->messageId_:I

    .line 7934
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->text_:Ljava/lang/String;

    .line 7974
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->cachedSize:I

    .line 7895
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8042
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 8036
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;
    .locals 1

    .prologue
    .line 7949
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->clearSetId()Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    .line 7950
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->clearMessageId()Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    .line 7951
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->clearText()Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    .line 7952
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->cachedSize:I

    .line 7953
    return-object p0
.end method

.method public clearMessageId()Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7926
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->hasMessageId:Z

    .line 7927
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->messageId_:I

    .line 7928
    return-object p0
.end method

.method public clearSetId()Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;
    .locals 1

    .prologue
    .line 7909
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->hasSetId:Z

    .line 7910
    const/16 v0, 0x36

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->setId_:I

    .line 7911
    return-object p0
.end method

.method public clearText()Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;
    .locals 1

    .prologue
    .line 7943
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->hasText:Z

    .line 7944
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->text_:Ljava/lang/String;

    .line 7945
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 7977
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->cachedSize:I

    if-gez v0, :cond_0

    .line 7979
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->getSerializedSize()I

    .line 7981
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->cachedSize:I

    return v0
.end method

.method public getMessageId()I
    .locals 1

    .prologue
    .line 7918
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->messageId_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 7986
    const/4 v0, 0x0

    .line 7987
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->hasSetId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7988
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->getSetId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7991
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->hasMessageId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7992
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->getMessageId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7995
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->hasText()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7996
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7999
    :cond_2
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->cachedSize:I

    .line 8000
    return v0
.end method

.method public getSetId()I
    .locals 1

    .prologue
    .line 7901
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->setId_:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7935
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->text_:Ljava/lang/String;

    return-object v0
.end method

.method public hasMessageId()Z
    .locals 1

    .prologue
    .line 7919
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->hasMessageId:Z

    return v0
.end method

.method public hasSetId()Z
    .locals 1

    .prologue
    .line 7902
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->hasSetId:Z

    return v0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 7936
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->hasText:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 7957
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8008
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 8009
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 8013
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8014
    :sswitch_0
    return-object p0

    .line 8019
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->setSetId(I)Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    goto :goto_0

    .line 8023
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->setMessageId(I)Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    goto :goto_0

    .line 8027
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->setText(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    goto :goto_0

    .line 8009
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 7892
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    move-result-object v0

    return-object v0
.end method

.method public setMessageId(I)Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;
    .locals 1
    .parameter "value"

    .prologue
    .line 7921
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->hasMessageId:Z

    .line 7922
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->messageId_:I

    .line 7923
    return-object p0
.end method

.method public setSetId(I)Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;
    .locals 1
    .parameter "value"

    .prologue
    .line 7904
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->hasSetId:Z

    .line 7905
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->setId_:I

    .line 7906
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;
    .locals 1
    .parameter "value"

    .prologue
    .line 7938
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->hasText:Z

    .line 7939
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->text_:Ljava/lang/String;

    .line 7940
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
    .line 7963
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->hasSetId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7964
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->getSetId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 7966
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->hasMessageId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7967
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->getMessageId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 7969
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->hasText()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7970
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7972
    :cond_2
    return-void
.end method
