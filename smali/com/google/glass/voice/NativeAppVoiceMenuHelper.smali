.class public Lcom/google/glass/voice/NativeAppVoiceMenuHelper;
.super Ljava/lang/Object;
.source "NativeAppVoiceMenuHelper.java"


# static fields
.field private static final instance:Lcom/google/glass/voice/NativeAppVoiceMenuHelper;


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
    .line 16
    new-instance v0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;

    invoke-direct {v0}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;-><init>()V

    sput-object v0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->instance:Lcom/google/glass/voice/NativeAppVoiceMenuHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static getInstance()Lcom/google/glass/voice/NativeAppVoiceMenuHelper;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->instance:Lcom/google/glass/voice/NativeAppVoiceMenuHelper;

    return-object v0
.end method

.method private getTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "commandString"

    .prologue
    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTags([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "commandStrings"

    .prologue
    .line 71
    array-length v3, p1

    new-array v2, v3, [Ljava/lang/String;

    .line 72
    .local v2, tags:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 73
    aget-object v0, p1, v1

    .line 74
    .local v0, commandString:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v0           #commandString:Ljava/lang/String;
    :cond_0
    return-object v2
.end method


# virtual methods
.method protected createMainMenuConfig(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 53
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getNativeAppCommands(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->currentCommands:Ljava/util/List;

    .line 54
    iget-object v2, p0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->currentCommands:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    invoke-static {}, Lcom/google/glass/voice/VoiceConfig;->getMainMenuConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->mainMenuConfig:Lcom/google/glass/voice/VoiceConfig;

    .line 68
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v2, p0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->currentCommands:Ljava/util/List;

    new-array v3, v4, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 58
    .local v0, commandStrings:[Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getTags([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, commandTags:[Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/glass/voice/VoiceConfig;

    invoke-static {}, Lcom/google/glass/voice/VoiceConfig;->getMainMenuConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v4, "NATIVE_APP_COMMANDS"

    invoke-static {p1, v4, v0, v1}, Lcom/google/glass/voice/VoiceConfig;->newCustomVoiceConfig(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/google/glass/voice/VoiceConfig;->newHybridVoiceConfig([Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->mainMenuConfig:Lcom/google/glass/voice/VoiceConfig;

    goto :goto_0
.end method

.method public getMainMenuConfig(Landroid/content/Context;)Lcom/google/glass/voice/VoiceConfig;
    .locals 2
    .parameter "context"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->mainMenuConfig:Lcom/google/glass/voice/VoiceConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->currentCommands:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getNativeAppCommands(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->createMainMenuConfig(Landroid/content/Context;)V

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->mainMenuConfig:Lcom/google/glass/voice/VoiceConfig;

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
    .line 30
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getTriggers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 31
    .local v3, triggers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 32
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

    .line 33
    .local v2, trigger:Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;
    invoke-virtual {v2}, Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;->getKeyword()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 36
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
    .line 40
    new-instance v0, Lcom/google/android/glass/app/VoiceTriggerManager;

    invoke-direct {v0, p1}, Lcom/google/android/glass/app/VoiceTriggerManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/glass/app/VoiceTriggerManager;->load()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public matches(Lcom/google/glass/voice/VoiceCommand;Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;)Z
    .locals 2
    .parameter "command"
    .parameter "trigger"

    .prologue
    .line 89
    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceCommand;->getSemanticTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public newVoiceCommand(Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;)Lcom/google/glass/voice/VoiceCommand;
    .locals 2
    .parameter "trigger"

    .prologue
    .line 84
    new-instance v0, Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {p1}, Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/voice/VoiceCommand;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
