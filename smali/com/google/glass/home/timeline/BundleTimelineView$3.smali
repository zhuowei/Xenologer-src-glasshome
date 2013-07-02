.class Lcom/google/glass/home/timeline/BundleTimelineView$3;
.super Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;
.source "BundleTimelineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/BundleTimelineView;->init(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/widget/SliderView;Lcom/google/glass/home/timeline/NotificationState;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/TimelineItemId;)Landroid/content/CursorLoader;
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
.field final synthetic this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

.field final synthetic val$cursorManager:Lcom/google/glass/home/timeline/database/TimelineCursorManager;

.field final synthetic val$onLoadRunnables:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/BundleTimelineView;Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/database/TimelineCursorManager;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$3;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    iput-object p3, p0, Lcom/google/glass/home/timeline/BundleTimelineView$3;->val$cursorManager:Lcom/google/glass/home/timeline/database/TimelineCursorManager;

    iput-object p4, p0, Lcom/google/glass/home/timeline/BundleTimelineView$3;->val$onLoadRunnables:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;-><init>(Landroid/widget/Adapter;)V

    return-void
.end method


# virtual methods
.method public findIdPosition(Lcom/google/glass/timeline/TimelineItemId;)I
    .locals 1
    .parameter "id"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView$3;->val$cursorManager:Lcom/google/glass/home/timeline/database/TimelineCursorManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->find(Lcom/google/glass/timeline/TimelineItemId;)I

    move-result v0

    return v0
.end method

.method public matches(Lcom/google/glass/timeline/TimelineItemId;)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method rebind(ILandroid/view/View;)V
    .locals 1
    .parameter "position"
    .parameter "view"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView$3;->adapter:Landroid/widget/Adapter;

    check-cast v0, Lcom/google/glass/home/timeline/TimelineItemAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->rebind(ILandroid/view/View;)V

    .line 149
    return-void
.end method

.method waitForLoad(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "onLoad"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView$3;->val$onLoadRunnables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    return-void
.end method
