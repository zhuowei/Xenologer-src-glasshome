.class Lcom/google/glass/home/timeline/MainTimelineActivity$1;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "MainTimelineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/timeline/MainTimelineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/MainTimelineActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$1;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$1;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    invoke-virtual {v1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/guestModeReceiver"

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
    .line 86
    const-string v1, "com.google.glass.ACTION_GUEST_MODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    const-string v1, "com.google.glass.EXTRA_GUEST_MODE_ENABLED"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 89
    .local v0, isGuestModeEnabled:Z
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity$1;->this$0:Lcom/google/glass/home/timeline/MainTimelineActivity;

    #calls: Lcom/google/glass/home/timeline/MainTimelineActivity;->initTimelineView(Z)V
    invoke-static {v1, v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->access$000(Lcom/google/glass/home/timeline/MainTimelineActivity;Z)V

    .line 91
    .end local v0           #isGuestModeEnabled:Z
    :cond_0
    return-void
.end method
