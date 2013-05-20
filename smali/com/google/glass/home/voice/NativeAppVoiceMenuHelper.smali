.class public Lcom/google/glass/home/voice/NativeAppVoiceMenuHelper;
.super Ljava/lang/Object;
.source "NativeAppVoiceMenuHelper.java"


# static fields
.field private static final instance:Lcom/google/glass/home/voice/NativeAppVoiceMenuHelper;


# instance fields
.field private currentCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mainMenuConfig:Lcom/google/glass/voice/VoiceConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/google/glass/home/voice/NativeAppVoiceMenuHelper;

    invoke-direct {v0}, Lcom/google/glass/home/voice/NativeAppVoiceMenuHelper;-><init>()V

    sput-object v0, Lcom/google/glass/home/voice/NativeAppVoiceMenuHelper;->instance:Lcom/google/glass/home/voice/NativeAppVoiceMenuHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static getInstance()Lcom/google/glass/home/voice/NativeAppVoiceMenuHelper;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/glass/home/voice/NativeAppVoiceMenuHelper;->instance:Lcom/google/glass/home/voice/NativeAppVoiceMenuHelper;

    return-object v0
.end method


# virtual methods
.method protected createMainMenuConfig(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 54
    invoke-virtual {p0, p1}, Lcom/google/glass/home/voice/NativeAppVoiceMenuHelper;->getNativeAppCommands(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/voice/NativeAppVoiceMenuHelper;->currentCommands:Ljava/util/List;

    .line 55
    const/4 v0, 0x2

    new-array v1, v0, [Lcom/google/glass/voice/VoiceConfig;

    invoke-static {}, Lcom/google/glass/voice/VoiceConfig;->getMainMenuConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    aput-object v0, v1, v4

    const/4 v2, 0x1

    const-string v3, "NATIVE_APP_COMMANDS"

    iget-object v0, p0, Lcom/google/glass/home/voice/NativeAppVoiceMenuHelper;->currentCommands:Ljava/util/List;

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, v3, v0, v4}, Lcom/google/glass/voice/VoiceConfig;->newCustomVoiceConfig(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/google/glass/voice/VoiceConfig;->newHybridVoiceConfig([Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/voice/NativeAppVoiceMenuHelper;->mainMenuConfig:Lcom/google/glass/voice/VoiceConfig;

    .line 58
    return-void
.end method

.method public getMainMenuConfig(Landroid/content/Context;)Lcom/google/glass/voice/VoiceConfig;
    .locals 2
    .parameter "context"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/glass/home/voice/NativeAppVoiceMenuHelper;->mainMenuConfig:Lcom/google/glass/voice/VoiceConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/home/voice/NativeAppVoiceMenuHelper;->currentCommands:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/google/glass/home/voice/NativeAppVoiceMenuHelper;->getNativeAppCommands(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/glass/home/voice/NativeAppVoiceMenuHelper;->createMainMenuConfig(Landroid/content/Context;)V

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/google/glass/home/voice/NativeAppVoiceMenuHelper;->mainMenuConfig:Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method public getNativeAppCommands(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/google/glass/home/voice/NativeAppVoiceMenuHelper;->getTriggers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 32
    .local v3, triggers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 33
    .local v0, commands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;

    .line 34
    .local v2, trigger:Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;
    invoke-virtual {v2}, Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;->getKeyword()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 37
    .end local v2           #trigger:Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;
    :cond_0
    return-object v0
.end method

.method public getTriggers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcom/google/android/glass/app/VoiceTriggerManager;

    invoke-direct {v0, p1}, Lcom/google/android/glass/app/VoiceTriggerManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/glass/app/VoiceTriggerManager;->load()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
