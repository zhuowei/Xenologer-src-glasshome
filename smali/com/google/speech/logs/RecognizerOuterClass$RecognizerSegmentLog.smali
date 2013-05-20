.class public final Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "RecognizerOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/RecognizerOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognizerSegmentLog"
.end annotation


# static fields
.field public static final DEPRECATED_FINAL_ENDPOINTER_FIRED_MS_FIELD_NUMBER:I = 0x3

.field public static final DEPRECATED_FINAL_RECOGNITION_RESULT_COMPUTED_MS_FIELD_NUMBER:I = 0x4

.field public static final HYPOTHESIS_FIELD_NUMBER:I = 0x5

.field public static final RELATIVE_END_TIME_MS_FIELD_NUMBER:I = 0x2

.field public static final RELATIVE_START_TIME_MS_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private dEPRECATEDFinalEndpointerFiredMs_:I

.field private dEPRECATEDFinalRecognitionResultComputedMs_:J

.field private hasDEPRECATEDFinalEndpointerFiredMs:Z

.field private hasDEPRECATEDFinalRecognitionResultComputedMs:Z

.field private hasRelativeEndTimeMs:Z

.field private hasRelativeStartTimeMs:Z

.field private hypothesis_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;",
            ">;"
        }
    .end annotation
.end field

.field private relativeEndTimeMs_:I

.field private relativeStartTimeMs_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1091
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1096
    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->relativeStartTimeMs_:I

    .line 1113
    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->relativeEndTimeMs_:I

    .line 1130
    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->dEPRECATEDFinalEndpointerFiredMs_:I

    .line 1147
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->dEPRECATEDFinalRecognitionResultComputedMs_:J

    .line 1163
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->hypothesis_:Ljava/util/List;

    .line 1228
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->cachedSize:I

    .line 1091
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1314
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1308
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    return-object v0
.end method


