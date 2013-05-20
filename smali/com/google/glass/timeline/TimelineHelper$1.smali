.class Lcom/google/glass/timeline/TimelineHelper$1;
.super Ljava/lang/Object;
.source "TimelineHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineHelper;->insertTimelineItemAsync(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/UserAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineHelper;

.field final synthetic val$action:Lcom/google/googlex/glass/common/proto/UserAction;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$item:Lcom/google/googlex/glass/common/proto/TimelineItem;

.field final synthetic val$itemType:Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineHelper;Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/UserAction;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineHelper$1;->this$0:Lcom/google/glass/timeline/TimelineHelper;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineHelper$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/glass/timeline/TimelineHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    iput-object p4, p0, Lcom/google/glass/timeline/TimelineHelper$1;->val$itemType:Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;

    iput-object p5, p0, Lcom/google/glass/timeline/TimelineHelper$1;->val$action:Lcom/google/googlex/glass/common/proto/UserAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 385
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineHelper$1;->this$0:Lcom/google/glass/timeline/TimelineHelper;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineHelper$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    iget-object v3, p0, Lcom/google/glass/timeline/TimelineHelper$1;->val$itemType:Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;

    iget-object v4, p0, Lcom/google/glass/timeline/TimelineHelper$1;->val$action:Lcom/google/googlex/glass/common/proto/UserAction;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/glass/timeline/TimelineHelper;->insertTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/UserAction;)Landroid/net/Uri;

    .line 386
    return-void
.end method
