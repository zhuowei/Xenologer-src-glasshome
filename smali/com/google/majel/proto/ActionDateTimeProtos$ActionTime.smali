.class public final Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionDateTimeProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionDateTimeProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionTime"
.end annotation


# static fields
.field public static final HOUR_FIELD_NUMBER:I = 0x1

.field public static final MINUTE_FIELD_NUMBER:I = 0x2

.field public static final SECOND_FIELD_NUMBER:I = 0x3


# instance fields
.field private cachedSize:I

.field private hasHour:Z

.field private hasMinute:Z

.field private hasSecond:Z

.field private hour_:I

.field private minute_:I

.field private second_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->hour_:I

    .line 32
    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->minute_:I

    .line 49
    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->second_:I

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    check-cast v0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->clearHour()Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    .line 65
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->clearMinute()Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    .line 66
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->clearSecond()Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->cachedSize:I

    .line 68
    return-object p0
.end method

.method public clearHour()Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->hasHour:Z

    .line 25
    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->hour_:I

    .line 26
    return-object p0
.end method

.method public clearMinute()Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->hasMinute:Z

    .line 42
    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->minute_:I

    .line 43
    return-object p0
.end method

.method public clearSecond()Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->hasSecond:Z

    .line 59
    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->second_:I

    .line 60
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->cachedSize:I

    if-gez v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->getSerializedSize()I

    .line 96
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->cachedSize:I

    return v0
.end method

.method public getHour()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->hour_:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->minute_:I

    return v0
.end method

.method public getSecond()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->second_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->hasHour()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->getHour()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->hasMinute()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->getMinute()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->hasSecond()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->getSecond()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 114
    :cond_2
    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->cachedSize:I

    .line 115
    return v0
.end method

.method public hasHour()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->hasHour:Z

    return v0
.end method

.method public hasMinute()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->hasMinute:Z

    return v0
.end method

.method public hasSecond()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->hasSecond:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 124
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 128
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    :sswitch_0
    return-object p0

    .line 134
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->setHour(I)Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    goto :goto_0

    .line 138
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->setMinute(I)Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    goto :goto_0

    .line 142
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->setSecond(I)Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    goto :goto_0

    .line 124
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    move-result-object v0

    return-object v0
.end method

.method public setHour(I)Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->hasHour:Z

    .line 20
    iput p1, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->hour_:I

    .line 21
    return-object p0
.end method

.method public setMinute(I)Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;
    .locals 1
    .parameter "value"

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->hasMinute:Z

    .line 37
    iput p1, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->minute_:I

    .line 38
    return-object p0
.end method

.method public setSecond(I)Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;
    .locals 1
    .parameter "value"

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->hasSecond:Z

    .line 54
    iput p1, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->second_:I

    .line 55
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
    .line 78
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->hasHour()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->getHour()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->hasMinute()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->getMinute()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->hasSecond()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;->getSecond()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 87
    :cond_2
    return-void
.end method
