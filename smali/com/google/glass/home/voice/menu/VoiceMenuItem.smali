.class public abstract Lcom/google/glass/home/voice/menu/VoiceMenuItem;
.super Ljava/lang/Object;
.source "VoiceMenuItem.java"


# instance fields
.field private hasTriggered:Z

.field protected final requirements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/home/voice/menu/Requirement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/home/voice/menu/VoiceMenuItem;-><init>(Ljava/util/List;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/home/voice/menu/Requirement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, requirements:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/home/voice/menu/Requirement;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->requirements:Ljava/util/List;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->hasTriggered:Z

    .line 21
    return-void
.end method


# virtual methods
.method public getContextIconId()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public getContextLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getLabel(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public isEnabled(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;)Z
    .locals 3
    .parameter "environment"

    .prologue
    .line 31
    iget-object v2, p0, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->requirements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/home/voice/menu/Requirement;

    .line 32
    .local v1, requirement:Lcom/google/glass/home/voice/menu/Requirement;
    invoke-interface {v1, p1}, Lcom/google/glass/home/voice/menu/Requirement;->isSatisfied(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 33
    const/4 v2, 0x0

    .line 37
    .end local v1           #requirement:Lcom/google/glass/home/voice/menu/Requirement;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public abstract matches(Lcom/google/glass/voice/VoiceCommand;)Z
.end method

.method public abstract onTrigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public trigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V
    .locals 3
    .parameter "environment"
    .parameter "spoken"

    .prologue
    .line 41
    iget-boolean v2, p0, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->hasTriggered:Z

    if-eqz v2, :cond_0

    .line 53
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v2, p0, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->requirements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/home/voice/menu/Requirement;

    .line 45
    .local v1, requirement:Lcom/google/glass/home/voice/menu/Requirement;
    invoke-interface {v1, p1}, Lcom/google/glass/home/voice/menu/Requirement;->isSatisfied(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 46
    invoke-interface {v1, p1}, Lcom/google/glass/home/voice/menu/Requirement;->getError(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;)Lcom/google/glass/app/GlassError;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->showError(Lcom/google/glass/app/GlassError;)V

    goto :goto_0

    .line 51
    .end local v1           #requirement:Lcom/google/glass/home/voice/menu/Requirement;
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->hasTriggered:Z

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->onTrigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V

    goto :goto_0
.end method
