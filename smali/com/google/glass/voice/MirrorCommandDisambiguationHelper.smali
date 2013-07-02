.class public Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;
.super Ljava/lang/Object;
.source "MirrorCommandDisambiguationHelper.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final disambiguationConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;",
            "Lcom/google/glass/voice/VoiceConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;->disambiguationConfigs:Ljava/util/Map;

    .line 22
    iput-object p1, p0, Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;->context:Landroid/content/Context;

    .line 23
    return-void
.end method

.method private static getIds(Ljava/util/List;)[Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, shareTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 46
    .local v1, ids:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 47
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_0
    return-object v1
.end method

.method private static getSpeakableNames(Ljava/util/List;)[Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, shareTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    .line 54
    .local v0, displayNames:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 55
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlex/glass/common/proto/Entity;

    .line 56
    .local v2, shareTarget:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/Entity;->hasSpeakableName()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/Entity;->getSpeakableName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 54
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    goto :goto_1

    .line 62
    .end local v2           #shareTarget:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_1
    return-object v0
.end method


# virtual methods
.method getAllConfigs()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/glass/voice/VoiceConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;->disambiguationConfigs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getConfig(Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;)Lcom/google/glass/voice/VoiceConfig;
    .locals 1
    .parameter "commandType"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;->disambiguationConfigs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method updateConfigs(Lcom/google/common/collect/ListMultimap;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ListMultimap",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, commandTargets:Lcom/google/common/collect/ListMultimap;,"Lcom/google/common/collect/ListMultimap<Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;Lcom/google/googlex/glass/common/proto/Entity;>;"
    iget-object v6, p0, Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;->disambiguationConfigs:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 32
    invoke-interface {p1}, Lcom/google/common/collect/ListMultimap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    .line 33
    .local v0, commandType:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;
    invoke-interface {p1, v0}, Lcom/google/common/collect/ListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 34
    .local v3, shareTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 35
    invoke-static {v3}, Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;->getSpeakableNames(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, names:[Ljava/lang/String;
    invoke-static {v3}, Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;->getIds(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v4

    .line 37
    .local v4, tags:[Ljava/lang/String;
    iget-object v6, p0, Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;->context:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_DISAMIGUATION"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2, v4}, Lcom/google/glass/voice/VoiceConfig;->newCustomVoiceConfig(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v5

    .line 39
    .local v5, voiceConfig:Lcom/google/glass/voice/VoiceConfig;
    iget-object v6, p0, Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;->disambiguationConfigs:Ljava/util/Map;

    invoke-interface {v6, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 42
    .end local v0           #commandType:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;
    .end local v2           #names:[Ljava/lang/String;
    .end local v3           #shareTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    .end local v4           #tags:[Ljava/lang/String;
    .end local v5           #voiceConfig:Lcom/google/glass/voice/VoiceConfig;
    :cond_1
    return-void
.end method
