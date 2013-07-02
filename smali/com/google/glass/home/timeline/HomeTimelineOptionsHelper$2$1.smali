.class Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2$1;
.super Ljava/lang/Object;
.source "HomeTimelineOptionsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2$1;->this$1:Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2$1;->this$1:Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2;

    iget-object v0, v0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2;->val$dialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2$1;->this$1:Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2;

    iget-object v0, v0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$2;->val$dialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->autoHide()V

    .line 108
    :cond_0
    return-void
.end method
