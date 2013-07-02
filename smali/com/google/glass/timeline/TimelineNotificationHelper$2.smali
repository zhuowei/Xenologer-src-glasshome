.class final Lcom/google/glass/timeline/TimelineNotificationHelper$2;
.super Ljava/lang/Object;
.source "TimelineNotificationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineNotificationHelper;->preloadAttachments(Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/googlex/glass/common/proto/TimelineItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$item:Lcom/google/googlex/glass/common/proto/TimelineItem;

.field final synthetic val$renderer:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$resourceLoadLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$2;->val$renderer:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$2;->val$item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    iput-object p3, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$2;->val$resourceLoadLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 152
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$2;->val$renderer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lcom/google/glass/html/HtmlRenderer;->obtain()Lcom/google/glass/html/HtmlRenderer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$2;->val$renderer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/html/HtmlRenderer;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$2;->val$item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    const/4 v2, 0x1

    new-instance v3, Lcom/google/glass/timeline/TimelineNotificationHelper$2$1;

    invoke-direct {v3, p0}, Lcom/google/glass/timeline/TimelineNotificationHelper$2$1;-><init>(Lcom/google/glass/timeline/TimelineNotificationHelper$2;)V

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/google/glass/html/HtmlRenderer;->render(Lcom/google/googlex/glass/common/proto/TimelineItem;IZLcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;)V

    .line 162
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$2;->val$renderer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/html/HtmlRenderer;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/glass/timeline/TimelineNotificationHelper$2$2;

    invoke-direct {v2, p0}, Lcom/google/glass/timeline/TimelineNotificationHelper$2$2;-><init>(Lcom/google/glass/timeline/TimelineNotificationHelper$2;)V

    invoke-virtual {v0, v4, v1, v2}, Lcom/google/glass/html/HtmlRenderer;->registerListenerForPage(ILandroid/graphics/Bitmap;Lcom/google/glass/html/HtmlRenderer$OnRenderListener;)V

    .line 172
    return-void
.end method
