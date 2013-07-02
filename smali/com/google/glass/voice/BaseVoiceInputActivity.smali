.class public abstract Lcom/google/glass/voice/BaseVoiceInputActivity;
.super Lcom/google/glass/app/GlassVoiceActivity;
.source "BaseVoiceInputActivity.java"


# static fields
.field private static final ANIMATE_IN_DURATION_MILLIS:J = 0x64L

.field private static final ANIMATE_OUT_DURATION_MILLIS:J = 0xc8L

.field private static final ENDPOINT_CONFIRM_THRESHOLD_MILLIS:I = 0x3e8

.field public static final EXTRA_SHOULD_PLAY_INITIAL_SOUND:Ljava/lang/String; = "should_play_initial_sound"

.field private static final MSG_ON_ERROR:I = 0xa

.field private static final MSG_ON_HTML_ANSWER_CARD_RESULT:I = 0xc

.field protected static final MSG_ON_MAJEL_RESULT:I = 0x8
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected static final MSG_ON_RECOGNITION_RESULT:I = 0x7
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected static final MSG_ON_SOUND_SEARCH_RESULT:I = 0x9

.field private static final MSG_SET_SPEECH_LEVEL_SOURCE:I = 0x5

.field private static final MSG_SHOW_DONE:I = 0x4

.field private static final MSG_SHOW_LISTENING:I = 0x0

.field private static final MSG_SHOW_NO_SPEECH_DETECTED:I = 0x3

.field private static final MSG_SHOW_PROGRESS_BAR:I = 0xb

.field private static final MSG_SHOW_RECOGNIZING:I = 0x2

.field private static final MSG_SHOW_RECORDING:I = 0x1

.field private static final MSG_UPDATE_RECOGNIZED_TEXT:I = 0x6

.field private static final NO_RESOURCE_ID:I = 0x0

.field private static final SHOW_PROGRESS_BAR_DELAY_MILLIS:J = 0xfaL

.field private static final SHOW_RESULT_DURATION_MAX_ADDITIONAL:J = 0xbb8L

.field private static final SHOW_RESULT_DURATION_MINIMUM:J = 0x7d0L

.field public static final TYPE_ANNOTATION:I = 0x5

.field public static final TYPE_GLASSWARE:I = 0x3

.field public static final TYPE_MESSAGING:I = 0x2

.field public static final TYPE_MUSIC:I = 0x6

.field public static final TYPE_NAVIGATION:I = 0x1

.field public static final TYPE_SEARCH:I = 0x0

.field public static final TYPE_SOUND_SEARCH:I = 0x4


# instance fields
.field private endOfSpeechTime:J

.field protected final handler:Landroid/os/Handler;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private hasMajelResponse:Z

.field private hasRecognitionResults:Z

.field private isRetry:Z

.field private logFirstRecognizedText:Z

.field private microphone:Lcom/google/glass/voice/MicrophoneView;

.field private powerHelper:Lcom/google/glass/util/PowerHelper;

.field private progressSlider:Lcom/google/glass/widget/SliderView;

.field private prompt:Lcom/google/glass/widget/TypophileTextView;

.field private recognitionResult:Ljava/lang/CharSequence;

.field private recognitionResultsCount:I

.field private recognitionUpdatesCount:I

.field private final speakAgainRunnable:Ljava/lang/Runnable;

.field private startTime:J

.field private streamingTextView:Lcom/google/glass/voice/StreamingTextView;

.field protected triggerMethod:I

