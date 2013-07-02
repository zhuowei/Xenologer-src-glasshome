.class Lcom/google/glass/home/timeline/BundleTimelineView$2;
.super Ljava/lang/Object;
.source "BundleTimelineView.java"

# interfaces
.implements Lcom/google/glass/home/timeline/TimelineItemAdapter$ContentSizedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/BundleTimelineView;->init(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/widget/SliderView;Lcom/google/glass/home/timeline/NotificationState;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/TimelineItemId;)Landroid/content/CursorLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/BundleTimelineView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/BundleTimelineView;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$2;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentSized(Lcom/google/glass/timeline/TimelineItemId;Z)V
    .locals 1
    .parameter "itemId"
    .parameter "clipped"

    .prologue
    .line 125
    if-eqz p2, :cond_0

    .line 126
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView$2;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    #calls: Lcom/google/glass/home/timeline/BundleTimelineView;->markItemAsReadMore(Lcom/google/glass/timeline/TimelineItemId;)V
    invoke-static {v0, p1}, Lcom/google/glass/home/timeline/BundleTimelineView;->access$200(Lcom/google/glass/home/timeline/BundleTimelineView;Lcom/google/glass/timeline/TimelineItemId;)V

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView$2;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    #calls: Lcom/google/glass/home/timeline/BundleTimelineView;->clearReadMoreMark(Lcom/google/glass/timeline/TimelineItemId;)V
    invoke-static {v0, p1}, Lcom/google/glass/home/timeline/BundleTimelineView;->access$300(Lcom/google/glass/home/timeline/BundleTimelineView;Lcom/google/glass/timeline/TimelineItemId;)V

    goto :goto_0
.end method
