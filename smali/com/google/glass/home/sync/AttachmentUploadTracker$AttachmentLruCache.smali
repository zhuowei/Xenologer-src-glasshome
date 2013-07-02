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
    .line 30
    iput-object p1, p0, Lcom/google/glass/home/sync/AttachmentUploadTracker$AttachmentLruCache;->this$0:Lcom/google/glass/home/sync/AttachmentUploadTracker;

    .line 31
    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    .line 32
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
    .line 28
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
    .locals 1
    .parameter "evicted"
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 36
    if-eqz p1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/google/glass/home/sync/AttachmentUploadTracker$AttachmentLruCache;->this$0:Lcom/google/glass/home/sync/AttachmentUploadTracker;

    invoke-virtual {v0, p2}, Lcom/google/glass/home/sync/AttachmentUploadTracker;->clearAttachmentIdForPath(Ljava/lang/String;)Z

    .line 39
    :cond_0
    return-void
.end method
