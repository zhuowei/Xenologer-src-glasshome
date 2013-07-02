.class Lcom/google/glass/home/timeline/TimelineItemAdapter$2$1;
.super Ljava/lang/Object;
.source "TimelineItemAdapter.java"

# interfaces
.implements Lcom/google/glass/home/timeline/NotificationState$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->onItemRead(Lcom/google/glass/home/timeline/TimelineItemLoader$ReadResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/home/timeline/TimelineItemAdapter$2;

.field final synthetic val$item:Lcom/google/googlex/glass/common/proto/TimelineItem;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/TimelineItemAdapter$2;Lcom/google/googlex/glass/common/proto/TimelineItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2$1;->this$1:Lcom/google/glass/home/timeline/TimelineItemAdapter$2;

    iput-object p2, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateNotificationState(Z)V
    .locals 2
    .parameter "isNotification"

    .prologue
    .line 343
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-static {v0}, Lcom/google/glass/timeline/TimelineHelper;->getSupportedContextualVoiceCommands(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2$1;->this$1:Lcom/google/glass/home/timeline/TimelineItemAdapter$2;

    iget-object v0, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setShouldShowGuardPhrase(Z)V

    .line 349
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2$1;->this$1:Lcom/google/glass/home/timeline/TimelineItemAdapter$2;

    iget-object v0, v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$2;->val$container:Lcom/google/glass/home/timeline/TimelineItemContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setShouldShowGuardPhrase(Z)V

    goto :goto_0
.end method
