.class public final Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VoicesearchClientLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/VoicesearchClientLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlternateCorrectionData"
.end annotation


# static fields
.field public static final ALTERNATE_UNIT_UTF8_BYTES:I = 0x1

.field public static final ALTERNATE_UNIT_WORD:I = 0x0

.field public static final LENGTH_FIELD_NUMBER:I = 0x4

.field public static final NEW_TEXT_FIELD_NUMBER:I = 0x6

.field public static final OLD_TEXT_FIELD_NUMBER:I = 0x5

.field public static final RECOGNIZER_SEGMENT_INDEX_FIELD_NUMBER:I = 0x1

.field public static final START_FIELD_NUMBER:I = 0x3

.field public static final UNIT_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasLength:Z

.field private hasNewText:Z

.field private hasOldText:Z

.field private hasRecognizerSegmentIndex:Z

.field private hasStart:Z

.field private hasUnit:Z

.field private length_:I

.field private newText_:Ljava/lang/String;

.field private oldText_:Ljava/lang/String;

.field private recognizerSegmentIndex_:I

.field private start_:I

.field private unit_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1995
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2004
    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->recognizerSegmentIndex_:I

    .line 2021
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->unit_:I

    .line 2038
    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->start_:I

    .line 2055
    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->length_:I

    .line 2072
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->oldText_:Ljava/lang/String;

    .line 2089
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->newText_:Ljava/lang/String;

    .line 2141
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->cachedSize:I

    .line 1995
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2233
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2227
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1

    .prologue
    .line 2104
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->clearRecognizerSegmentIndex()Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    .line 2105
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->clearUnit()Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    .line 2106
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->clearStart()Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    .line 2107
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->clearLength()Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    .line 2108
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->clearOldText()Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    .line 2109
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->clearNewText()Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    .line 2110
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->cachedSize:I

    .line 2111
    return-object p0
.end method

.method public clearLength()Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2064
    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasLength:Z

    .line 2065
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->length_:I

    .line 2066
    return-object p0
.end method

.method public clearNewText()Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1

    .prologue
    .line 2098
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasNewText:Z

    .line 2099
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->newText_:Ljava/lang/String;

    .line 2100
    return-object p0
.end method

.method public clearOldText()Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1

    .prologue
    .line 2081
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasOldText:Z

    .line 2082
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->oldText_:Ljava/lang/String;

    .line 2083
    return-object p0
.end method

.method public clearRecognizerSegmentIndex()Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2013
    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasRecognizerSegmentIndex:Z

    .line 2014
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->recognizerSegmentIndex_:I

    .line 2015
    return-object p0
.end method

.method public clearStart()Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2047
    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasStart:Z

    .line 2048
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->start_:I

    .line 2049
    return-object p0
.end method

.method public clearUnit()Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1

    .prologue
    .line 2030
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasUnit:Z

    .line 2031
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->unit_:I

    .line 2032
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2144
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->cachedSize:I

    if-gez v0, :cond_0

    .line 2146
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->getSerializedSize()I

    .line 2148
    :cond_0
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->cachedSize:I

    return v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 2056
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->length_:I

    return v0
.end method

.method public getNewText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2090
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->newText_:Ljava/lang/String;

    return-object v0
.end method

.method public getOldText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2073
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->oldText_:Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizerSegmentIndex()I
    .locals 1

    .prologue
    .line 2005
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->recognizerSegmentIndex_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2153
    const/4 v0, 0x0

    .line 2154
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasRecognizerSegmentIndex()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2155
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->getRecognizerSegmentIndex()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2158
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasUnit()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2159
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->getUnit()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2162
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasStart()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2163
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->getStart()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2166
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasLength()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2167
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->getLength()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2170
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasOldText()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2171
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->getOldText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2174
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasNewText()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2175
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->getNewText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2178
    :cond_5
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->cachedSize:I

    .line 2179
    return v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 2039
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->start_:I

    return v0
.end method

.method public getUnit()I
    .locals 1

    .prologue
    .line 2022
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->unit_:I

    return v0
.end method

.method public hasLength()Z
    .locals 1

    .prologue
    .line 2057
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasLength:Z

    return v0
.end method

.method public hasNewText()Z
    .locals 1

    .prologue
    .line 2091
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasNewText:Z

    return v0
.end method

.method public hasOldText()Z
    .locals 1

    .prologue
    .line 2074
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasOldText:Z

    return v0
.end method

.method public hasRecognizerSegmentIndex()Z
    .locals 1

    .prologue
    .line 2006
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasRecognizerSegmentIndex:Z

    return v0
.end method

.method public hasStart()Z
    .locals 1

    .prologue
    .line 2040
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasStart:Z

    return v0
.end method

.method public hasUnit()Z
    .locals 1

    .prologue
    .line 2023
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasUnit:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2115
    const/4 v0, 0x1

    return v0
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
    .line 1992
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2187
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2188
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2192
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2193
    :sswitch_0
    return-object p0

    .line 2198
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->setRecognizerSegmentIndex(I)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    goto :goto_0

    .line 2202
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->setUnit(I)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    goto :goto_0

    .line 2206
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->setStart(I)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    goto :goto_0

    .line 2210
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->setLength(I)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    goto :goto_0

    .line 2214
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->setOldText(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    goto :goto_0

    .line 2218
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->setNewText(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    goto :goto_0

    .line 2188
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public setLength(I)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1
    .parameter "value"

    .prologue
    .line 2059
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasLength:Z

    .line 2060
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->length_:I

    .line 2061
    return-object p0
.end method

.method public setNewText(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1
    .parameter "value"

    .prologue
    .line 2093
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasNewText:Z

    .line 2094
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->newText_:Ljava/lang/String;

    .line 2095
    return-object p0
.end method

.method public setOldText(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1
    .parameter "value"

    .prologue
    .line 2076
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasOldText:Z

    .line 2077
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->oldText_:Ljava/lang/String;

    .line 2078
    return-object p0
.end method

.method public setRecognizerSegmentIndex(I)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1
    .parameter "value"

    .prologue
    .line 2008
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasRecognizerSegmentIndex:Z

    .line 2009
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->recognizerSegmentIndex_:I

    .line 2010
    return-object p0
.end method

.method public setStart(I)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1
    .parameter "value"

    .prologue
    .line 2042
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasStart:Z

    .line 2043
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->start_:I

    .line 2044
    return-object p0
.end method

.method public setUnit(I)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1
    .parameter "value"

    .prologue
    .line 2025
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasUnit:Z

    .line 2026
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->unit_:I

    .line 2027
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
    .line 2121
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasRecognizerSegmentIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2122
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->getRecognizerSegmentIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2124
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasUnit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2125
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->getUnit()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2127
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2128
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->getStart()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2130
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasLength()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2131
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->getLength()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2133
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasOldText()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2134
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->getOldText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2136
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasNewText()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2137
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->getNewText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2139
    :cond_5
    return-void
.end method
