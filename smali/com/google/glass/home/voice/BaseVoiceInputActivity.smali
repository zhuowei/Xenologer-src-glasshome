.class public abstract Lcom/google/glass/home/voice/BaseVoiceInputActivity;
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

.field private microphone:Lcom/google/glass/search/MicrophoneView;

.field private powerHelper:Lcom/google/glass/util/PowerHelper;

.field private progressSlider:Lcom/google/glass/widget/SliderView;

.field private prompt:Lcom/google/glass/widget/TypophileTextView;

.field private recognitionResult:Lcom/google/android/speech/alternates/CorrectableString;

.field private recognitionResultsCount:I

.field private recognitionUpdatesCount:I

.field private final speakAgainRunnable:Ljava/lang/Runnable;

.field private startTime:J

.field private streamingTextView:Lcom/google/glass/search/StreamingTextView;

.field protected triggerMethod:I

.field protected final voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lcom/google/glass/app/GlassVoiceActivity;-><init>()V

    .line 142
    iput-boolean v1, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->hasMajelResponse:Z

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->recognitionResult:Lcom/google/android/speech/alternates/CorrectableString;

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->logFirstRecognizedText:Z

    .line 155
    iput-boolean v1, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->hasRecognitionResults:Z

    .line 161
    iput-boolean v1, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->isRetry:Z

    .line 197
    new-instance v0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity$1;-><init>(Lcom/google/glass/home/voice/BaseVoiceInputActivity;)V

    iput-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    .line 260
    new-instance v0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$2;

    invoke-direct {v0, p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity$2;-><init>(Lcom/google/glass/home/voice/BaseVoiceInputActivity;)V

    iput-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;

    .line 327
    new-instance v0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$3;

    invoke-direct {v0, p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity$3;-><init>(Lcom/google/glass/home/voice/BaseVoiceInputActivity;)V

    iput-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->speakAgainRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/voice/BaseVoiceInputActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->updatePowerHelper(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/home/voice/BaseVoiceInputActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->updateKeepScreenOn(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/glass/home/voice/BaseVoiceInputActivity;Lcom/google/majel/proto/MajelProtos$MajelResponse;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->dispatchOnMajelResult(Lcom/google/majel/proto/MajelProtos$MajelResponse;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/glass/home/voice/BaseVoiceInputActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->dispatchOnHtmlAnswerCardResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/glass/home/voice/BaseVoiceInputActivity;Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->dispatchOnSoundSearchResult(Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/glass/home/voice/BaseVoiceInputActivity;Lcom/google/glass/voice/network/SpeechException;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->dispatchOnError(Lcom/google/glass/voice/network/SpeechException;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/glass/home/voice/BaseVoiceInputActivity;)Lcom/google/glass/widget/SliderView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/glass/home/voice/BaseVoiceInputActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->logSearchStarted(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/glass/home/voice/BaseVoiceInputActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->reset()V

    return-void
.end method

.method static synthetic access$1702(Lcom/google/glass/home/voice/BaseVoiceInputActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->isRetry:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/google/glass/home/voice/BaseVoiceInputActivity;)Lcom/google/glass/search/MicrophoneView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/search/MicrophoneView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/voice/BaseVoiceInputActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->dispatchShowListening()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/home/voice/BaseVoiceInputActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->dispatchShowRecording()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/home/voice/BaseVoiceInputActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->dispatchShowRecognizing()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/home/voice/BaseVoiceInputActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->dispatchShowNoSpeechDetected()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/home/voice/BaseVoiceInputActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->dispatchShowDone()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/glass/home/voice/BaseVoiceInputActivity;Lcom/google/glass/voice/network/VoiceSearchUi$SpeechLevelSource;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->dispatchSetSpeechLevelSource(Lcom/google/glass/voice/network/VoiceSearchUi$SpeechLevelSource;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/glass/home/voice/BaseVoiceInputActivity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->dispatchUpdateRecognizedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/glass/home/voice/BaseVoiceInputActivity;Lcom/google/android/speech/alternates/CorrectableString;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->dispatchOnRecognitionResult(Lcom/google/android/speech/alternates/CorrectableString;F)V

    return-void
.end method

.method private animateIn(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 3
    .parameter "view"
    .parameter "postAnimationRunnable"

    .prologue
    .line 850
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 851
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 852
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

    new-instance v1, Lcom/google/glass/home/voice/BaseVoiceInputActivity$5;

    invoke-direct {v1, p0, p2}, Lcom/google/glass/home/voice/BaseVoiceInputActivity$5;-><init>(Lcom/google/glass/home/voice/BaseVoiceInputActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 864
    return-void
.end method

.method private animateOut(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 868
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getResources()Landroid/content/res/Resources;

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

    new-instance v1, Lcom/google/glass/home/voice/BaseVoiceInputActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity$6;-><init>(Lcom/google/glass/home/voice/BaseVoiceInputActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 878
    return-void
.end method

.method private dispatchOnError(Lcom/google/glass/voice/network/SpeechException;)V
    .locals 10
    .parameter "exception"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x1

    .line 771
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->isMessageShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 772
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received error while already showing error on screen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/glass/voice/network/SpeechException;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :goto_0
    return-void

    .line 778
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->startTime:J

    sub-long v1, v3, v5

    .line 779
    .local v1, timeToError:J
    const-string v3, "id"

    iget-wide v4, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->startTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v5, 0xa

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "error"

    aput-object v7, v5, v6

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

    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "trigger"

    aput-object v6, v5, v9

    const/16 v6, 0x9

    iget v7, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->triggerMethod:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 786
    .local v0, eventTuple:Ljava/lang/String;
    sget-object v3, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_ERROR:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p0, v3, v0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 788
    iget-object v3, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/search/MicrophoneView;

    invoke-virtual {v3}, Lcom/google/glass/search/MicrophoneView;->showNotListening()V

    .line 789
    iget-object v3, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/search/MicrophoneView;

    invoke-direct {p0, v3}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->animateOut(Landroid/view/View;)V

    .line 790
    iget-object v3, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->prompt:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v3, v9}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 791
    iget-object v3, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 792
    iget-object v3, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v3}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    .line 794
    new-instance v3, Lcom/google/glass/app/GlassError;

    invoke-direct {v3}, Lcom/google/glass/app/GlassError;-><init>()V

    invoke-static {p1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getErrorMessageId(Lcom/google/glass/voice/network/SpeechException;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v3

    invoke-static {p1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getSecondaryErrorMessageId(Lcom/google/glass/voice/network/SpeechException;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/glass/app/GlassError;->setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v3

    invoke-static {p1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getErrorIconId(Lcom/google/glass/voice/network/SpeechException;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/glass/app/GlassError;->setIconId(I)Lcom/google/glass/app/GlassError;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getErrorOnConfirmRunnable(Lcom/google/glass/voice/network/SpeechException;)Ljava/lang/Runnable;

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
    .line 731
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->recognitionResult:Lcom/google/android/speech/alternates/CorrectableString;

    invoke-virtual {v0}, Lcom/google/android/speech/alternates/CorrectableString;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->startTime:J

    iget-wide v5, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->endOfSpeechTime:J

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->onHtmlAnswerCardResult(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 732
    return-void
.end method

.method private dispatchOnMajelResult(Lcom/google/majel/proto/MajelProtos$MajelResponse;)V
    .locals 7
    .parameter "majelResponse"

    .prologue
    .line 717
    invoke-virtual {p1}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->getPeanutCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 718
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->hasMajelResponse:Z

    .line 721
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->recognitionResult:Lcom/google/android/speech/alternates/CorrectableString;

    invoke-virtual {v0}, Lcom/google/android/speech/alternates/CorrectableString;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->startTime:J

    iget-wide v5, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->endOfSpeechTime:J

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->onMajelResult(Lcom/google/majel/proto/MajelProtos$MajelResponse;Ljava/lang/String;JJ)V

    .line 723
    :cond_0
    return-void
.end method

.method private dispatchOnRecognitionResult(Lcom/google/android/speech/alternates/CorrectableString;F)V
    .locals 12
    .parameter "text"
    .parameter "confidence"

    .prologue
    const/16 v11, 0xb

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 676
    iput-object p1, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->recognitionResult:Lcom/google/android/speech/alternates/CorrectableString;

    .line 677
    iget-object v5, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->prompt:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v5, v10}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 678
    iget-object v5, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->streamingTextView:Lcom/google/glass/search/StreamingTextView;

    invoke-virtual {v5, v9}, Lcom/google/glass/search/StreamingTextView;->setVisibility(I)V

    .line 679
    iget-object v5, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->streamingTextView:Lcom/google/glass/search/StreamingTextView;

    invoke-virtual {p0, p1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->cleanRecognitionResults(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/glass/search/StreamingTextView;->setFinalRecognizedText(Ljava/lang/CharSequence;)V

    .line 681
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->showProgressOnRecognitionResult()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 682
    iget-object v5, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v5}, Lcom/google/glass/widget/SliderView;->startIndeterminate()V

    .line 692
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->startTime:J

    sub-long v3, v5, v7

    .line 693
    .local v3, timeToRecognitionTotal:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->endOfSpeechTime:J

    sub-long v1, v5, v7

    .line 694
    .local v1, timeToRecognitionFromEndOfSpeech:J
    const-string v5, "id"

    iget-wide v6, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->startTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/16 v7, 0xc

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "hypothesis"

    aput-object v8, v7, v9

    const/4 v8, 0x1

    invoke-virtual {p1}, Lcom/google/android/speech/alternates/CorrectableString;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "confidence"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "time_total"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "time_from_eos"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const-string v8, "type"

    aput-object v8, v7, v10

    const/16 v8, 0x9

    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getType()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xa

    const-string v9, "trigger"

    aput-object v9, v7, v8

    iget v8, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->triggerMethod:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v5, v6, v7}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 702
    .local v0, eventTuple:Ljava/lang/String;
    sget-object v5, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_RECOGNITION:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p0, v5, v0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 705
    monitor-enter p0

    .line 706
    :try_start_0
    iget v5, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->recognitionResultsCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->recognitionResultsCount:I

    .line 707
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    invoke-virtual {p1}, Lcom/google/android/speech/alternates/CorrectableString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->onRecognitionResult(Ljava/lang/String;)V

    .line 710
    return-void

    .line 686
    .end local v0           #eventTuple:Ljava/lang/String;
    .end local v1           #timeToRecognitionFromEndOfSpeech:J
    .end local v3           #timeToRecognitionTotal:J
    :cond_0
    iget-object v5, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v5, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 687
    iget-object v5, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v5}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    goto/16 :goto_0

    .line 707
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
    .line 740
    invoke-virtual {p0, p1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->onSoundSearchResult(Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V

    .line 741
    return-void
.end method

.method private dispatchSetSpeechLevelSource(Lcom/google/glass/voice/network/VoiceSearchUi$SpeechLevelSource;)V
    .locals 1
    .parameter "speechLevelSource"

    .prologue
    .line 621
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/search/MicrophoneView;

    invoke-virtual {v0, p1}, Lcom/google/glass/search/MicrophoneView;->setSpeechLevelSource(Lcom/google/glass/voice/network/VoiceSearchUi$SpeechLevelSource;)V

    .line 622
    return-void
.end method

.method private dispatchShowDone()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 591
    iget-object v3, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/search/MicrophoneView;

    invoke-virtual {v3}, Lcom/google/glass/search/MicrophoneView;->showNotListening()V

    .line 594
    iget-boolean v3, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->hasMajelResponse:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->isMajelResponseExpected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 595
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->isMessageShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 596
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error to display, but error already on screen"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    iget-object v3, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v3}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    .line 602
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->startTime:J

    sub-long v1, v3, v5

    .line 603
    .local v1, timeToError:J
    const-string v3, "id"

    iget-wide v4, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->startTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "query"

    aput-object v7, v5, v6

    iget-object v6, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->recognitionResult:Lcom/google/android/speech/alternates/CorrectableString;

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

    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "trigger"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    iget v7, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->triggerMethod:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 609
    .local v0, eventTuple:Ljava/lang/String;
    sget-object v3, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_NO_ANSWER:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p0, v3, v0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 611
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

    .line 483
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 484
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    .line 485
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->streamingTextView:Lcom/google/glass/search/StreamingTextView;

    invoke-virtual {v0, v2}, Lcom/google/glass/search/StreamingTextView;->setVisibility(I)V

    .line 486
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->prompt:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getPromptText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/search/MicrophoneView;

    invoke-virtual {v0}, Lcom/google/glass/search/MicrophoneView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 492
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->prompt:Lcom/google/glass/widget/TypophileTextView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->animateIn(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 493
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/search/MicrophoneView;

    new-instance v1, Lcom/google/glass/home/voice/BaseVoiceInputActivity$4;

    invoke-direct {v1, p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity$4;-><init>(Lcom/google/glass/home/voice/BaseVoiceInputActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->animateIn(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 508
    :goto_0
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->streamingTextView:Lcom/google/glass/search/StreamingTextView;

    invoke-virtual {v0}, Lcom/google/glass/search/StreamingTextView;->reset()V

    .line 509
    return-void

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->prompt:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v0}, Lcom/google/glass/widget/TypophileTextView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 503
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->prompt:Lcom/google/glass/widget/TypophileTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/search/MicrophoneView;

    invoke-virtual {v0}, Lcom/google/glass/search/MicrophoneView;->showListening()V

    goto :goto_0
.end method

.method private dispatchShowNoSpeechDetected()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 565
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->isMessageShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 566
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No-speech error to display, but error already on screen"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :goto_0
    return-void

    .line 570
    :cond_0
    iget-object v1, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/search/MicrophoneView;

    invoke-virtual {v1}, Lcom/google/glass/search/MicrophoneView;->showNotListening()V

    .line 571
    iget-object v1, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v1}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    .line 574
    const-string v1, "id"

    iget-wide v2, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "recognition"

    aput-object v5, v3, v4

    iget-boolean v4, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->hasRecognitionResults:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "trigger"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget v5, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->triggerMethod:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 579
    .local v0, eventTuple:Ljava/lang/String;
    sget-object v1, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_NO_SPEECH_DETECTED:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 581
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

    iget-object v2, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->speakAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/google/glass/app/GlassError;->setOnConfirmRunnable(Ljava/lang/Runnable;)Lcom/google/glass/app/GlassError;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/app/GlassError;->show(Lcom/google/glass/app/GlassActivity;)V

    goto :goto_0
.end method

.method private dispatchShowRecognizing()V
    .locals 8

    .prologue
    .line 536
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->endOfSpeechTime:J

    .line 538
    iget-object v3, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/search/MicrophoneView;

    invoke-virtual {v3}, Lcom/google/glass/search/MicrophoneView;->showNotListening()V

    .line 539
    iget-object v3, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/search/MicrophoneView;

    invoke-direct {p0, v3}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->animateOut(Landroid/view/View;)V

    .line 540
    iget-object v3, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->prompt:Lcom/google/glass/widget/TypophileTextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 541
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v3

    sget-object v4, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_COMPLETED:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v3, v4}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 547
    iget-object v3, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/16 v4, 0xb

    const-wide/16 v5, 0xfa

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 551
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->startTime:J

    sub-long v1, v3, v5

    .line 552
    .local v1, timeToEndOfSpeech:J
    const-string v3, "id"

    iget-wide v4, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->startTime:J

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

    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "trigger"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget v7, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->triggerMethod:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 557
    .local v0, eventTuple:Ljava/lang/String;
    sget-object v3, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_END_OF_SPEECH:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p0, v3, v0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 558
    return-void
.end method

.method private dispatchShowRecording()V
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/search/MicrophoneView;

    invoke-virtual {v0}, Lcom/google/glass/search/MicrophoneView;->showRecording()V

    .line 531
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->streamingTextView:Lcom/google/glass/search/StreamingTextView;

    invoke-virtual {v0}, Lcom/google/glass/search/StreamingTextView;->reset()V

    .line 532
    return-void
.end method

.method private dispatchUpdateRecognizedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 11
    .parameter "stableText"
    .parameter "pendingText"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 625
    iput-boolean v10, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->hasRecognitionResults:Z

    .line 627
    if-nez p1, :cond_0

    if-eqz p2, :cond_2

    .line 628
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->cleanRecognitionResults(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 629
    .local v2, stableCleaned:Ljava/lang/CharSequence;
    invoke-virtual {p0, p2}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->cleanRecognitionResults(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 631
    .local v1, pendingCleaned:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->prompt:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v5}, Lcom/google/glass/widget/TypophileTextView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 665
    .end local v1           #pendingCleaned:Ljava/lang/CharSequence;
    .end local v2           #stableCleaned:Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 640
    .restart local v1       #pendingCleaned:Ljava/lang/CharSequence;
    .restart local v2       #stableCleaned:Ljava/lang/CharSequence;
    :cond_1
    iget-object v5, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->prompt:Lcom/google/glass/widget/TypophileTextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 641
    iget-object v5, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->streamingTextView:Lcom/google/glass/search/StreamingTextView;

    invoke-virtual {v5, v9}, Lcom/google/glass/search/StreamingTextView;->setVisibility(I)V

    .line 642
    iget-object v5, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->streamingTextView:Lcom/google/glass/search/StreamingTextView;

    invoke-virtual {v5, v2, v1}, Lcom/google/glass/search/StreamingTextView;->updateRecognizedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 646
    .end local v1           #pendingCleaned:Ljava/lang/CharSequence;
    .end local v2           #stableCleaned:Ljava/lang/CharSequence;
    :cond_2
    iget-boolean v5, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->logFirstRecognizedText:Z

    if-eqz v5, :cond_3

    .line 647
    iput-boolean v9, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->logFirstRecognizedText:Z

    .line 649
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->startTime:J

    sub-long v3, v5, v7

    .line 650
    .local v3, timeToFirstRecognition:J
    const-string v5, "id"

    iget-wide v6, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->startTime:J

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

    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getType()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "trigger"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget v9, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->triggerMethod:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, eventTuple:Ljava/lang/String;
    sget-object v5, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_FIRST_RECOGNITION:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p0, v5, v0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 660
    .end local v0           #eventTuple:Ljava/lang/String;
    .end local v3           #timeToFirstRecognition:J
    :cond_3
    monitor-enter p0

    .line 661
    :try_start_0
    iget v5, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->recognitionUpdatesCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->recognitionUpdatesCount:I

    .line 662
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->onUpdateRecognizedText()V

    goto :goto_0

    .line 662
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
    .line 831
    invoke-virtual {p0}, Lcom/google/glass/voice/network/SpeechException;->getType()Lcom/google/glass/voice/network/SpeechException$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/SpeechException$Type;->AUDIO_RECOGNIZE:Lcom/google/glass/voice/network/SpeechException$Type;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/SpeechException$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    sget v0, Lcom/google/glass/voice/R$drawable;->ic_exclamation_big:I

    .line 834
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
    .line 809
    invoke-virtual {p0}, Lcom/google/glass/voice/network/SpeechException;->getType()Lcom/google/glass/voice/network/SpeechException$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/SpeechException$Type;->NETWORK_RECOGNIZE:Lcom/google/glass/voice/network/SpeechException$Type;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/SpeechException$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    sget v0, Lcom/google/glass/voice/R$string;->voice_search_network_error:I

    .line 817
    :goto_0
    return v0

    .line 811
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/voice/network/SpeechException;->getType()Lcom/google/glass/voice/network/SpeechException$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/SpeechException$Type;->NO_MATCH:Lcom/google/glass/voice/network/SpeechException$Type;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/SpeechException$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 812
    sget v0, Lcom/google/glass/voice/R$string;->voice_search_no_match:I

    goto :goto_0

    .line 813
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/voice/network/SpeechException;->getType()Lcom/google/glass/voice/network/SpeechException$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/SpeechException$Type;->AUDIO_RECOGNIZE:Lcom/google/glass/voice/network/SpeechException$Type;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/SpeechException$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 814
    sget v0, Lcom/google/glass/voice/R$string;->voice_search_audio_error:I

    goto :goto_0

    .line 817
    :cond_2
    sget v0, Lcom/google/glass/voice/R$string;->voice_search_server_error:I

    goto :goto_0
.end method

.method private getErrorOnConfirmRunnable(Lcom/google/glass/voice/network/SpeechException;)Ljava/lang/Runnable;
    .locals 2
    .parameter "e"

    .prologue
    .line 839
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

    .line 841
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->speakAgainRunnable:Ljava/lang/Runnable;

    .line 843
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
    .line 962
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
    .line 822
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

    .line 824
    :cond_0
    sget v0, Lcom/google/glass/voice/R$string;->error_tap_speak_again:I

    .line 826
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
    .line 370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->startTime:J

    .line 374
    const-string v1, "id"

    iget-wide v2, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getType()I

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

    .line 378
    .local v0, eventTuple:Ljava/lang/String;
    sget-object v1, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_STARTED:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 435
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/search/MicrophoneView;

    invoke-virtual {v0}, Lcom/google/glass/search/MicrophoneView;->showNotListening()V

    .line 436
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 437
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    .line 440
    iput-boolean v2, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->isRetry:Z

    .line 441
    iput-boolean v2, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->hasMajelResponse:Z

    .line 442
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->recognitionResult:Lcom/google/android/speech/alternates/CorrectableString;

    .line 443
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->logFirstRecognizedText:Z

    .line 444
    return-void
.end method

.method private updateKeepScreenOn(I)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 895
    sparse-switch p1, :sswitch_data_0

    .line 907
    :goto_0
    return-void

    .line 898
    :sswitch_0
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    goto :goto_0

    .line 904
    :sswitch_1
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    goto :goto_0

    .line 895
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
    .line 881
    packed-switch p1, :pswitch_data_0

    .line 892
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 887
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->userActivity()V

    goto :goto_0

    .line 881
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
    .line 911
    return-object p1
.end method

.method protected getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public abstract getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;
.end method

.method protected getInputTypeResId()I
    .locals 1

    .prologue
    .line 946
    const/4 v0, 0x0

    return v0
.end method

.method protected getInputTypeText()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getInputTypeResId()I

    move-result v0

    .line 522
    .local v0, resId:I
    if-nez v0, :cond_0

    .line 523
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Must provide input type text or ID."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 526
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method protected getPromptText()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getSpeakNowPromptResId()I

    move-result v0

    .line 513
    .local v0, resId:I
    if-nez v0, :cond_0

    .line 514
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Must provide prompt text or ID."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 517
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getResources()Landroid/content/res/Resources;

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
    .line 758
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->recognitionResultsCount:I
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
    .line 767
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->recognitionUpdatesCount:I
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
    .line 672
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->streamingTextView:Lcom/google/glass/search/StreamingTextView;

    invoke-virtual {v0}, Lcom/google/glass/search/StreamingTextView;->getLineCount()I

    move-result v0

    return v0
.end method

.method protected abstract getRetryVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;
.end method

.method protected getSpeakNowPromptResId()I
    .locals 1

    .prologue
    .line 941
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getType()I
.end method

.method public getVoiceSearchUi()Lcom/google/glass/voice/network/VoiceSearchUi;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 749
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;

    return-object v0
.end method

.method protected isMajelResponseExpected()Z
    .locals 1

    .prologue
    .line 916
    const/4 v0, 0x0

    return v0
.end method

.method protected isRetry()Z
    .locals 1

    .prologue
    .line 805
    iget-boolean v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->isRetry:Z

    return v0
.end method

.method public onConfirm()Z
    .locals 6

    .prologue
    .line 450
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->startTime:J

    sub-long v0, v2, v4

    .line 451
    .local v0, timeSinceStart:J
    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 452
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Manually endpointed after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->endpointNetworkRecognizer()V

    .line 454
    const/4 v2, 0x1

    .line 456
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 6
    .parameter "dismissAction"

    .prologue
    .line 463
    const-string v1, "id"

    iget-wide v2, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "trigger"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->triggerMethod:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, eventTuple:Ljava/lang/String;
    sget-object v1, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_DISMISS:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 469
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
    .line 737
    return-void
.end method

.method protected onMajelResult(Lcom/google/majel/proto/MajelProtos$MajelResponse;Ljava/lang/String;JJ)V
    .locals 0
    .parameter "majelResponse"
    .parameter "recognitionResult"
    .parameter "startTime"
    .parameter "endOfSpeechTime"

    .prologue
    .line 728
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->hasMajelResponse:Z

    if-nez v0, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->detachVoiceSearchUi()V

    .line 423
    :cond_0
    invoke-super {p0}, Lcom/google/glass/app/GlassVoiceActivity;->onPause()V

    .line 424
    return-void
.end method

.method protected onRecognitionResult(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 714
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 383
    invoke-super {p0}, Lcom/google/glass/app/GlassVoiceActivity;->onResume()V

    .line 385
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 386
    .local v0, content:Landroid/view/View;
    sget v3, Lcom/google/glass/voice/R$id;->voice_search_selected_item:I

    invoke-virtual {p0, v3}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/glass/widget/TypophileTextView;

    .line 388
    .local v2, selectedItem:Lcom/google/glass/widget/TypophileTextView;
    sget v3, Lcom/google/glass/voice/R$id;->microphone_container:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/glass/search/MicrophoneView;

    iput-object v3, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/search/MicrophoneView;

    .line 389
    sget v3, Lcom/google/glass/voice/R$id;->voice_search_prompt:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/glass/widget/TypophileTextView;

    iput-object v3, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->prompt:Lcom/google/glass/widget/TypophileTextView;

    .line 390
    sget v3, Lcom/google/glass/voice/R$id;->streaming_text:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/glass/search/StreamingTextView;

    iput-object v3, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->streamingTextView:Lcom/google/glass/search/StreamingTextView;

    .line 391
    sget v3, Lcom/google/glass/voice/R$id;->progress_slider:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/glass/widget/SliderView;

    iput-object v3, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    .line 394
    invoke-direct {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->reset()V

    .line 397
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getGlassApplication()Lcom/google/glass/app/GlassApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/app/GlassApplication;->getConnectionState()Lcom/google/glass/util/InetConnectionState;

    move-result-object v1

    .line 398
    .local v1, inetState:Lcom/google/glass/util/InetConnectionState;
    invoke-virtual {v1}, Lcom/google/glass/util/InetConnectionState;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 399
    iget-object v3, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/search/MicrophoneView;

    invoke-virtual {v3}, Lcom/google/glass/search/MicrophoneView;->showNotListening()V

    .line 400
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

    .line 413
    :goto_0
    return-void

    .line 410
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getInputTypeText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    new-instance v3, Lcom/google/glass/util/PowerHelper;

    invoke-direct {v3, p0}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    goto :goto_0
.end method

.method protected onSoundSearchResult(Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V
    .locals 0
    .parameter "earsResponse"

    .prologue
    .line 745
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 347
    invoke-super {p0}, Lcom/google/glass/app/GlassVoiceActivity;->onStart()V

    .line 352
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 353
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    const-string v1, "should_play_initial_sound"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_PENDING:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 357
    :cond_0
    if-eqz v0, :cond_1

    .line 358
    const-string v1, "trigger_method"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->triggerMethod:I

    .line 366
    :goto_0
    iget v1, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->triggerMethod:I

    invoke-direct {p0, v1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->logSearchStarted(I)V

    .line 367
    return-void

    .line 361
    :cond_1
    iput v3, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->triggerMethod:I

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->finish()V

    .line 431
    invoke-super {p0}, Lcom/google/glass/app/GlassVoiceActivity;->onStop()V

    .line 432
    return-void
.end method

.method protected onUpdateRecognizedText()V
    .locals 0

    .prologue
    .line 669
    return-void
.end method

.method public onVoiceServiceConnected()V
    .locals 1

    .prologue
    .line 474
    invoke-super {p0}, Lcom/google/glass/app/GlassVoiceActivity;->onVoiceServiceConnected()V

    .line 479
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;

    invoke-virtual {p0, v0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->attachVoiceSearchUi(Lcom/google/glass/voice/network/VoiceSearchUi;)V

    .line 480
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 342
    sget v0, Lcom/google/glass/voice/R$layout;->voice_search_activity:I

    return v0
.end method

.method protected showNoSpeechDetected()V
    .locals 2

    .prologue
    .line 951
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 952
    return-void
.end method

.method protected showProgressOnRecognitionResult()Z
    .locals 1

    .prologue
    .line 561
    const/4 v0, 0x1

    return v0
.end method
