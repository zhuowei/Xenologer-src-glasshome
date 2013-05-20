.class public final Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Recognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/speech/s3/Recognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "S3RecognizerInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;
    }
.end annotation


# static fields
.field public static final ALTERNATE_PARAMS_FIELD_NUMBER:I = 0x4

.field public static final CONDITION_FIELD_NUMBER:I = 0xa

.field public static final CONFIDENCE_THRESHOLD_FIELD_NUMBER:I = 0x8

.field public static final DICTATION_MODE_FIELD_NUMBER:I = 0xb

.field public static final ENABLE_ALTERNATES_FIELD_NUMBER:I = 0xd

.field public static final ENABLE_COMBINED_NBEST_FIELD_NUMBER:I = 0xe

.field public static final ENABLE_LATTICE_FIELD_NUMBER:I = 0x6

.field public static final ENABLE_PARTIAL_RESULTS_FIELD_NUMBER:I = 0x5

.field public static final ENABLE_PERSONALIZATION_FIELD_NUMBER:I = 0x10

.field public static final ENABLE_SEMANTIC_RESULTS_FIELD_NUMBER:I = 0xc

.field public static final GRAMMAR_PARAMS_FIELD_NUMBER:I = 0x9

.field public static final GRECO2_COMPAT_MODE_FIELD_NUMBER:I = 0xf

.field public static final LOGGING_DATA_REQUESTED_FIELD_NUMBER:I = 0x11

.field public static final LOG_FEATURES_FIELD_NUMBER:I = 0x12

.field public static final MAX_NBEST_FIELD_NUMBER:I = 0x3

.field public static final PROFANITY_FILTER_FIELD_NUMBER:I = 0x7

.field public static final PROFANITY_FILTER_TYPES_FSTARS:I = 0x2

.field public static final PROFANITY_FILTER_TYPES_HASHES:I = 0x1

.field public static final PROFANITY_FILTER_TYPES_NONE:I = 0x0

.field public static final RECOGNITION_CONTEXT_FIELD_NUMBER:I = 0x1


# instance fields
.field private alternateParams_:Lcom/google/speech/common/Alternates$AlternateParams;

.field private cachedSize:I

.field private condition_:Ljava/lang/String;

.field private confidenceThreshold_:F

.field private dictationMode_:Z

.field private enableAlternates_:Z

.field private enableCombinedNbest_:Z

.field private enableLattice_:Z

.field private enablePartialResults_:Z

.field private enablePersonalization_:Z

.field private enableSemanticResults_:Z

.field private grammarParams_:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;

.field private greco2CompatMode_:Z

.field private hasAlternateParams:Z

.field private hasCondition:Z

.field private hasConfidenceThreshold:Z

.field private hasDictationMode:Z

.field private hasEnableAlternates:Z

.field private hasEnableCombinedNbest:Z

.field private hasEnableLattice:Z

.field private hasEnablePartialResults:Z

.field private hasEnablePersonalization:Z

.field private hasEnableSemanticResults:Z

.field private hasGrammarParams:Z

.field private hasGreco2CompatMode:Z

.field private hasLogFeatures:Z

.field private hasLoggingDataRequested:Z

.field private hasMaxNbest:Z

.field private hasProfanityFilter:Z

.field private hasRecognitionContext:Z

.field private logFeatures_:Z

.field private loggingDataRequested_:Z

.field private maxNbest_:I

.field private profanityFilter_:I

