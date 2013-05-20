.class public final Lcom/google/majel/proto/LatLngProtos$LatLng;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "LatLngProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/LatLngProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LatLng"
.end annotation


# static fields
.field public static final ACCURACY_METERS_FIELD_NUMBER:I = 0x4

.field public static final LABEL_FIELD_NUMBER:I = 0x3

.field public static final LAT_DEGREES_FIELD_NUMBER:I = 0x1

.field public static final LNG_DEGREES_FIELD_NUMBER:I = 0x2


# instance fields
.field private accuracyMeters_:F

.field private cachedSize:I

.field private hasAccuracyMeters:Z

.field private hasLabel:Z

.field private hasLatDegrees:Z

.field private hasLngDegrees:Z

.field private label_:Ljava/lang/String;

.field private latDegrees_:F

.field private lngDegrees_:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    iput v1, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->latDegrees_:F

    .line 32
    iput v1, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->lngDegrees_:F

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->label_:Ljava/lang/String;

    .line 66
    iput v1, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->accuracyMeters_:F

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/LatLngProtos$LatLng;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Lcom/google/majel/proto/LatLngProtos$LatLng;

    invoke-direct {v0}, Lcom/google/majel/proto/LatLngProtos$LatLng;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/LatLngProtos$LatLng;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/LatLngProtos$LatLng;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/LatLngProtos$LatLng;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 180
    new-instance v0, Lcom/google/majel/proto/LatLngProtos$LatLng;

    invoke-direct {v0}, Lcom/google/majel/proto/LatLngProtos$LatLng;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/LatLngProtos$LatLng;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/LatLngProtos$LatLng;

    check-cast v0, Lcom/google/majel/proto/LatLngProtos$LatLng;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/LatLngProtos$LatLng;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/google/majel/proto/LatLngProtos$LatLng;->clearLatDegrees()Lcom/google/majel/proto/LatLngProtos$LatLng;

    .line 82
    invoke-virtual {p0}, Lcom/google/majel/proto/LatLngProtos$LatLng;->clearLngDegrees()Lcom/google/majel/proto/LatLngProtos$LatLng;

    .line 83
    invoke-virtual {p0}, Lcom/google/majel/proto/LatLngProtos$LatLng;->clearLabel()Lcom/google/majel/proto/LatLngProtos$LatLng;

    .line 84
    invoke-virtual {p0}, Lcom/google/majel/proto/LatLngProtos$LatLng;->clearAccuracyMeters()Lcom/google/majel/proto/LatLngProtos$LatLng;

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->cachedSize:I

    .line 86
    return-object p0
.end method

.method public clearAccuracyMeters()Lcom/google/majel/proto/LatLngProtos$LatLng;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->hasAccuracyMeters:Z

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->accuracyMeters_:F

    .line 77
    return-object p0
.end method

.method public clearLabel()Lcom/google/majel/proto/LatLngProtos$LatLng;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->hasLabel:Z

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->label_:Ljava/lang/String;

    .line 60
    return-object p0
.end method

.method public clearLatDegrees()Lcom/google/majel/proto/LatLngProtos$LatLng;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->hasLatDegrees:Z

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->latDegrees_:F

    .line 26
    return-object p0
.end method

.method public clearLngDegrees()Lcom/google/majel/proto/LatLngProtos$LatLng;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->hasLngDegrees:Z

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->lngDegrees_:F

    .line 43
    return-object p0
.end method

.method public getAccuracyMeters()F
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->accuracyMeters_:F

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->cachedSize:I

    if-gez v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/google/majel/proto/LatLngProtos$LatLng;->getSerializedSize()I

    .line 117
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->cachedSize:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->label_:Ljava/lang/String;

    return-object v0
.end method

.method public getLatDegrees()F
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->latDegrees_:F

    return v0
.end method

.method public getLngDegrees()F
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->lngDegrees_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/LatLngProtos$LatLng;->hasLatDegrees()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/LatLngProtos$LatLng;->getLatDegrees()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/LatLngProtos$LatLng;->hasLngDegrees()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/LatLngProtos$LatLng;->getLngDegrees()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/LatLngProtos$LatLng;->hasLabel()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/LatLngProtos$LatLng;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 135
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/LatLngProtos$LatLng;->hasAccuracyMeters()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 136
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/LatLngProtos$LatLng;->getAccuracyMeters()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 139
    :cond_3
    iput v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->cachedSize:I

    .line 140
    return v0
.end method

.method public hasAccuracyMeters()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->hasAccuracyMeters:Z

    return v0
.end method

.method public hasLabel()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->hasLabel:Z

    return v0
.end method

.method public hasLatDegrees()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->hasLatDegrees:Z

    return v0
.end method

.method public hasLngDegrees()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->hasLngDegrees:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/LatLngProtos$LatLng;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 149
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 153
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/LatLngProtos$LatLng;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    :sswitch_0
    return-object p0

    .line 159
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/LatLngProtos$LatLng;->setLatDegrees(F)Lcom/google/majel/proto/LatLngProtos$LatLng;

    goto :goto_0

    .line 163
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/LatLngProtos$LatLng;->setLngDegrees(F)Lcom/google/majel/proto/LatLngProtos$LatLng;

    goto :goto_0

    .line 167
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/LatLngProtos$LatLng;->setLabel(Ljava/lang/String;)Lcom/google/majel/proto/LatLngProtos$LatLng;

    goto :goto_0

    .line 171
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/LatLngProtos$LatLng;->setAccuracyMeters(F)Lcom/google/majel/proto/LatLngProtos$LatLng;

    goto :goto_0

    .line 149
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1a -> :sswitch_3
        0x25 -> :sswitch_4
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
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/LatLngProtos$LatLng;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/LatLngProtos$LatLng;

    move-result-object v0

    return-object v0
.end method

.method public setAccuracyMeters(F)Lcom/google/majel/proto/LatLngProtos$LatLng;
    .locals 1
    .parameter "value"

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->hasAccuracyMeters:Z

    .line 71
    iput p1, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->accuracyMeters_:F

    .line 72
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/majel/proto/LatLngProtos$LatLng;
    .locals 1
    .parameter "value"

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->hasLabel:Z

    .line 54
    iput-object p1, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->label_:Ljava/lang/String;

    .line 55
    return-object p0
.end method

.method public setLatDegrees(F)Lcom/google/majel/proto/LatLngProtos$LatLng;
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->hasLatDegrees:Z

    .line 20
    iput p1, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->latDegrees_:F

    .line 21
    return-object p0
.end method

.method public setLngDegrees(F)Lcom/google/majel/proto/LatLngProtos$LatLng;
    .locals 1
    .parameter "value"

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->hasLngDegrees:Z

    .line 37
    iput p1, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->lngDegrees_:F

    .line 38
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
    .line 96
    invoke-virtual {p0}, Lcom/google/majel/proto/LatLngProtos$LatLng;->hasLatDegrees()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/LatLngProtos$LatLng;->getLatDegrees()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/LatLngProtos$LatLng;->hasLngDegrees()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/LatLngProtos$LatLng;->getLngDegrees()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/LatLngProtos$LatLng;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/LatLngProtos$LatLng;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 105
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/LatLngProtos$LatLng;->hasAccuracyMeters()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/LatLngProtos$LatLng;->getAccuracyMeters()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 108
    :cond_3
    return-void
.end method
