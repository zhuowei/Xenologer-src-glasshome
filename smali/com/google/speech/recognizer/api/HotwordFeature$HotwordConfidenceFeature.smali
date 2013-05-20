.class public final Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "HotwordFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/recognizer/api/HotwordFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HotwordConfidenceFeature"
.end annotation


# static fields
.field public static final AM_SCORE_FIELD_NUMBER:I = 0x11

.field public static final ASCORE_BEST_FIELD_NUMBER:I = 0xe

.field public static final ASCORE_MEANDIFF_FIELD_NUMBER:I = 0xd

.field public static final ASCORE_MEAN_FIELD_NUMBER:I = 0xa

.field public static final ASCORE_STDDEV_FIELD_NUMBER:I = 0xb

.field public static final ASCORE_WORST_FIELD_NUMBER:I = 0xc

.field public static final BASELINE_FIELD_NUMBER:I = 0x6

.field public static final DUR_SCORE_FIELD_NUMBER:I = 0x10

.field public static final FRAME_DISTANCE_FIELD_NUMBER:I = 0x3

.field public static final LM_SCORE_FIELD_NUMBER:I = 0xf

.field public static final NORMALIZED_WORD_DURATION_FIELD_NUMBER:I = 0x9

.field public static final NUM_PHONES_FIELD_NUMBER:I = 0x8

.field public static final PHONE_DURATION_SCORE_FIELD_NUMBER:I = 0x1

.field public static final PH_ALIGN_DELETE_FIELD_NUMBER:I = 0x1b

.field public static final PH_ALIGN_FIELD_NUMBER:I = 0x1a

.field public static final PH_ALIGN_INSERT_FIELD_NUMBER:I = 0x1c

.field public static final PH_EXPECTATION_ALIGN_FIELD_NUMBER:I = 0x13

.field public static final PH_EXPECTATION_DELETE_ALIGN_FIELD_NUMBER:I = 0x15

.field public static final PH_EXPECTATION_DELETE_NN_FIELD_NUMBER:I = 0x18

.field public static final PH_EXPECTATION_INSERT_ALIGN_FIELD_NUMBER:I = 0x16

.field public static final PH_EXPECTATION_INSERT_NN_FIELD_NUMBER:I = 0x19

.field public static final PH_EXPECTATION_NN_FIELD_NUMBER:I = 0x14

.field public static final PH_NN_DELETE_FIELD_NUMBER:I = 0x1e

.field public static final PH_NN_FIELD_NUMBER:I = 0x1d

.field public static final PH_NN_INSERT_FIELD_NUMBER:I = 0x1f

.field public static final SPEAKER_RATE_FIELD_NUMBER:I = 0x2

.field public static final STABILITY_FIELD_NUMBER:I = 0x17

.field public static final START_FRAME_FIELD_NUMBER:I = 0x12

.field public static final WORD_DURATION_FRAMES_FIELD_NUMBER:I = 0x4


# instance fields
.field private amScore_:F

.field private ascoreBest_:F

.field private ascoreMean_:F

.field private ascoreMeandiff_:F

.field private ascoreStddev_:F

.field private ascoreWorst_:F

.field private baseline_:Z

.field private cachedSize:I

.field private durScore_:F

.field private frameDistance_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private hasAmScore:Z

.field private hasAscoreBest:Z

.field private hasAscoreMean:Z

.field private hasAscoreMeandiff:Z

.field private hasAscoreStddev:Z

.field private hasAscoreWorst:Z

.field private hasBaseline:Z

.field private hasDurScore:Z

.field private hasLmScore:Z

.field private hasNormalizedWordDuration:Z

.field private hasNumPhones:Z

.field private hasPhoneDurationScore:Z

.field private hasSpeakerRate:Z

.field private hasStability:Z

.field private hasStartFrame:Z

.field private hasWordDurationFrames:Z

.field private lmScore_:F

.field private normalizedWordDuration_:F

.field private numPhones_:F

.field private phAlignDelete_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private phAlignInsert_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private phAlign_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private phExpectationAlign_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private phExpectationDeleteAlign_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private phExpectationDeleteNn_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private phExpectationInsertAlign_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private phExpectationInsertNn_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private phExpectationNn_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private phNnDelete_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private phNnInsert_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private phNn_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private phoneDurationScore_:F

