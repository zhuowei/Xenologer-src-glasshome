.class Lcom/google/glass/home/timeline/GuestTimelineView$5;
.super Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;
.source "GuestTimelineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/GuestTimelineView;->createDatabaseAdapter(Landroid/app/Activity;Lcom/google/glass/util/CachedBitmapFactory;ZZLcom/google/glass/home/timeline/NotificationState;Ljava/util/List;)Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;
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
.field final synthetic this$0:Lcom/google/glass/home/timeline/GuestTimelineView;

.field final synthetic val$cursorManager:Lcom/google/glass/home/timeline/database/TimelineCursorManager;

.field final synthetic val$pinned:Z


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/GuestTimelineView;Lcom/google/glass/home/timeline/TimelineItemAdapter;ZLcom/google/glass/home/timeline/database/TimelineCursorManager;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/glass/home/timeline/GuestTimelineView$5;->this$0:Lcom/google/glass/home/timeline/GuestTimelineView;

    iput-boolean p3, p0, Lcom/google/glass/home/timeline/GuestTimelineView$5;->val$pinned:Z

    iput-object p4, p0, Lcom/google/glass/home/timeline/GuestTimelineView$5;->val$cursorManager:Lcom/google/glass/home/timeline/database/TimelineCursorManager;

    invoke-direct {p0, p2}, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;-><init>(Landroid/widget/Adapter;)V

    return-void
.end method


# virtual methods
.method public findIdPosition(Lcom/google/glass/timeline/TimelineItemId;)I
    .locals 1
    .parameter "id"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/glass/home/timeline/GuestTimelineView$5;->val$cursorManager:Lcom/google/glass/home/timeline/database/TimelineCursorManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->find(Lcom/google/glass/timeline/TimelineItemId;)I

    move-result v0

    return v0
.end method

.method public matches(Lcom/google/glass/timeline/TimelineItemId;)Z
    .locals 3
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    .line 154
    invoke-virtual {p1}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.glass.non-database-item-id-prefix"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/timeline/TimelineItemId;->isPinned()Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/glass/home/timeline/GuestTimelineView$5;->val$pinned:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method rebind(ILandroid/view/View;)V
    .locals 1
    .parameter "position"
    .parameter "view"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/glass/home/timeline/GuestTimelineView$5;->adapter:Landroid/widget/Adapter;

    check-cast v0, Lcom/google/glass/home/timeline/TimelineItemAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->rebind(ILandroid/view/View;)V

    .line 168
    return-void
.end method

.method waitForLoad(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "onLoad"

    .prologue
    .line 172
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 173
    return-void
.end method
