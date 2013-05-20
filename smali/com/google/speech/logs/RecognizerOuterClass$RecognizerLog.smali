.class public final Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "RecognizerOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/RecognizerOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognizerLog"
.end annotation


# static fields
.field public static final AUDIO_ENCODING_FIELD_NUMBER:I = 0x3

.field public static final AUDIO_ENCODING_TYPE_AMR:I = 0x3

.field public static final AUDIO_ENCODING_TYPE_FLAC:I = 0x2

.field public static final AUDIO_ENCODING_TYPE_FLOAT32:I = 0x1

.field public static final AUDIO_ENCODING_TYPE_LINEAR16:I = 0x0

.field public static final AUDIO_ENCODING_TYPE_MULAW:I = 0x4

.field public static final AUDIO_ENCODING_TYPE_SPEEX_NB:I = 0x5

.field public static final AUDIO_ENCODING_TYPE_SPEEX_WB:I = 0x6

.field public static final AVERAGE_CONFIDENCE_FIELD_NUMBER:I = 0x12

.field public static final CHANNEL_COUNT_FIELD_NUMBER:I = 0x1d

.field public static final DECODER_GAUSSIAN_SELECTION_CENTROIDS_FIELD_NUMBER:I = 0xe

.field public static final DECODER_LM_WEIGHT_FIELD_NUMBER:I = 0xd

.field public static final DECODER_LOCAL_BEAM_FIELD_NUMBER:I = 0xb

.field public static final DECODER_MAX_ARCS_FIELD_NUMBER:I = 0xa

.field public static final DECODER_WORD_PEN_FIELD_NUMBER:I = 0xc

.field public static final DEPRECATED_ACOUSTIC_MODEL_VERSION_FIELD_NUMBER:I = 0x6

.field public static final DEPRECATED_LANGUAGE_MODEL_VERSION_FIELD_NUMBER:I = 0x7

.field public static final DEPRECATED_LEXICON_VERSION_FIELD_NUMBER:I = 0x9

.field public static final DEPRECATED_TEXTNORM_VERSION_FIELD_NUMBER:I = 0x8

.field public static final LANG_PACK_FIELD_NUMBER:I = 0x1b

.field public static final NOISE_CANCELER_ENABLED_FIELD_NUMBER:I = 0xf

.field public static final PERSONALIZATION_ENABLED_FIELD_NUMBER:I = 0x19

.field public static final RECOGNIZER_CONTEXT_FIELD_NUMBER:I = 0x5

.field public static final RECOGNIZER_LANGUAGE_FIELD_NUMBER:I = 0x15

.field public static final RECOGNIZER_SEGMENT_FIELD_NUMBER:I = 0x16

.field public static final RECOGNIZER_STATUS_CODE_COMPLETE_NO_MATCH:I = 0x1

.field public static final RECOGNIZER_STATUS_CODE_COMPLETE_SUCCESS:I = 0x0

.field public static final RECOGNIZER_STATUS_FIELD_NUMBER:I = 0x13

.field public static final REQUEST_DURATION_MS_FIELD_NUMBER:I = 0x18

.field public static final SAMPLE_RATE_FIELD_NUMBER:I = 0x4

.field public static final SERVER_CLUSTER_FIELD_NUMBER:I = 0x17

.field public static final SERVER_MACHINE_NAME_FIELD_NUMBER:I = 0x1c

.field public static final SPOKEN_LANGUAGE_FIELD_NUMBER:I = 0x14

.field public static final START_TIME_MS_FIELD_NUMBER:I = 0x1a

.field public static final TOP_HYPOTHESIS_FIELD_NUMBER:I = 0x10

.field public static final TOTAL_AUDIO_DURATION_MS_FIELD_NUMBER:I = 0x11

.field public static final UTTERANCE_ID_FIELD_NUMBER:I = 0x1

.field public static final WAVEFORM_FIELD_NUMBER:I = 0x2


# instance fields
.field private audioEncoding_:I

.field private averageConfidence_:F

.field private cachedSize:I

.field private channelCount_:I

.field private dEPRECATEDAcousticModelVersion_:Ljava/lang/String;

.field private dEPRECATEDLanguageModelVersion_:Ljava/lang/String;

.field private dEPRECATEDLexiconVersion_:Ljava/lang/String;

.field private dEPRECATEDTextnormVersion_:Ljava/lang/String;

.field private decoderGaussianSelectionCentroids_:I

.field private decoderLmWeight_:F

.field private decoderLocalBeam_:F