.field private speakerRate_:F

.field private stability_:F

.field private startFrame_:F

.field private wordDurationFrames_:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phoneDurationScore_:F

    .line 32
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->speakerRate_:F

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->frameDistance_:Ljava/util/List;

    .line 76
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->wordDurationFrames_:F

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->baseline_:Z

    .line 110
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->numPhones_:F

    .line 127
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->normalizedWordDuration_:F

    .line 144
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreMean_:F

    .line 161
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreStddev_:F

    .line 178
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreWorst_:F

    .line 195
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreMeandiff_:F

    .line 212
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreBest_:F

    .line 229
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->lmScore_:F

    .line 246
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->durScore_:F

    .line 263
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->amScore_:F

    .line 280
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->startFrame_:F

    .line 297
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->stability_:F

    .line 313
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlign_:Ljava/util/List;

    .line 340
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignDelete_:Ljava/util/List;

    .line 367
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignInsert_:Ljava/util/List;

    .line 394
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNn_:Ljava/util/List;

    .line 421
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnDelete_:Ljava/util/List;

    .line 448
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnInsert_:Ljava/util/List;

    .line 475
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationAlign_:Ljava/util/List;

    .line 502
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationNn_:Ljava/util/List;

    .line 529
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteAlign_:Ljava/util/List;

    .line 556
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertAlign_:Ljava/util/List;

    .line 583
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteNn_:Ljava/util/List;

    .line 610
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertNn_:Ljava/util/List;

    .line 765
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1067
    new-instance v0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1061
    new-instance v0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    check-cast v0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    return-object v0
.end method


