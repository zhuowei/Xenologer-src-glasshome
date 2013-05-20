.class public final Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CalendarProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/CalendarProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CalendarDateTime"
.end annotation


# static fields
.field public static final DATE_FIELD_NUMBER:I = 0x3

.field public static final DATE_UNSPECIFIED_FIELD_NUMBER:I = 0x4

.field public static final OFFSET_MS_FIELD_NUMBER:I = 0x2

.field public static final TIME_FIELD_NUMBER:I = 0x5

.field public static final TIME_MS_FIELD_NUMBER:I = 0x1

.field public static final TIME_UNSPECIFIED_FIELD_NUMBER:I = 0x6


# instance fields
.field private cachedSize:I

.field private dateUnspecified_:Z

.field private date_:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

.field private hasDate:Z

.field private hasDateUnspecified:Z

.field private hasOffsetMs:Z

.field private hasTime:Z

.field private hasTimeMs:Z

.field private hasTimeUnspecified:Z

.field private offsetMs_:I

.field private timeMs_:J

.field private timeUnspecified_:Z

.field private time_:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->timeMs_:J

    .line 32
    iput v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->offsetMs_:I

    .line 49
    iput-object v3, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->date_:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    .line 69
    iput-boolean v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->dateUnspecified_:Z

    .line 86
    iput-object v3, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->time_:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    .line 106
    iput-boolean v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->timeUnspecified_:Z

    .line 158
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    new-instance v0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    invoke-direct {v0}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 248
    new-instance v0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    invoke-direct {v0}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    check-cast v0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->clearTimeMs()Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    .line 122
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->clearOffsetMs()Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    .line 123
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->clearDate()Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    .line 124
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->clearDateUnspecified()Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    .line 125
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->clearTime()Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    .line 126
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->clearTimeUnspecified()Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->cachedSize:I

    .line 128
    return-object p0
.end method

.method public clearDate()Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->hasDate:Z

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->date_:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    .line 63
    return-object p0
.end method

.method public clearDateUnspecified()Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->hasDateUnspecified:Z

    .line 79
    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->dateUnspecified_:Z

    .line 80
    return-object p0
.end method

.method public clearOffsetMs()Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->hasOffsetMs:Z

    .line 42
    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->offsetMs_:I

    .line 43
    return-object p0
.end method

.method public clearTime()Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->hasTime:Z

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->time_:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    .line 100
    return-object p0
.end method

.method public clearTimeMs()Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;
    .locals 2

    .prologue
    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->hasTimeMs:Z

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->timeMs_:J

    .line 26
    return-object p0
.end method

.method public clearTimeUnspecified()Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->hasTimeUnspecified:Z

    .line 116
    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->timeUnspecified_:Z

    .line 117
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->cachedSize:I

    if-gez v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->getSerializedSize()I

    .line 165
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->cachedSize:I

    return v0
.end method

.method public getDate()Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->date_:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    return-object v0
.end method

.method public getDateUnspecified()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->dateUnspecified_:Z

    return v0
.end method

.method public getOffsetMs()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->offsetMs_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->hasTimeMs()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->getTimeMs()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->hasOffsetMs()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->getOffsetMs()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 179
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->hasDate()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->getDate()Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 183
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->hasDateUnspecified()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 184
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->getDateUnspecified()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 187
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->hasTime()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 188
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->getTime()Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 191
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->hasTimeUnspecified()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 192
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->getTimeUnspecified()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 195
    :cond_5
    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->cachedSize:I

    .line 196
    return v0
.end method

.method public getTime()Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->time_:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    return-object v0
.end method

.method public getTimeMs()J
    .locals 2

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->timeMs_:J

    return-wide v0
.end method

.method public getTimeUnspecified()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->timeUnspecified_:Z

    return v0
.end method

.method public hasDate()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->hasDate:Z

    return v0
.end method

.method public hasDateUnspecified()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->hasDateUnspecified:Z

    return v0
.end method

.method public hasOffsetMs()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->hasOffsetMs:Z

    return v0
.end method

.method public hasTime()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->hasTime:Z

    return v0
.end method

.method public hasTimeMs()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->hasTimeMs:Z

    return v0
.end method

.method public hasTimeUnspecified()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->hasTimeUnspecified:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 205
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 209
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 210
    :sswitch_0
    return-object p0

    .line 215
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->setTimeMs(J)Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    goto :goto_0

    .line 219
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->setOffsetMs(I)Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    goto :goto_0

    .line 223
    :sswitch_3
    new-instance v1, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;-><init>()V

    .line 224
    .local v1, value:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 225
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->setDate(Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;)Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    goto :goto_0

    .line 229
    .end local v1           #value:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->setDateUnspecified(Z)Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    goto :goto_0

    .line 233
    :sswitch_5
    new-instance v1, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;-><init>()V

    .line 234
    .local v1, value:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 235
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->setTime(Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;)Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    goto :goto_0

    .line 239
    .end local v1           #value:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->setTimeUnspecified(Z)Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    goto :goto_0

    .line 205
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
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
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    move-result-object v0

    return-object v0
.end method

.method public setDate(Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;)Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;
    .locals 1
    .parameter "value"

    .prologue
    .line 53
    if-nez p1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->hasDate:Z

    .line 57
    iput-object p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->date_:Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    .line 58
    return-object p0
.end method

.method public setDateUnspecified(Z)Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;
    .locals 1
    .parameter "value"

    .prologue
    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->hasDateUnspecified:Z

    .line 74
    iput-boolean p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->dateUnspecified_:Z

    .line 75
    return-object p0
.end method

.method public setOffsetMs(I)Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;
    .locals 1
    .parameter "value"

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->hasOffsetMs:Z

    .line 37
    iput p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->offsetMs_:I

    .line 38
    return-object p0
.end method

.method public setTime(Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;)Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;
    .locals 1
    .parameter "value"

    .prologue
    .line 90
    if-nez p1, :cond_0

    .line 91
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 93
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->hasTime:Z

    .line 94
    iput-object p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->time_:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    .line 95
    return-object p0
.end method

.method public setTimeMs(J)Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->hasTimeMs:Z

    .line 20
    iput-wide p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->timeMs_:J

    .line 21
    return-object p0
.end method

.method public setTimeUnspecified(Z)Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;
    .locals 1
    .parameter "value"

    .prologue
    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->hasTimeUnspecified:Z

    .line 111
    iput-boolean p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->timeUnspecified_:Z

    .line 112
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->hasTimeMs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->getTimeMs()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->hasOffsetMs()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->getOffsetMs()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->hasDate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->getDate()Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 147
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->hasDateUnspecified()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->getDateUnspecified()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 150
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->hasTime()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 151
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->getTime()Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 153
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->hasTimeUnspecified()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 154
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;->getTimeUnspecified()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 156
    :cond_5
    return-void
.end method
