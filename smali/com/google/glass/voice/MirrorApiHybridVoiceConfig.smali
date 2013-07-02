.class public Lcom/google/glass/voice/MirrorApiHybridVoiceConfig;
.super Lcom/google/glass/voice/VoiceConfig;
.source "MirrorApiHybridVoiceConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final configsByCommand:Ljava/util/Map;
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
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const-class v0, Lcom/google/glass/voice/MirrorApiHybridVoiceConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/MirrorApiHybridVoiceConfig;->TAG:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/glass/voice/MirrorApiHybridVoiceConfig;->configsByCommand:Ljava/util/Map;

    .line 42
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;->TAKE_A_NOTE:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    const-string v1, "google_glass_takeanote_en_us_alpha_sfs_delivery01_am.raw"

    const-string v2, "google_glass_takeanote_en_us_alpha_sfs_delivery01_search_7.raw"

    invoke-static {v0, v1, v2}, Lcom/google/glass/voice/MirrorApiHybridVoiceConfig;->addCommandConfig(Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;->POST_AN_UPDATE:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    const-string v1, "google_glass_postanupdate_en_us_alpha_sfs_delivery02_am.raw"

    const-string v2, "google_glass_postanupdate_en_us_alpha_sfs_delivery02_search_9.raw"

    invoke-static {v0, v1, v2}, Lcom/google/glass/voice/MirrorApiHybridVoiceConfig;->addCommandConfig(Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method constructor <init>()V
    .locals 7

    .prologue
    .line 23
    sget-object v1, Lcom/google/glass/voice/VoiceConfig$Type;->SENSORY:Lcom/google/glass/voice/VoiceConfig$Type;

    const-string v2, "ADDITIONAL_COMMANDS"

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/voice/VoiceConfig;-><init>(Lcom/google/glass/voice/VoiceConfig$Type;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method private static addCommandConfig(Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "commandType"
    .parameter "recogFile"
    .parameter "searchFile"

    .prologue
    .line 36
    sget-object v0, Lcom/google/glass/voice/MirrorApiHybridVoiceConfig;->configsByCommand:Ljava/util/Map;

    new-instance v1, Lcom/google/glass/voice/VoiceConfig;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIRROR_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method


# virtual methods
.method public getHotwordRecognizer(Landroid/content/Context;)Lcom/google/glass/voice/HotwordRecognizer;
    .locals 9
    .parameter "context"

    .prologue
    .line 50
    invoke-static {p1}, Lcom/google/glass/voice/EntityUtils;->getMirrorCommandEntities(Landroid/content/Context;)Lcom/google/common/collect/ListMultimap;

    move-result-object v4

    .line 53
    .local v4, mirrorCommandEntities:Lcom/google/common/collect/Multimap;,"Lcom/google/common/collect/Multimap<Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 54
    .local v5, recognizers:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/HotwordRecognizer;>;"
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;->values()[Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    move-result-object v0

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 56
    .local v1, commandType:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;
    invoke-interface {v4, v1}, Lcom/google/common/collect/Multimap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4, v1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 58
    sget-object v6, Lcom/google/glass/voice/MirrorApiHybridVoiceConfig;->configsByCommand:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 59
    sget-object v6, Lcom/google/glass/voice/MirrorApiHybridVoiceConfig;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No hand-tuned model for command type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "! Will not recognize this command."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :cond_1
    sget-object v6, Lcom/google/glass/voice/MirrorApiHybridVoiceConfig;->configsByCommand:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v6, p1}, Lcom/google/glass/voice/VoiceConfig;->getHotwordRecognizer(Landroid/content/Context;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 68
    .end local v1           #commandType:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;
    :cond_2
    new-instance v7, Lcom/google/glass/voice/HybridHotwordRecognizer;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lcom/google/glass/voice/HotwordRecognizer;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/google/glass/voice/HotwordRecognizer;

    invoke-direct {v7, v6}, Lcom/google/glass/voice/HybridHotwordRecognizer;-><init>([Lcom/google/glass/voice/HotwordRecognizer;)V

    return-object v7
.end method

.method isValidConfig()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method
