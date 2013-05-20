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

.field static final NUM_BYTES_FOR_HASHING:I = 0x80000

.field private static final TAG:Ljava/lang/String; = null

.field static final TRACKING_PREFS_FILENAME:Ljava/lang/String; = "attachment_upload_tracking_prefs"


# instance fields
.field private final lruCache:Lcom/google/glass/home/sync/AttachmentUploadTracker$AttachmentLruCache;

.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
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
    .line 62
    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lcom/google/glass/home/sync/AttachmentUploadTracker;-><init>(Landroid/content/Context;I)V

    .line 63
    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "maxLruCacheSize"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-string v3, "attachment_upload_tracking_prefs"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/home/sync/AttachmentUploadTracker;->prefs:Landroid/content/SharedPreferences;

    .line 68
    new-instance v3, Lcom/google/glass/home/sync/AttachmentUploadTracker$AttachmentLruCache;

    invoke-direct {v3, p0, p2}, Lcom/google/glass/home/sync/AttachmentUploadTracker$AttachmentLruCache;-><init>(Lcom/google/glass/home/sync/AttachmentUploadTracker;I)V

    iput-object v3, p0, Lcom/google/glass/home/sync/AttachmentUploadTracker;->lruCache:Lcom/google/glass/home/sync/AttachmentUploadTracker$AttachmentLruCache;

    .line 70
    iget-object v3, p0, Lcom/google/glass/home/sync/AttachmentUploadTracker;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 72
    .local v2, previousPrefs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz v2, :cond_0

    .line 73
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

    .line 74
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    iget-object v4, p0, Lcom/google/glass/home/sync/AttachmentUploadTracker;->lruCache:Lcom/google/glass/home/sync/AttachmentUploadTracker$AttachmentLruCache;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/google/glass/home/sync/AttachmentUploadTracker$AttachmentLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 77
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/glass/home/sync/AttachmentUploadTracker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static computeHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v12, 0x8

    .line 133
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    .line 135
    :cond_0
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Missing or empty file for attachment [path="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 139
    :cond_1
    const/4 v5, 0x0

    .line 140
    .local v5, stream:Ljava/io/FileInputStream;
    const/16 v8, 0x40

    invoke-static {v8}, Lcom/google/common/hash/Hashing;->goodFastHash(I)Lcom/google/common/hash/HashFunction;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/common/hash/HashFunction;->newHasher()Lcom/google/common/hash/Hasher;

    move-result-object v3

    .line 142
    .local v3, hasher:Lcom/google/common/hash/Hasher;
    const v8, 0xcccc

    :try_start_0
    new-array v0, v8, [B

    .line 143
    .local v0, buffer:[B
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    .end local v5           #stream:Ljava/io/FileInputStream;
    .local v6, stream:Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 145
    .local v7, totalBytes:I
    :goto_0
    if-ge v7, v12, :cond_2

    .line 146
    :try_start_1
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    .line 148
    .local v4, readBytes:I
    const/4 v8, -0x1

    if-ne v4, v8, :cond_4

    .line 156
    .end local v4           #readBytes:I
    :cond_2
    if-eqz v6, :cond_3

    .line 158
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 165
    :cond_3
    :goto_1
    invoke-interface {v3}, Lcom/google/common/hash/Hasher;->hash()Lcom/google/common/hash/HashCode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/common/hash/HashCode;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 152
    .restart local v4       #readBytes:I
    :cond_4
    const/4 v8, 0x0

    sub-int v9, v12, v7

    :try_start_3
    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-interface {v3, v0, v8, v9}, Lcom/google/common/hash/Hasher;->putBytes([BII)Lcom/google/common/hash/Hasher;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 153
    add-int/2addr v7, v4

    .line 154
    goto :goto_0

    .line 159
    .end local v4           #readBytes:I
    :catch_0
    move-exception v1

    .line 160
    .local v1, e:Ljava/io/IOException;
    sget-object v8, Lcom/google/glass/home/sync/AttachmentUploadTracker;->TAG:Ljava/lang/String;

    const-string v9, "Failed to close stream"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 156
    .end local v0           #buffer:[B
    .end local v1           #e:Ljava/io/IOException;
    .end local v6           #stream:Ljava/io/FileInputStream;
    .end local v7           #totalBytes:I
    .restart local v5       #stream:Ljava/io/FileInputStream;
    :catchall_0
    move-exception v8

    :goto_2
    if-eqz v5, :cond_5

    .line 158
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 161
    :cond_5
    :goto_3
    throw v8

    .line 159
    :catch_1
    move-exception v1

    .line 160
    .restart local v1       #e:Ljava/io/IOException;
    sget-object v9, Lcom/google/glass/home/sync/AttachmentUploadTracker;->TAG:Ljava/lang/String;

    const-string v10, "Failed to close stream"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 156
    .end local v1           #e:Ljava/io/IOException;
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v0       #buffer:[B
    .restart local v6       #stream:Ljava/io/FileInputStream;
    .restart local v7       #totalBytes:I
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto :goto_2
.end method


# virtual methods
.method public clearAttachmentIdForPath(Ljava/lang/String;)V
    .locals 2
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-static {p1}, Lcom/google/glass/home/sync/AttachmentUploadTracker;->computeHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, hash:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/home/sync/AttachmentUploadTracker;->lruCache:Lcom/google/glass/home/sync/AttachmentUploadTracker$AttachmentLruCache;

    invoke-virtual {v1, v0}, Lcom/google/glass/home/sync/AttachmentUploadTracker$AttachmentLruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v1, p0, Lcom/google/glass/home/sync/AttachmentUploadTracker;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 129
    return-void
.end method

.method public final getAttachmentIdForPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 92
    invoke-static {p1}, Lcom/google/glass/home/sync/AttachmentUploadTracker;->computeHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, hash:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/glass/home/sync/AttachmentUploadTracker;->lruCache:Lcom/google/glass/home/sync/AttachmentUploadTracker$AttachmentLruCache;

    invoke-virtual {v4, v2}, Lcom/google/glass/home/sync/AttachmentUploadTracker$AttachmentLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    .local v0, attachmentId:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 97
    :try_start_0
    iget-object v4, p0, Lcom/google/glass/home/sync/AttachmentUploadTracker;->prefs:Landroid/content/SharedPreferences;

    const/4 v5, 0x0

    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    move-object v3, v0

    .line 106
    :goto_0
    return-object v3

    .line 98
    :catch_0
    move-exception v1

    .line 99
    .local v1, e:Ljava/lang/ClassCastException;
    sget-object v4, Lcom/google/glass/home/sync/AttachmentUploadTracker;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ran into a non-string pref for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -- removing and returning null."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v4, p0, Lcom/google/glass/home/sync/AttachmentUploadTracker;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method getLruCache()Lcom/google/glass/home/sync/AttachmentUploadTracker$AttachmentLruCache;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/glass/home/sync/AttachmentUploadTracker;->lruCache:Lcom/google/glass/home/sync/AttachmentUploadTracker$AttachmentLruCache;

    return-object v0
.end method

.method public setAttachmentIdForPath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "path"
    .parameter "attachmentId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {p1}, Lcom/google/glass/home/sync/AttachmentUploadTracker;->computeHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, hash:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/home/sync/AttachmentUploadTracker;->lruCache:Lcom/google/glass/home/sync/AttachmentUploadTracker$AttachmentLruCache;

    invoke-virtual {v1, v0, p2}, Lcom/google/glass/home/sync/AttachmentUploadTracker$AttachmentLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v1, p0, Lcom/google/glass/home/sync/AttachmentUploadTracker;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method
