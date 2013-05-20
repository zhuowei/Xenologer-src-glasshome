.class public Lcom/google/glass/voice/StaticSensoryRecognizer;
.super Lcom/google/glass/voice/Sensory;
.source "StaticSensoryRecognizer.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/google/glass/voice/StaticSensoryRecognizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/StaticSensoryRecognizer;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "recogFilePath"
    .parameter "searchFilePath"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/glass/voice/Sensory;-><init>()V

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/voice/StaticSensoryRecognizer;->nativeInitPhrasespot(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/voice/StaticSensoryRecognizer;->sensoryContext:J

    .line 18
    return-void
.end method

.method public static newStaticSensoryRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/Sensory;
    .locals 3
    .parameter "context"
    .parameter "config"

    .prologue
    .line 21
    new-instance v0, Lcom/google/glass/voice/StaticSensoryRecognizer;

    iget-object v1, p1, Lcom/google/glass/voice/VoiceConfig;->recogFile:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/google/glass/voice/StaticSensoryRecognizer;->getPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/google/glass/voice/VoiceConfig;->searchFile:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/google/glass/voice/StaticSensoryRecognizer;->getPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/glass/voice/StaticSensoryRecognizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method stringToCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;
    .locals 7
    .parameter "str"

    .prologue
    const/4 v2, 0x0

    .line 27
    if-nez p1, :cond_0

    move-object v0, v2

    .line 39
    :goto_0
    return-object v0

    .line 31
    :cond_0
    sget-object v3, Lcom/google/glass/voice/VoiceCommand;->staticCommands:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceCommand;

    .line 32
    .local v0, c:Lcom/google/glass/voice/VoiceCommand;
    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceCommand;->getLiteral()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 37
    .end local v0           #c:Lcom/google/glass/voice/VoiceCommand;
    :cond_2
    sget-object v3, Lcom/google/glass/voice/StaticSensoryRecognizer;->TAG:Ljava/lang/String;

    const-string v4, "Unknown literal recognized by Sensory"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 v3, 0x6

    sget-object v4, Lcom/google/glass/voice/StaticSensoryRecognizer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown literal: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/glass/util/LogHelper;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 39
    goto :goto_0
.end method
