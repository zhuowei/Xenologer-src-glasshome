.class public Lcom/google/glass/voice/CommandRecognizerLoader;
.super Ljava/lang/Object;
.source "CommandRecognizerLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final loadedRecognizers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/glass/voice/VoiceConfig;",
            "Lcom/google/glass/voice/HotwordRecognizer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/google/glass/voice/CommandRecognizerLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/CommandRecognizerLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->loadedRecognizers:Ljava/util/Map;

    .line 24
    iput-object p1, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->context:Landroid/content/Context;

    .line 25
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v2, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->loadedRecognizers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceConfig;

    .line 92
    .local v0, config:Lcom/google/glass/voice/VoiceConfig;
    sget-object v2, Lcom/google/glass/voice/CommandRecognizerLoader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Command recognizer resources leaked for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    .end local v0           #config:Lcom/google/glass/voice/VoiceConfig;
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 96
    return-void
.end method

.method public getRecognizer(Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/HotwordRecognizer;
    .locals 1
    .parameter "config"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->loadedRecognizers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/CommandRecognizerLoader;->load(Lcom/google/glass/voice/VoiceConfig;)V

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->loadedRecognizers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/HotwordRecognizer;

    return-object v0
.end method

.method public load(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 3
    .parameter "config"

    .prologue
    .line 45
    iget-object v2, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->context:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/google/glass/voice/VoiceConfig;->getHotwordRecognizer(Landroid/content/Context;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v0

    .line 52
    .local v0, newRecognizer:Lcom/google/glass/voice/HotwordRecognizer;
    iget-object v2, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->loadedRecognizers:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/HotwordRecognizer;

    .line 53
    .local v1, previousRecognizer:Lcom/google/glass/voice/HotwordRecognizer;
    if-eqz v1, :cond_0

    .line 54
    invoke-interface {v1}, Lcom/google/glass/voice/HotwordRecognizer;->destroy()V

    .line 56
    :cond_0
    return-void
.end method

.method public varargs load([Lcom/google/glass/voice/VoiceConfig;)V
    .locals 4
    .parameter "configs"

    .prologue
    .line 64
    move-object v0, p1

    .local v0, arr$:[Lcom/google/glass/voice/VoiceConfig;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 65
    .local v3, voiceConfig:Lcom/google/glass/voice/VoiceConfig;
    invoke-virtual {p0, v3}, Lcom/google/glass/voice/CommandRecognizerLoader;->load(Lcom/google/glass/voice/VoiceConfig;)V

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    .end local v3           #voiceConfig:Lcom/google/glass/voice/VoiceConfig;
    :cond_0
    return-void
.end method

.method public unload(Ljava/util/Collection;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/google/glass/voice/VoiceConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, configs:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/google/glass/voice/VoiceConfig;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceConfig;

    .line 72
    .local v0, config:Lcom/google/glass/voice/VoiceConfig;
    iget-object v3, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->loadedRecognizers:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/voice/HotwordRecognizer;

    .line 73
    .local v2, recognizer:Lcom/google/glass/voice/HotwordRecognizer;
    if-eqz v2, :cond_0

    .line 74
    invoke-interface {v2}, Lcom/google/glass/voice/HotwordRecognizer;->destroy()V

    goto :goto_0

    .line 76
    :cond_0
    sget-object v3, Lcom/google/glass/voice/CommandRecognizerLoader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No recognizer to unload for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 79
    .end local v0           #config:Lcom/google/glass/voice/VoiceConfig;
    .end local v2           #recognizer:Lcom/google/glass/voice/HotwordRecognizer;
    :cond_1
    return-void
.end method

.method public unloadAll()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->loadedRecognizers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/CommandRecognizerLoader;->unload(Ljava/util/Collection;)V

    .line 85
    return-void
.end method
