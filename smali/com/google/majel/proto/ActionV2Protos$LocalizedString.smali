.class public final Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocalizedString"
.end annotation


# static fields
.field public static final LOCALE_FIELD_NUMBER:I = 0x1

.field public static final TEXT_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasLocale:Z

.field private hasText:Z

.field private locale_:Ljava/lang/String;

.field private text_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8050
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 8055
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->locale_:Ljava/lang/String;

    .line 8072
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->text_:Ljava/lang/String;

    .line 8108
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->cachedSize:I

    .line 8050
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8168
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 8162
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    .locals 1

    .prologue
    .line 8087
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->clearLocale()Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    .line 8088
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->clearText()Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    .line 8089
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->cachedSize:I

    .line 8090
    return-object p0
.end method

.method public clearLocale()Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    .locals 1

    .prologue
    .line 8064
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->hasLocale:Z

    .line 8065
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->locale_:Ljava/lang/String;

    .line 8066
    return-object p0
.end method

.method public clearText()Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    .locals 1

    .prologue
    .line 8081
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->hasText:Z

    .line 8082
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->text_:Ljava/lang/String;

    .line 8083
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 8111
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->cachedSize:I

    if-gez v0, :cond_0

    .line 8113
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->getSerializedSize()I

    .line 8115
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->cachedSize:I

    return v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8056
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->locale_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 8120
    const/4 v0, 0x0

    .line 8121
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->hasLocale()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8122
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->getLocale()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8125
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->hasText()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8126
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8129
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->cachedSize:I

    .line 8130
    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8073
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->text_:Ljava/lang/String;

    return-object v0
.end method

.method public hasLocale()Z
    .locals 1

    .prologue
    .line 8057
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->hasLocale:Z

    return v0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 8074
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->hasText:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 8094
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8138
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 8139
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 8143
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8144
    :sswitch_0
    return-object p0

    .line 8149
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->setLocale(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    goto :goto_0

    .line 8153
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->setText(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    goto :goto_0

    .line 8139
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
    .line 8047
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    move-result-object v0

    return-object v0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    .locals 1
    .parameter "value"

    .prologue
    .line 8059
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->hasLocale:Z

    .line 8060
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->locale_:Ljava/lang/String;

    .line 8061
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    .locals 1
    .parameter "value"

    .prologue
    .line 8076
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->hasText:Z

    .line 8077
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->text_:Ljava/lang/String;

    .line 8078
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
    .line 8100
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->hasLocale()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8101
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 8103
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->hasText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8104
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 8106
    :cond_1
    return-void
.end method
