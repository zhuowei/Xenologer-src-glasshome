.class Lcom/google/glass/home/HomeApplication$2;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "HomeApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/HomeApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastScreenOnTime:J

.field final synthetic this$0:Lcom/google/glass/home/HomeApplication;


# direct methods
.method constructor <init>(Lcom/google/glass/home/HomeApplication;)V
    .locals 2
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/glass/home/HomeApplication$2;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    .line 112
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/home/HomeApplication$2;->lastScreenOnTime:J

    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/glass/home/HomeApplication;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/screenOnOffReceiver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v6, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/google/glass/home/HomeApplication$2;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/glass/home/HomeApplication$2;->lastScreenOnTime:J

    .line 121
    iget-object v2, p0, Lcom/google/glass/home/HomeApplication$2;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v2}, Lcom/google/glass/home/HomeApplication;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v2

    sget-object v3, Lcom/google/glass/logging/UserEventAction;->SCREEN_ON:Lcom/google/glass/logging/UserEventAction;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    iget-wide v2, p0, Lcom/google/glass/home/HomeApplication$2;->lastScreenOnTime:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    .line 128
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/glass/home/HomeApplication$2;->lastScreenOnTime:J

    sub-long v0, v2, v4

    .line 129
    .local v0, screenOnDuration:J
    iput-wide v6, p0, Lcom/google/glass/home/HomeApplication$2;->lastScreenOnTime:J

    .line 130
    iget-object v2, p0, Lcom/google/glass/home/HomeApplication$2;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v2}, Lcom/google/glass/home/HomeApplication;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v2

    sget-object v3, Lcom/google/glass/logging/UserEventAction;->SCREEN_ON_DURATION:Lcom/google/glass/logging/UserEventAction;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    goto :goto_0
.end method
