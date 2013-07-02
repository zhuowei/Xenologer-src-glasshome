.class Lcom/google/glass/voice/VoiceEngine$InputEffectsConfigChangeListener;
.super Ljava/lang/Object;
.source "VoiceEngine.java"

# interfaces
.implements Lcom/google/glass/voice/VoiceEngine$ConfigChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VoiceEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputEffectsConfigChangeListener"
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine$InputEffectsConfigChangeListener;->context:Landroid/content/Context;

    .line 268
    return-void
.end method

.method private setInputEffectsEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allow_input_effects="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, parameters:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine$InputEffectsConfigChangeListener;->context:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 284
    return-void

    .line 282
    .end local v0           #parameters:Ljava/lang/String;
    :cond_0
    const-string v1, "0"

    goto :goto_0
.end method


# virtual methods
.method public onConfigChange(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/VoiceConfig;)V
    .locals 2
    .parameter "from"
    .parameter "to"

    .prologue
    .line 272
    iget-object v0, p1, Lcom/google/glass/voice/VoiceConfig;->type:Lcom/google/glass/voice/VoiceConfig$Type;

    sget-object v1, Lcom/google/glass/voice/VoiceConfig$Type;->GRECO:Lcom/google/glass/voice/VoiceConfig$Type;

    if-eq v0, v1, :cond_1

    iget-object v0, p2, Lcom/google/glass/voice/VoiceConfig;->type:Lcom/google/glass/voice/VoiceConfig$Type;

    sget-object v1, Lcom/google/glass/voice/VoiceConfig$Type;->GRECO:Lcom/google/glass/voice/VoiceConfig$Type;

    if-ne v0, v1, :cond_1

    .line 274
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceEngine$InputEffectsConfigChangeListener;->setInputEffectsEnabled(Z)V

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    iget-object v0, p1, Lcom/google/glass/voice/VoiceConfig;->type:Lcom/google/glass/voice/VoiceConfig$Type;

    sget-object v1, Lcom/google/glass/voice/VoiceConfig$Type;->GRECO:Lcom/google/glass/voice/VoiceConfig$Type;

    if-ne v0, v1, :cond_0

    iget-object v0, p2, Lcom/google/glass/voice/VoiceConfig;->type:Lcom/google/glass/voice/VoiceConfig$Type;

    sget-object v1, Lcom/google/glass/voice/VoiceConfig$Type;->GRECO:Lcom/google/glass/voice/VoiceConfig$Type;

    if-eq v0, v1, :cond_0

    .line 277
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceEngine$InputEffectsConfigChangeListener;->setInputEffectsEnabled(Z)V

    goto :goto_0
.end method
