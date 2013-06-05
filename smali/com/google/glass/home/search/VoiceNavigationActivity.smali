.class public Lcom/google/glass/home/search/VoiceNavigationActivity;
.super Lcom/google/glass/home/voice/BaseVoiceInputActivity;
.source "VoiceNavigationActivity.java"


# static fields
.field private static final GET_DIRECTIONS_PREFIX_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-string v0, "^(\\s?you\\s?|\\s?get\\s?)?(\\s?(di|e)rections?\\s?)?(\\s?to\\s?)?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/search/VoiceNavigationActivity;->GET_DIRECTIONS_PREFIX_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;-><init>()V

    return-void
.end method

.method static stripNavigationQueryPrefix(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "query"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 88
    if-eqz p0, :cond_0

    .line 89
    sget-object v0, Lcom/google/glass/home/search/VoiceNavigationActivity;->GET_DIRECTIONS_PREFIX_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 91
    .end local p0
    :cond_0
    return-object p0
.end method


# virtual methods
.method public cleanRecognitionResults(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "results"

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/google/glass/home/search/VoiceNavigationActivity;->isRetry()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    invoke-static {p1}, Lcom/google/glass/home/search/VoiceNavigationActivity;->stripNavigationQueryPrefix(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0
.end method

.method public getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/google/glass/home/search/VoiceNavigationActivity;->isMessageShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->OFF:Lcom/google/glass/voice/VoiceConfigDescriptor;

    .line 54
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->NAVIGATION:Lcom/google/glass/voice/VoiceConfigDescriptor;

    goto :goto_0
.end method

.method protected getInputTypeResId()I
    .locals 1

    .prologue
    .line 117
    sget v0, Lcom/google/glass/home/R$string;->voice_menu_item_navigation_on:I

    return v0
.end method

.method protected getRetryVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->NAVIGATION:Lcom/google/glass/voice/VoiceConfigDescriptor;

    return-object v0
.end method

.method protected getSpeakNowPromptResId()I
    .locals 1

    .prologue
    .line 112
    sget v0, Lcom/google/glass/home/R$string;->voice_navigation_speak_now:I

    return v0
.end method

.method protected getType()I
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method protected onRecognitionResult(Ljava/lang/String;)V
    .locals 4
    .parameter "text"

    .prologue
    const/4 v3, 0x0

    .line 68
    invoke-virtual {p0}, Lcom/google/glass/home/search/VoiceNavigationActivity;->isRetry()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 69
    .local v0, strippedText:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-nez v1, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/google/glass/home/search/VoiceNavigationActivity;->showNoSpeechDetected()V

    .line 78
    :goto_1
    return-void

    .line 68
    .end local v0           #strippedText:Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/google/glass/home/search/VoiceNavigationActivity;->stripNavigationQueryPrefix(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 74
    .restart local v0       #strippedText:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/home/search/VoiceNavigationActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 75
    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/google/glass/maps/NavigationLauncher;->navigate(Ljava/lang/String;Landroid/content/Context;Z)Z

    .line 76
    invoke-virtual {p0, v3, v3}, Lcom/google/glass/home/search/VoiceNavigationActivity;->overridePendingTransition(II)V

    .line 77
    invoke-virtual {p0}, Lcom/google/glass/home/search/VoiceNavigationActivity;->finish()V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Lcom/google/glass/home/voice/BaseVoiceInputActivity;->onResume()V

    .line 40
    invoke-static {p0}, Lcom/google/glass/maps/NavigationLauncher;->wakeUpNavigation(Landroid/content/Context;)V

    .line 41
    return-void
.end method