.field private recognitionContext_:Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 146
    iput-object v2, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->recognitionContext_:Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    .line 166
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->maxNbest_:I

    .line 183
    iput-object v2, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->alternateParams_:Lcom/google/speech/common/Alternates$AlternateParams;

    .line 203
    iput-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enablePartialResults_:Z

    .line 220
    iput-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableLattice_:Z

    .line 237
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->profanityFilter_:I

    .line 254
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->confidenceThreshold_:F

    .line 271
    iput-object v2, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->grammarParams_:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;

    .line 291
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->condition_:Ljava/lang/String;

    .line 308
    iput-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->dictationMode_:Z

    .line 325
    iput-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableSemanticResults_:Z

    .line 342
    iput-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableAlternates_:Z

    .line 359
    iput-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableCombinedNbest_:Z

    .line 376
    iput-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->greco2CompatMode_:Z

    .line 393
    iput-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enablePersonalization_:Z

    .line 410
    iput-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->loggingDataRequested_:Z

    .line 427
    iput-boolean v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->logFeatures_:Z

    .line 523
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 709
    new-instance v0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 703
    new-instance v0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    check-cast v0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->clearRecognitionContext()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 443
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->clearMaxNbest()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 444
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->clearAlternateParams()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 445
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->clearEnablePartialResults()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 446
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->clearEnableLattice()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 447
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->clearProfanityFilter()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 448
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->clearConfidenceThreshold()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 449
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->clearGrammarParams()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 450
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->clearCondition()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 451
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->clearDictationMode()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 452
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->clearEnableSemanticResults()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 453
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->clearEnableAlternates()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 454
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->clearEnableCombinedNbest()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 455
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->clearGreco2CompatMode()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 456
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->clearEnablePersonalization()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 457
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->clearLoggingDataRequested()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 458
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->clearLogFeatures()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    .line 459
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->cachedSize:I

    .line 460
    return-object p0
.end method

.method public clearAlternateParams()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasAlternateParams:Z

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->alternateParams_:Lcom/google/speech/common/Alternates$AlternateParams;

    .line 197
    return-object p0
.end method

.method public clearCondition()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasCondition:Z

    .line 301
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->condition_:Ljava/lang/String;

    .line 302
    return-object p0
.end method

.method public clearConfidenceThreshold()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasConfidenceThreshold:Z

    .line 264
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->confidenceThreshold_:F

    .line 265
    return-object p0
.end method

.method public clearDictationMode()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 317
    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasDictationMode:Z

    .line 318
    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->dictationMode_:Z

    .line 319
    return-object p0
.end method

.method public clearEnableAlternates()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 351
    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasEnableAlternates:Z

    .line 352
    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableAlternates_:Z

    .line 353
    return-object p0
.end method

.method public clearEnableCombinedNbest()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 368
    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasEnableCombinedNbest:Z

    .line 369
    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableCombinedNbest_:Z

    .line 370
    return-object p0
.end method

.method public clearEnableLattice()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 229
    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasEnableLattice:Z

    .line 230
    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableLattice_:Z

    .line 231
    return-object p0
.end method

.method public clearEnablePartialResults()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 212
    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasEnablePartialResults:Z

    .line 213
    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enablePartialResults_:Z

    .line 214
    return-object p0
.end method

.method public clearEnablePersonalization()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 402
    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasEnablePersonalization:Z

    .line 403
    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enablePersonalization_:Z

    .line 404
    return-object p0
.end method

.method public clearEnableSemanticResults()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 334
    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasEnableSemanticResults:Z

    .line 335
    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableSemanticResults_:Z

    .line 336
    return-object p0
.end method

.method public clearGrammarParams()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasGrammarParams:Z

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->grammarParams_:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;

    .line 285
    return-object p0
.end method

.method public clearGreco2CompatMode()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 385
    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasGreco2CompatMode:Z

    .line 386
    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->greco2CompatMode_:Z

    .line 387
    return-object p0
.end method

.method public clearLogFeatures()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 436
    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasLogFeatures:Z

    .line 437
    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->logFeatures_:Z

    .line 438
    return-object p0
.end method

.method public clearLoggingDataRequested()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 419
    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasLoggingDataRequested:Z

    .line 420
    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->loggingDataRequested_:Z

    .line 421
    return-object p0
.end method

.method public clearMaxNbest()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasMaxNbest:Z

    .line 176
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->maxNbest_:I

    .line 177
    return-object p0
.end method

.method public clearProfanityFilter()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasProfanityFilter:Z

    .line 247
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->profanityFilter_:I

    .line 248
    return-object p0
.end method

.method public clearRecognitionContext()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasRecognitionContext:Z

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->recognitionContext_:Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    .line 160
    return-object p0
.end method

.method public getAlternateParams()Lcom/google/speech/common/Alternates$AlternateParams;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->alternateParams_:Lcom/google/speech/common/Alternates$AlternateParams;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 526
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 528
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->getSerializedSize()I

    .line 530
    :cond_0
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->cachedSize:I

    return v0
.end method

.method public getCondition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->condition_:Ljava/lang/String;

    return-object v0
.end method

