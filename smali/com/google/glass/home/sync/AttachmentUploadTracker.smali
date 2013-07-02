.class public Lcom/google/glass/home/sync/AttachmentUploadTracker;
.super Ljava/lang/Object;
.source "AttachmentUploadTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/sync/AttachmentUploadTracker$AttachmentLruCache;
    }
.end annotation


# static fields
.field static final MAX_LRU_CACHE_SIZE:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = null

.field static final TRACKING_PREFS_FILENAME:Ljava/lang/String; = "attachment_upload_tracking_prefs"


# instance fields
.field private final lruCache:Lcom/google/glass/home/sync/AttachmentUploadTracker$AttachmentLruCache;

.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/google/glass/home/sync/AttachmentUploadTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/sync/AttachmentUploadTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 46
    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lcom/google/glass/home/sync/AttachmentUploadTracker;-><init>(Landroid/content/Context;I)V

    .line 47
    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "maxLruCacheSize"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v3, "attachment_upload_tracking_prefs"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/home/sync/AttachmentUploadTracker;->prefs:Landroid/content/SharedPreferences;

    .line 52
    new-instance v3, Lcom/google/glass/home/sync/AttachmentUploadTracker$AttachmentLruCache;

    invoke-direct {v3, p0, p2}, Lcom/google/glass/home/sync/AttachmentUploadTracker$AttachmentLruCache;-><init>(Lcom/google/glass/home/sync/AttachmentUploadTracker;I)V

    iput-object v3, p0, Lcom/google/glass/home/sync/AttachmentUploadTracker;->lruCache:Lcom/google/glass/home/sync/AttachmentUploadTracker$AttachmentLruCache;

    .line 54
    iget-object v3, p0, Lcom/google/glass/home/sync/AttachmentUploadTracker;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 56
    .local v2, previousPrefs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz v2, :cond_0

    .line 57
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 58
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    iget-object v4, p0, Lcom/google/glass/home/sync/AttachmentUploadTracker;->lruCache:Lcom/google/glass/home/sync/AttachmentUploadTracker$AttachmentLruCache;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/google/glass/home/sync/AttachmentUploadTracker$AttachmentLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 61
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method


# virtual methods
.method public clearAttachmentIdForPath(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/glass/home/sync/AttachmentUploadTracker;->lruCache:Lcom/google/glass/home/sync/AttachmentUploadTracker$AttachmentLruCache;

    invoke-virtual {v0, p1}, Lcom/google/glass/home/sync/AttachmentUploadTracker$AttachmentLruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/google/glass/home/sync/AttachmentUploadTracker;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public final getAttachmentIdForPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 76
    iget-object v3, p0, Lcom/google/glass/home/sync/AttachmentUploadTracker;->lruCache:Lcom/google/glass/home/sync/AttachmentUploadTracker$AttachmentLruCache;

    invoke-virtual {v3, p1}, Lcom/google/glass/home/sync/AttachmentUploadTracker$AttachmentLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    .local v0, attachmentId:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 80
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/home/sync/AttachmentUploadTracker;->prefs:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    move-object v2, v0

    .line 89
    :goto_0
    return-object v2

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, e:Ljava/lang/ClassCastException;
    sget-object v3, Lcom/google/glass/home/sync/AttachmentUploadTracker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ran into a non-string pref for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -- removing and returning null."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v3, p0, Lcom/google/glass/home/sync/AttachmentUploadTracker;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method getLruCache()Lcom/google/glass/home/sync/AttachmentUploadTracker$AttachmentLruCache;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/glass/home/sync/AttachmentUploadTracker;->lruCache:Lcom/google/glass/home/sync/AttachmentUploadTracker$AttachmentLruCache;

    return-object v0
.end method

.method public setAttachmentIdForPath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "path"
    .parameter "attachmentId"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/glass/home/sync/AttachmentUploadTracker;->lruCache:Lcom/google/glass/home/sync/AttachmentUploadTracker$AttachmentLruCache;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/home/sync/AttachmentUploadTracker$AttachmentLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/google/glass/home/sync/AttachmentUploadTracker;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method