.field private decoderMaxArcs_:I

.field private decoderWordPen_:F

.field private hasAudioEncoding:Z

.field private hasAverageConfidence:Z

.field private hasChannelCount:Z

.field private hasDEPRECATEDAcousticModelVersion:Z

.field private hasDEPRECATEDLanguageModelVersion:Z

.field private hasDEPRECATEDLexiconVersion:Z

.field private hasDEPRECATEDTextnormVersion:Z

.field private hasDecoderGaussianSelectionCentroids:Z

.field private hasDecoderLmWeight:Z

.field private hasDecoderLocalBeam:Z

.field private hasDecoderMaxArcs:Z

.field private hasDecoderWordPen:Z

.field private hasLangPack:Z

.field private hasNoiseCancelerEnabled:Z

.field private hasPersonalizationEnabled:Z

.field private hasRecognizerContext:Z

.field private hasRecognizerLanguage:Z

.field private hasRecognizerStatus:Z

.field private hasRequestDurationMs:Z

.field private hasSampleRate:Z

.field private hasServerCluster:Z

.field private hasServerMachineName:Z

.field private hasSpokenLanguage:Z

.field private hasStartTimeMs:Z

.field private hasTopHypothesis:Z

.field private hasTotalAudioDurationMs:Z

.field private hasUtteranceId:Z

.field private hasWaveform:Z

.field private langPack_:Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

.field private noiseCancelerEnabled_:Z

.field private personalizationEnabled_:Z

.field private recognizerContext_:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

.field private recognizerLanguage_:Ljava/lang/String;

.field private recognizerSegment_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;",
            ">;"
        }
    .end annotation
.end field

.field private recognizerStatus_:I

.field private requestDurationMs_:I

.field private sampleRate_:F

.field private serverCluster_:Ljava/lang/String;

.field private serverMachineName_:Ljava/lang/String;

.field private spokenLanguage_:Ljava/lang/String;

.field private startTimeMs_:J

.field private topHypothesis_:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

.field private totalAudioDurationMs_:I

.field private utteranceId_:Ljava/lang/String;

.field private waveform_:Lcom/google/protobuf/micro/ByteStringMicro;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->utteranceId_:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->waveform_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 62
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->channelCount_:I

    .line 79
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->audioEncoding_:I

    .line 96
    iput v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->sampleRate_:F

    .line 113
    iput-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerContext_:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    .line 133
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDAcousticModelVersion_:Ljava/lang/String;

    .line 150
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDLanguageModelVersion_:Ljava/lang/String;

    .line 167
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDTextnormVersion_:Ljava/lang/String;

    .line 184
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDLexiconVersion_:Ljava/lang/String;

    .line 201
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderMaxArcs_:I

    .line 218
    iput v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderLocalBeam_:F

    .line 235
    iput v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderWordPen_:F

    .line 252
    iput v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderLmWeight_:F

    .line 269
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderGaussianSelectionCentroids_:I

    .line 286
    iput-boolean v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->noiseCancelerEnabled_:Z

    .line 303
    iput-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->topHypothesis_:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    .line 323
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->totalAudioDurationMs_:I

    .line 340
    iput v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->averageConfidence_:F

    .line 357
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerStatus_:I

    .line 374
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->spokenLanguage_:Ljava/lang/String;

    .line 391
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerLanguage_:Ljava/lang/String;

    .line 407
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerSegment_:Ljava/util/List;

    .line 441
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->serverCluster_:Ljava/lang/String;

    .line 458
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->serverMachineName_:Ljava/lang/String;

    .line 475
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->requestDurationMs_:I

    .line 492
    iput-boolean v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->personalizationEnabled_:Z

    .line 509
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->startTimeMs_:J

    .line 526
    iput-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->langPack_:Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    .line 673
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 957
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 951
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    return-object v0
.end method


