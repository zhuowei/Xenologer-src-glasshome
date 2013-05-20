.class Lcom/google/glass/timeline/TimelineOptionsHelper$2;
.super Ljava/lang/Object;
.source "TimelineOptionsHelper.java"

# interfaces
.implements Lcom/google/glass/timeline/TimelineOptionsHelper$OnConfirmedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineOptionsHelper;->onCustom(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

.field final synthetic val$menuItem:Lcom/google/googlex/glass/common/proto/MenuItem;

.field final synthetic val$updatedItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

.field final synthetic val$userAction:Lcom/google/googlex/glass/common/proto/UserAction;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/UserAction;Lcom/google/googlex/glass/common/proto/MenuItem;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 732
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$2;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$2;->val$updatedItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    iput-object p3, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$2;->val$userAction:Lcom/google/googlex/glass/common/proto/UserAction;

    iput-object p4, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$2;->val$menuItem:Lcom/google/googlex/glass/common/proto/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmed(Lcom/google/googlex/glass/common/proto/MenuItem;)V
    .locals 4
    .parameter "item"

    .prologue
    .line 735
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$2;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$2;->val$updatedItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$2;->val$userAction:Lcom/google/googlex/glass/common/proto/UserAction;

    iget-object v3, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$2;->val$menuItem:Lcom/google/googlex/glass/common/proto/MenuItem;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->notifyOnCustomMenuSelected(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/UserAction;Lcom/google/googlex/glass/common/proto/MenuItem;)V

    .line 736
    return-void
.end method
