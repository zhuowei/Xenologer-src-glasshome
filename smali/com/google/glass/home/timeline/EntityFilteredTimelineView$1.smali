.class Lcom/google/glass/home/timeline/EntityFilteredTimelineView$1;
.super Ljava/lang/Object;
.source "EntityFilteredTimelineView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/EntityFilteredTimelineView;->createHistoricalTimelineItemAdapter(Landroid/app/Activity;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/home/timeline/NotificationState;Ljava/util/List;)Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/EntityFilteredTimelineView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/EntityFilteredTimelineView;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineView$1;->this$0:Lcom/google/glass/home/timeline/EntityFilteredTimelineView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineView$1;->this$0:Lcom/google/glass/home/timeline/EntityFilteredTimelineView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/EntityFilteredTimelineView;->updateViews(Z)V

    .line 70
    return-void
.end method
