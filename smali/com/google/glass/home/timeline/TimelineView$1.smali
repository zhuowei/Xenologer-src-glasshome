.class Lcom/google/glass/home/timeline/TimelineView$1;
.super Landroid/database/DataSetObserver;
.source "TimelineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/timeline/TimelineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/TimelineView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/TimelineView;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/glass/home/timeline/TimelineView$1;->this$0:Lcom/google/glass/home/timeline/TimelineView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 114
    invoke-static {}, Lcom/google/glass/home/timeline/TimelineView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineView$1;->this$0:Lcom/google/glass/home/timeline/TimelineView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/TimelineView;->updateViews(Z)V

    .line 116
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 120
    invoke-static {}, Lcom/google/glass/home/timeline/TimelineView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onInvalidated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineView$1;->this$0:Lcom/google/glass/home/timeline/TimelineView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/TimelineView;->updateViews(Z)V

    .line 122
    return-void
.end method
