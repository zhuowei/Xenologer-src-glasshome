.class Lcom/google/glass/home/timeline/UserTimelineView$5;
.super Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;
.source "UserTimelineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/UserTimelineView;->createTimelineItemAdapter(Landroid/app/Activity;Lcom/google/glass/util/CachedBitmapFactory;ZZLjava/util/List;)Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper",
        "<",
        "Lcom/google/glass/home/timeline/TimelineItemAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field lastMaxItemTimestamp:J

.field final synthetic this$0:Lcom/google/glass/home/timeline/UserTimelineView;

.field final synthetic val$cursorLoader:Landroid/content/CursorLoader;

.field final synthetic val$cursorManager:Lcom/google/glass/home/timeline/database/TimelineCursorManager;

.field final synthetic val$onLoadRunnables:Ljava/util/List;

.field final synthetic val$pinned:Z


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/UserTimelineView;Lcom/google/glass/home/timeline/TimelineItemAdapter;ZLcom/google/glass/home/timeline/database/TimelineCursorManager;Landroid/content/CursorLoader;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/glass/home/timeline/UserTimelineView$5;->this$0:Lcom/google/glass/home/timeline/UserTimelineView;

    iput-boolean p3, p0, Lcom/google/glass/home/timeline/UserTimelineView$5;->val$pinned:Z

    iput-object p4, p0, Lcom/google/glass/home/timeline/UserTimelineView$5;->val$cursorManager:Lcom/google/glass/home/timeline/database/TimelineCursorManager;

    iput-object p5, p0, Lcom/google/glass/home/timeline/UserTimelineView$5;->val$cursorLoader:Landroid/content/CursorLoader;

    iput-object p6, p0, Lcom/google/glass/home/timeline/UserTimelineView$5;->val$onLoadRunnables:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;-><init>(Landroid/widget/Adapter;)V

    return-void
.end method


# virtual methods
.method public findIdPosition(Lcom/google/glass/timeline/TimelineItemId;)I
    .locals 1
    .parameter "id"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/glass/home/timeline/UserTimelineView$5;->val$cursorManager:Lcom/google/glass/home/timeline/database/TimelineCursorManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->find(Lcom/google/glass/timeline/TimelineItemId;)I

    move-result v0

    return v0
.end method

.method public matches(Lcom/google/glass/timeline/TimelineItemId;)Z
    .locals 3
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    .line 157
    invoke-virtual {p1}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.glass.non-database-item-id-prefix"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/timeline/TimelineItemId;->isPinned()Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/glass/home/timeline/UserTimelineView$5;->val$pinned:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method rebind(ILandroid/view/View;)V
    .locals 1
    .parameter "position"
    .parameter "view"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/glass/home/timeline/UserTimelineView$5;->adapter:Landroid/widget/Adapter;

    check-cast v0, Lcom/google/glass/home/timeline/TimelineItemAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->rebind(ILandroid/view/View;)V

    .line 191
    return-void
.end method

.method updateQueryParameters()V
    .locals 8

    .prologue
    .line 172
    iget-object v5, p0, Lcom/google/glass/home/timeline/UserTimelineView$5;->this$0:Lcom/google/glass/home/timeline/UserTimelineView;

    iget-boolean v6, p0, Lcom/google/glass/home/timeline/UserTimelineView$5;->val$pinned:Z

    invoke-virtual {v5, v6}, Lcom/google/glass/home/timeline/UserTimelineView;->getMaxItemTimestamp(Z)J

    move-result-wide v2

    .line 173
    .local v2, maxItemTimestamp:J
    iget-wide v5, p0, Lcom/google/glass/home/timeline/UserTimelineView$5;->lastMaxItemTimestamp:J

    sub-long v5, v2, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 174
    .local v0, delta:J
    invoke-static {}, Lcom/google/glass/home/timeline/UserTimelineView;->access$100()J

    move-result-wide v5

    cmp-long v5, v0, v5

    if-lez v5, :cond_0

    .line 175
    iput-wide v2, p0, Lcom/google/glass/home/timeline/UserTimelineView$5;->lastMaxItemTimestamp:J

    .line 178
    invoke-static {v2, v3}, Lcom/google/glass/timeline/TimelineHelper;->getItemLoaderSelectArgs(J)[Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, selectArgs:[Ljava/lang/String;
    sget-object v5, Lcom/google/glass/home/timeline/MainTimelineView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Updating cursor select args: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-static {v7, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v5, p0, Lcom/google/glass/home/timeline/UserTimelineView$5;->val$cursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v5, v4}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 184
    iget-object v5, p0, Lcom/google/glass/home/timeline/UserTimelineView$5;->val$cursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v5}, Landroid/content/CursorLoader;->forceLoad()V

    .line 186
    .end local v4           #selectArgs:[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method waitForLoad(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "onLoad"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/glass/home/timeline/UserTimelineView$5;->val$onLoadRunnables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    return-void
.end method