# virtual methods
.method public addHypothesis(Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 1180
    if-nez p1, :cond_0

    .line 1181
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1183
    :cond_0
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->hypothesis_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->hypothesis_:Ljava/util/List;

    .line 1186
    :cond_1
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->hypothesis_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1187
    return-object p0
.end method

.method public final clear()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    .locals 1

    .prologue
    .line 1195
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->clearRelativeStartTimeMs()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    .line 1196
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->clearRelativeEndTimeMs()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    .line 1197
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->clearDEPRECATEDFinalEndpointerFiredMs()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    .line 1198
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->clearDEPRECATEDFinalRecognitionResultComputedMs()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    .line 1199
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->clearHypothesis()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    .line 1200
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->cachedSize:I

    .line 1201
    return-object p0
.end method

.method public clearDEPRECATEDFinalEndpointerFiredMs()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1139
    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->hasDEPRECATEDFinalEndpointerFiredMs:Z

    .line 1140
    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->dEPRECATEDFinalEndpointerFiredMs_:I

    .line 1141
    return-object p0
.end method

.method public clearDEPRECATEDFinalRecognitionResultComputedMs()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    .locals 2

    .prologue
    .line 1156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->hasDEPRECATEDFinalRecognitionResultComputedMs:Z

    .line 1157
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->dEPRECATEDFinalRecognitionResultComputedMs_:J

    .line 1158
    return-object p0
.end method

.method public clearHypothesis()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    .locals 1

    .prologue
    .line 1190
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->hypothesis_:Ljava/util/List;

    .line 1191
    return-object p0
.end method

.method public clearRelativeEndTimeMs()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1122
    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->hasRelativeEndTimeMs:Z

    .line 1123
    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->relativeEndTimeMs_:I

    .line 1124
    return-object p0
.end method

.method public clearRelativeStartTimeMs()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1105
    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->hasRelativeStartTimeMs:Z

    .line 1106
    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->relativeStartTimeMs_:I

    .line 1107
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1231
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->cachedSize:I

    if-gez v0, :cond_0

    .line 1233
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->getSerializedSize()I

    .line 1235
    :cond_0
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->cachedSize:I

    return v0
.end method

.method public getDEPRECATEDFinalEndpointerFiredMs()I
    .locals 1

    .prologue
    .line 1131
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->dEPRECATEDFinalEndpointerFiredMs_:I

    return v0
.end method

.method public getDEPRECATEDFinalRecognitionResultComputedMs()J
    .locals 2

    .prologue
    .line 1148
    iget-wide v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->dEPRECATEDFinalRecognitionResultComputedMs_:J

    return-wide v0
.end method

.method public getHypothesis(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1
    .parameter "index"

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->hypothesis_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    return-object v0
.end method

.method public getHypothesisCount()I
    .locals 1

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->hypothesis_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHypothesisList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->hypothesis_:Ljava/util/List;

    return-object v0
.end method

.method public getRelativeEndTimeMs()I
    .locals 1

    .prologue
    .line 1114
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->relativeEndTimeMs_:I

    return v0
.end method

.method public getRelativeStartTimeMs()I
    .locals 1

    .prologue
    .line 1097
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->relativeStartTimeMs_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 1240
    const/4 v2, 0x0

    .line 1241
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->hasRelativeStartTimeMs()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1242
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->getRelativeStartTimeMs()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1245
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->hasRelativeEndTimeMs()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1246
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->getRelativeEndTimeMs()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1249
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->hasDEPRECATEDFinalEndpointerFiredMs()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1250
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->getDEPRECATEDFinalEndpointerFiredMs()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1253
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->hasDEPRECATEDFinalRecognitionResultComputedMs()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1254
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->getDEPRECATEDFinalRecognitionResultComputedMs()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 1257
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->getHypothesisList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    .line 1258
    .local v0, element:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    const/4 v3, 0x5

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 1261
    .end local v0           #element:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    :cond_4
    iput v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->cachedSize:I

    .line 1262
    return v2
.end method

.method public hasDEPRECATEDFinalEndpointerFiredMs()Z
    .locals 1

    .prologue
    .line 1132
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->hasDEPRECATEDFinalEndpointerFiredMs:Z

    return v0
.end method

.method public hasDEPRECATEDFinalRecognitionResultComputedMs()Z
    .locals 1

    .prologue
    .line 1149
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->hasDEPRECATEDFinalRecognitionResultComputedMs:Z

    return v0
.end method

.method public hasRelativeEndTimeMs()Z
    .locals 1

    .prologue
    .line 1115
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->hasRelativeEndTimeMs:Z

    return v0
.end method

.method public hasRelativeStartTimeMs()Z
    .locals 1

    .prologue
    .line 1098
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->hasRelativeStartTimeMs:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1205
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
    .line 1088
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1270
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1271
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1275
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1276
    :sswitch_0
    return-object p0

    .line 1281
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->setRelativeStartTimeMs(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    goto :goto_0

    .line 1285
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->setRelativeEndTimeMs(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    goto :goto_0

    .line 1289
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->setDEPRECATEDFinalEndpointerFiredMs(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    goto :goto_0

    .line 1293
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->setDEPRECATEDFinalRecognitionResultComputedMs(J)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    goto :goto_0

    .line 1297
    :sswitch_5
    new-instance v1, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    invoke-direct {v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;-><init>()V

    .line 1298
    .local v1, value:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1299
    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->addHypothesis(Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    goto :goto_0

    .line 1271
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public setDEPRECATEDFinalEndpointerFiredMs(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 1134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->hasDEPRECATEDFinalEndpointerFiredMs:Z

    .line 1135
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->dEPRECATEDFinalEndpointerFiredMs_:I

    .line 1136
    return-object p0
.end method

.method public setDEPRECATEDFinalRecognitionResultComputedMs(J)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 1151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->hasDEPRECATEDFinalRecognitionResultComputedMs:Z

    .line 1152
    iput-wide p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->dEPRECATEDFinalRecognitionResultComputedMs_:J

    .line 1153
    return-object p0
.end method

.method public setHypothesis(ILcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1173
    if-nez p2, :cond_0

    .line 1174
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1176
    :cond_0
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->hypothesis_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1177
    return-object p0
.end method

.method public setRelativeEndTimeMs(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 1117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->hasRelativeEndTimeMs:Z

    .line 1118
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->relativeEndTimeMs_:I

    .line 1119
    return-object p0
.end method

.method public setRelativeStartTimeMs(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 1100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->hasRelativeStartTimeMs:Z

    .line 1101
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->relativeStartTimeMs_:I

    .line 1102
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
    .line 1211
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->hasRelativeStartTimeMs()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1212
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->getRelativeStartTimeMs()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1214
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->hasRelativeEndTimeMs()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1215
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->getRelativeEndTimeMs()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1217
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->hasDEPRECATEDFinalEndpointerFiredMs()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1218
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->getDEPRECATEDFinalEndpointerFiredMs()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1220
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->hasDEPRECATEDFinalRecognitionResultComputedMs()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1221
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->getDEPRECATEDFinalRecognitionResultComputedMs()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 1223
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;->getHypothesisList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    .line 1224
    .local v0, element:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 1226
    .end local v0           #element:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    :cond_4
    return-void
.end method
