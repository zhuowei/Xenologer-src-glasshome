.class public Lcom/google/glass/voice/network/VoiceSearchContainer$SpeechSettingsImpl;
.super Ljava/lang/Object;
.source "VoiceSearchContainer.java"

# interfaces
.implements Lcom/google/android/speech/SpeechSettings;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/network/VoiceSearchContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpeechSettingsImpl"
.end annotation


# static fields
.field private static final INSTALL_ID_PREF:Ljava/lang/String; = "install-id"


# instance fields
.field private final config:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;)V
    .locals 0
    .parameter "context"
    .parameter "config"

    .prologue
    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    iput-object p1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer$SpeechSettingsImpl;->context:Landroid/content/Context;

    .line 537
    iput-object p2, p0, Lcom/google/glass/voice/network/VoiceSearchContainer$SpeechSettingsImpl;->config:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    .line 538
    return-void
.end method

.method private declared-synchronized createInstallId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 584
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 585
    .local v0, installId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/glass/voice/network/VoiceSearchContainer$SpeechSettingsImpl;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "install-id"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    monitor-exit p0

    return-object v0

    .line 584
    .end local v0           #installId:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public getConfiguration()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer$SpeechSettingsImpl;->config:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    return-object v0
.end method

.method public getInstallId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 576
    invoke-virtual {p0}, Lcom/google/glass/voice/network/VoiceSearchContainer$SpeechSettingsImpl;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "install-id"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 577
    .local v0, installId:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 578
    invoke-direct {p0}, Lcom/google/glass/voice/network/VoiceSearchContainer$SpeechSettingsImpl;->createInstallId()Ljava/lang/String;

    move-result-object v0

    .line 580
    :cond_0
    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 571
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer$SpeechSettingsImpl;->context:Landroid/content/Context;

    const-string v1, "search_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getSpokenLocaleBcp47()Ljava/lang/String;
    .locals 1

    .prologue
    .line 567
    const-string v0, "en-US"

    return-object v0
.end method

.method public isDebugAudioLoggingEnabled()Z
    .locals 1

    .prologue
    .line 542
    const/4 v0, 0x0

    return v0
.end method

.method public isPersonalizationEnabled()Z
    .locals 1

    .prologue
    .line 562
    const/4 v0, 0x0

    return v0
.end method

.method public isProfanityFilterEnabled()Z
    .locals 1

    .prologue
    .line 557
    const/4 v0, 0x0

    return v0
.end method

.method public isSoundSearchEnabled()Z
    .locals 1

    .prologue
    .line 547
    const/4 v0, 0x0

    return v0
.end method

.method public setSpokenLanguageBcp47(Ljava/lang/String;Z)V
    .locals 0
    .parameter "s"
    .parameter "b"

    .prologue
    .line 552
    return-void
.end method
