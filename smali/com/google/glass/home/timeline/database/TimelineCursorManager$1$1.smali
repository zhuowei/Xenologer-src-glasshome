.class Lcom/google/glass/home/timeline/database/TimelineCursorManager$1$1;
.super Ljava/lang/Object;
.source "TimelineCursorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/database/TimelineCursorManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/home/timeline/database/TimelineCursorManager$1;

.field final synthetic val$result:Lcom/google/glass/home/timeline/TimelineItemLoader$ReadResult;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/database/TimelineCursorManager$1;Lcom/google/glass/home/timeline/TimelineItemLoader$ReadResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager$1$1;->this$1:Lcom/google/glass/home/timeline/database/TimelineCursorManager$1;

    iput-object p2, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager$1$1;->val$result:Lcom/google/glass/home/timeline/TimelineItemLoader$ReadResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 197
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 200
    iget-object v0, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager$1$1;->this$1:Lcom/google/glass/home/timeline/database/TimelineCursorManager$1;

    iget-wide v0, v0, Lcom/google/glass/home/timeline/database/TimelineCursorManager$1;->val$cursorNumber:J

    iget-object v2, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager$1$1;->this$1:Lcom/google/glass/home/timeline/database/TimelineCursorManager$1;

    iget-object v2, v2, Lcom/google/glass/home/timeline/database/TimelineCursorManager$1;->this$0:Lcom/google/glass/home/timeline/database/TimelineCursorManager;

    #getter for: Lcom/google/glass/home/timeline/database/TimelineCursorManager;->cursorCount:J
    invoke-static {v2}, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->access$100(Lcom/google/glass/home/timeline/database/TimelineCursorManager;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager$1$1;->this$1:Lcom/google/glass/home/timeline/database/TimelineCursorManager$1;

    iget-object v0, v0, Lcom/google/glass/home/timeline/database/TimelineCursorManager$1;->val$callback:Lcom/google/glass/home/timeline/TimelineItemLoader$ReadCallback;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/TimelineItemLoader$ReadCallback;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager$1$1;->this$1:Lcom/google/glass/home/timeline/database/TimelineCursorManager$1;

    iget-object v0, v0, Lcom/google/glass/home/timeline/database/TimelineCursorManager$1;->val$callback:Lcom/google/glass/home/timeline/TimelineItemLoader$ReadCallback;

    iget-object v1, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager$1$1;->val$result:Lcom/google/glass/home/timeline/TimelineItemLoader$ReadResult;

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/TimelineItemLoader$ReadCallback;->onItemRead(Lcom/google/glass/home/timeline/TimelineItemLoader$ReadResult;)V

    goto :goto_0
.end method
