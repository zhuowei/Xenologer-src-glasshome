.class public abstract Lcom/google/glass/home/voice/BaseVoiceInputActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "BaseVoiceInputActivity.java"


# static fields
.field private static final ANIMATE_IN_DURATION_MILLIS:J = 0x64L

.field private static final ANIMATE_OUT_DURATION_MILLIS:J = 0xc8L

.field private static final ENDPOINT_CONFIRM_THRESHOLD_MILLIS:I = 0x3e8

.field public static final EXTRA_SHOULD_PLAY_INITIAL_SOUND:Ljava/lang/String; = "should_play_initial_sound"

.field public static final EXTRA_TRIGGER_METHOD:Ljava/lang/String; = "trigger_method"

.field private static final MSG_ON_ERROR:I = 0x9

.field protected static final MSG_ON_MAJEL_RESULT:I = 0x8
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected static final MSG_ON_RECOGNITION_RESULT:I = 0x7
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MSG_SET_SPEECH_LEVEL_SOURCE:I = 0x5

.field private static final MSG_SHOW_DONE:I = 0x4

.field private static final MSG_SHOW_LISTENING:I = 0x0

.field private static final MSG_SHOW_NO_SPEECH_DETECTED:I = 0x3

.field private static final MSG_SHOW_PROGRESS_BAR:I = 0xa

.field private static final MSG_SHOW_RECOGNIZING:I = 0x2

.field private static final MSG_SHOW_RECORDING:I = 0x1

.field private static final MSG_UPDATE_RECOGNIZED_TEXT:I = 0x6

.field private static final NO_RESOURCE_ID:I = 0x0

.field private static final SHOW_PROGRESS_BAR_DELAY_MILLIS:J = 0xfaL

.field public static final TRIGGER_METHOD_LONG_PRESS_SCREEN_OFF:I = 0x4

.field public static final TRIGGER_METHOD_LONG_PRESS_SCREEN_ON:I = 0x3

.field public static final TRIGGER_METHOD_MENU_TOUCH:I = 0x2

.field public static final TRIGGER_METHOD_MENU_VOICE:I = 0x1

.field public static final TRIGGER_METHOD_UNKNOWN:I = 0x0

.field public static final TYPE_GLASSWARE:I = 0x3

.field public static final TYPE_MESSAGING:I = 0x2

.field public static final TYPE_NAVIGATION:I = 0x1

.field public static final TYPE_SEARCH:I


# instance fields
.field private endOfSpeechTime:J

.field protected final handler:Landroid/os/Handler;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private hasMajelResponse:Z

.field private hasRecognitionResults:Z

.field private logFirstRecognizedText:Z

.field private microphone:Lcom/google/glass/home/search/MicrophoneView;

.field private powerHelper:Lcom/google/glass/util/PowerHelper;

.field private progressSlider:Lcom/google/glass/widget/SliderView;

.field private prompt:Lcom/google/glass/widget/TypophileTextView;

.field private recognitionResult:Lcom/google/android/speech/alternates/CorrectableString;

.field private final speakAgainRunnable:Ljava/lang/Runnable;

.field private startTime:J

.field private streamingTextView:Lcom/google/glass/home/search/StreamingTextView;

.field private triggerMethod:I

