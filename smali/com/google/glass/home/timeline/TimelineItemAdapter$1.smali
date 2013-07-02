.class Lcom/google/glass/home/timeline/TimelineItemAdapter$1;
.super Ljava/lang/Object;
.source "TimelineItemAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/TimelineItemAdapter;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/home/timeline/TimelineItemLoader;ZZLcom/google/glass/home/timeline/NotificationState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

.field final synthetic val$binder:Lcom/google/glass/home/timeline/database/ItemViewBinder;

.field final synthetic val$cache:Ljava/util/concurrent/LinkedBlockingQueue;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/TimelineItemAdapter;Landroid/content/Context;Ljava/util/concurrent/LinkedBlockingQueue;Lcom/google/glass/home/timeline/database/ItemViewBinder;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter$1;->this$0:Lcom/google/glass/home/timeline/TimelineItemAdapter;

    iput-object p2, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter$1;->val$cache:Ljava/util/concurrent/LinkedBlockingQueue;

    iput-object p4, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter$1;->val$binder:Lcom/google/glass/home/timeline/database/ItemViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 167
    iget-object v3, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter$1;->val$context:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 168
    .local v2, inflater:Landroid/view/LayoutInflater;
    new-instance v0, Lcom/google/glass/home/timeline/TimelineItemContainerView;

    iget-object v3, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/google/glass/home/timeline/TimelineItemContainerView;-><init>(Landroid/content/Context;)V

    .line 169
    .local v0, container:Lcom/google/glass/home/timeline/TimelineItemContainerView;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v3, 0xa

    if-ge v1, v3, :cond_0

    .line 170
    iget-object v3, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter$1;->val$cache:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v4, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter$1;->val$binder:Lcom/google/glass/home/timeline/database/ItemViewBinder;

    invoke-interface {v4}, Lcom/google/glass/home/timeline/database/ItemViewBinder;->getLayout()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :cond_0
    return-void
.end method
