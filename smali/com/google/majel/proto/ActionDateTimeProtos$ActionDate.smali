.class public final Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionDateTimeProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionDateTimeProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionDate"
.end annotation


# static fields
.field public static final DAY_FIELD_NUMBER:I = 0x3

.field public static final MONTH_FIELD_NUMBER:I = 0x2

.field public static final YEAR_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private day_:I

.field private hasDay:Z

.field private hasMonth:Z

.field private hasYear:Z

.field private month_:I

.field private year_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 165
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 170
    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->year_:I

    .line 187
    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->month_:I

    .line 204
    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->day_:I

    .line 244
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->cachedSize:I

    .line 165
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    new-instance v0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 306
    new-instance v0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    check-cast v0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->clearYear()Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    .line 220
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->clearMonth()Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    .line 221
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->clearDay()Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    .line 222
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->cachedSize:I

    .line 223
    return-object p0
.end method

.method public clearDay()Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 213
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->hasDay:Z

    .line 214
    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->day_:I

    .line 215
    return-object p0
.end method

.method public clearMonth()Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 196
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->hasMonth:Z

    .line 197
    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->month_:I

    .line 198
    return-object p0
.end method

.method public clearYear()Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 179
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->hasYear:Z

    .line 180
    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->year_:I

    .line 181
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->cachedSize:I

    if-gez v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->getSerializedSize()I

    .line 251
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->cachedSize:I

    return v0
.end method

.method public getDay()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->day_:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->month_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->hasYear()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->getYear()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->hasMonth()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->getMonth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 265
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->hasDay()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 266
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->getDay()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 269
    :cond_2
    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->cachedSize:I

    .line 270
    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->year_:I

    return v0
.end method

.method public hasDay()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->hasDay:Z

    return v0
.end method

.method public hasMonth()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->hasMonth:Z

    return v0
.end method

.method public hasYear()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->hasYear:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 279
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 283
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 284
    :sswitch_0
    return-object p0

    .line 289
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->setYear(I)Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    goto :goto_0

    .line 293
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->setMonth(I)Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    goto :goto_0

    .line 297
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->setDay(I)Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    goto :goto_0

    .line 279
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
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
    .line 162
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    move-result-object v0

    return-object v0
.end method

.method public setDay(I)Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;
    .locals 1
    .parameter "value"

    .prologue
    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->hasDay:Z

    .line 209
    iput p1, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->day_:I

    .line 210
    return-object p0
.end method

.method public setMonth(I)Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;
    .locals 1
    .parameter "value"

    .prologue
    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->hasMonth:Z

    .line 192
    iput p1, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->month_:I

    .line 193
    return-object p0
.end method

.method public setYear(I)Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;
    .locals 1
    .parameter "value"

    .prologue
    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->hasYear:Z

    .line 175
    iput p1, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->year_:I

    .line 176
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
    .line 233
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->hasYear()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->getYear()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->hasMonth()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->getMonth()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 239
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->hasDay()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->getDay()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 242
    :cond_2
    return-void
.end method