# virtual methods
.method public addRecognizerSegment(Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 424
    if-nez p1, :cond_0

    .line 425
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerSegment_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerSegment_:Ljava/util/List;

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerSegment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    return-object p0
.end method

.method public final clear()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearUtteranceId()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 545
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearWaveform()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 546
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearChannelCount()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 547
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearAudioEncoding()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 548
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearSampleRate()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 549
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearRecognizerContext()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 550
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearDEPRECATEDAcousticModelVersion()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 551
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearDEPRECATEDLanguageModelVersion()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 552
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearDEPRECATEDTextnormVersion()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 553
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearDEPRECATEDLexiconVersion()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 554
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearDecoderMaxArcs()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 555
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearDecoderLocalBeam()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 556
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearDecoderWordPen()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 557
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearDecoderLmWeight()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 558
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearDecoderGaussianSelectionCentroids()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 559
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearNoiseCancelerEnabled()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 560
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearTopHypothesis()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 561
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearTotalAudioDurationMs()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 562
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearAverageConfidence()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 563
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearRecognizerStatus()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 564
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearSpokenLanguage()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 565
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearRecognizerLanguage()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 566
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearRecognizerSegment()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 567
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearServerCluster()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 568
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearServerMachineName()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 569
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearRequestDurationMs()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 570
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearPersonalizationEnabled()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 571
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearStartTimeMs()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 572
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearLangPack()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 573
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->cachedSize:I

    .line 574
    return-object p0
.end method

.method public clearAudioEncoding()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasAudioEncoding:Z

    .line 89
    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->audioEncoding_:I

    .line 90
    return-object p0
.end method

.method public clearAverageConfidence()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasAverageConfidence:Z

    .line 350
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->averageConfidence_:F

    .line 351
    return-object p0
.end method

.method public clearChannelCount()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasChannelCount:Z

    .line 72
    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->channelCount_:I

    .line 73
    return-object p0
.end method

.method public clearDEPRECATEDAcousticModelVersion()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDEPRECATEDAcousticModelVersion:Z

    .line 143
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDAcousticModelVersion_:Ljava/lang/String;

    .line 144
    return-object p0
.end method

.method public clearDEPRECATEDLanguageModelVersion()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDEPRECATEDLanguageModelVersion:Z

    .line 160
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDLanguageModelVersion_:Ljava/lang/String;

    .line 161
    return-object p0
.end method

.method public clearDEPRECATEDLexiconVersion()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDEPRECATEDLexiconVersion:Z

    .line 194
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDLexiconVersion_:Ljava/lang/String;

    .line 195
    return-object p0
.end method

.method public clearDEPRECATEDTextnormVersion()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDEPRECATEDTextnormVersion:Z

    .line 177
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDTextnormVersion_:Ljava/lang/String;

    .line 178
    return-object p0
.end method

.method public clearDecoderGaussianSelectionCentroids()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 278
    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderGaussianSelectionCentroids:Z

    .line 279
    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderGaussianSelectionCentroids_:I

    .line 280
    return-object p0
.end method

.method public clearDecoderLmWeight()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderLmWeight:Z

    .line 262
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderLmWeight_:F

    .line 263
    return-object p0
.end method

.method public clearDecoderLocalBeam()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderLocalBeam:Z

    .line 228
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderLocalBeam_:F

    .line 229
    return-object p0
.end method

.method public clearDecoderMaxArcs()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 210
    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderMaxArcs:Z

    .line 211
    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderMaxArcs_:I

    .line 212
    return-object p0
.end method

.method public clearDecoderWordPen()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderWordPen:Z

    .line 245
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderWordPen_:F

    .line 246
    return-object p0
.end method

.method public clearLangPack()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 538
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasLangPack:Z

    .line 539
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->langPack_:Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    .line 540
    return-object p0
.end method

.method public clearNoiseCancelerEnabled()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 295
    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasNoiseCancelerEnabled:Z

    .line 296
    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->noiseCancelerEnabled_:Z

    .line 297
    return-object p0
.end method

.method public clearPersonalizationEnabled()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 501
    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasPersonalizationEnabled:Z

    .line 502
    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->personalizationEnabled_:Z

    .line 503
    return-object p0
.end method

.method public clearRecognizerContext()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasRecognizerContext:Z

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerContext_:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    .line 127
    return-object p0
.end method

.method public clearRecognizerLanguage()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasRecognizerLanguage:Z

    .line 401
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerLanguage_:Ljava/lang/String;

    .line 402
    return-object p0
.end method

.method public clearRecognizerSegment()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 434
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerSegment_:Ljava/util/List;

    .line 435
    return-object p0
.end method

.method public clearRecognizerStatus()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 366
    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasRecognizerStatus:Z

    .line 367
    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerStatus_:I

    .line 368
    return-object p0
.end method

.method public clearRequestDurationMs()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 484
    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasRequestDurationMs:Z

    .line 485
    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->requestDurationMs_:I

    .line 486
    return-object p0
.end method

.method public clearSampleRate()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasSampleRate:Z

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->sampleRate_:F

    .line 107
    return-object p0
.end method

.method public clearServerCluster()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasServerCluster:Z

    .line 451
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->serverCluster_:Ljava/lang/String;

    .line 452
    return-object p0
.end method

.method public clearServerMachineName()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 467
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasServerMachineName:Z

    .line 468
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->serverMachineName_:Ljava/lang/String;

    .line 469
    return-object p0
.end method

.method public clearSpokenLanguage()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasSpokenLanguage:Z

    .line 384
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->spokenLanguage_:Ljava/lang/String;

    .line 385
    return-object p0
.end method

.method public clearStartTimeMs()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 2

    .prologue
    .line 518
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasStartTimeMs:Z

    .line 519
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->startTimeMs_:J

    .line 520
    return-object p0
.end method

.method public clearTopHypothesis()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasTopHypothesis:Z

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->topHypothesis_:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    .line 317
    return-object p0
.end method

.method public clearTotalAudioDurationMs()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 332
    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasTotalAudioDurationMs:Z

    .line 333
    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->totalAudioDurationMs_:I

    .line 334
    return-object p0
.end method

.method public clearUtteranceId()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasUtteranceId:Z

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->utteranceId_:Ljava/lang/String;

    .line 39
    return-object p0
.end method

.method public clearWaveform()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasWaveform:Z

    .line 55
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->waveform_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 56
    return-object p0
.end method

.method public getAudioEncoding()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->audioEncoding_:I

    return v0
.end method

.method public getAverageConfidence()F
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->averageConfidence_:F

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 676
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->cachedSize:I

    if-gez v0, :cond_0

    .line 678
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getSerializedSize()I

    .line 680
    :cond_0
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->cachedSize:I

    return v0
.end method

.method public getChannelCount()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->channelCount_:I

    return v0
.end method

.method public getDEPRECATEDAcousticModelVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDAcousticModelVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getDEPRECATEDLanguageModelVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDLanguageModelVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getDEPRECATEDLexiconVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDLexiconVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getDEPRECATEDTextnormVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDTextnormVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getDecoderGaussianSelectionCentroids()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderGaussianSelectionCentroids_:I

    return v0
.end method

.method public getDecoderLmWeight()F
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderLmWeight_:F

    return v0
.end method

.method public getDecoderLocalBeam()F
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderLocalBeam_:F

    return v0
.end method

.method public getDecoderMaxArcs()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderMaxArcs_:I

    return v0
.end method

.method public getDecoderWordPen()F
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderWordPen_:F

    return v0
.end method

.method public getLangPack()Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->langPack_:Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    return-object v0
.end method

.method public getNoiseCancelerEnabled()Z
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->noiseCancelerEnabled_:Z

    return v0
.end method

.method public getPersonalizationEnabled()Z
    .locals 1

    .prologue
    .line 493
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->personalizationEnabled_:Z

    return v0
.end method

.method public getRecognizerContext()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerContext_:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    return-object v0
.end method

.method public getRecognizerLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerLanguage_:Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizerSegment(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    .locals 1
    .parameter "index"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerSegment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    return-object v0
.end method

.method public getRecognizerSegmentCount()I
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerSegment_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRecognizerSegmentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 410
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerSegment_:Ljava/util/List;

    return-object v0
.end method

.method public getRecognizerStatus()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerStatus_:I

    return v0
.end method

.method public getRequestDurationMs()I
    .locals 1

    .prologue
    .line 476
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->requestDurationMs_:I

    return v0
.end method

.method public getSampleRate()F
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->sampleRate_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 685
    const/4 v2, 0x0

    .line 686
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasUtteranceId()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 687
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getUtteranceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 690
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasWaveform()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 691
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getWaveform()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 694
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasAudioEncoding()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 695
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getAudioEncoding()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 698
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasSampleRate()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 699
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getSampleRate()F

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v2, v3

    .line 702
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasRecognizerContext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 703
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getRecognizerContext()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 706
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDEPRECATEDAcousticModelVersion()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 707
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getDEPRECATEDAcousticModelVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 710
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDEPRECATEDLanguageModelVersion()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 711
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getDEPRECATEDLanguageModelVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 714
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDEPRECATEDTextnormVersion()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 715
    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getDEPRECATEDTextnormVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 718
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDEPRECATEDLexiconVersion()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 719
    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getDEPRECATEDLexiconVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 722
    :cond_8
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderMaxArcs()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 723
    const/16 v3, 0xa

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getDecoderMaxArcs()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 726
    :cond_9
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderLocalBeam()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 727
    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getDecoderLocalBeam()F

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v2, v3

    .line 730
    :cond_a
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderWordPen()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 731
    const/16 v3, 0xc

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getDecoderWordPen()F

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v2, v3

    .line 734
    :cond_b
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderLmWeight()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 735
    const/16 v3, 0xd

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getDecoderLmWeight()F

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v2, v3

    .line 738
    :cond_c
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderGaussianSelectionCentroids()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 739
    const/16 v3, 0xe

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getDecoderGaussianSelectionCentroids()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 742
    :cond_d
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasNoiseCancelerEnabled()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 743
    const/16 v3, 0xf

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getNoiseCancelerEnabled()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 746
    :cond_e
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasTopHypothesis()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 747
    const/16 v3, 0x10

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getTopHypothesis()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 750
    :cond_f
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasTotalAudioDurationMs()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 751
    const/16 v3, 0x11

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getTotalAudioDurationMs()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 754
    :cond_10
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasAverageConfidence()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 755
    const/16 v3, 0x12

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getAverageConfidence()F

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v2, v3

    .line 758
    :cond_11
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasRecognizerStatus()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 759
    const/16 v3, 0x13

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getRecognizerStatus()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 762
    :cond_12
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasSpokenLanguage()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 763
    const/16 v3, 0x14

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getSpokenLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 766
    :cond_13
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasRecognizerLanguage()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 767
    const/16 v3, 0x15

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getRecognizerLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 770
    :cond_14
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getRecognizerSegmentList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    .line 771
    .local v0, element:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    const/16 v3, 0x16

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 774
    .end local v0           #element:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    :cond_15
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasServerCluster()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 775
    const/16 v3, 0x17

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getServerCluster()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 778
    :cond_16
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasRequestDurationMs()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 779
    const/16 v3, 0x18

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getRequestDurationMs()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 782
    :cond_17
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasPersonalizationEnabled()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 783
    const/16 v3, 0x19

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getPersonalizationEnabled()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 786
    :cond_18
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasStartTimeMs()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 787
    const/16 v3, 0x1a

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getStartTimeMs()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 790
    :cond_19
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasLangPack()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 791
    const/16 v3, 0x1b

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getLangPack()Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 794
    :cond_1a
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasServerMachineName()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 795
    const/16 v3, 0x1c

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getServerMachineName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 798
    :cond_1b
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasChannelCount()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 799
    const/16 v3, 0x1d

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getChannelCount()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 802
    :cond_1c
    iput v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->cachedSize:I

    .line 803
    return v2
.end method

.method public getServerCluster()Ljava/lang/String;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->serverCluster_:Ljava/lang/String;

    return-object v0
.end method

.method public getServerMachineName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->serverMachineName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSpokenLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->spokenLanguage_:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTimeMs()J
    .locals 2

    .prologue
    .line 510
    iget-wide v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->startTimeMs_:J

    return-wide v0
.end method

.method public getTopHypothesis()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->topHypothesis_:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    return-object v0
.end method

.method public getTotalAudioDurationMs()I
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->totalAudioDurationMs_:I

    return v0
.end method

.method public getUtteranceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->utteranceId_:Ljava/lang/String;

    return-object v0
.end method

.method public getWaveform()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->waveform_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public hasAudioEncoding()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasAudioEncoding:Z

    return v0
.end method

.method public hasAverageConfidence()Z
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasAverageConfidence:Z

    return v0
.end method

.method public hasChannelCount()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasChannelCount:Z

    return v0
.end method

.method public hasDEPRECATEDAcousticModelVersion()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDEPRECATEDAcousticModelVersion:Z

    return v0
.end method

.method public hasDEPRECATEDLanguageModelVersion()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDEPRECATEDLanguageModelVersion:Z

    return v0
.end method

.method public hasDEPRECATEDLexiconVersion()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDEPRECATEDLexiconVersion:Z

    return v0
.end method

.method public hasDEPRECATEDTextnormVersion()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDEPRECATEDTextnormVersion:Z

    return v0
.end method

.method public hasDecoderGaussianSelectionCentroids()Z
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderGaussianSelectionCentroids:Z

    return v0
.end method

.method public hasDecoderLmWeight()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderLmWeight:Z

    return v0
.end method

.method public hasDecoderLocalBeam()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderLocalBeam:Z

    return v0
.end method

.method public hasDecoderMaxArcs()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderMaxArcs:Z

    return v0
.end method

.method public hasDecoderWordPen()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderWordPen:Z

    return v0
.end method

.method public hasLangPack()Z
    .locals 1

    .prologue
    .line 527
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasLangPack:Z

    return v0
.end method

.method public hasNoiseCancelerEnabled()Z
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasNoiseCancelerEnabled:Z

    return v0
.end method

.method public hasPersonalizationEnabled()Z
    .locals 1

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasPersonalizationEnabled:Z

    return v0
.end method

.method public hasRecognizerContext()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasRecognizerContext:Z

    return v0
.end method

.method public hasRecognizerLanguage()Z
    .locals 1

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasRecognizerLanguage:Z

    return v0
.end method

.method public hasRecognizerStatus()Z
    .locals 1

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasRecognizerStatus:Z

    return v0
.end method

.method public hasRequestDurationMs()Z
    .locals 1

    .prologue
    .line 477
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasRequestDurationMs:Z

    return v0
.end method

.method public hasSampleRate()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasSampleRate:Z

    return v0
.end method

.method public hasServerCluster()Z
    .locals 1

    .prologue
    .line 443
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasServerCluster:Z

    return v0
.end method

.method public hasServerMachineName()Z
    .locals 1

    .prologue
    .line 460
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasServerMachineName:Z

    return v0
.end method

.method public hasSpokenLanguage()Z
    .locals 1

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasSpokenLanguage:Z

    return v0
.end method

.method public hasStartTimeMs()Z
    .locals 1

    .prologue
    .line 511
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasStartTimeMs:Z

    return v0
.end method

.method public hasTopHypothesis()Z
    .locals 1

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasTopHypothesis:Z

    return v0
.end method

.method public hasTotalAudioDurationMs()Z
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasTotalAudioDurationMs:Z

    return v0
.end method

.method public hasUtteranceId()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasUtteranceId:Z

    return v0
.end method

.method public hasWaveform()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasWaveform:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 578
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 811
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 812
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 816
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 817
    :sswitch_0
    return-object p0

    .line 822
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setUtteranceId(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto :goto_0

    .line 826
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setWaveform(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto :goto_0

    .line 830
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setAudioEncoding(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto :goto_0

    .line 834
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setSampleRate(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto :goto_0

    .line 838
    :sswitch_5
    new-instance v1, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    invoke-direct {v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;-><init>()V

    .line 839
    .local v1, value:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 840
    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setRecognizerContext(Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto :goto_0

    .line 844
    .end local v1           #value:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setDEPRECATEDAcousticModelVersion(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto :goto_0

    .line 848
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setDEPRECATEDLanguageModelVersion(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto :goto_0

    .line 852
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setDEPRECATEDTextnormVersion(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto :goto_0

    .line 856
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setDEPRECATEDLexiconVersion(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto :goto_0

    .line 860
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setDecoderMaxArcs(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto :goto_0

    .line 864
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setDecoderLocalBeam(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto :goto_0

    .line 868
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setDecoderWordPen(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto :goto_0

    .line 872
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setDecoderLmWeight(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto :goto_0

    .line 876
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setDecoderGaussianSelectionCentroids(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto/16 :goto_0

    .line 880
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setNoiseCancelerEnabled(Z)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto/16 :goto_0

    .line 884
    :sswitch_10
    new-instance v1, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    invoke-direct {v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;-><init>()V

    .line 885
    .local v1, value:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 886
    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setTopHypothesis(Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto/16 :goto_0

    .line 890
    .end local v1           #value:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setTotalAudioDurationMs(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto/16 :goto_0

    .line 894
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setAverageConfidence(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto/16 :goto_0

    .line 898
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setRecognizerStatus(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto/16 :goto_0

    .line 902
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setSpokenLanguage(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto/16 :goto_0

    .line 906
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setRecognizerLanguage(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto/16 :goto_0

    .line 910
    :sswitch_16
    new-instance v1, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    invoke-direct {v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;-><init>()V

    .line 911
    .local v1, value:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 912
    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->addRecognizerSegment(Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto/16 :goto_0

    .line 916
    .end local v1           #value:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setServerCluster(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto/16 :goto_0

    .line 920
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setRequestDurationMs(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto/16 :goto_0

    .line 924
    :sswitch_19
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setPersonalizationEnabled(Z)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto/16 :goto_0

    .line 928
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setStartTimeMs(J)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto/16 :goto_0

    .line 932
    :sswitch_1b
    new-instance v1, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    invoke-direct {v1}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;-><init>()V

    .line 933
    .local v1, value:Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 934
    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setLangPack(Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto/16 :goto_0

    .line 938
    .end local v1           #value:Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;
    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setServerMachineName(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto/16 :goto_0

    .line 942
    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setChannelCount(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto/16 :goto_0

    .line 812
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x25 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
        0x5d -> :sswitch_b
        0x65 -> :sswitch_c
        0x6d -> :sswitch_d
        0x70 -> :sswitch_e
        0x78 -> :sswitch_f
        0x82 -> :sswitch_10
        0x88 -> :sswitch_11
        0x95 -> :sswitch_12
        0x98 -> :sswitch_13
        0xa2 -> :sswitch_14
        0xaa -> :sswitch_15
        0xb2 -> :sswitch_16
        0xba -> :sswitch_17
        0xc0 -> :sswitch_18
        0xc8 -> :sswitch_19
        0xd0 -> :sswitch_1a
        0xda -> :sswitch_1b
        0xe2 -> :sswitch_1c
        0xe8 -> :sswitch_1d
    .end sparse-switch
.end method

.method public setAudioEncoding(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasAudioEncoding:Z

    .line 84
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->audioEncoding_:I

    .line 85
    return-object p0
.end method

.method public setAverageConfidence(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 344
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasAverageConfidence:Z

    .line 345
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->averageConfidence_:F

    .line 346
    return-object p0
.end method

.method public setChannelCount(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasChannelCount:Z

    .line 67
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->channelCount_:I

    .line 68
    return-object p0
.end method

.method public setDEPRECATEDAcousticModelVersion(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDEPRECATEDAcousticModelVersion:Z

    .line 138
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDAcousticModelVersion_:Ljava/lang/String;

    .line 139
    return-object p0
.end method

.method public setDEPRECATEDLanguageModelVersion(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDEPRECATEDLanguageModelVersion:Z

    .line 155
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDLanguageModelVersion_:Ljava/lang/String;

    .line 156
    return-object p0
.end method

.method public setDEPRECATEDLexiconVersion(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDEPRECATEDLexiconVersion:Z

    .line 189
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDLexiconVersion_:Ljava/lang/String;

    .line 190
    return-object p0
.end method

.method public setDEPRECATEDTextnormVersion(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDEPRECATEDTextnormVersion:Z

    .line 172
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDTextnormVersion_:Ljava/lang/String;

    .line 173
    return-object p0
.end method

.method public setDecoderGaussianSelectionCentroids(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderGaussianSelectionCentroids:Z

    .line 274
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderGaussianSelectionCentroids_:I

    .line 275
    return-object p0
.end method

.method public setDecoderLmWeight(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderLmWeight:Z

    .line 257
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderLmWeight_:F

    .line 258
    return-object p0
.end method

.method public setDecoderLocalBeam(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderLocalBeam:Z

    .line 223
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderLocalBeam_:F

    .line 224
    return-object p0
.end method

.method public setDecoderMaxArcs(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderMaxArcs:Z

    .line 206
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderMaxArcs_:I

    .line 207
    return-object p0
.end method

.method public setDecoderWordPen(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderWordPen:Z

    .line 240
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderWordPen_:F

    .line 241
    return-object p0
.end method

.method public setLangPack(Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 530
    if-nez p1, :cond_0

    .line 531
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 533
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasLangPack:Z

    .line 534
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->langPack_:Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    .line 535
    return-object p0
.end method

.method public setNoiseCancelerEnabled(Z)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasNoiseCancelerEnabled:Z

    .line 291
    iput-boolean p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->noiseCancelerEnabled_:Z

    .line 292
    return-object p0
.end method

.method public setPersonalizationEnabled(Z)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 496
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasPersonalizationEnabled:Z

    .line 497
    iput-boolean p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->personalizationEnabled_:Z

    .line 498
    return-object p0
.end method

.method public setRecognizerContext(Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 118
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 120
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasRecognizerContext:Z

    .line 121
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerContext_:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    .line 122
    return-object p0
.end method

.method public setRecognizerLanguage(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 395
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasRecognizerLanguage:Z

    .line 396
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerLanguage_:Ljava/lang/String;

    .line 397
    return-object p0
.end method

.method public setRecognizerSegment(ILcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 417
    if-nez p2, :cond_0

    .line 418
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerSegment_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 421
    return-object p0
.end method

.method public setRecognizerStatus(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasRecognizerStatus:Z

    .line 362
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerStatus_:I

    .line 363
    return-object p0
.end method

.method public setRequestDurationMs(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 479
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasRequestDurationMs:Z

    .line 480
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->requestDurationMs_:I

    .line 481
    return-object p0
.end method

.method public setSampleRate(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasSampleRate:Z

    .line 101
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->sampleRate_:F

    .line 102
    return-object p0
.end method

.method public setServerCluster(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 445
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasServerCluster:Z

    .line 446
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->serverCluster_:Ljava/lang/String;

    .line 447
    return-object p0
.end method

.method public setServerMachineName(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 462
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasServerMachineName:Z

    .line 463
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->serverMachineName_:Ljava/lang/String;

    .line 464
    return-object p0
.end method

.method public setSpokenLanguage(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasSpokenLanguage:Z

    .line 379
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->spokenLanguage_:Ljava/lang/String;

    .line 380
    return-object p0
.end method

.method public setStartTimeMs(J)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 513
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasStartTimeMs:Z

    .line 514
    iput-wide p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->startTimeMs_:J

    .line 515
    return-object p0
.end method

.method public setTopHypothesis(Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 307
    if-nez p1, :cond_0

    .line 308
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 310
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasTopHypothesis:Z

    .line 311
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->topHypothesis_:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    .line 312
    return-object p0
.end method

.method public setTotalAudioDurationMs(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasTotalAudioDurationMs:Z

    .line 328
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->totalAudioDurationMs_:I

    .line 329
    return-object p0
.end method

.method public setUtteranceId(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasUtteranceId:Z

    .line 33
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->utteranceId_:Ljava/lang/String;

    .line 34
    return-object p0
.end method

.method public setWaveform(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasWaveform:Z

    .line 50
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->waveform_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 51
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
    .line 584
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasUtteranceId()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 585
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getUtteranceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 587
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasWaveform()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 588
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getWaveform()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 590
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasAudioEncoding()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 591
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getAudioEncoding()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 593
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasSampleRate()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 594
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getSampleRate()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 596
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasRecognizerContext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 597
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getRecognizerContext()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 599
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDEPRECATEDAcousticModelVersion()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 600
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getDEPRECATEDAcousticModelVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 602
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDEPRECATEDLanguageModelVersion()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 603
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getDEPRECATEDLanguageModelVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 605
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDEPRECATEDTextnormVersion()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 606
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getDEPRECATEDTextnormVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 608
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDEPRECATEDLexiconVersion()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 609
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getDEPRECATEDLexiconVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 611
    :cond_8
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderMaxArcs()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 612
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getDecoderMaxArcs()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 614
    :cond_9
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderLocalBeam()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 615
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getDecoderLocalBeam()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 617
    :cond_a
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderWordPen()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 618
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getDecoderWordPen()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 620
    :cond_b
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderLmWeight()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 621
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getDecoderLmWeight()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 623
    :cond_c
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderGaussianSelectionCentroids()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 624
    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getDecoderGaussianSelectionCentroids()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 626
    :cond_d
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasNoiseCancelerEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 627
    const/16 v2, 0xf

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getNoiseCancelerEnabled()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 629
    :cond_e
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasTopHypothesis()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 630
    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getTopHypothesis()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 632
    :cond_f
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasTotalAudioDurationMs()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 633
    const/16 v2, 0x11

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getTotalAudioDurationMs()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 635
    :cond_10
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasAverageConfidence()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 636
    const/16 v2, 0x12

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getAverageConfidence()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 638
    :cond_11
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasRecognizerStatus()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 639
    const/16 v2, 0x13

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getRecognizerStatus()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 641
    :cond_12
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasSpokenLanguage()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 642
    const/16 v2, 0x14

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getSpokenLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 644
    :cond_13
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasRecognizerLanguage()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 645
    const/16 v2, 0x15

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getRecognizerLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 647
    :cond_14
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getRecognizerSegmentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    .line 648
    .local v0, element:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    const/16 v2, 0x16

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 650
    .end local v0           #element:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    :cond_15
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasServerCluster()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 651
    const/16 v2, 0x17

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getServerCluster()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 653
    :cond_16
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasRequestDurationMs()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 654
    const/16 v2, 0x18

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getRequestDurationMs()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 656
    :cond_17
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasPersonalizationEnabled()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 657
    const/16 v2, 0x19

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getPersonalizationEnabled()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 659
    :cond_18
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasStartTimeMs()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 660
    const/16 v2, 0x1a

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getStartTimeMs()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 662
    :cond_19
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasLangPack()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 663
    const/16 v2, 0x1b

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getLangPack()Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 665
    :cond_1a
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasServerMachineName()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 666
    const/16 v2, 0x1c

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getServerMachineName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 668
    :cond_1b
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasChannelCount()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 669
    const/16 v2, 0x1d

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getChannelCount()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 671
    :cond_1c
    return-void
.end method
