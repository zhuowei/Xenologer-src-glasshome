.class Lcom/google/glass/voice/network/VoiceSearchContainer$SpeechSettingsImpl;
.super Ljava/lang/Object;
.source "VoiceSearchContainer.java"

# interfaces
.implements Lcom/google/android/speech/SpeechSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/network/VoiceSearchContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeechSettingsImpl"
.end annotation


# static fields
.field private static final INSTALL_ID_PREF:Ljava/lang/String; = "install-id"


# instance fields
.field private final config:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

.field final synthetic this$0:Lcom/google/glass/voice/network/VoiceSearchContainer;


# direct methods
.method public constructor <init>(Lcom/google/glass/voice/network/VoiceSearchContainer;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;)V
    .locals 0
    .parameter
    .parameter "config"

    .prologue
    .line 538
    iput-object p1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer$SpeechSettingsImpl;->this$0:Lcom/google/glass/voice/network/VoiceSearchContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    iput-object p2, p0, Lcom/google/glass/voice/network/VoiceSearchContainer$SpeechSettingsImpl;->config:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    .line 540
    return-void
.end method

.method private declared-synchronized createInstallId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 585
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 586
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

    .line 587
    monitor-exit p0

    return-object v0

    .line 585
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
    .line 592
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer$SpeechSettingsImpl;->config:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    return-object v0
.end method

.method public getInstallId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 577
    invoke-virtual {p0}, Lcom/google/glass/voice/network/VoiceSearchContainer$SpeechSettingsImpl;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "install-id"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, installId:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 579
    invoke-direct {p0}, Lcom/google/glass/voice/network/VoiceSearchContainer$SpeechSettingsImpl;->createInstallId()Ljava/lang/String;

    move-result-object v0

    .line 581
    :cond_0
    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer$SpeechSettingsImpl;->this$0:Lcom/google/glass/voice/network/VoiceSearchContainer;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getSpokenLocaleBcp47()Ljava/lang/String;
    .locals 1

    .prologue
    .line 568
    const-string v0, "en-US"

    return-object v0
.end method

.method public isDebugAudioLoggingEnabled()Z
    .locals 1

    .prologue
    .line 544
    const/4 v0, 0x0

    return v0
.end method

.method public isPersonalizationEnabled()Z
    .locals 1

    .prologue
    .line 563
    const/4 v0, 0x0

    return v0
.end method

.method public isProfanityFilterEnabled()Z
    .locals 1

    .prologue
    .line 558
    const/4 v0, 0x1

    return v0
.end method

.method public isSoundSearchEnabled()Z
    .locals 1

    .prologue
    .line 549
    const/4 v0, 0x0

    return v0
.end method

.method public setSpokenLanguageBcp47(Ljava/lang/String;Z)V
    .locals 0
    .parameter "s"
    .parameter "b"

    .prologue
    .line 554
    return-void
.end method