.method public getConfidenceThreshold()F
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->confidenceThreshold_:F

    return v0
.end method

.method public getDictationMode()Z
    .locals 1

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->dictationMode_:Z

    return v0
.end method

.method public getEnableAlternates()Z
    .locals 1

    .prologue
    .line 343
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableAlternates_:Z

    return v0
.end method

.method public getEnableCombinedNbest()Z
    .locals 1

    .prologue
    .line 360
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableCombinedNbest_:Z

    return v0
.end method

.method public getEnableLattice()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableLattice_:Z

    return v0
.end method

.method public getEnablePartialResults()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enablePartialResults_:Z

    return v0
.end method

.method public getEnablePersonalization()Z
    .locals 1

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enablePersonalization_:Z

    return v0
.end method

.method public getEnableSemanticResults()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableSemanticResults_:Z

    return v0
.end method

.method public getGrammarParams()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->grammarParams_:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;

    return-object v0
.end method

.method public getGreco2CompatMode()Z
    .locals 1

    .prologue
    .line 377
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->greco2CompatMode_:Z

    return v0
.end method

.method public getLogFeatures()Z
    .locals 1

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->logFeatures_:Z

    return v0
.end method

.method public getLoggingDataRequested()Z
    .locals 1

    .prologue
    .line 411
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->loggingDataRequested_:Z

    return v0
.end method

.method public getMaxNbest()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->maxNbest_:I

    return v0
.end method

.method public getProfanityFilter()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->profanityFilter_:I

    return v0
.end method

.method public getRecognitionContext()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->recognitionContext_:Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 535
    const/4 v0, 0x0

    .line 536
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasRecognitionContext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 537
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->getRecognitionContext()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 540
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasMaxNbest()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 541
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->getMaxNbest()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 544
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasAlternateParams()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 545
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->getAlternateParams()Lcom/google/speech/common/Alternates$AlternateParams;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 548
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasEnablePartialResults()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 549
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->getEnablePartialResults()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 552
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasEnableLattice()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 553
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->getEnableLattice()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 556
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasProfanityFilter()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 557
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->getProfanityFilter()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 560
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasConfidenceThreshold()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 561
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->getConfidenceThreshold()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 564
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasGrammarParams()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 565
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->getGrammarParams()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 568
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasCondition()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 569
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->getCondition()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 572
    :cond_8
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasDictationMode()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 573
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->getDictationMode()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 576
    :cond_9
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasEnableSemanticResults()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 577
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->getEnableSemanticResults()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 580
    :cond_a
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasEnableAlternates()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 581
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->getEnableAlternates()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 584
    :cond_b
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasEnableCombinedNbest()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 585
    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->getEnableCombinedNbest()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 588
    :cond_c
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasGreco2CompatMode()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 589
    const/16 v1, 0xf

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->getGreco2CompatMode()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 592
    :cond_d
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasEnablePersonalization()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 593
    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->getEnablePersonalization()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 596
    :cond_e
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasLoggingDataRequested()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 597
    const/16 v1, 0x11

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->getLoggingDataRequested()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 600
    :cond_f
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasLogFeatures()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 601
    const/16 v1, 0x12

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->getLogFeatures()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 604
    :cond_10
    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->cachedSize:I

    .line 605
    return v0
.end method

.method public hasAlternateParams()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasAlternateParams:Z

    return v0
.end method

.method public hasCondition()Z
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasCondition:Z

    return v0
.end method

.method public hasConfidenceThreshold()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasConfidenceThreshold:Z

    return v0
.end method

.method public hasDictationMode()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasDictationMode:Z

    return v0
.end method

.method public hasEnableAlternates()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasEnableAlternates:Z

    return v0
.end method

.method public hasEnableCombinedNbest()Z
    .locals 1

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasEnableCombinedNbest:Z

    return v0
.end method

.method public hasEnableLattice()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasEnableLattice:Z

    return v0
.end method

.method public hasEnablePartialResults()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasEnablePartialResults:Z

    return v0
.end method

.method public hasEnablePersonalization()Z
    .locals 1

    .prologue
    .line 395
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasEnablePersonalization:Z

    return v0
.end method

.method public hasEnableSemanticResults()Z
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasEnableSemanticResults:Z

    return v0
.end method

.method public hasGrammarParams()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasGrammarParams:Z

    return v0
