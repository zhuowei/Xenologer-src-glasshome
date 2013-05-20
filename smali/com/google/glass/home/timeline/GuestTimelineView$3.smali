.class Lcom/google/glass/home/timeline/GuestTimelineView$3;
.super Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;
.source "GuestTimelineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/GuestTimelineView;->createTimelineItemAdapter(Landroid/app/Activity;Lcom/google/glass/util/CachedBitmapFactory;ZZLjava/util/List;)Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper",
        "<",
        "Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/GuestTimelineView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/GuestTimelineView;Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/glass/home/timeline/GuestTimelineView$3;->this$0:Lcom/google/glass/home/timeline/GuestTimelineView;

    invoke-direct {p0, p2}, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;-><init>(Landroid/widget/Adapter;)V

    return-void
.end method


# virtual methods
.method findIdPosition(Lcom/google/glass/timeline/TimelineItemId;)I
    .locals 1
    .parameter "id"

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/GuestTimelineView$3;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter;

    invoke-virtual {v0, p1}, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter;->getPosition(Lcom/google/glass/timeline/TimelineItemId;)I

    move-result v0

    return v0
.end method

.method matches(Lcom/google/glass/timeline/TimelineItemId;)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/GuestTimelineView$3;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter;

    invoke-virtual {v0, p1}, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter;->matches(Lcom/google/glass/timeline/TimelineItemId;)Z

    move-result v0

    return v0
.end method
