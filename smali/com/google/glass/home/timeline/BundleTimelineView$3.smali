.class Lcom/google/glass/home/timeline/BundleTimelineView$3;
.super Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;
.source "BundleTimelineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/BundleTimelineView;->applyNewData(Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemLoader;Ljava/util/Map;Lcom/google/glass/widget/SliderView;)V
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

.field final synthetic val$loader:Lcom/google/glass/home/timeline/TimelineItemLoader;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/BundleTimelineView;Lcom/google/glass/home/timeline/TimelineItemAdapter;Lcom/google/glass/home/timeline/TimelineItemLoader;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$3;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    iput-object p3, p0, Lcom/google/glass/home/timeline/BundleTimelineView$3;->val$loader:Lcom/google/glass/home/timeline/TimelineItemLoader;

    invoke-direct {p0, p2}, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;-><init>(Landroid/widget/Adapter;)V

    return-void
.end method


# virtual methods
.method findIdPosition(Lcom/google/glass/timeline/TimelineItemId;)I
    .locals 1
    .parameter "id"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView$3;->val$loader:Lcom/google/glass/home/timeline/TimelineItemLoader;

    invoke-interface {v0, p1}, Lcom/google/glass/home/timeline/TimelineItemLoader;->find(Lcom/google/glass/timeline/TimelineItemId;)I

    move-result v0

    return v0
.end method

.method matches(Lcom/google/glass/timeline/TimelineItemId;)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 335
    const/4 v0, 0x1

    return v0
.end method

.method rebind(ILandroid/view/View;)V
    .locals 1
    .parameter "position"
    .parameter "view"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView$3;->adapter:Landroid/widget/Adapter;

    check-cast v0, Lcom/google/glass/home/timeline/TimelineItemAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->rebind(ILandroid/view/View;)V

    .line 346
    return-void
.end method