.field protected final voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 129
    iput-boolean v1, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->hasMajelResponse:Z

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->recognitionResult:Lcom/google/android/speech/alternates/CorrectableString;

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->logFirstRecognizedText:Z

    .line 142
    iput-boolean v1, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->hasRecognitionResults:Z

    .line 177
    new-instance v0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity$1;-><init>(Lcom/google/glass/home/voice/BaseVoiceInputActivity;)V

    iput-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    .line 234
    new-instance v0, Lcom/google/glass/home/voice/BaseVoiceInputActivity$2;

    invoke-direct {v0, p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity$2;-><init>(Lcom/google/glass/home/voice/BaseVoiceInputActivity;)V

    iput-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;

    .line 290
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
    .line 44
    invoke-direct {p0, p1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->updatePowerHelper(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/home/voice/BaseVoiceInputActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->updateKeepScreenOn(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/glass/home/voice/BaseVoiceInputActivity;Lcom/google/majel/proto/MajelProtos$MajelResponse;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->dispatchOnMajelResult(Lcom/google/majel/proto/MajelProtos$MajelResponse;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/glass/home/voice/BaseVoiceInputActivity;Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->dispatchOnError(Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/glass/home/voice/BaseVoiceInputActivity;)Lcom/google/glass/widget/SliderView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/glass/home/voice/BaseVoiceInputActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->reset()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/glass/home/voice/BaseVoiceInputActivity;)Lcom/google/glass/home/search/MicrophoneView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/home/search/MicrophoneView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/voice/BaseVoiceInputActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->dispatchShowListening()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/home/voice/BaseVoiceInputActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->dispatchShowRecording()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/home/voice/BaseVoiceInputActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->dispatchShowRecognizing()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/home/voice/BaseVoiceInputActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->dispatchShowNoSpeechDetected()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/home/voice/BaseVoiceInputActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->dispatchShowDone()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/glass/home/voice/BaseVoiceInputActivity;Lcom/google/glass/voice/network/VoiceSearchUi$SpeechLevelSource;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->dispatchSetSpeechLevelSource(Lcom/google/glass/voice/network/VoiceSearchUi$SpeechLevelSource;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/glass/home/voice/BaseVoiceInputActivity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->dispatchUpdateRecognizedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/glass/home/voice/BaseVoiceInputActivity;Lcom/google/android/speech/alternates/CorrectableString;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->dispatchOnRecognitionResult(Lcom/google/android/speech/alternates/CorrectableString;F)V

    return-void
.end method

.method private animateIn(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 3
    .parameter "view"
    .parameter "postAnimationRunnable"

    .prologue
    .line 758
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 759
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 760
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

    .line 772
    return-void
.end method

.method private animateOut(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 776
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

    .line 786
    return-void
.end method

.method private dispatchOnError(Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;)V
    .locals 11
    .parameter "exception"

    .prologue
    const/16 v10, 0xa

    const/16 v9, 0x8

    const/4 v8, 0x1

    .line 684
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->isMessageShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 685
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received error while already showing error on screen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;->getException()Ljava/lang/Exception;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :goto_0
    return-void

    .line 691
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->startTime:J

    sub-long v1, v3, v5

    .line 692
    .local v1, timeToError:J
    const-string v3, "id"

    iget-wide v4, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->startTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "error"

    aput-object v7, v5, v6

    invoke-interface {p1}, Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;->getException()Ljava/lang/Exception;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x2

    const-string v7, "detail"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-interface {p1}, Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;->getException()Ljava/lang/Exception;

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

    .line 699
    .local v0, eventTuple:Ljava/lang/String;
    sget-object v3, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_ERROR:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p0, v3, v0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 701
    iget-object v3, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/home/search/MicrophoneView;

    invoke-virtual {v3}, Lcom/google/glass/home/search/MicrophoneView;->showNotListening()V

    .line 702
    iget-object v3, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/home/search/MicrophoneView;

    invoke-direct {p0, v3}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->animateOut(Landroid/view/View;)V

    .line 703
    iget-object v3, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->prompt:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v3, v9}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 704
    iget-object v3, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 705
    iget-object v3, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v3}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    .line 707
    new-instance v3, Lcom/google/glass/app/GlassError;

    invoke-direct {v3}, Lcom/google/glass/app/GlassError;-><init>()V

    invoke-static {p1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getErrorMessageId(Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v3

    invoke-static {p1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getSecondaryErrorMessageId(Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/glass/app/GlassError;->setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v3

    invoke-static {p1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getErrorIconId(Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/glass/app/GlassError;->setIconId(I)Lcom/google/glass/app/GlassError;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getErrorOnConfirmRunnable(Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/glass/app/GlassError;->setOnConfirmRunnable(Ljava/lang/Runnable;)Lcom/google/glass/app/GlassError;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/google/glass/app/GlassError;->show(Lcom/google/glass/app/GlassActivity;)V

    goto/16 :goto_0
.end method

.method private dispatchOnMajelResult(Lcom/google/majel/proto/MajelProtos$MajelResponse;)V
    .locals 7
    .parameter "majelResponse"

    .prologue
    .line 670
    invoke-virtual {p1}, Lcom/google/majel/proto/MajelProtos$MajelResponse;->getPeanutCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 671
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->hasMajelResponse:Z

    .line 674
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->recognitionResult:Lcom/google/android/speech/alternates/CorrectableString;

    invoke-virtual {v0}, Lcom/google/android/speech/alternates/CorrectableString;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->startTime:J

    iget-wide v5, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->endOfSpeechTime:J

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->onMajelResult(Lcom/google/majel/proto/MajelProtos$MajelResponse;Ljava/lang/String;JJ)V

    .line 676
    :cond_0
    return-void
.end method

.method private dispatchOnRecognitionResult(Lcom/google/android/speech/alternates/CorrectableString;F)V
    .locals 12
    .parameter "text"
    .parameter "confidence"

    .prologue
    const/16 v11, 0xa

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 634
    iput-object p1, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->recognitionResult:Lcom/google/android/speech/alternates/CorrectableString;

    .line 635
    iget-object v5, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->prompt:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v5, v10}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 636
    iget-object v5, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->streamingTextView:Lcom/google/glass/home/search/StreamingTextView;

    invoke-virtual {v5, v9}, Lcom/google/glass/home/search/StreamingTextView;->setVisibility(I)V

    .line 637
    iget-object v5, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->streamingTextView:Lcom/google/glass/home/search/StreamingTextView;

    invoke-virtual {p0, p1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->cleanRecognitionResults(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/glass/home/search/StreamingTextView;->setFinalRecognizedText(Ljava/lang/CharSequence;)V

    .line 639
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->showProgressOnRecognitionResult()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 640
    iget-object v5, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v5}, Lcom/google/glass/widget/SliderView;->startIndeterminate()V

    .line 650
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->startTime:J

    sub-long v3, v5, v7

    .line 651
    .local v3, timeToRecognitionTotal:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->endOfSpeechTime:J

    sub-long v1, v5, v7

    .line 652
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

    const-string v8, "trigger"

    aput-object v8, v7, v11

    const/16 v8, 0xb

    iget v9, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->triggerMethod:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 660
    .local v0, eventTuple:Ljava/lang/String;
    sget-object v5, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_RECOGNITION:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p0, v5, v0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 662
    invoke-virtual {p1}, Lcom/google/android/speech/alternates/CorrectableString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->onRecognitionResult(Ljava/lang/String;)V

    .line 663
    return-void

    .line 644
    .end local v0           #eventTuple:Ljava/lang/String;
    .end local v1           #timeToRecognitionFromEndOfSpeech:J
    .end local v3           #timeToRecognitionTotal:J
    :cond_0
    iget-object v5, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v5, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 645
    iget-object v5, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v5}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    goto/16 :goto_0
.end method

.method private dispatchSetSpeechLevelSource(Lcom/google/glass/voice/network/VoiceSearchUi$SpeechLevelSource;)V
    .locals 1
    .parameter "speechLevelSource"

    .prologue
    .line 587
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/home/search/MicrophoneView;

    invoke-virtual {v0, p1}, Lcom/google/glass/home/search/MicrophoneView;->setSpeechLevelSource(Lcom/google/glass/voice/network/VoiceSearchUi$SpeechLevelSource;)V

    .line 588
    return-void
.end method

.method private dispatchShowDone()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 557
    iget-object v3, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/home/search/MicrophoneView;

    invoke-virtual {v3}, Lcom/google/glass/home/search/MicrophoneView;->showNotListening()V

    .line 560
    iget-boolean v3, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->hasMajelResponse:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->isMajelResponseExpected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 561
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->isMessageShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 562
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error to display, but error already on screen"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    iget-object v3, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v3}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    .line 568
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->startTime:J

    sub-long v1, v3, v5

    .line 569
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

    .line 575
    .local v0, eventTuple:Ljava/lang/String;
    sget-object v3, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_NO_ANSWER:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p0, v3, v0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 577
    new-instance v3, Lcom/google/glass/app/GlassError;

    invoke-direct {v3}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v4, Lcom/google/glass/home/R$string;->voice_search_no_answer:I

    invoke-virtual {v3, v4}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v3

    sget v4, Lcom/google/glass/home/R$drawable;->ic_cloud_sad_big:I

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

    .line 449
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 450
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    .line 451
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->streamingTextView:Lcom/google/glass/home/search/StreamingTextView;

    invoke-virtual {v0, v2}, Lcom/google/glass/home/search/StreamingTextView;->setVisibility(I)V

    .line 452
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->prompt:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getPromptText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/home/search/MicrophoneView;

    invoke-virtual {v0}, Lcom/google/glass/home/search/MicrophoneView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 458
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->prompt:Lcom/google/glass/widget/TypophileTextView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->animateIn(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 459
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/home/search/MicrophoneView;

    new-instance v1, Lcom/google/glass/home/voice/BaseVoiceInputActivity$4;

    invoke-direct {v1, p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity$4;-><init>(Lcom/google/glass/home/voice/BaseVoiceInputActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->animateIn(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 474
    :goto_0
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->streamingTextView:Lcom/google/glass/home/search/StreamingTextView;

    invoke-virtual {v0}, Lcom/google/glass/home/search/StreamingTextView;->reset()V

    .line 475
    return-void

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->prompt:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v0}, Lcom/google/glass/widget/TypophileTextView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 469
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->prompt:Lcom/google/glass/widget/TypophileTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/home/search/MicrophoneView;

    invoke-virtual {v0}, Lcom/google/glass/home/search/MicrophoneView;->showListening()V

    goto :goto_0
.end method

.method private dispatchShowNoSpeechDetected()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 531
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->isMessageShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 532
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No-speech error to display, but error already on screen"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :goto_0
    return-void

    .line 536
    :cond_0
    iget-object v1, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/home/search/MicrophoneView;

    invoke-virtual {v1}, Lcom/google/glass/home/search/MicrophoneView;->showNotListening()V

    .line 537
    iget-object v1, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v1}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    .line 540
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

    .line 545
    .local v0, eventTuple:Ljava/lang/String;
    sget-object v1, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_NO_SPEECH_DETECTED:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 547
    new-instance v1, Lcom/google/glass/app/GlassError;

    invoke-direct {v1}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v2, Lcom/google/glass/home/R$string;->error_no_speech_detected:I

    invoke-virtual {v1, v2}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v1

    sget v2, Lcom/google/glass/home/R$string;->error_tap_speak_again:I

    invoke-virtual {v1, v2}, Lcom/google/glass/app/GlassError;->setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v1

    sget v2, Lcom/google/glass/home/R$drawable;->ic_exclamation_big:I

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
    .line 502
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->endOfSpeechTime:J

    .line 504
    iget-object v3, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/home/search/MicrophoneView;

    invoke-virtual {v3}, Lcom/google/glass/home/search/MicrophoneView;->showNotListening()V

    .line 505
    iget-object v3, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/home/search/MicrophoneView;

    invoke-direct {p0, v3}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->animateOut(Landroid/view/View;)V

    .line 506
    iget-object v3, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->prompt:Lcom/google/glass/widget/TypophileTextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 507
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v3

    sget-object v4, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_COMPLETED:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v3, v4}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 513
    iget-object v3, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/16 v4, 0xa

    const-wide/16 v5, 0xfa

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 517
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->startTime:J

    sub-long v1, v3, v5

    .line 518
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

    .line 523
    .local v0, eventTuple:Ljava/lang/String;
    sget-object v3, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_END_OF_SPEECH:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p0, v3, v0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 524
    return-void
.end method

.method private dispatchShowRecording()V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/home/search/MicrophoneView;

    invoke-virtual {v0}, Lcom/google/glass/home/search/MicrophoneView;->showRecording()V

    .line 497
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->streamingTextView:Lcom/google/glass/home/search/StreamingTextView;

    invoke-virtual {v0}, Lcom/google/glass/home/search/StreamingTextView;->reset()V

    .line 498
    return-void
.end method

.method private dispatchUpdateRecognizedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 11
    .parameter "stableText"
    .parameter "pendingText"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 591
    iput-boolean v10, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->hasRecognitionResults:Z

    .line 593
    if-nez p1, :cond_0

    if-eqz p2, :cond_2

    .line 594
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->cleanRecognitionResults(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 595
    .local v2, stableCleaned:Ljava/lang/CharSequence;
    invoke-virtual {p0, p2}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->cleanRecognitionResults(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 597
    .local v1, pendingCleaned:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 623
    .end local v1           #pendingCleaned:Ljava/lang/CharSequence;
    .end local v2           #stableCleaned:Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 603
    .restart local v1       #pendingCleaned:Ljava/lang/CharSequence;
    .restart local v2       #stableCleaned:Ljava/lang/CharSequence;
    :cond_1
    iget-object v5, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->prompt:Lcom/google/glass/widget/TypophileTextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 604
    iget-object v5, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->streamingTextView:Lcom/google/glass/home/search/StreamingTextView;

    invoke-virtual {v5, v9}, Lcom/google/glass/home/search/StreamingTextView;->setVisibility(I)V

    .line 605
    iget-object v5, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->streamingTextView:Lcom/google/glass/home/search/StreamingTextView;

    invoke-virtual {v5, v2, v1}, Lcom/google/glass/home/search/StreamingTextView;->updateRecognizedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 609
    .end local v1           #pendingCleaned:Ljava/lang/CharSequence;
    .end local v2           #stableCleaned:Ljava/lang/CharSequence;
    :cond_2
    iget-boolean v5, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->logFirstRecognizedText:Z

    if-eqz v5, :cond_3

    .line 610
    iput-boolean v9, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->logFirstRecognizedText:Z

    .line 612
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->startTime:J

    sub-long v3, v5, v7

    .line 613
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

    .line 618
    .local v0, eventTuple:Ljava/lang/String;
    sget-object v5, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_FIRST_RECOGNITION:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p0, v5, v0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 622
    .end local v0           #eventTuple:Ljava/lang/String;
    .end local v3           #timeToFirstRecognition:J
    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->onUpdateRecognizedText()V

    goto :goto_0
.end method

.method private static getErrorIconId(Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;)I
    .locals 2
    .parameter "e"

    .prologue
    .line 739
    invoke-interface {p0}, Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;->getType()Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;->AUDIO_RECOGNIZE:Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    sget v0, Lcom/google/glass/home/R$drawable;->ic_exclamation_big:I

    .line 742
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/google/glass/home/R$drawable;->ic_cloud_sad_big:I

    goto :goto_0
.end method

.method private static getErrorMessageId(Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;)I
    .locals 2
    .parameter "e"

    .prologue
    .line 717
    invoke-interface {p0}, Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;->getType()Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;->NETWORK_RECOGNIZE:Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    sget v0, Lcom/google/glass/home/R$string;->voice_search_network_error:I

    .line 725
    :goto_0
    return v0

    .line 719
    :cond_0
    invoke-interface {p0}, Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;->getType()Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;->NO_MATCH:Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 720
    sget v0, Lcom/google/glass/home/R$string;->voice_search_no_match:I

    goto :goto_0

    .line 721
    :cond_1
    invoke-interface {p0}, Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;->getType()Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;->AUDIO_RECOGNIZE:Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 722
    sget v0, Lcom/google/glass/home/R$string;->voice_search_audio_error:I

    goto :goto_0

    .line 725
    :cond_2
    sget v0, Lcom/google/glass/home/R$string;->voice_search_server_error:I

    goto :goto_0
.end method

.method private getErrorOnConfirmRunnable(Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;)Ljava/lang/Runnable;
    .locals 2
    .parameter "e"

    .prologue
    .line 747
    invoke-interface {p1}, Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;->getType()Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;->NO_MATCH:Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;->getType()Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;->AUDIO_RECOGNIZE:Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->speakAgainRunnable:Ljava/lang/Runnable;

    .line 751
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/google/glass/util/SettingsHelper;->getGoToSettingsRunnable(Landroid/content/Context;)Ljava/lang/Runnable;

    move-result-object v0

    goto :goto_0
.end method

.method private static getSecondaryErrorMessageId(Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;)I
    .locals 2
    .parameter "e"

    .prologue
    .line 730
    invoke-interface {p0}, Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;->getType()Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;->NO_MATCH:Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;->getType()Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;->AUDIO_RECOGNIZE:Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 732
    :cond_0
    sget v0, Lcom/google/glass/home/R$string;->error_tap_speak_again:I

    .line 734
    :goto_0
    return v0

    :cond_1
    sget v0, Lcom/google/glass/home/R$string;->error_tap_connection_settings:I

    goto :goto_0
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->startTime:J

    .line 402
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/home/search/MicrophoneView;

    invoke-virtual {v0}, Lcom/google/glass/home/search/MicrophoneView;->showNotListening()V

    .line 403
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 404
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    .line 407
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->hasMajelResponse:Z

    .line 408
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->recognitionResult:Lcom/google/android/speech/alternates/CorrectableString;

    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->logFirstRecognizedText:Z

    .line 410
    return-void
.end method

.method private updateKeepScreenOn(I)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 803
    sparse-switch p1, :sswitch_data_0

    .line 815
    :goto_0
    return-void

    .line 806
    :sswitch_0
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    goto :goto_0

    .line 812
    :sswitch_1
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    goto :goto_0

    .line 803
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3 -> :sswitch_1
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method private updatePowerHelper(I)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 789
    packed-switch p1, :pswitch_data_0

    .line 800
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 795
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->userActivity()V

    goto :goto_0

    .line 789
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
    .line 819
    return-object p1
.end method

.method protected getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public abstract getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfig;
.end method

.method protected getInputTypeResId()I
    .locals 1

    .prologue
    .line 845
    const/4 v0, 0x0

    return v0
.end method

.method protected getInputTypeText()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getInputTypeResId()I

    move-result v0

    .line 488
    .local v0, resId:I
    if-nez v0, :cond_0

    .line 489
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Must provide input type text or ID."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 492
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
    .line 478
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getSpeakNowPromptResId()I

    move-result v0

    .line 479
    .local v0, resId:I
    if-nez v0, :cond_0

    .line 480
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Must provide prompt text or ID."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 483
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method protected getRecognizedTextLineCount()I
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->streamingTextView:Lcom/google/glass/home/search/StreamingTextView;

    invoke-virtual {v0}, Lcom/google/glass/home/search/StreamingTextView;->getLineCount()I

    move-result v0

    return v0
.end method

.method protected abstract getRetryVoiceConfig()Lcom/google/glass/voice/VoiceConfig;
.end method

.method protected getSpeakNowPromptResId()I
    .locals 1

    .prologue
    .line 841
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getType()I
.end method

.method protected isMajelResponseExpected()Z
    .locals 1

    .prologue
    .line 824
    const/4 v0, 0x0

    return v0
.end method

.method public onConfirm()Z
    .locals 6

    .prologue
    .line 416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->startTime:J

    sub-long v0, v2, v4

    .line 417
    .local v0, timeSinceStart:J
    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 418
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

    .line 419
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->endpointNetworkRecognizer()V

    .line 420
    const/4 v2, 0x1

    .line 422
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
    .line 429
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

    .line 433
    .local v0, eventTuple:Ljava/lang/String;
    sget-object v1, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_DISMISS:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 435
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v1

    return v1
.end method

.method protected onMajelResult(Lcom/google/majel/proto/MajelProtos$MajelResponse;Ljava/lang/String;JJ)V
    .locals 0
    .parameter "majelResponse"
    .parameter "recognitionResult"
    .parameter "startTime"
    .parameter "endOfSpeechTime"

    .prologue
    .line 681
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 375
    iget-boolean v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->hasMajelResponse:Z

    if-nez v0, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->detachVoiceSearchUi()V

    .line 382
    :cond_0
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->DISABLE_GAZE_ON_MIC:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Requesting re-enable of the GazeService after voice input complete..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/glass/gesture/EyeGestureUtils;->enableGazeServiceAsync(Landroid/content/Context;Z)V

    .line 388
    :cond_1
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPause()V

    .line 389
    return-void
.end method

.method protected onRecognitionResult(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 667
    return-void
.end method

.method protected onResume()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 320
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResume()V

    .line 322
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 323
    .local v0, content:Landroid/view/View;
    sget v5, Lcom/google/glass/home/R$id;->voice_search_selected_item:I

    invoke-virtual {p0, v5}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/glass/widget/TypophileTextView;

    .line 325
    .local v4, selectedItem:Lcom/google/glass/widget/TypophileTextView;
    sget v5, Lcom/google/glass/home/R$id;->microphone_container:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/glass/home/search/MicrophoneView;

    iput-object v5, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/home/search/MicrophoneView;

    .line 326
    sget v5, Lcom/google/glass/home/R$id;->voice_search_prompt:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/glass/widget/TypophileTextView;

    iput-object v5, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->prompt:Lcom/google/glass/widget/TypophileTextView;

    .line 327
    sget v5, Lcom/google/glass/home/R$id;->streaming_text:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/glass/home/search/StreamingTextView;

    iput-object v5, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->streamingTextView:Lcom/google/glass/home/search/StreamingTextView;

    .line 328
    sget v5, Lcom/google/glass/home/R$id;->progress_slider:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/glass/widget/SliderView;

    iput-object v5, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    .line 331
    invoke-direct {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->reset()V

    .line 333
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 334
    .local v3, intent:Landroid/content/Intent;
    if-eqz v3, :cond_1

    .line 335
    const-string v5, "trigger_method"

    invoke-virtual {v3, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->triggerMethod:I

    .line 341
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getGlassApplication()Lcom/google/glass/app/GlassApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/app/GlassApplication;->getConnectionState()Lcom/google/glass/util/InetConnectionState;

    move-result-object v2

    .line 342
    .local v2, inetState:Lcom/google/glass/util/InetConnectionState;
    invoke-virtual {v2}, Lcom/google/glass/util/InetConnectionState;->isConnected()Z

    move-result v5

    if-nez v5, :cond_2

    .line 343
    iget-object v5, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->microphone:Lcom/google/glass/home/search/MicrophoneView;

    invoke-virtual {v5}, Lcom/google/glass/home/search/MicrophoneView;->showNotListening()V

    .line 344
    new-instance v5, Lcom/google/glass/app/GlassError;

    invoke-direct {v5}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v6, Lcom/google/glass/home/R$string;->voice_network_connectivity:I

    invoke-virtual {v5, v6}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v5

    sget v6, Lcom/google/glass/home/R$string;->error_tap_connection_settings:I

    invoke-virtual {v5, v6}, Lcom/google/glass/app/GlassError;->setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v5

    sget v6, Lcom/google/glass/home/R$drawable;->ic_cloud_sad_big:I

    invoke-virtual {v5, v6}, Lcom/google/glass/app/GlassError;->setIconId(I)Lcom/google/glass/app/GlassError;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v5

    sget-object v6, Lcom/google/glass/app/GlassError$OnConfirmAction;->GO_TO_SETTINGS:Lcom/google/glass/app/GlassError$OnConfirmAction;

    invoke-virtual {v5, v6}, Lcom/google/glass/app/GlassError;->setOnConfirmAction(Lcom/google/glass/app/GlassError$OnConfirmAction;)Lcom/google/glass/app/GlassError;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/google/glass/app/GlassError;->show(Lcom/google/glass/app/GlassActivity;)V

    .line 371
    :cond_0
    :goto_1
    return-void

    .line 337
    .end local v2           #inetState:Lcom/google/glass/util/InetConnectionState;
    :cond_1
    iput v10, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->triggerMethod:I

    goto :goto_0

    .line 354
    .restart local v2       #inetState:Lcom/google/glass/util/InetConnectionState;
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getInputTypeText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    const-string v5, "id"

    iget-wide v6, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->startTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "type"

    aput-object v8, v7, v10

    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    const/4 v8, 0x2

    const-string v9, "trigger"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget v9, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->triggerMethod:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, eventTuple:Ljava/lang/String;
    sget-object v5, Lcom/google/glass/logging/UserEventAction;->VOICE_SEARCH_STARTED:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p0, v5, v1}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 364
    new-instance v5, Lcom/google/glass/util/PowerHelper;

    invoke-direct {v5, p0}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 366
    sget-object v5, Lcom/google/glass/util/Labs$Feature;->DISABLE_GAZE_ON_MIC:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v5}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Requesting disable of the GazeService during voice input..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-static {p0, v10}, Lcom/google/glass/gesture/EyeGestureUtils;->enableGazeServiceAsync(Landroid/content/Context;Z)V

    goto :goto_1
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 307
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onStart()V

    .line 312
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 313
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    const-string v1, "should_play_initial_sound"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_PENDING:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 316
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->finish()V

    .line 396
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onStop()V

    .line 397
    return-void
.end method

.method protected onUpdateRecognizedText()V
    .locals 0

    .prologue
    .line 627
    return-void
.end method

.method public onVoiceServiceConnected()V
    .locals 1

    .prologue
    .line 440
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onVoiceServiceConnected()V

    .line 445
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;

    invoke-virtual {p0, v0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->attachVoiceSearchUi(Lcom/google/glass/voice/network/VoiceSearchUi;)V

    .line 446
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 302
    sget v0, Lcom/google/glass/home/R$layout;->voice_search_activity:I

    return v0
.end method

.method protected showNoSpeechDetected()V
    .locals 2

    .prologue
    .line 850
    iget-object v0, p0, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 851
    return-void
.end method

.method protected showProgressOnRecognitionResult()Z
    .locals 1

    .prologue
    .line 527
    const/4 v0, 0x1

    return v0
.end method
