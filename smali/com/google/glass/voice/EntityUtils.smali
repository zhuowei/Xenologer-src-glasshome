.class public Lcom/google/glass/voice/EntityUtils;
.super Ljava/lang/Object;
.source "EntityUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/google/glass/voice/EntityUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/EntityUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getContactEntities(Landroid/content/Context;)Ljava/util/Collection;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    invoke-static {p0}, Lcom/google/glass/voice/EntityUtils;->isGuestModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/glass/voice/EntityUtils;->getGuestModeEntities(Landroid/content/Context;Z)Ljava/util/Collection;

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/entity/EntityHelper;->getSpeakableCommunicationTargets()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method static getGuestModeEntities(Landroid/content/Context;Z)Ljava/util/Collection;
    .locals 3
    .parameter "context"
    .parameter "plusEntityOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    if-eqz p1, :cond_0

    .line 68
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/entity/EntityHelper;->getPlusEntityForUser(Landroid/content/Context;)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    .line 73
    .local v0, user:Lcom/google/googlex/glass/common/proto/Entity;
    :goto_0
    if-eqz v0, :cond_1

    .line 74
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 76
    :goto_1
    return-object v1

    .line 70
    .end local v0           #user:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_0
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForUser(Landroid/content/Context;Z)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    .restart local v0       #user:Lcom/google/googlex/glass/common/proto/Entity;
    goto :goto_0

    .line 76
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_1
.end method

.method static getMirrorCommandEntities(Landroid/content/Context;)Lcom/google/common/collect/ListMultimap;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/common/collect/ListMultimap",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {}, Lcom/google/common/collect/ArrayListMultimap;->create()Lcom/google/common/collect/ArrayListMultimap;

    move-result-object v4

    .line 50
    .local v4, mm:Lcom/google/common/collect/ListMultimap;,"Lcom/google/common/collect/ListMultimap<Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-static {p0}, Lcom/google/glass/voice/EntityUtils;->isGuestModeEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 62
    :cond_0
    return-object v4

    .line 55
    :cond_1
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/glass/entity/EntityHelper;->getAllShareTargets()Ljava/util/List;

    move-result-object v1

    .line 56
    .local v1, allShareTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/googlex/glass/common/proto/Entity;

    .line 57
    .local v5, shareTarget:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/Entity;->getAcceptCommandList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Command;

    .line 58
    .local v0, acceptedCommand:Lcom/google/googlex/glass/common/proto/Entity$Command;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity$Command;->getType()Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    move-result-object v6

    invoke-interface {v4, v6, v5}, Lcom/google/common/collect/ListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static getPhotoShareTargetEntities(Landroid/content/Context;)Ljava/util/Collection;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {p0}, Lcom/google/glass/voice/EntityUtils;->isGuestModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/glass/voice/EntityUtils;->getGuestModeEntities(Landroid/content/Context;Z)Ljava/util/Collection;

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/entity/EntityHelper;->getSpeakablePhotoShareTargets()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method static getPlusShareTargetEntities(Landroid/content/Context;)Ljava/util/Collection;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    invoke-static {p0}, Lcom/google/glass/voice/EntityUtils;->isGuestModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/glass/voice/EntityUtils;->getGuestModeEntities(Landroid/content/Context;Z)Ljava/util/Collection;

    move-result-object v0

    .line 30
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/entity/EntityHelper;->getSpeakablePlusShareTargets()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static getQualifiedName(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/Entity;J)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "entity"
    .parameter "timeoutMs"

    .prologue
    .line 120
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, displayName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    sget-object v3, Lcom/google/glass/voice/EntityUtils;->TAG:Ljava/lang/String;

    const-string v4, "No display name for entity; cannot qualify."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/glass/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    const-string v0, ""

    .line 145
    .end local v0           #displayName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 127
    .restart local v0       #displayName:Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Lcom/google/glass/entity/EntityHelper;->isPlusEntity(Lcom/google/googlex/glass/common/proto/Entity;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 132
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->getGlasswareName(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/Entity;J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 137
    .local v2, glasswareName:Ljava/lang/String;
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 141
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 133
    .end local v2           #glasswareName:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 134
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v2, ""

    .restart local v2       #glasswareName:Ljava/lang/String;
    goto :goto_1
.end method

.method public static getQualifiedNameImmediately(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "entity"

    .prologue
    .line 152
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/google/glass/voice/EntityUtils;->getQualifiedName(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/Entity;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasContacts(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 87
    invoke-static {p0}, Lcom/google/glass/voice/EntityUtils;->getContactEntities(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasPhotoShareTargets(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 97
    invoke-static {p0}, Lcom/google/glass/voice/EntityUtils;->getPhotoShareTargetEntities(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasPlusShareTargets(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 92
    invoke-static {p0}, Lcom/google/glass/voice/EntityUtils;->getPlusShareTargetEntities(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isGuestModeEnabled(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 80
    new-instance v0, Lcom/google/glass/util/SettingsHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/glass/util/SettingsHelper;->isGuestModeEnabled()Z

    move-result v0

    return v0
.end method
