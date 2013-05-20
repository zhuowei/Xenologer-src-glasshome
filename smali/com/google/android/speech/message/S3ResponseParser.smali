.class public Lcom/google/android/speech/message/S3ResponseParser;
.super Ljava/lang/Object;
.source "S3ResponseParser.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRecognizerEvent(Lcom/google/speech/s3/S3$S3Response;)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    .locals 1
    .parameter "response"

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->getRecognizerEventExtension()Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->getRecognitionEvent()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static hasRecognitionEvent(Lcom/google/speech/s3/S3$S3Response;)Z
    .locals 1
    .parameter "response"

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->hasRecognizerEventExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->getRecognizerEventExtension()Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->hasRecognitionEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toShortString(Lcom/google/majel/proto/MajelProtos$MajelResponse;)Ljava/lang/String;
    .locals 6
    .parameter "majel"

    .prologue
    .line 111
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 112
    .local v4, sb:Ljava/lang/StringBuffer;
    const-string v5, "Majel["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    const-string v5, "peanuts="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->getPeanutCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 115
    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->getPeanutList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/majel/proto/PeanutProtos$Peanut;

    .line 116
    .local v3, peanut:Lcom/google/majel/proto/PeanutProtos$Peanut;
    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    const/4 v2, 0x1

    .line 118
    .local v2, isFirst:Z
    invoke-virtual {v3}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getActionV2Count()I

    move-result v5

    if-lez v5, :cond_0

    .line 119
    if-nez v2, :cond_6

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    :goto_1
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getActionV2(I)Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    move-result-object v0

    .line 122
    .local v0, action:Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    invoke-virtual {v0}, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->hasPhoneActionExtension()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 123
    const-string v5, "phoneAction"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    .end local v0           #action:Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    :cond_0
    :goto_2
    invoke-virtual {v3}, Lcom/google/majel/proto/PeanutProtos$Peanut;->hasTextResponse()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 131
    if-nez v2, :cond_9

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    :goto_3
    const-string v5, "text="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    invoke-virtual {v3}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getTextResponse()Lcom/google/majel/proto/PeanutProtos$Text;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/majel/proto/PeanutProtos$Text;->getDisplay()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    :cond_1
    invoke-virtual {v3}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getUrlResponseCount()I

    move-result v5

    if-lez v5, :cond_2

    .line 137
    if-nez v2, :cond_a

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    :goto_4
    const-string v5, "url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    invoke-virtual {v3}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getUrlResponseCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 142
    :cond_2
    invoke-virtual {v3}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getImageResponseCount()I

    move-result v5

    if-lez v5, :cond_3

    .line 143
    if-nez v2, :cond_b

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    :goto_5
    const-string v5, "image="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    invoke-virtual {v3}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getImageResponseCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 148
    :cond_3
    invoke-virtual {v3}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getPlaceResponseCount()I

    move-result v5

    if-lez v5, :cond_4

    .line 149
    if-nez v2, :cond_c

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    :goto_6
    const-string v5, "place="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    invoke-virtual {v3}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getPlaceResponseCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 154
    :cond_4
    invoke-virtual {v3}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getVideoResponseCount()I

    move-result v5

    if-lez v5, :cond_5

    .line 155
    if-nez v2, :cond_d

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    :goto_7
    const-string v5, "video="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    invoke-virtual {v3}, Lcom/google/majel/proto/PeanutProtos$Peanut;->getVideoResponseCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 160
    :cond_5
    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 120
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 124
    .restart local v0       #action:Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    :cond_7
    invoke-virtual {v0}, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->hasSMSActionExtension()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 125
    const-string v5, "smsAction"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 127
    :cond_8
    const-string v5, "someAction"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 132
    .end local v0           #action:Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 138
    :cond_a
    const/4 v2, 0x0

    goto :goto_4

    .line 144
    :cond_b
    const/4 v2, 0x0

    goto :goto_5

    .line 150
    :cond_c
    const/4 v2, 0x0

    goto :goto_6

    .line 156
    :cond_d
    const/4 v2, 0x0

    goto :goto_7

    .line 162
    .end local v2           #isFirst:Z
    .end local v3           #peanut:Lcom/google/majel/proto/PeanutProtos$Peanut;
    :cond_e
    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static toShortString(Lcom/google/speech/s3/S3$S3Response;)Ljava/lang/String;
    .locals 14
    .parameter "response"

    .prologue
    .line 30
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 31
    .local v8, sb:Ljava/lang/StringBuffer;
    const-string v12, "S3Response["

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "status="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->getStatus()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->getStatus()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    .line 34
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ",errorCode="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->getErrorCode()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ",errorDescription="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->getErrorDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    :cond_0
    const-string v12, ","

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->hasTtsServiceEventExtension()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 40
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->getTtsServiceEventExtension()Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;

    move-result-object v11

    .line 41
    .local v11, ttsEvent:Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;
    const-string v12, "TtsServiceEvent["

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    const-string v12, "audio size:"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v11}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;->getAudio()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/protobuf/micro/ByteStringMicro;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 43
    const-string v12, "]"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    .end local v11           #ttsEvent:Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->hasRecognizerEventExtension()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 46
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->getRecognizerEventExtension()Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    move-result-object v7

    .line 47
    .local v7, recognizerEvent:Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;
    const-string v12, "RecognitionEvent["

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    invoke-virtual {v7}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->hasRecognitionEvent()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 49
    invoke-virtual {v7}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->getRecognitionEvent()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    move-result-object v6

    .line 50
    .local v6, recognitionEvent:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    const-wide/16 v9, 0x0

    .local v9, start:J
    const-wide/16 v0, 0x0

    .line 51
    .local v0, end:J
    const-string v12, "RecognitionEvent["

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    const-string v12, "status="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    invoke-virtual {v6}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getStatus()I

    move-result v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 54
    const-string v12, ","

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    const-string v12, "event_type="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    invoke-virtual {v6}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getEventType()I

    move-result v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 57
    const-string v12, ","

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    invoke-virtual {v6}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasPartialResult()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 59
    invoke-virtual {v6}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getPartialResult()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getPartCount()I

    move-result v5

    .line 60
    .local v5, partCount:I
    const-string v12, "partialResult[#"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 62
    const-string v12, ","

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_2

    .line 64
    invoke-virtual {v6}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getPartialResult()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getPart(I)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    :cond_2
    const-string v12, "]"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    const-string v12, ","

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    invoke-virtual {v6}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getPartialResult()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getStartTimeUsec()J

    move-result-wide v9

    .line 69
    invoke-virtual {v6}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getPartialResult()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getEndTimeUsec()J

    move-result-wide v0

    .line 71
    .end local v2           #i:I
    .end local v5           #partCount:I
    :cond_3
    invoke-virtual {v6}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasResult()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 72
    const-string v12, "result[#"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    invoke-virtual {v6}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getResult()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->getHypothesisCount()I

    move-result v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 74
    const-string v12, ","

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    invoke-virtual {v6}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getResult()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->getHypothesisCount()I

    move-result v12

    if-lez v12, :cond_4

    .line 76
    invoke-virtual {v6}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getResult()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->getHypothesis(I)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    :cond_4
    const-string v12, "]"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    const-string v12, ","

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    invoke-virtual {v6}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getResult()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->getStartTimeUsec()J

    move-result-wide v9

    .line 81
    invoke-virtual {v6}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getResult()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->getEndTimeUsec()J

    move-result-wide v0

    .line 84
    :cond_5
    const-string v12, "{"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "}{"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "}"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    const-string v12, "]"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    .end local v0           #end:J
    .end local v6           #recognitionEvent:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    .end local v9           #start:J
    :cond_6
    const-string v12, "]"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    .end local v7           #recognizerEvent:Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->hasMajelServiceEventExtension()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 91
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->getMajelServiceEventExtension()Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    move-result-object v4

    .line 92
    .local v4, majelEvent:Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;
    const-string v12, "MajelEvent["

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    invoke-virtual {v4}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->hasMajel()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 94
    invoke-virtual {v4}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->getMajel()Lcom/google/majel/proto/MajelProtos$MajelResponse;

    move-result-object v3

    .line 95
    .local v3, majel:Lcom/google/majel/proto/MajelProtos$MajelResponse;
    invoke-static {v3}, Lcom/google/android/speech/message/S3ResponseParser;->toShortString(Lcom/google/majel/proto/MajelProtos$MajelResponse;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    .end local v3           #majel:Lcom/google/majel/proto/MajelProtos$MajelResponse;
    :cond_8
    :goto_1
    const-string v12, "]"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    .end local v4           #majelEvent:Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;
    :cond_9
    const-string v12, "]\n"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 96
    .restart local v4       #majelEvent:Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;
    :cond_a
    invoke-virtual {v4}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->hasCompressedMajelResponse()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 97
    const-string v12, "CompressedMajel["

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    const-string v12, "bytes="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    invoke-virtual {v4}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;->getCompressedMajelResponse()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/protobuf/micro/ByteStringMicro;->size()I

    move-result v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 100
    const-string v12, "]"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
