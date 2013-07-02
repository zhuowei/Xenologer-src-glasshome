.class Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity$1;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "EntityFilteredTimelineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity$1;->this$0:Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/clutchReleaseReceiver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity$1;->isInitialStickyBroadcast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    const-string v0, "engaged"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity$1;->abortBroadcast()V

    .line 60
    iget-object v0, p0, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity$1;->this$0:Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.glass.people.PEOPLE_UI"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/EntityFilteredTimelineActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
