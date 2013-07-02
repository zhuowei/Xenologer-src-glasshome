.class public Lcom/google/glass/home/search/VoiceNavigationActivity;
.super Lcom/google/glass/voice/BaseVoiceInputActivity;
.source "VoiceNavigationActivity.java"


# static fields
.field private static final GET_DIRECTIONS_PREFIX_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
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
    .line 19
    invoke-direct {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;-><init>()V

    return-void
.end method

.method static stripNavigationQueryPrefix(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "query"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 95
    if-eqz p0, :cond_0

    .line 96
    sget-object v0, Lcom/google/glass/home/search/VoiceNavigationActivity;->GET_DIRECTIONS_PREFIX_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 98
    .end local p0
    :cond_0
    return-object p0
.end method


# virtual methods
.method public cleanRecognitionResults(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "results"

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/google/glass/home/search/VoiceNavigationActivity;->isRetry()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
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
    .line 50
    invoke-virtual {p0}, Lcom/google/glass/home/search/VoiceNavigationActivity;->isMessageShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->OFF:Lcom/google/glass/voice/VoiceConfigDescriptor;

    .line 56
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->NAVIGATION:Lcom/google/glass/voice/VoiceConfigDescriptor;

    goto :goto_0
.end method

.method protected getInputTypeResId()I
    .locals 1

    .prologue
    .line 124
    sget v0, Lcom/google/glass/home/R$string;->voice_menu_item_navigation_on:I

    return v0
.end method

.method protected getRetryVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->NAVIGATION:Lcom/google/glass/voice/VoiceConfigDescriptor;

    return-object v0
.end method

.method protected getSpeakNowPromptResId()I
    .locals 1

    .prologue
    .line 119
    sget v0, Lcom/google/glass/home/R$string;->voice_navigation_speak_now:I

    return v0
.end method

.method protected getType()I
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method protected onRecognitionResult(Ljava/lang/String;)V
    .locals 5
    .parameter "text"

    .prologue
    const/4 v4, 0x0

    .line 70
    invoke-virtual {p0}, Lcom/google/glass/home/search/VoiceNavigationActivity;->isRetry()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 71
    .local v1, strippedText:Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v2

    if-nez v2, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/google/glass/home/search/VoiceNavigationActivity;->showNoSpeechDetected()V

    .line 85
    :goto_1
    return-void

    .line 70
    .end local v1           #strippedText:Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/google/glass/home/search/VoiceNavigationActivity;->stripNavigationQueryPrefix(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 76
    .restart local v1       #strippedText:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/home/search/VoiceNavigationActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v2

    sget-object v3, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v2, v3}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 77
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/glass/maps/NavigationLauncher;->getNavigationIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 79
    .local v0, navigationIntent:Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 81
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 83
    :cond_2
    invoke-virtual {p0, v4, v4}, Lcom/google/glass/home/search/VoiceNavigationActivity;->overridePendingTransition(II)V

    .line 84
    invoke-virtual {p0}, Lcom/google/glass/home/search/VoiceNavigationActivity;->finish()V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->onResume()V

    .line 42
    invoke-static {p0}, Lcom/google/glass/maps/NavigationLauncher;->wakeUpNavigation(Landroid/content/Context;)V

    .line 43
    return-void
.end method
