.class final Lcom/google/glass/voice/VoiceConfig$3;
.super Lcom/google/glass/voice/VoiceConfig;
.source "VoiceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VoiceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getRecognizer(Landroid/content/Context;)Lcom/google/glass/voice/Sensory;
    .locals 2
    .parameter "context"

    .prologue
    .line 79
    invoke-static {p1}, Lcom/google/glass/voice/VoiceService;->getPlusShareTargetEntities(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    .line 81
    .local v0, plusShareTargetEntities:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    const/4 v1, 0x0

    .line 85
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p1, p0, v0}, Lcom/google/glass/voice/Sensory;->newEntityRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;Ljava/util/Collection;)Lcom/google/glass/voice/Sensory;

    move-result-object v1

    goto :goto_0
.end method
