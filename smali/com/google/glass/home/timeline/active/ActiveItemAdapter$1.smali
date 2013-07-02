.class Lcom/google/glass/home/timeline/active/ActiveItemAdapter$1;
.super Ljava/lang/Object;
.source "ActiveItemAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->onActivityRemoved(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/active/ActiveItemAdapter;

.field final synthetic val$goHome:Z


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/active/ActiveItemAdapter;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter$1;->this$0:Lcom/google/glass/home/timeline/active/ActiveItemAdapter;

    iput-boolean p2, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter$1;->val$goHome:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter$1;->this$0:Lcom/google/glass/home/timeline/active/ActiveItemAdapter;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->notifyDataSetChanged()V

    .line 122
    iget-boolean v0, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter$1;->val$goHome:Z

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/ActiveItemAdapter$1;->this$0:Lcom/google/glass/home/timeline/active/ActiveItemAdapter;

    #getter for: Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->context:Landroid/app/Activity;
    invoke-static {v0}, Lcom/google/glass/home/timeline/active/ActiveItemAdapter;->access$000(Lcom/google/glass/home/timeline/active/ActiveItemAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/timeline/TimelineHelper;->goToTimelineHome(Landroid/content/Context;)V

    .line 125
    :cond_0
    return-void
.end method
