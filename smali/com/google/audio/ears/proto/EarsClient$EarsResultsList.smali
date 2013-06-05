.class public final Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EarsClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/audio/ears/proto/EarsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EarsResultsList"
.end annotation


# static fields
.field public static final CAPTURE_LOCATION_DESCRIPTION_FIELD_NUMBER:I = 0x3

.field public static final CAPTURE_LOCATION_LATITUDE_FIELD_NUMBER:I = 0x4

.field public static final CAPTURE_LOCATION_LONGITUDE_FIELD_NUMBER:I = 0x5

.field public static final CAPTURE_TIME_FIELD_NUMBER:I = 0x2

.field public static final RESULT_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private captureLocationDescription_:Ljava/lang/String;

.field private captureLocationLatitude_:D

.field private captureLocationLongitude_:D

.field private captureTime_:J

.field private hasCaptureLocationDescription:Z

.field private hasCaptureLocationLatitude:Z

.field private hasCaptureLocationLongitude:Z

.field private hasCaptureTime:Z

.field private result_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/audio/ears/proto/EarsService$EarsResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->result_:Ljava/util/List;

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->captureTime_:J

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->captureLocationDescription_:Ljava/lang/String;

    .line 82
    iput-wide v2, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->captureLocationLatitude_:D

    .line 99
    iput-wide v2, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->captureLocationLongitude_:D

    .line 147
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    new-instance v0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 227
    new-instance v0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;

    check-cast v0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;

    return-object v0
.end method


# virtual methods
.method public addResult(Lcom/google/audio/ears/proto/EarsService$EarsResult;)Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;
    .locals 1
    .parameter "value"

    .prologue
    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->result_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->result_:Ljava/util/List;

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->result_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    return-object p0
.end method

.method public final clear()Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->clearResult()Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;

    .line 115
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->clearCaptureTime()Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;

    .line 116
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->clearCaptureLocationDescription()Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;

    .line 117
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->clearCaptureLocationLatitude()Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;

    .line 118
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->clearCaptureLocationLongitude()Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->cachedSize:I

    .line 120
    return-object p0
.end method

.method public clearCaptureLocationDescription()Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->hasCaptureLocationDescription:Z

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->captureLocationDescription_:Ljava/lang/String;

    .line 76
    return-object p0
.end method

.method public clearCaptureLocationLatitude()Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;
    .locals 2

    .prologue
    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->hasCaptureLocationLatitude:Z

    .line 92
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->captureLocationLatitude_:D

    .line 93
    return-object p0
.end method

.method public clearCaptureLocationLongitude()Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;
    .locals 2

    .prologue
    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->hasCaptureLocationLongitude:Z

    .line 109
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->captureLocationLongitude_:D

    .line 110
    return-object p0
.end method

.method public clearCaptureTime()Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;
    .locals 2

    .prologue
    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->hasCaptureTime:Z

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->captureTime_:J

    .line 59
    return-object p0
.end method

.method public clearResult()Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->result_:Ljava/util/List;

    .line 42
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->cachedSize:I

    if-gez v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->getSerializedSize()I

    .line 154
    :cond_0
    iget v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->cachedSize:I

    return v0
.end method

.method public getCaptureLocationDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->captureLocationDescription_:Ljava/lang/String;

    return-object v0
.end method

.method public getCaptureLocationLatitude()D
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->captureLocationLatitude_:D

    return-wide v0
.end method

.method public getCaptureLocationLongitude()D
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->captureLocationLongitude_:D

    return-wide v0
.end method

.method public getCaptureTime()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->captureTime_:J

    return-wide v0
.end method

.method public getResult(I)Lcom/google/audio/ears/proto/EarsService$EarsResult;
    .locals 1
    .parameter "index"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->result_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$EarsResult;

    return-object v0
.end method

