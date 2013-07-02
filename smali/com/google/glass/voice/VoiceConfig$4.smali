.class final Lcom/google/glass/voice/VoiceConfig$4;
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


# static fields
.field private static final GET_QUALIFIED_ENTITY_NAME_TIMEOUT_MS:J = 0xfaL


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getQualifiedName(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "entity"

    .prologue
    .line 128
    const-wide/16 v0, 0xfa

    invoke-static {p1, p2, v0, v1}, Lcom/google/glass/voice/EntityUtils;->getQualifiedName(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/Entity;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private prependNames(Landroid/content/Context;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 5
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    .local p2, photoShareTargetEntities:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 118
    .local v2, withPrependedNames:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity;

    .line 122
    .local v0, e:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity;->toBuilder()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v3

    invoke-direct {p0, p1, v0}, Lcom/google/glass/voice/VoiceConfig$4;->getQualifiedName(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    .end local v0           #e:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public bridge synthetic getHotwordRecognizer(Landroid/content/Context;)Lcom/google/glass/voice/HotwordRecognizer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/VoiceConfig$4;->getHotwordRecognizer(Landroid/content/Context;)Lcom/google/glass/voice/Sensory;

    move-result-object v0

    return-object v0
.end method

.method public getHotwordRecognizer(Landroid/content/Context;)Lcom/google/glass/voice/Sensory;
    .locals 2
    .parameter "context"

    .prologue
    .line 104
    invoke-static {p1}, Lcom/google/glass/voice/VoiceService;->getPhotoShareTargetEntities(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    .line 106
    .local v0, photoShareTargetEntities:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    const/4 v1, 0x0

    .line 111
    :goto_0
    return-object v1

    .line 110
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/google/glass/voice/VoiceConfig$4;->prependNames(Landroid/content/Context;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 111
    invoke-static {p1, p0, v0}, Lcom/google/glass/voice/Sensory;->newEntityRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;Ljava/util/Collection;)Lcom/google/glass/voice/Sensory;

    move-result-object v1

    goto :goto_0
.end method
