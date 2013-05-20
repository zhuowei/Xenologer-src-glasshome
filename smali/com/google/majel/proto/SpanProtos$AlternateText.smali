.class public final Lcom/google/majel/proto/SpanProtos$AlternateText;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "SpanProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/SpanProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlternateText"
.end annotation


# static fields
.field public static final CONFIDENCE_FIELD_NUMBER:I = 0x2

.field public static final TEXT_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private confidence_:F

.field private hasConfidence:Z

.field private hasText:Z

.field private text_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 175
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->text_:Ljava/lang/String;

    .line 192
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->confidence_:F

    .line 228
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->cachedSize:I

    .line 170
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/SpanProtos$AlternateText;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    new-instance v0, Lcom/google/majel/proto/SpanProtos$AlternateText;

    invoke-direct {v0}, Lcom/google/majel/proto/SpanProtos$AlternateText;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/SpanProtos$AlternateText;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/SpanProtos$AlternateText;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/SpanProtos$AlternateText;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 282
    new-instance v0, Lcom/google/majel/proto/SpanProtos$AlternateText;

    invoke-direct {v0}, Lcom/google/majel/proto/SpanProtos$AlternateText;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/SpanProtos$AlternateText;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/SpanProtos$AlternateText;

    check-cast v0, Lcom/google/majel/proto/SpanProtos$AlternateText;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/SpanProtos$AlternateText;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/google/majel/proto/SpanProtos$AlternateText;->clearText()Lcom/google/majel/proto/SpanProtos$AlternateText;

    .line 208
    invoke-virtual {p0}, Lcom/google/majel/proto/SpanProtos$AlternateText;->clearConfidence()Lcom/google/majel/proto/SpanProtos$AlternateText;

    .line 209
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->cachedSize:I

    .line 210
    return-object p0
.end method

.method public clearConfidence()Lcom/google/majel/proto/SpanProtos$AlternateText;
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->hasConfidence:Z

    .line 202
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->confidence_:F

    .line 203
    return-object p0
.end method

.method public clearText()Lcom/google/majel/proto/SpanProtos$AlternateText;
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->hasText:Z

    .line 185
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->text_:Ljava/lang/String;

    .line 186
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->cachedSize:I

    if-gez v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/google/majel/proto/SpanProtos$AlternateText;->getSerializedSize()I

    .line 235
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->cachedSize:I

    return v0
.end method

.method public getConfidence()F
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->confidence_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/SpanProtos$AlternateText;->hasText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/SpanProtos$AlternateText;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/SpanProtos$AlternateText;->hasConfidence()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/SpanProtos$AlternateText;->getConfidence()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 249
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->cachedSize:I

    .line 250
    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->text_:Ljava/lang/String;

    return-object v0
.end method

.method public hasConfidence()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->hasConfidence:Z

    return v0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->hasText:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/SpanProtos$AlternateText;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 259
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 263
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/SpanProtos$AlternateText;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 264
    :sswitch_0
    return-object p0

    .line 269
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/SpanProtos$AlternateText;->setText(Ljava/lang/String;)Lcom/google/majel/proto/SpanProtos$AlternateText;

    goto :goto_0

    .line 273
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/SpanProtos$AlternateText;->setConfidence(F)Lcom/google/majel/proto/SpanProtos$AlternateText;

    goto :goto_0

    .line 259
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x15 -> :sswitch_2
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
    .line 167
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/SpanProtos$AlternateText;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/SpanProtos$AlternateText;

    move-result-object v0

    return-object v0
.end method

.method public setConfidence(F)Lcom/google/majel/proto/SpanProtos$AlternateText;
    .locals 1
    .parameter "value"

    .prologue
    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->hasConfidence:Z

    .line 197
    iput p1, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->confidence_:F

    .line 198
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/majel/proto/SpanProtos$AlternateText;
    .locals 1
    .parameter "value"

    .prologue
    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->hasText:Z

    .line 180
    iput-object p1, p0, Lcom/google/majel/proto/SpanProtos$AlternateText;->text_:Ljava/lang/String;

    .line 181
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
    .line 220
    invoke-virtual {p0}, Lcom/google/majel/proto/SpanProtos$AlternateText;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/SpanProtos$AlternateText;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/SpanProtos$AlternateText;->hasConfidence()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/SpanProtos$AlternateText;->getConfidence()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 226
    :cond_1
    return-void
.end method