.method public getResultCount()I
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->result_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResultList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/audio/ears/proto/EarsService$EarsResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->result_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 159
    const/4 v2, 0x0

    .line 160
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->getResultList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$EarsResult;

    .line 161
    .local v0, element:Lcom/google/audio/ears/proto/EarsService$EarsResult;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 164
    .end local v0           #element:Lcom/google/audio/ears/proto/EarsService$EarsResult;
    :cond_0
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->hasCaptureTime()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 165
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->getCaptureTime()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 168
    :cond_1
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->hasCaptureLocationDescription()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 169
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->getCaptureLocationDescription()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 172
    :cond_2
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->hasCaptureLocationLatitude()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 173
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->getCaptureLocationLatitude()D

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v2, v3

    .line 176
    :cond_3
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->hasCaptureLocationLongitude()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 177
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->getCaptureLocationLongitude()D

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v2, v3

    .line 180
    :cond_4
    iput v2, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->cachedSize:I

    .line 181
    return v2
.end method

.method public hasCaptureLocationDescription()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->hasCaptureLocationDescription:Z

    return v0
.end method

.method public hasCaptureLocationLatitude()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->hasCaptureLocationLatitude:Z

    return v0
.end method

.method public hasCaptureLocationLongitude()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->hasCaptureLocationLongitude:Z

    return v0
.end method

.method public hasCaptureTime()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->hasCaptureTime:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 190
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 194
    invoke-virtual {p0, p1, v0}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 195
    :sswitch_0
    return-object p0

    .line 200
    :sswitch_1
    new-instance v1, Lcom/google/audio/ears/proto/EarsService$EarsResult;

    invoke-direct {v1}, Lcom/google/audio/ears/proto/EarsService$EarsResult;-><init>()V

    .line 201
    .local v1, value:Lcom/google/audio/ears/proto/EarsService$EarsResult;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 202
    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->addResult(Lcom/google/audio/ears/proto/EarsService$EarsResult;)Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;

    goto :goto_0

    .line 206
    .end local v1           #value:Lcom/google/audio/ears/proto/EarsService$EarsResult;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->setCaptureTime(J)Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;

    goto :goto_0

    .line 210
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->setCaptureLocationDescription(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;

    goto :goto_0

    .line 214
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readDouble()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->setCaptureLocationLatitude(D)Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;

    goto :goto_0

    .line 218
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readDouble()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->setCaptureLocationLongitude(D)Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;

    goto :goto_0

    .line 190
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x21 -> :sswitch_4
        0x29 -> :sswitch_5
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
    invoke-virtual {p0, p1}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;

    move-result-object v0

    return-object v0
.end method

.method public setCaptureLocationDescription(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;
    .locals 1
    .parameter "value"

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->hasCaptureLocationDescription:Z

    .line 70
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->captureLocationDescription_:Ljava/lang/String;

    .line 71
    return-object p0
.end method

.method public setCaptureLocationLatitude(D)Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;
    .locals 1
    .parameter "value"

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->hasCaptureLocationLatitude:Z

    .line 87
    iput-wide p1, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->captureLocationLatitude_:D

    .line 88
    return-object p0
.end method

.method public setCaptureLocationLongitude(D)Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;
    .locals 1
    .parameter "value"

    .prologue
    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->hasCaptureLocationLongitude:Z

    .line 104
    iput-wide p1, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->captureLocationLongitude_:D

    .line 105
    return-object p0
.end method

.method public setCaptureTime(J)Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;
    .locals 1
    .parameter "value"

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->hasCaptureTime:Z

    .line 53
    iput-wide p1, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->captureTime_:J

    .line 54
    return-object p0
.end method

.method public setResult(ILcom/google/audio/ears/proto/EarsService$EarsResult;)Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 24
    if-nez p2, :cond_0

    .line 25
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->result_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->getResultList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$EarsResult;

    .line 131
    .local v0, element:Lcom/google/audio/ears/proto/EarsService$EarsResult;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 133
    .end local v0           #element:Lcom/google/audio/ears/proto/EarsService$EarsResult;
    :cond_0
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->hasCaptureTime()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->getCaptureTime()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 136
    :cond_1
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->hasCaptureLocationDescription()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->getCaptureLocationDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 139
    :cond_2
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->hasCaptureLocationLatitude()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 140
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->getCaptureLocationLatitude()D

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeDouble(ID)V

    .line 142
    :cond_3
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->hasCaptureLocationLongitude()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 143
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsClient$EarsResultsList;->getCaptureLocationLongitude()D

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeDouble(ID)V

    .line 145
    :cond_4
    return-void
.end method