# virtual methods
.method public addFrameDistance(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "value"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->frameDistance_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->frameDistance_:Ljava/util/List;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->frameDistance_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    return-object p0
.end method

.method public addPhAlign(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "value"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlign_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlign_:Ljava/util/List;

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlign_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    return-object p0
.end method

.method public addPhAlignDelete(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "value"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignDelete_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignDelete_:Ljava/util/List;

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignDelete_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    return-object p0
.end method

.method public addPhAlignInsert(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "value"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignInsert_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignInsert_:Ljava/util/List;

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignInsert_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    return-object p0
.end method

.method public addPhExpectationAlign(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "value"

    .prologue
    .line 489
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationAlign_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationAlign_:Ljava/util/List;

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationAlign_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    return-object p0
.end method

.method public addPhExpectationDeleteAlign(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "value"

    .prologue
    .line 543
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteAlign_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteAlign_:Ljava/util/List;

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteAlign_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    return-object p0
.end method

.method public addPhExpectationDeleteNn(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "value"

    .prologue
    .line 597
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteNn_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteNn_:Ljava/util/List;

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteNn_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    return-object p0
.end method

.method public addPhExpectationInsertAlign(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "value"

    .prologue
    .line 570
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertAlign_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertAlign_:Ljava/util/List;

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertAlign_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    return-object p0
.end method

.method public addPhExpectationInsertNn(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "value"

    .prologue
    .line 624
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertNn_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertNn_:Ljava/util/List;

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertNn_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    return-object p0
.end method

.method public addPhExpectationNn(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "value"

    .prologue
    .line 516
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationNn_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationNn_:Ljava/util/List;

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationNn_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    return-object p0
.end method

.method public addPhNn(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "value"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNn_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNn_:Ljava/util/List;

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNn_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    return-object p0
.end method

.method public addPhNnDelete(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "value"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnDelete_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnDelete_:Ljava/util/List;

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnDelete_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    return-object p0
.end method

.method public addPhNnInsert(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "value"

    .prologue
    .line 462
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnInsert_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnInsert_:Ljava/util/List;

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnInsert_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    return-object p0
.end method

.method public final clear()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 636
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearPhoneDurationScore()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 637
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearSpeakerRate()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 638
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearFrameDistance()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 639
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearWordDurationFrames()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 640
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearBaseline()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 641
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearNumPhones()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 642
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearNormalizedWordDuration()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 643
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearAscoreMean()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 644
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearAscoreStddev()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 645
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearAscoreWorst()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 646
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearAscoreMeandiff()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 647
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearAscoreBest()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 648
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearLmScore()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 649
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearDurScore()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 650
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearAmScore()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 651
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearStartFrame()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 652
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearStability()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 653
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearPhAlign()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 654
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearPhAlignDelete()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 655
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearPhAlignInsert()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 656
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearPhNn()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 657
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearPhNnDelete()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 658
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearPhNnInsert()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 659
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearPhExpectationAlign()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 660
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearPhExpectationNn()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 661
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearPhExpectationDeleteAlign()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 662
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearPhExpectationInsertAlign()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 663
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearPhExpectationDeleteNn()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 664
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearPhExpectationInsertNn()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 665
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->cachedSize:I

    .line 666
    return-object p0
.end method

.method public clearAmScore()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAmScore:Z

    .line 273
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->amScore_:F

    .line 274
    return-object p0
.end method

.method public clearAscoreBest()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreBest:Z

    .line 222
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreBest_:F

    .line 223
    return-object p0
.end method

.method public clearAscoreMean()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreMean:Z

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreMean_:F

    .line 155
    return-object p0
.end method

.method public clearAscoreMeandiff()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreMeandiff:Z

    .line 205
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreMeandiff_:F

    .line 206
    return-object p0
.end method

.method public clearAscoreStddev()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreStddev:Z

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreStddev_:F

    .line 172
    return-object p0
.end method

.method public clearAscoreWorst()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreWorst:Z

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreWorst_:F

    .line 189
    return-object p0
.end method

.method public clearBaseline()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasBaseline:Z

    .line 103
    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->baseline_:Z

    .line 104
    return-object p0
.end method

.method public clearDurScore()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasDurScore:Z

    .line 256
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->durScore_:F

    .line 257
    return-object p0
.end method

.method public clearFrameDistance()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->frameDistance_:Ljava/util/List;

    .line 70
    return-object p0
.end method

.method public clearLmScore()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasLmScore:Z

    .line 239
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->lmScore_:F

    .line 240
    return-object p0
.end method

.method public clearNormalizedWordDuration()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasNormalizedWordDuration:Z

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->normalizedWordDuration_:F

    .line 138
    return-object p0
.end method

.method public clearNumPhones()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasNumPhones:Z

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->numPhones_:F

    .line 121
    return-object p0
.end method

.method public clearPhAlign()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 334
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlign_:Ljava/util/List;

    .line 335
    return-object p0
.end method

.method public clearPhAlignDelete()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 361
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignDelete_:Ljava/util/List;

    .line 362
    return-object p0
.end method

.method public clearPhAlignInsert()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 388
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignInsert_:Ljava/util/List;

    .line 389
    return-object p0
.end method

.method public clearPhExpectationAlign()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 496
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationAlign_:Ljava/util/List;

    .line 497
    return-object p0
.end method

.method public clearPhExpectationDeleteAlign()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 550
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteAlign_:Ljava/util/List;

    .line 551
    return-object p0
.end method

.method public clearPhExpectationDeleteNn()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 604
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteNn_:Ljava/util/List;

    .line 605
    return-object p0
.end method

.method public clearPhExpectationInsertAlign()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 577
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertAlign_:Ljava/util/List;

    .line 578
    return-object p0
.end method

.method public clearPhExpectationInsertNn()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 631
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertNn_:Ljava/util/List;

    .line 632
    return-object p0
.end method

.method public clearPhExpectationNn()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 523
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationNn_:Ljava/util/List;

    .line 524
    return-object p0
.end method

.method public clearPhNn()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 415
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNn_:Ljava/util/List;

    .line 416
    return-object p0
.end method

.method public clearPhNnDelete()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 442
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnDelete_:Ljava/util/List;

    .line 443
    return-object p0
.end method

.method public clearPhNnInsert()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 469
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnInsert_:Ljava/util/List;

    .line 470
    return-object p0
.end method

.method public clearPhoneDurationScore()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasPhoneDurationScore:Z

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phoneDurationScore_:F

    .line 26
    return-object p0
.end method

.method public clearSpeakerRate()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasSpeakerRate:Z

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->speakerRate_:F

    .line 43
    return-object p0
.end method

.method public clearStability()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasStability:Z

    .line 307
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->stability_:F

    .line 308
    return-object p0
.end method

.method public clearStartFrame()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasStartFrame:Z

    .line 290
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->startFrame_:F

    .line 291
    return-object p0
.end method

.method public clearWordDurationFrames()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasWordDurationFrames:Z

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->wordDurationFrames_:F

    .line 87
    return-object p0
.end method

.method public getAmScore()F
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->amScore_:F

    return v0
.end method

.method public getAscoreBest()F
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreBest_:F

    return v0
.end method

.method public getAscoreMean()F
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreMean_:F

    return v0
.end method

.method public getAscoreMeandiff()F
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreMeandiff_:F

    return v0
.end method

.method public getAscoreStddev()F
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreStddev_:F

    return v0
.end method

.method public getAscoreWorst()F
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreWorst_:F

    return v0
.end method

.method public getBaseline()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->baseline_:Z

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 768
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->cachedSize:I

    if-gez v0, :cond_0

    .line 770
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getSerializedSize()I

    .line 772
    :cond_0
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->cachedSize:I

    return v0
.end method

.method public getDurScore()F
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->durScore_:F

    return v0
.end method

.method public getFrameDistance(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->frameDistance_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getFrameDistanceCount()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->frameDistance_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFrameDistanceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->frameDistance_:Ljava/util/List;

    return-object v0
.end method

.method public getLmScore()F
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->lmScore_:F

    return v0
.end method

.method public getNormalizedWordDuration()F
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->normalizedWordDuration_:F

    return v0
.end method

.method public getNumPhones()F
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->numPhones_:F

    return v0
.end method

.method public getPhAlign(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlign_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPhAlignCount()I
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlign_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhAlignDelete(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignDelete_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPhAlignDeleteCount()I
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignDelete_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhAlignDeleteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignDelete_:Ljava/util/List;

    return-object v0
.end method

.method public getPhAlignInsert(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignInsert_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPhAlignInsertCount()I
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignInsert_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhAlignInsertList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 370
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignInsert_:Ljava/util/List;

    return-object v0
.end method

.method public getPhAlignList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlign_:Ljava/util/List;

    return-object v0
.end method

.method public getPhExpectationAlign(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 482
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationAlign_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPhExpectationAlignCount()I
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationAlign_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhExpectationAlignList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 478
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationAlign_:Ljava/util/List;

    return-object v0
.end method

.method public getPhExpectationDeleteAlign(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 536
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteAlign_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPhExpectationDeleteAlignCount()I
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteAlign_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhExpectationDeleteAlignList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 532
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteAlign_:Ljava/util/List;

    return-object v0
.end method

.method public getPhExpectationDeleteNn(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 590
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteNn_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPhExpectationDeleteNnCount()I
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteNn_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhExpectationDeleteNnList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 586
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteNn_:Ljava/util/List;

    return-object v0
.end method

.method public getPhExpectationInsertAlign(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 563
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertAlign_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPhExpectationInsertAlignCount()I
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertAlign_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhExpectationInsertAlignList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 559
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertAlign_:Ljava/util/List;

    return-object v0
.end method

.method public getPhExpectationInsertNn(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 617
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertNn_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPhExpectationInsertNnCount()I
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertNn_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhExpectationInsertNnList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 613
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertNn_:Ljava/util/List;

    return-object v0
.end method

.method public getPhExpectationNn(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 509
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationNn_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPhExpectationNnCount()I
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationNn_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhExpectationNnList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 505
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationNn_:Ljava/util/List;

    return-object v0
.end method

.method public getPhNn(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNn_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPhNnCount()I
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNn_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhNnDelete(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnDelete_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPhNnDeleteCount()I
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnDelete_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhNnDeleteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 424
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnDelete_:Ljava/util/List;

    return-object v0
.end method

.method public getPhNnInsert(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 455
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnInsert_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPhNnInsertCount()I
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnInsert_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhNnInsertList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 451
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnInsert_:Ljava/util/List;

    return-object v0
.end method

.method public getPhNnList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 397
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNn_:Ljava/util/List;

    return-object v0
.end method

.method public getPhoneDurationScore()F
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phoneDurationScore_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 777
    const/4 v1, 0x0

    .line 778
    .local v1, size:I
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasPhoneDurationScore()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 779
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhoneDurationScore()F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 782
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasSpeakerRate()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 783
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getSpeakerRate()F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 787
    :cond_1
    const/4 v0, 0x0

    .line 788
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getFrameDistanceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v0, v2, 0x4

    .line 789
    add-int/2addr v1, v0

    .line 790
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getFrameDistanceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    .line 792
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasWordDurationFrames()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 793
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getWordDurationFrames()F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 796
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasBaseline()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 797
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getBaseline()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 800
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasNumPhones()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 801
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getNumPhones()F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 804
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasNormalizedWordDuration()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 805
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getNormalizedWordDuration()F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 808
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreMean()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 809
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getAscoreMean()F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 812
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreStddev()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 813
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getAscoreStddev()F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 816
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreWorst()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 817
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getAscoreWorst()F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 820
    :cond_8
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreMeandiff()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 821
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getAscoreMeandiff()F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 824
    :cond_9
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreBest()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 825
    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getAscoreBest()F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 828
    :cond_a
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasLmScore()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 829
    const/16 v2, 0xf

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getLmScore()F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 832
    :cond_b
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasDurScore()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 833
    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getDurScore()F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 836
    :cond_c
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAmScore()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 837
    const/16 v2, 0x11

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getAmScore()F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 840
    :cond_d
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasStartFrame()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 841
    const/16 v2, 0x12

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getStartFrame()F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 845
    :cond_e
    const/4 v0, 0x0

    .line 846
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhExpectationAlignList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v0, v2, 0x1

    .line 847
    add-int/2addr v1, v0

    .line 848
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhExpectationAlignList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 851
    const/4 v0, 0x0

    .line 852
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhExpectationNnList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v0, v2, 0x1

    .line 853
    add-int/2addr v1, v0

    .line 854
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhExpectationNnList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 857
    const/4 v0, 0x0

    .line 858
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhExpectationDeleteAlignList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v0, v2, 0x1

    .line 859
    add-int/2addr v1, v0

    .line 860
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhExpectationDeleteAlignList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 863
    const/4 v0, 0x0

    .line 864
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhExpectationInsertAlignList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v0, v2, 0x1

    .line 865
    add-int/2addr v1, v0

    .line 866
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhExpectationInsertAlignList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 868
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasStability()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 869
    const/16 v2, 0x17

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getStability()F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 873
    :cond_f
    const/4 v0, 0x0

    .line 874
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhExpectationDeleteNnList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v0, v2, 0x1

    .line 875
    add-int/2addr v1, v0

    .line 876
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhExpectationDeleteNnList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 879
    const/4 v0, 0x0

    .line 880
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhExpectationInsertNnList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v0, v2, 0x1

    .line 881
    add-int/2addr v1, v0

    .line 882
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhExpectationInsertNnList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 885
    const/4 v0, 0x0

    .line 886
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhAlignList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v0, v2, 0x1

    .line 887
    add-int/2addr v1, v0

    .line 888
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhAlignList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 891
    const/4 v0, 0x0

    .line 892
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhAlignDeleteList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v0, v2, 0x1

    .line 893
    add-int/2addr v1, v0

    .line 894
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhAlignDeleteList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 897
    const/4 v0, 0x0

    .line 898
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhAlignInsertList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v0, v2, 0x1

    .line 899
    add-int/2addr v1, v0

    .line 900
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhAlignInsertList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 903
    const/4 v0, 0x0

    .line 904
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhNnList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v0, v2, 0x1

    .line 905
    add-int/2addr v1, v0

    .line 906
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhNnList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 909
    const/4 v0, 0x0

    .line 910
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhNnDeleteList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v0, v2, 0x1

    .line 911
    add-int/2addr v1, v0

    .line 912
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhNnDeleteList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 915
    const/4 v0, 0x0

    .line 916
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhNnInsertList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v0, v2, 0x1

    .line 917
    add-int/2addr v1, v0

    .line 918
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhNnInsertList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 920
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->cachedSize:I

    .line 921
    return v1
.end method

.method public getSpeakerRate()F
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->speakerRate_:F

    return v0
.end method

.method public getStability()F
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->stability_:F

    return v0
.end method

.method public getStartFrame()F
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->startFrame_:F

    return v0
.end method

.method public getWordDurationFrames()F
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->wordDurationFrames_:F

    return v0
.end method

.method public hasAmScore()Z
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAmScore:Z

    return v0
.end method

.method public hasAscoreBest()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreBest:Z

    return v0
.end method

.method public hasAscoreMean()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreMean:Z

    return v0
.end method

.method public hasAscoreMeandiff()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreMeandiff:Z

    return v0
.end method

.method public hasAscoreStddev()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreStddev:Z

    return v0
.end method

.method public hasAscoreWorst()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreWorst:Z

    return v0
.end method

.method public hasBaseline()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasBaseline:Z

    return v0
.end method

.method public hasDurScore()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasDurScore:Z

    return v0
.end method

.method public hasLmScore()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasLmScore:Z

    return v0
.end method

.method public hasNormalizedWordDuration()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasNormalizedWordDuration:Z

    return v0
.end method

.method public hasNumPhones()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasNumPhones:Z

    return v0
.end method

.method public hasPhoneDurationScore()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasPhoneDurationScore:Z

    return v0
.end method

.method public hasSpeakerRate()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasSpeakerRate:Z

    return v0
.end method

.method public hasStability()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasStability:Z

    return v0
.end method

.method public hasStartFrame()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasStartFrame:Z

    return v0
.end method

.method public hasWordDurationFrames()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasWordDurationFrames:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 670
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
    invoke-virtual {p0, p1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 929
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 930
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 934
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 935
    :sswitch_0
    return-object p0

    .line 940
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->setPhoneDurationScore(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto :goto_0

    .line 944
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->setSpeakerRate(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto :goto_0

    .line 948
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->addFrameDistance(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto :goto_0

    .line 952
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->setWordDurationFrames(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto :goto_0

    .line 956
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->setBaseline(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto :goto_0

    .line 960
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->setNumPhones(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto :goto_0

    .line 964
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->setNormalizedWordDuration(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto :goto_0

    .line 968
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->setAscoreMean(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto :goto_0

    .line 972
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->setAscoreStddev(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto :goto_0

    .line 976
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->setAscoreWorst(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto :goto_0

    .line 980
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->setAscoreMeandiff(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto :goto_0

    .line 984
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->setAscoreBest(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto :goto_0

    .line 988
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->setLmScore(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto :goto_0

    .line 992
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->setDurScore(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto :goto_0

    .line 996
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->setAmScore(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto/16 :goto_0

    .line 1000
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->setStartFrame(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto/16 :goto_0

    .line 1004
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->addPhExpectationAlign(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto/16 :goto_0

    .line 1008
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->addPhExpectationNn(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto/16 :goto_0

    .line 1012
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->addPhExpectationDeleteAlign(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto/16 :goto_0

    .line 1016
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->addPhExpectationInsertAlign(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto/16 :goto_0

    .line 1020
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->setStability(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto/16 :goto_0

    .line 1024
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->addPhExpectationDeleteNn(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto/16 :goto_0

    .line 1028
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->addPhExpectationInsertNn(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto/16 :goto_0

    .line 1032
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->addPhAlign(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto/16 :goto_0

    .line 1036
    :sswitch_19
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->addPhAlignDelete(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto/16 :goto_0

    .line 1040
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->addPhAlignInsert(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto/16 :goto_0

    .line 1044
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->addPhNn(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto/16 :goto_0

    .line 1048
    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->addPhNnDelete(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto/16 :goto_0

    .line 1052
    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->addPhNnInsert(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto/16 :goto_0

    .line 930
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
        0x30 -> :sswitch_5
        0x45 -> :sswitch_6
        0x4d -> :sswitch_7
        0x55 -> :sswitch_8
        0x5d -> :sswitch_9
        0x65 -> :sswitch_a
        0x6d -> :sswitch_b
        0x75 -> :sswitch_c
        0x7d -> :sswitch_d
        0x85 -> :sswitch_e
        0x8d -> :sswitch_f
        0x95 -> :sswitch_10
        0x98 -> :sswitch_11
        0xa0 -> :sswitch_12
        0xa8 -> :sswitch_13
        0xb0 -> :sswitch_14
        0xbd -> :sswitch_15
        0xc0 -> :sswitch_16
        0xc8 -> :sswitch_17
        0xd0 -> :sswitch_18
        0xd8 -> :sswitch_19
        0xe0 -> :sswitch_1a
        0xe8 -> :sswitch_1b
        0xf0 -> :sswitch_1c
        0xf8 -> :sswitch_1d
    .end sparse-switch
.end method

.method public setAmScore(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAmScore:Z

    .line 268
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->amScore_:F

    .line 269
    return-object p0
.end method

.method public setAscoreBest(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreBest:Z

    .line 217
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreBest_:F

    .line 218
    return-object p0
.end method

.method public setAscoreMean(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreMean:Z

    .line 149
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreMean_:F

    .line 150
    return-object p0
.end method

.method public setAscoreMeandiff(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreMeandiff:Z

    .line 200
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreMeandiff_:F

    .line 201
    return-object p0
.end method

.method public setAscoreStddev(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreStddev:Z

    .line 166
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreStddev_:F

    .line 167
    return-object p0
.end method

.method public setAscoreWorst(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreWorst:Z

    .line 183
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreWorst_:F

    .line 184
    return-object p0
.end method

.method public setBaseline(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasBaseline:Z

    .line 98
    iput-boolean p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->baseline_:Z

    .line 99
    return-object p0
.end method

.method public setDurScore(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasDurScore:Z

    .line 251
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->durScore_:F

    .line 252
    return-object p0
.end method

.method public setFrameDistance(IF)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->frameDistance_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-object p0
.end method

.method public setLmScore(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasLmScore:Z

    .line 234
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->lmScore_:F

    .line 235
    return-object p0
.end method

.method public setNormalizedWordDuration(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasNormalizedWordDuration:Z

    .line 132
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->normalizedWordDuration_:F

    .line 133
    return-object p0
.end method

.method public setNumPhones(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasNumPhones:Z

    .line 115
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->numPhones_:F

    .line 116
    return-object p0
.end method

.method public setPhAlign(IZ)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlign_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 324
    return-object p0
.end method

.method public setPhAlignDelete(IZ)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignDelete_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 351
    return-object p0
.end method

.method public setPhAlignInsert(IZ)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignInsert_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 378
    return-object p0
.end method

.method public setPhExpectationAlign(IZ)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationAlign_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 486
    return-object p0
.end method

.method public setPhExpectationDeleteAlign(IZ)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 539
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteAlign_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 540
    return-object p0
.end method

.method public setPhExpectationDeleteNn(IZ)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 593
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteNn_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 594
    return-object p0
.end method

.method public setPhExpectationInsertAlign(IZ)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 566
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertAlign_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 567
    return-object p0
.end method

.method public setPhExpectationInsertNn(IZ)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 620
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertNn_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 621
    return-object p0
.end method

.method public setPhExpectationNn(IZ)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 512
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationNn_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 513
    return-object p0
.end method

.method public setPhNn(IZ)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNn_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 405
    return-object p0
.end method

.method public setPhNnDelete(IZ)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 431
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnDelete_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 432
    return-object p0
.end method

.method public setPhNnInsert(IZ)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnInsert_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 459
    return-object p0
.end method

.method public setPhoneDurationScore(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasPhoneDurationScore:Z

    .line 20
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phoneDurationScore_:F

    .line 21
    return-object p0
.end method

.method public setSpeakerRate(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasSpeakerRate:Z

    .line 37
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->speakerRate_:F

    .line 38
    return-object p0
.end method

.method public setStability(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasStability:Z

    .line 302
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->stability_:F

    .line 303
    return-object p0
.end method

.method public setStartFrame(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasStartFrame:Z

    .line 285
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->startFrame_:F

    .line 286
    return-object p0
.end method

.method public setWordDurationFrames(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasWordDurationFrames:Z

    .line 81
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->wordDurationFrames_:F

    .line 82
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 676
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasPhoneDurationScore()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 677
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhoneDurationScore()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 679
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasSpeakerRate()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 680
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getSpeakerRate()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 682
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getFrameDistanceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 683
    .local v0, element:F
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    goto :goto_0

    .line 685
    .end local v0           #element:F
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasWordDurationFrames()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 686
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getWordDurationFrames()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 688
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasBaseline()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 689
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getBaseline()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 691
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasNumPhones()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 692
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getNumPhones()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 694
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasNormalizedWordDuration()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 695
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getNormalizedWordDuration()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 697
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreMean()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 698
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getAscoreMean()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 700
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreStddev()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 701
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getAscoreStddev()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 703
    :cond_8
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreWorst()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 704
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getAscoreWorst()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 706
    :cond_9
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreMeandiff()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 707
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getAscoreMeandiff()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 709
    :cond_a
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreBest()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 710
    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getAscoreBest()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 712
    :cond_b
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasLmScore()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 713
    const/16 v2, 0xf

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getLmScore()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 715
    :cond_c
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasDurScore()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 716
    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getDurScore()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 718
    :cond_d
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAmScore()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 719
    const/16 v2, 0x11

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getAmScore()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 721
    :cond_e
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasStartFrame()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 722
    const/16 v2, 0x12

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getStartFrame()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 724
    :cond_f
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhExpectationAlignList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 725
    .local v0, element:Z
    const/16 v2, 0x13

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    goto :goto_1

    .line 727
    .end local v0           #element:Z
    :cond_10
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhExpectationNnList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 728
    .restart local v0       #element:Z
    const/16 v2, 0x14

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    goto :goto_2

    .line 730
    .end local v0           #element:Z
    :cond_11
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhExpectationDeleteAlignList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 731
    .restart local v0       #element:Z
    const/16 v2, 0x15

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    goto :goto_3

    .line 733
    .end local v0           #element:Z
    :cond_12
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhExpectationInsertAlignList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 734
    .restart local v0       #element:Z
    const/16 v2, 0x16

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    goto :goto_4

    .line 736
    .end local v0           #element:Z
    :cond_13
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasStability()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 737
    const/16 v2, 0x17

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getStability()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 739
    :cond_14
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhExpectationDeleteNnList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 740
    .restart local v0       #element:Z
    const/16 v2, 0x18

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    goto :goto_5

    .line 742
    .end local v0           #element:Z
    :cond_15
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhExpectationInsertNnList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 743
    .restart local v0       #element:Z
    const/16 v2, 0x19

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    goto :goto_6

    .line 745
    .end local v0           #element:Z
    :cond_16
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhAlignList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 746
    .restart local v0       #element:Z
    const/16 v2, 0x1a

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    goto :goto_7

    .line 748
    .end local v0           #element:Z
    :cond_17
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhAlignDeleteList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 749
    .restart local v0       #element:Z
    const/16 v2, 0x1b

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    goto :goto_8

    .line 751
    .end local v0           #element:Z
    :cond_18
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhAlignInsertList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 752
    .restart local v0       #element:Z
    const/16 v2, 0x1c

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    goto :goto_9

    .line 754
    .end local v0           #element:Z
    :cond_19
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhNnList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 755
    .restart local v0       #element:Z
    const/16 v2, 0x1d

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    goto :goto_a

    .line 757
    .end local v0           #element:Z
    :cond_1a
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhNnDeleteList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 758
    .restart local v0       #element:Z
    const/16 v2, 0x1e

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    goto :goto_b

    .line 760
    .end local v0           #element:Z
    :cond_1b
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhNnInsertList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 761
    .restart local v0       #element:Z
    const/16 v2, 0x1f

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    goto :goto_c

    .line 763
    .end local v0           #element:Z
    :cond_1c
    return-void
.end method