.field protected final voiceInputCallback:Lcom/google/glass/voice/network/IVoiceInputCallback;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Lcom/google/glass/app/GlassVoiceActivity;-><init>()V

    .line 142
    iput-boolean v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->hasMajelResponse:Z

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->recognitionResult:Ljava/lang/CharSequence;

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->logFirstRecognizedText:Z

    .line 155
    iput-boolean v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->hasRecognitionResults:Z

    .line 161
    iput-boolean v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->isRetry:Z

    .line 198
    new-instance v0, Lcom/google/glass/voice/BaseVoiceInputActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/BaseVoiceInputActivity$1;-><init>(Lcom/google/glass/voice/BaseVoiceInputActivity;)V

    iput-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    .line 261
    new-instance v0, Lcom/google/glass/voice/BaseVoiceInputActivity$2;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/BaseVoiceInputActivity$2;-><init>(Lcom/google/glass/voice/BaseVoiceInputActivity;)V

    iput-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->voiceInputCallback:Lcom/google/glass/voice/network/IVoiceInputCallback;

    .line 344
    new-instance v0, Lcom/google/glass/voice/BaseVoiceInputActivity$3;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/BaseVoiceInputActivity$3;-><init>(Lcom/google/glass/voice/BaseVoiceInputActivity;)V

    iput-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->speakAgainRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/BaseVoiceInputActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->updatePowerHelper(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/voice/BaseVoiceInputActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->updateKeepScreenOn(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/glass/voice/BaseVoiceInputActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->dispatchOnHtmlAnswerCardResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/glass/voice/BaseVoiceInputActivity;Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->dispatchOnSoundSearchResult(Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/glass/voice/BaseVoiceInputActivity;Lcom/google/glass/voice/network/SpeechException;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->dispatchOnError(Lcom/google/glass/voice/network/SpeechException;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/glass/voice/BaseVoiceInputActivity;)Lcom/google/glass/widget/SliderView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/glass/voice/BaseVoiceInputActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->logSearchStarted(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/glass/voice/BaseVoiceInputActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->reset()V

    return-void
.end method

.method static synthetic access$1602(Lcom/google/glass/voice/BaseVoiceInputActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->isRetry:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/google/glass/voice/BaseVoiceInputActivity;)Lcom/google/glass/voice/MicrophoneView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/voice/MicrophoneView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/voice/BaseVoiceInputActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->dispatchShowListening()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/voice/BaseVoiceInputActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->dispatchShowRecording()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/voice/BaseVoiceInputActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->dispatchShowRecognizing()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/voice/BaseVoiceInputActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->dispatchShowDone()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/voice/BaseVoiceInputActivity;Lcom/google/glass/voice/network/ISpeechLevelSource;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->dispatchSetSpeechLevelSource(Lcom/google/glass/voice/network/ISpeechLevelSource;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/glass/voice/BaseVoiceInputActivity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/BaseVoiceInputActivity;->dispatchUpdateRecognizedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/glass/voice/BaseVoiceInputActivity;Ljava/lang/CharSequence;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/BaseVoiceInputActivity;->dispatchOnRecognitionResult(Ljava/lang/CharSequence;F)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/glass/voice/BaseVoiceInputActivity;Lcom/google/majel/proto/MajelProtos$MajelResponse;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->dispatchOnMajelResult(Lcom/google/majel/proto/MajelProtos$MajelResponse;)V

    return-void
.end method

.method private animateIn(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 3
    .parameter "view"
    .parameter "postAnimationRunnable"

    .prologue
    .line 882
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 883
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 884
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/glass/voice/BaseVoiceInputActivity$6;

    invoke-direct {v1, p0, p2}, Lcom/google/glass/voice/BaseVoiceInputActivity$6;-><init>(Lcom/google/glass/voice/BaseVoiceInputActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 896
    return-void
.end method

.method private animateOut(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 900
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/glass/voice/BaseVoiceInputActivity$7;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity$7;-><init>(Lcom/google/glass/voice/BaseVoiceInputActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 910
    return-void
.end method

.method private dispatchOnError(Lcom/google/glass/voice/network/SpeechException;)V
    .locals 10
    .parameter "exception"

    .prologue
    const/16 v9, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 803
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->isMessageShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 804
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Received error while already showing error on screen: %s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/glass/voice/network/SpeechException;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 833
    :goto_0
    return-void

    .line 810
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->startTime:J

    sub-long v1, v3, v5

    .line 811
    .local v1, timeToError:J
    const-string v3, "id"

    iget-wide v4, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->startTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v5, 0xa

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "error"

    aput-object v6, v5, v7

    invoke-virtual {p1}, Lcom/google/glass/voice/network/SpeechException;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x2

    const-string v7, "detail"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {p1}, Lcom/google/glass/voice/network/SpeechException;->getDetail()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "time"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "type"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "trigger"

    aput-object v6, v5, v9

    const/16 v6, 0x9

    iget v7, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->triggerMethod:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 818
    .local v0, eventTuple:Ljava/lang/String;
    sget-object v3, Lcom/google/glass/logging/UserEventAction;->VOICE_INPUT_ERROR:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p0, v3, v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 820
    iget-object v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/voice/MicrophoneView;

    invoke-virtual {v3}, Lcom/google/glass/voice/MicrophoneView;->showNotListening()V

    .line 821
    iget-object v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/voice/MicrophoneView;

    invoke-direct {p0, v3}, Lcom/google/glass/voice/BaseVoiceInputActivity;->animateOut(Landroid/view/View;)V

    .line 822
    iget-object v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->prompt:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v3, v9}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 823
    iget-object v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 824
    iget-object v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v3}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    .line 826
    new-instance v3, Lcom/google/glass/app/GlassError;

    invoke-direct {v3}, Lcom/google/glass/app/GlassError;-><init>()V

    invoke-static {p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getErrorMessageId(Lcom/google/glass/voice/network/SpeechException;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v3

    invoke-static {p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getSecondaryErrorMessageId(Lcom/google/glass/voice/network/SpeechException;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/glass/app/GlassError;->setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v3

    invoke-static {p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getErrorIconId(Lcom/google/glass/voice/network/SpeechException;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/glass/app/GlassError;->setIconId(I)Lcom/google/glass/app/GlassError;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getErrorOnConfirmRunnable(Lcom/google/glass/voice/network/SpeechException;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/glass/app/GlassError;->setOnConfirmRunnable(Ljava/lang/Runnable;)Lcom/google/glass/app/GlassError;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/google/glass/app/GlassError;->show(Lcom/google/glass/app/GlassActivity;)V

    goto/16 :goto_0
.end method

.method private dispatchOnHtmlAnswerCardResult(Ljava/lang/String;)V
    .locals 7
    .parameter "htmlResponse"

    .prologue
    .line 763
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->recognitionResult:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->startTime:J

    iget-wide v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->endOfSpeechTime:J

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/voice/BaseVoiceInputActivity;->onHtmlAnswerCardResult(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 764
    return-void
.end method

.method private dispatchOnMajelResult(Lcom/google/majel/proto/MajelProtos$MajelResponse;)V
    .locals 7
    .parameter "majelResponse"

    .prologue
    .line 749
    invoke-virtual {p1}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->getPeanutCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 750
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->hasMajelResponse:Z

    .line 753
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->recognitionResult:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->startTime:J

    iget-wide v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->endOfSpeechTime:J

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/voice/BaseVoiceInputActivity;->onMajelResult(Lcom/google/majel/proto/MajelProtos$MajelResponse;Ljava/lang/String;JJ)V

    .line 755
    :cond_0
    return-void
.end method

.method private dispatchOnRecognitionResult(Ljava/lang/CharSequence;F)V
    .locals 11
    .parameter "text"
    .parameter "confidence"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 709
    iput-object p1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->recognitionResult:Ljava/lang/CharSequence;

    .line 710
    iget-object v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->prompt:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v5, v10}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 711
    iget-object v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    invoke-virtual {v5, v9}, Lcom/google/glass/voice/StreamingTextView;->setVisibility(I)V

    .line 712
    iget-object v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    invoke-virtual {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->cleanRecognitionResults(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/glass/voice/StreamingTextView;->setFinalRecognizedText(Ljava/lang/CharSequence;)V

    .line 714
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->showProgressOnRecognitionResult()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 715
    iget-object v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v5}, Lcom/google/glass/widget/SliderView;->startIndeterminate()V

    .line 725
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->startTime:J

    sub-long v3, v5, v7

    .line 726
    .local v3, timeToRecognitionTotal:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->endOfSpeechTime:J

    sub-long v1, v5, v7

    .line 727
    .local v1, timeToRecognitionFromEndOfSpeech:J
    const-string v5, "id"

    iget-wide v6, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->startTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/16 v7, 0xa

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "confidence"

    aput-object v8, v7, v9

    const/4 v8, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "time_total"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "time_from_eos"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "type"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getType()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const-string v8, "trigger"

    aput-object v8, v7, v10

    const/16 v8, 0x9

    iget v9, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->triggerMethod:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 734
    .local v0, eventTuple:Ljava/lang/String;
    sget-object v5, Lcom/google/glass/logging/UserEventAction;->VOICE_INPUT_RECOGNITION:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p0, v5, v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 737
    monitor-enter p0

    .line 738
    :try_start_0
    iget v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->recognitionResultsCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->recognitionResultsCount:I

    .line 739
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 741
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/glass/voice/BaseVoiceInputActivity;->onRecognitionResult(Ljava/lang/String;)V

    .line 742
    return-void

    .line 719
    .end local v0           #eventTuple:Ljava/lang/String;
    .end local v1           #timeToRecognitionFromEndOfSpeech:J
    .end local v3           #timeToRecognitionTotal:J
    :cond_0
    iget-object v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 720
    iget-object v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v5}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    goto/16 :goto_0

    .line 739
    .restart local v0       #eventTuple:Ljava/lang/String;
    .restart local v1       #timeToRecognitionFromEndOfSpeech:J
    .restart local v3       #timeToRecognitionTotal:J
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method private dispatchOnSoundSearchResult(Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V
    .locals 0
    .parameter "earsResponse"

    .prologue
    .line 772
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->onSoundSearchResult(Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V

    .line 773
    return-void
.end method

.method private dispatchSetSpeechLevelSource(Lcom/google/glass/voice/network/ISpeechLevelSource;)V
    .locals 2
    .parameter "speechLevelSource"

    .prologue
    .line 644
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/voice/MicrophoneView;

    new-instance v1, Lcom/google/glass/voice/BaseVoiceInputActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity$5;-><init>(Lcom/google/glass/voice/BaseVoiceInputActivity;Lcom/google/glass/voice/network/ISpeechLevelSource;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/MicrophoneView;->setSpeechLevelSource(Lcom/google/glass/voice/network/SpeechLevelSource;)V

    .line 655
    return-void
.end method

.method private dispatchShowDone()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 614
    iget-object v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/voice/MicrophoneView;

    invoke-virtual {v3}, Lcom/google/glass/voice/MicrophoneView;->showNotListening()V

    .line 617
    iget-boolean v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->hasMajelResponse:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->isMajelResponseExpected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 618
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->isMessageShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 619
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error to display, but error already on screen"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 622
    :cond_1
    iget-object v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v3}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    .line 625
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->startTime:J

    sub-long v1, v3, v5

    .line 626
    .local v1, timeToError:J
    const-string v3, "id"

    iget-wide v4, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->startTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "query"

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->recognitionResult:Ljava/lang/CharSequence;

    aput-object v6, v5, v8

    const/4 v6, 0x2

    const-string v7, "time"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "type"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "trigger"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    iget v7, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->triggerMethod:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 632
    .local v0, eventTuple:Ljava/lang/String;
    sget-object v3, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_NO_ANSWER:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p0, v3, v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 634
    new-instance v3, Lcom/google/glass/app/GlassError;

    invoke-direct {v3}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v4, Lcom/google/glass/voice/R$string;->voice_search_no_answer:I

    invoke-virtual {v3, v4}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v3

    sget v4, Lcom/google/glass/voice/R$drawable;->ic_cloud_sad_big:I

    invoke-virtual {v3, v4}, Lcom/google/glass/app/GlassError;->setIconId(I)Lcom/google/glass/app/GlassError;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/google/glass/app/GlassError;->setAutoHide(Z)Lcom/google/glass/app/GlassError;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/google/glass/app/GlassError;->show(Lcom/google/glass/app/GlassActivity;)V

    goto :goto_0
.end method

.method private dispatchShowListening()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 506
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 507
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    .line 508
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    invoke-virtual {v0, v2}, Lcom/google/glass/voice/StreamingTextView;->setVisibility(I)V

    .line 509
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->prompt:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getPromptText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/voice/MicrophoneView;

    invoke-virtual {v0}, Lcom/google/glass/voice/MicrophoneView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 515
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->prompt:Lcom/google/glass/widget/TypophileTextView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->animateIn(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 516
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/voice/MicrophoneView;

    new-instance v1, Lcom/google/glass/voice/BaseVoiceInputActivity$4;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/BaseVoiceInputActivity$4;-><init>(Lcom/google/glass/voice/BaseVoiceInputActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->animateIn(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 531
    :goto_0
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    invoke-virtual {v0}, Lcom/google/glass/voice/StreamingTextView;->reset()V

    .line 532
    return-void

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->prompt:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v0}, Lcom/google/glass/widget/TypophileTextView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 526
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->prompt:Lcom/google/glass/widget/TypophileTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/voice/MicrophoneView;

    invoke-virtual {v0}, Lcom/google/glass/voice/MicrophoneView;->showListening()V

    goto :goto_0
.end method

.method private dispatchShowRecognizing()V
    .locals 8

    .prologue
    .line 559
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->endOfSpeechTime:J

    .line 561
    iget-object v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/voice/MicrophoneView;

    invoke-virtual {v3}, Lcom/google/glass/voice/MicrophoneView;->showNotListening()V

    .line 562
    iget-object v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/voice/MicrophoneView;

    invoke-direct {p0, v3}, Lcom/google/glass/voice/BaseVoiceInputActivity;->animateOut(Landroid/view/View;)V

    .line 563
    iget-object v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->prompt:Lcom/google/glass/widget/TypophileTextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 564
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v3

    sget-object v4, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_COMPLETED:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v3, v4}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 570
    iget-object v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/16 v4, 0xb

    const-wide/16 v5, 0xfa

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 574
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->startTime:J

    sub-long v1, v3, v5

    .line 575
    .local v1, timeToEndOfSpeech:J
    const-string v3, "id"

    iget-wide v4, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->startTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "time"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "type"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "trigger"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget v7, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->triggerMethod:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 580
    .local v0, eventTuple:Ljava/lang/String;
    sget-object v3, Lcom/google/glass/logging/UserEventAction;->VOICE_INPUT_END_OF_SPEECH:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p0, v3, v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 581
    return-void
.end method

.method private dispatchShowRecording()V
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/voice/MicrophoneView;

    invoke-virtual {v0}, Lcom/google/glass/voice/MicrophoneView;->showRecording()V

    .line 554
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    invoke-virtual {v0}, Lcom/google/glass/voice/StreamingTextView;->reset()V

    .line 555
    return-void
.end method

.method private dispatchUpdateRecognizedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 11
    .parameter "stableText"
    .parameter "pendingText"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 658
    iput-boolean v10, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->hasRecognitionResults:Z

    .line 660
    if-nez p1, :cond_0

    if-eqz p2, :cond_2

    .line 661
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->cleanRecognitionResults(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 662
    .local v2, stableCleaned:Ljava/lang/CharSequence;
    invoke-virtual {p0, p2}, Lcom/google/glass/voice/BaseVoiceInputActivity;->cleanRecognitionResults(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 664
    .local v1, pendingCleaned:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->prompt:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v5}, Lcom/google/glass/widget/TypophileTextView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 698
    .end local v1           #pendingCleaned:Ljava/lang/CharSequence;
    .end local v2           #stableCleaned:Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 673
    .restart local v1       #pendingCleaned:Ljava/lang/CharSequence;
    .restart local v2       #stableCleaned:Ljava/lang/CharSequence;
    :cond_1
    iget-object v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->prompt:Lcom/google/glass/widget/TypophileTextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 674
    iget-object v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    invoke-virtual {v5, v9}, Lcom/google/glass/voice/StreamingTextView;->setVisibility(I)V

    .line 675
    iget-object v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    invoke-virtual {v5, v2, v1}, Lcom/google/glass/voice/StreamingTextView;->updateRecognizedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 679
    .end local v1           #pendingCleaned:Ljava/lang/CharSequence;
    .end local v2           #stableCleaned:Ljava/lang/CharSequence;
    :cond_2
    iget-boolean v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->logFirstRecognizedText:Z

    if-eqz v5, :cond_3

    .line 680
    iput-boolean v9, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->logFirstRecognizedText:Z

    .line 682
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->startTime:J

    sub-long v3, v5, v7

    .line 683
    .local v3, timeToFirstRecognition:J
    const-string v5, "id"

    iget-wide v6, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->startTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "time"

    aput-object v8, v7, v9

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x2

    const-string v9, "type"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getType()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "trigger"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget v9, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->triggerMethod:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 688
    .local v0, eventTuple:Ljava/lang/String;
    sget-object v5, Lcom/google/glass/logging/UserEventAction;->VOICE_INPUT_FIRST_RECOGNITION:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p0, v5, v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 693
    .end local v0           #eventTuple:Ljava/lang/String;
    .end local v3           #timeToFirstRecognition:J
    :cond_3
    monitor-enter p0

    .line 694
    :try_start_0
    iget v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->recognitionUpdatesCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->recognitionUpdatesCount:I

    .line 695
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 697
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->onUpdateRecognizedText()V

    goto :goto_0

    .line 695
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method private static getErrorIconId(Lcom/google/glass/voice/network/SpeechException;)I
    .locals 2
    .parameter "e"

    .prologue
    .line 863
    invoke-virtual {p0}, Lcom/google/glass/voice/network/SpeechException;->getType()Lcom/google/glass/voice/network/SpeechException$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/SpeechException$Type;->AUDIO_RECOGNIZE:Lcom/google/glass/voice/network/SpeechException$Type;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/SpeechException$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    sget v0, Lcom/google/glass/voice/R$drawable;->ic_exclamation_big:I

    .line 866
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/google/glass/voice/R$drawable;->ic_cloud_sad_big:I

    goto :goto_0
.end method

.method private static getErrorMessageId(Lcom/google/glass/voice/network/SpeechException;)I
    .locals 2
    .parameter "e"

    .prologue
    .line 841
    invoke-virtual {p0}, Lcom/google/glass/voice/network/SpeechException;->getType()Lcom/google/glass/voice/network/SpeechException$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/SpeechException$Type;->NETWORK_RECOGNIZE:Lcom/google/glass/voice/network/SpeechException$Type;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/SpeechException$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 842
    sget v0, Lcom/google/glass/voice/R$string;->voice_input_network_error:I

    .line 849
    :goto_0
    return v0

    .line 843
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/voice/network/SpeechException;->getType()Lcom/google/glass/voice/network/SpeechException$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/SpeechException$Type;->NO_MATCH:Lcom/google/glass/voice/network/SpeechException$Type;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/SpeechException$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 844
    sget v0, Lcom/google/glass/voice/R$string;->voice_input_no_match:I

    goto :goto_0

    .line 845
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/voice/network/SpeechException;->getType()Lcom/google/glass/voice/network/SpeechException$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/SpeechException$Type;->AUDIO_RECOGNIZE:Lcom/google/glass/voice/network/SpeechException$Type;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/SpeechException$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 846
    sget v0, Lcom/google/glass/voice/R$string;->voice_input_audio_error:I

    goto :goto_0

    .line 849
    :cond_2
    sget v0, Lcom/google/glass/voice/R$string;->voice_input_server_error:I

    goto :goto_0
.end method

.method private getErrorOnConfirmRunnable(Lcom/google/glass/voice/network/SpeechException;)Ljava/lang/Runnable;
    .locals 2
    .parameter "e"

    .prologue
    .line 871
    invoke-virtual {p1}, Lcom/google/glass/voice/network/SpeechException;->getType()Lcom/google/glass/voice/network/SpeechException$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/SpeechException$Type;->NO_MATCH:Lcom/google/glass/voice/network/SpeechException$Type;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/SpeechException$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/glass/voice/network/SpeechException;->getType()Lcom/google/glass/voice/network/SpeechException$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/SpeechException$Type;->AUDIO_RECOGNIZE:Lcom/google/glass/voice/network/SpeechException$Type;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/SpeechException$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 873
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->speakAgainRunnable:Ljava/lang/Runnable;

    .line 875
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/google/glass/util/SettingsHelper;->getGoToSettingsRunnable(Landroid/content/Context;)Ljava/lang/Runnable;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getResultDuration(Ljava/lang/String;)J
    .locals 10
    .parameter "recognitionResult"

    .prologue
    .line 995
    const-wide/16 v0, 0x7d0

    const-wide v2, 0x40a7700000000000L

    const-wide/high16 v4, 0x3ff0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x4061800000000000L

    div-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static getSecondaryErrorMessageId(Lcom/google/glass/voice/network/SpeechException;)I
    .locals 2
    .parameter "e"

    .prologue
    .line 854
    invoke-virtual {p0}, Lcom/google/glass/voice/network/SpeechException;->getType()Lcom/google/glass/voice/network/SpeechException$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/SpeechException$Type;->NO_MATCH:Lcom/google/glass/voice/network/SpeechException$Type;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/SpeechException$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/voice/network/SpeechException;->getType()Lcom/google/glass/voice/network/SpeechException$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/SpeechException$Type;->AUDIO_RECOGNIZE:Lcom/google/glass/voice/network/SpeechException$Type;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/SpeechException$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 856
    :cond_0
    sget v0, Lcom/google/glass/voice/R$string;->error_tap_speak_again:I

    .line 858
    :goto_0
    return v0

    :cond_1
    sget v0, Lcom/google/glass/voice/R$string;->error_tap_connection_settings:I

    goto :goto_0
.end method

.method private logSearchStarted(I)V
    .locals 6
    .parameter "trigger"

    .prologue
    .line 387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->startTime:J

    .line 391
    const-string v1, "id"

    iget-wide v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "trigger"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, eventTuple:Ljava/lang/String;
    sget-object v1, Lcom/google/glass/logging/UserEventAction;->VOICE_INPUT_STARTED:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 458
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/voice/MicrophoneView;

    invoke-virtual {v0}, Lcom/google/glass/voice/MicrophoneView;->showNotListening()V

    .line 459
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 460
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    .line 463
    iput-boolean v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->isRetry:Z

    .line 464
    iput-boolean v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->hasMajelResponse:Z

    .line 465
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->recognitionResult:Ljava/lang/CharSequence;

    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->logFirstRecognizedText:Z

    .line 467
    return-void
.end method

.method private updateKeepScreenOn(I)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 927
    sparse-switch p1, :sswitch_data_0

    .line 939
    :goto_0
    return-void

    .line 930
    :sswitch_0
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    goto :goto_0

    .line 936
    :sswitch_1
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    goto :goto_0

    .line 927
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3 -> :sswitch_1
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method private updatePowerHelper(I)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 913
    packed-switch p1, :pswitch_data_0

    .line 924
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 919
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->userActivity()V

    goto :goto_0

    .line 913
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected cleanRecognitionResults(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "results"

    .prologue
    .line 943
    return-object p1
.end method

.method protected dispatchShowNoSpeechDetected()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 588
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->isMessageShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 589
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No-speech error to display, but error already on screen"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 611
    :goto_0
    return-void

    .line 593
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/voice/MicrophoneView;

    invoke-virtual {v1}, Lcom/google/glass/voice/MicrophoneView;->showNotListening()V

    .line 594
    iget-object v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v1}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    .line 597
    const-string v1, "id"

    iget-wide v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "recognition"

    aput-object v4, v3, v5

    iget-boolean v4, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->hasRecognitionResults:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "trigger"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->triggerMethod:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, eventTuple:Ljava/lang/String;
    sget-object v1, Lcom/google/glass/logging/UserEventAction;->VOICE_INPUT_NO_SPEECH_DETECTED:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 604
    new-instance v1, Lcom/google/glass/app/GlassError;

    invoke-direct {v1}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v2, Lcom/google/glass/voice/R$string;->error_no_speech_detected:I

    invoke-virtual {v1, v2}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v1

    sget v2, Lcom/google/glass/voice/R$string;->error_tap_speak_again:I

    invoke-virtual {v1, v2}, Lcom/google/glass/app/GlassError;->setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v1

    sget v2, Lcom/google/glass/voice/R$drawable;->ic_exclamation_big:I

    invoke-virtual {v1, v2}, Lcom/google/glass/app/GlassError;->setIconId(I)Lcom/google/glass/app/GlassError;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->speakAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/google/glass/app/GlassError;->setOnConfirmRunnable(Ljava/lang/Runnable;)Lcom/google/glass/app/GlassError;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/app/GlassError;->show(Lcom/google/glass/app/GlassActivity;)V

    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 957
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public abstract getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;
.end method

.method protected getInputTypeResId()I
    .locals 1

    .prologue
    .line 979
    const/4 v0, 0x0

    return v0
.end method

.method protected getInputTypeText()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getInputTypeResId()I

    move-result v0

    .line 545
    .local v0, resId:I
    if-nez v0, :cond_0

    .line 546
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Must provide input type text or ID."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 549
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method protected getPromptText()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getSpeakNowPromptResId()I

    move-result v0

    .line 536
    .local v0, resId:I
    if-nez v0, :cond_0

    .line 537
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Must provide prompt text or ID."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 540
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized getRecognitionResultsCount()I
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 790
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->recognitionResultsCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRecognitionUpdatesCount()I
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 799
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->recognitionUpdatesCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getRecognizedTextLineCount()I
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    invoke-virtual {v0}, Lcom/google/glass/voice/StreamingTextView;->getLineCount()I

    move-result v0

    return v0
.end method

.method protected abstract getRetryVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;
.end method

.method protected getSpeakNowPromptResId()I
    .locals 1

    .prologue
    .line 974
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getType()I
.end method

.method public getVoiceInputCallback()Lcom/google/glass/voice/network/IVoiceInputCallback;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 781
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->voiceInputCallback:Lcom/google/glass/voice/network/IVoiceInputCallback;

    return-object v0
.end method

.method protected isMajelResponseExpected()Z
    .locals 1

    .prologue
    .line 948
    const/4 v0, 0x0

    return v0
.end method

.method protected isRetry()Z
    .locals 1

    .prologue
    .line 837
    iget-boolean v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->isRetry:Z

    return v0
.end method

.method public onConfirm()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 473
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->startTime:J

    sub-long v0, v4, v6

    .line 474
    .local v0, timeSinceStart:J
    const-wide/16 v4, 0x3e8

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 475
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Manually endpointed after %l ms"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v4, v5, v6}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->endpointNetworkRecognizer()V

    .line 479
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 6
    .parameter "dismissAction"

    .prologue
    .line 486
    const-string v1, "id"

    iget-wide v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "trigger"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->triggerMethod:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, eventTuple:Ljava/lang/String;
    sget-object v1, Lcom/google/glass/logging/UserEventAction;->VOICE_INPUT_DISMISS:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 492
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassVoiceActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v1

    return v1
.end method

.method protected onHtmlAnswerCardResult(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0
    .parameter "htmlResponse"
    .parameter "recognitionResult"
    .parameter "startTime"
    .parameter "endOfSpeechTime"

    .prologue
    .line 769
    return-void
.end method

.method protected onMajelResult(Lcom/google/majel/proto/MajelProtos$MajelResponse;Ljava/lang/String;JJ)V
    .locals 0
    .parameter "majelResponse"
    .parameter "recognitionResult"
    .parameter "startTime"
    .parameter "endOfSpeechTime"

    .prologue
    .line 760
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 434
    iget-boolean v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->hasMajelResponse:Z

    if-nez v0, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->detachVoiceInputCallback()V

    .line 440
    :cond_0
    invoke-super {p0}, Lcom/google/glass/app/GlassVoiceActivity;->onPause()V

    .line 441
    return-void
.end method

.method protected onRecognitionResult(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 746
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 400
    invoke-super {p0}, Lcom/google/glass/app/GlassVoiceActivity;->onResume()V

    .line 402
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 403
    .local v0, content:Landroid/view/View;
    sget v3, Lcom/google/glass/voice/R$id;->voice_input_selected_item:I

    invoke-virtual {p0, v3}, Lcom/google/glass/voice/BaseVoiceInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/glass/widget/TypophileTextView;

    .line 405
    .local v2, selectedItem:Lcom/google/glass/widget/TypophileTextView;
    sget v3, Lcom/google/glass/voice/R$id;->microphone_container:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/glass/voice/MicrophoneView;

    iput-object v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/voice/MicrophoneView;

    .line 406
    sget v3, Lcom/google/glass/voice/R$id;->voice_input_prompt:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/glass/widget/TypophileTextView;

    iput-object v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->prompt:Lcom/google/glass/widget/TypophileTextView;

    .line 407
    sget v3, Lcom/google/glass/voice/R$id;->streaming_text:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/glass/voice/StreamingTextView;

    iput-object v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->streamingTextView:Lcom/google/glass/voice/StreamingTextView;

    .line 408
    sget v3, Lcom/google/glass/voice/R$id;->progress_slider:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/glass/widget/SliderView;

    iput-object v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    .line 411
    invoke-direct {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->reset()V

    .line 414
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getGlassApplication()Lcom/google/glass/app/GlassApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/app/GlassApplication;->getConnectionState()Lcom/google/glass/util/InetConnectionState;

    move-result-object v1

    .line 415
    .local v1, inetState:Lcom/google/glass/util/InetConnectionState;
    invoke-virtual {v1}, Lcom/google/glass/util/InetConnectionState;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 416
    iget-object v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/voice/MicrophoneView;

    invoke-virtual {v3}, Lcom/google/glass/voice/MicrophoneView;->showNotListening()V

    .line 417
    new-instance v3, Lcom/google/glass/app/GlassError;

    invoke-direct {v3}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v4, Lcom/google/glass/voice/R$string;->voice_network_connectivity:I

    invoke-virtual {v3, v4}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v3

    sget v4, Lcom/google/glass/voice/R$string;->error_tap_connection_settings:I

    invoke-virtual {v3, v4}, Lcom/google/glass/app/GlassError;->setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v3

    sget v4, Lcom/google/glass/voice/R$drawable;->ic_cloud_sad_big:I

    invoke-virtual {v3, v4}, Lcom/google/glass/app/GlassError;->setIconId(I)Lcom/google/glass/app/GlassError;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v3

    sget-object v4, Lcom/google/glass/app/GlassError$OnConfirmAction;->GO_TO_SETTINGS:Lcom/google/glass/app/GlassError$OnConfirmAction;

    invoke-virtual {v3, v4}, Lcom/google/glass/app/GlassError;->setOnConfirmAction(Lcom/google/glass/app/GlassError$OnConfirmAction;)Lcom/google/glass/app/GlassError;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/google/glass/app/GlassError;->show(Lcom/google/glass/app/GlassActivity;)V

    .line 430
    :goto_0
    return-void

    .line 427
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getInputTypeText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    new-instance v3, Lcom/google/glass/util/PowerHelper;

    invoke-direct {v3, p0}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    goto :goto_0
.end method

.method protected onSoundSearchResult(Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V
    .locals 0
    .parameter "earsResponse"

    .prologue
    .line 777
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 364
    invoke-super {p0}, Lcom/google/glass/app/GlassVoiceActivity;->onStart()V

    .line 369
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 370
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    const-string v1, "should_play_initial_sound"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_PENDING:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 374
    :cond_0
    if-eqz v0, :cond_1

    .line 375
    const-string v1, "trigger_method"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->triggerMethod:I

    .line 383
    :goto_0
    iget v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->triggerMethod:I

    invoke-direct {p0, v1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->logSearchStarted(I)V

    .line 384
    return-void

    .line 378
    :cond_1
    iput v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->triggerMethod:I

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->finish()V

    .line 454
    invoke-super {p0}, Lcom/google/glass/app/GlassVoiceActivity;->onStop()V

    .line 455
    return-void
.end method

.method protected onUpdateRecognizedText()V
    .locals 0

    .prologue
    .line 702
    return-void
.end method

.method public onVoiceServiceConnected()V
    .locals 1

    .prologue
    .line 497
    invoke-super {p0}, Lcom/google/glass/app/GlassVoiceActivity;->onVoiceServiceConnected()V

    .line 502
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->voiceInputCallback:Lcom/google/glass/voice/network/IVoiceInputCallback;

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->attachVoiceInputCallback(Lcom/google/glass/voice/network/IVoiceInputCallback;)V

    .line 503
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 359
    sget v0, Lcom/google/glass/voice/R$layout;->voice_input_activity:I

    return v0
.end method

.method public showError(Lcom/google/glass/widget/MessageDialog;)V
    .locals 0
    .parameter "errorDialog"

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->detachVoiceInputCallback()V

    .line 446
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassVoiceActivity;->showError(Lcom/google/glass/widget/MessageDialog;)V

    .line 447
    return-void
.end method

.method protected showNoSpeechDetected()V
    .locals 2

    .prologue
    .line 984
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 985
    return-void
.end method

.method protected showProgressOnRecognitionResult()Z
    .locals 1

    .prologue
    .line 584
    const/4 v0, 0x1

    return v0
.end method
