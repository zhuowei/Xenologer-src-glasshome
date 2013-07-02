.class Lcom/google/glass/home/timeline/EntityFilteredTimelineView$4;
.super Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;
.source "EntityFilteredTimelineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/EntityFilteredTimelineView;->createHomeAdapter(Landroid/app/Activity;Lcom/google/googlex/glass/common/proto/Entity;Landroid/graphics/Bitmap;)Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper",
        "<",
        "Lcom/google/glass/home/timeline/active/FilteredEntityAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/EntityFilteredTimelineView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/EntityFilteredTimelineView;Lcom/google/glass/home/timeline/active/FilteredEntityAdapter;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineView$4;->this$0:Lcom/google/glass/home/timeline/EntityFilteredTimelineView;

    invoke-direct {p0, p2}, Lcom/google/glass/home/timeline/TimelineView$AdapterWrapper;-><init>(Landroid/widget/Adapter;)V

    return-void
.end method


# virtual methods
.method public findIdPosition(Lcom/google/glass/timeline/TimelineItemId;)I
    .locals 2
    .parameter "id"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineView$4;->this$0:Lcom/google/glass/home/timeline/EntityFilteredTimelineView;

    #getter for: Lcom/google/glass/home/timeline/EntityFilteredTimelineView;->idGenerator:Lcom/google/glass/util/CustomItemIdGenerator;
    invoke-static {v0}, Lcom/google/glass/home/timeline/EntityFilteredTimelineView;->access$000(Lcom/google/glass/home/timeline/EntityFilteredTimelineView;)Lcom/google/glass/util/CustomItemIdGenerator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/CustomItemIdGenerator;->getPosition(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public matches(Lcom/google/glass/timeline/TimelineItemId;)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineView$4;->this$0:Lcom/google/glass/home/timeline/EntityFilteredTimelineView;

    #getter for: Lcom/google/glass/home/timeline/EntityFilteredTimelineView;->idGenerator:Lcom/google/glass/util/CustomItemIdGenerator;
    invoke-static {v0}, Lcom/google/glass/home/timeline/EntityFilteredTimelineView;->access$000(Lcom/google/glass/home/timeline/EntityFilteredTimelineView;)Lcom/google/glass/util/CustomItemIdGenerator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/CustomItemIdGenerator;->isId(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