.end method

.method public hasGreco2CompatMode()Z
    .locals 1

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasGreco2CompatMode:Z

    return v0
.end method

.method public hasLogFeatures()Z
    .locals 1

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasLogFeatures:Z

    return v0
.end method

.method public hasLoggingDataRequested()Z
    .locals 1

    .prologue
    .line 412
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasLoggingDataRequested:Z

    return v0
.end method

.method public hasMaxNbest()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasMaxNbest:Z

    return v0
.end method

.method public hasProfanityFilter()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasProfanityFilter:Z

    return v0
.end method

.method public hasRecognitionContext()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasRecognitionContext:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 464
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
    invoke-virtual {p0, p1}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 613
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 614
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 618
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 619
    :sswitch_0
    return-object p0

    .line 624
    :sswitch_1
    new-instance v1, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    invoke-direct {v1}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;-><init>()V

    .line 625
    .local v1, value:Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 626
    invoke-virtual {p0, v1}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->setRecognitionContext(Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    goto :goto_0

    .line 630
    .end local v1           #value:Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->setMaxNbest(I)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    goto :goto_0

    .line 634
    :sswitch_3
    new-instance v1, Lcom/google/speech/common/Alternates$AlternateParams;

    invoke-direct {v1}, Lcom/google/speech/common/Alternates$AlternateParams;-><init>()V

    .line 635
    .local v1, value:Lcom/google/speech/common/Alternates$AlternateParams;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 636
    invoke-virtual {p0, v1}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->setAlternateParams(Lcom/google/speech/common/Alternates$AlternateParams;)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    goto :goto_0

    .line 640
    .end local v1           #value:Lcom/google/speech/common/Alternates$AlternateParams;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->setEnablePartialResults(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    goto :goto_0

    .line 644
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->setEnableLattice(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    goto :goto_0

    .line 648
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->setProfanityFilter(I)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    goto :goto_0

    .line 652
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->setConfidenceThreshold(F)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    goto :goto_0

    .line 656
    :sswitch_8
    new-instance v1, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;

    invoke-direct {v1}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;-><init>()V

    .line 657
    .local v1, value:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 658
    invoke-virtual {p0, v1}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->setGrammarParams(Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    goto :goto_0

    .line 662
    .end local v1           #value:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->setCondition(Ljava/lang/String;)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    goto :goto_0

    .line 666
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->setDictationMode(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    goto :goto_0

    .line 670
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->setEnableSemanticResults(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    goto :goto_0

    .line 674
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->setEnableAlternates(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    goto :goto_0

    .line 678
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->setEnableCombinedNbest(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    goto/16 :goto_0

    .line 682
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->setGreco2CompatMode(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    goto/16 :goto_0

    .line 686
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->setEnablePersonalization(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    goto/16 :goto_0

    .line 690
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->setLoggingDataRequested(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    goto/16 :goto_0

    .line 694
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->setLogFeatures(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;

    goto/16 :goto_0

    .line 614
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x18 -> :sswitch_2
        0x22 -> :sswitch_3
        0x28 -> :sswitch_4
        0x30 -> :sswitch_5
        0x38 -> :sswitch_6
        0x45 -> :sswitch_7
        0x4a -> :sswitch_8
        0x52 -> :sswitch_9
        0x58 -> :sswitch_a
        0x60 -> :sswitch_b
        0x68 -> :sswitch_c
        0x70 -> :sswitch_d
        0x78 -> :sswitch_e
        0x80 -> :sswitch_f
        0x88 -> :sswitch_10
        0x90 -> :sswitch_11
    .end sparse-switch
.end method

.method public setAlternateParams(Lcom/google/speech/common/Alternates$AlternateParams;)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 187
    if-nez p1, :cond_0

    .line 188
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 190
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasAlternateParams:Z

    .line 191
    iput-object p1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->alternateParams_:Lcom/google/speech/common/Alternates$AlternateParams;

    .line 192
    return-object p0
.end method

.method public setCondition(Ljava/lang/String;)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasCondition:Z

    .line 296
    iput-object p1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->condition_:Ljava/lang/String;

    .line 297
    return-object p0
.end method

.method public setConfidenceThreshold(F)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasConfidenceThreshold:Z

    .line 259
    iput p1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->confidenceThreshold_:F

    .line 260
    return-object p0
.end method

.method public setDictationMode(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasDictationMode:Z

    .line 313
    iput-boolean p1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->dictationMode_:Z

    .line 314
    return-object p0
.end method

.method public setEnableAlternates(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasEnableAlternates:Z

    .line 347
    iput-boolean p1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableAlternates_:Z

    .line 348
    return-object p0
.end method

.method public setEnableCombinedNbest(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasEnableCombinedNbest:Z

    .line 364
    iput-boolean p1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableCombinedNbest_:Z

    .line 365
    return-object p0
.end method

.method public setEnableLattice(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasEnableLattice:Z

    .line 225
    iput-boolean p1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableLattice_:Z

    .line 226
    return-object p0
.end method

.method public setEnablePartialResults(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasEnablePartialResults:Z

    .line 208
    iput-boolean p1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enablePartialResults_:Z

    .line 209
    return-object p0
.end method

.method public setEnablePersonalization(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 397
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasEnablePersonalization:Z

    .line 398
    iput-boolean p1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enablePersonalization_:Z

    .line 399
    return-object p0
.end method

.method public setEnableSemanticResults(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasEnableSemanticResults:Z

    .line 330
    iput-boolean p1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->enableSemanticResults_:Z

    .line 331
    return-object p0
.end method

.method public setGrammarParams(Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 275
    if-nez p1, :cond_0

    .line 276
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 278
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasGrammarParams:Z

    .line 279
    iput-object p1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->grammarParams_:Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;

    .line 280
    return-object p0
.end method

.method public setGreco2CompatMode(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasGreco2CompatMode:Z

    .line 381
    iput-boolean p1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->greco2CompatMode_:Z

    .line 382
    return-object p0
.end method

.method public setLogFeatures(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasLogFeatures:Z

    .line 432
    iput-boolean p1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->logFeatures_:Z

    .line 433
    return-object p0
.end method

.method public setLoggingDataRequested(Z)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasLoggingDataRequested:Z

    .line 415
    iput-boolean p1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->loggingDataRequested_:Z

    .line 416
    return-object p0
.end method

.method public setMaxNbest(I)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasMaxNbest:Z

    .line 171
    iput p1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->maxNbest_:I

    .line 172
    return-object p0
.end method

.method public setProfanityFilter(I)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasProfanityFilter:Z

    .line 242
    iput p1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->profanityFilter_:I

    .line 243
    return-object p0
.end method

.method public setRecognitionContext(Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 150
    if-nez p1, :cond_0

    .line 151
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 153
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasRecognitionContext:Z

    .line 154
    iput-object p1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->recognitionContext_:Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    .line 155
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
    .line 470
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasRecognitionContext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->getRecognitionContext()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 473
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasMaxNbest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->getMaxNbest()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 476
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasAlternateParams()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 477
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->getAlternateParams()Lcom/google/speech/common/Alternates$AlternateParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 479
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasEnablePartialResults()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 480
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->getEnablePartialResults()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 482
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasEnableLattice()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 483
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->getEnableLattice()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 485
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasProfanityFilter()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 486
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->getProfanityFilter()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 488
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasConfidenceThreshold()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 489
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->getConfidenceThreshold()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 491
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasGrammarParams()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 492
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->getGrammarParams()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 494
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasCondition()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 495
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->getCondition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 497
    :cond_8
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasDictationMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 498
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->getDictationMode()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 500
    :cond_9
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasEnableSemanticResults()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 501
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->getEnableSemanticResults()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 503
    :cond_a
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasEnableAlternates()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 504
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->getEnableAlternates()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 506
    :cond_b
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasEnableCombinedNbest()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 507
    const/16 v0, 0xe

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->getEnableCombinedNbest()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 509
    :cond_c
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasGreco2CompatMode()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 510
    const/16 v0, 0xf

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->getGreco2CompatMode()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 512
    :cond_d
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasEnablePersonalization()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 513
    const/16 v0, 0x10

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->getEnablePersonalization()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 515
    :cond_e
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasLoggingDataRequested()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 516
    const/16 v0, 0x11

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->getLoggingDataRequested()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 518
    :cond_f
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->hasLogFeatures()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 519
    const/16 v0, 0x12

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;->getLogFeatures()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 521
    :cond_10
    return-void
.end method
