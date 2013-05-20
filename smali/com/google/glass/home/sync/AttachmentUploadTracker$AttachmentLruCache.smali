.class Lcom/google/glass/home/sync/AttachmentUploadTracker$AttachmentLruCache;
.super Landroid/util/LruCache;
.source "AttachmentUploadTracker.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/sync/AttachmentUploadTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AttachmentLruCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/sync/AttachmentUploadTracker;


# direct methods
.method public constructor <init>(Lcom/google/glass/home/sync/AttachmentUploadTracker;I)V
    .locals 0
    .parameter
    .parameter "maxSize"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/glass/home/sync/AttachmentUploadTracker$AttachmentLruCache;->this$0:Lcom/google/glass/home/sync/AttachmentUploadTracker;

    .line 43
    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    .line 44
    return-void
.end method


# virtual methods
.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 40
    check-cast p2, Ljava/lang/String;

    .end local p2
    check-cast p3, Ljava/lang/String;

    .end local p3
    check-cast p4, Ljava/lang/String;

    .end local p4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/glass/home/sync/AttachmentUploadTracker$AttachmentLruCache;->entryRemoved(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "evicted"
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 48
    if-eqz p1, :cond_0

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/home/sync/AttachmentUploadTracker$AttachmentLruCache;->this$0:Lcom/google/glass/home/sync/AttachmentUploadTracker;

    invoke-virtual {v1, p2}, Lcom/google/glass/home/sync/AttachmentUploadTracker;->clearAttachmentIdForPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, e:Ljava/io/IOException;
    invoke-static {}, Lcom/google/glass/home/sync/AttachmentUploadTracker;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to evict from LRU cache"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
