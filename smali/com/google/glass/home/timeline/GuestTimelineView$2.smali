.class Lcom/google/glass/home/timeline/GuestTimelineView$2;
.super Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;
.source "GuestTimelineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/GuestTimelineView;->createActiveItemAdapter(Landroid/app/Activity;Lcom/google/glass/home/timeline/NotificationState;)Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper",
        "<",
        "Lcom/google/glass/home/timeline/active/ActiveItemAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/GuestTimelineView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/GuestTimelineView;Lcom/google/glass/home/timeline/active/ActiveItemAdapter;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/glass/home/timeline/GuestTimelineView$2;->this$0:Lcom/google/glass/home/timeline/GuestTimelineView;

    invoke-direct {p0, p2}, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;-><init>(Landroid/widget/Adapter;)V

    return-void
.end method


# virtual methods
.method public findIdPosition(Lcom/google/glass/timeline/TimelineItemId;)I
    .locals 2
    .parameter "id"

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/GuestTimelineView$2;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;

    invoke-virtual {p1}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->getPositionForItemId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public matches(Lcom/google/glass/timeline/TimelineItemId;)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 70
    invoke-virtual {p1}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/timeline/active/ActiveItemApi;->isActiveItemId(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
