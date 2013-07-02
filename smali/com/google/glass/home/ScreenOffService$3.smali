.class Lcom/google/glass/home/ScreenOffService$3;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "ScreenOffService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/ScreenOffService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/ScreenOffService;


# direct methods
.method constructor <init>(Lcom/google/glass/home/ScreenOffService;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/google/glass/home/ScreenOffService$3;->this$0:Lcom/google/glass/home/ScreenOffService;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/glass/home/ScreenOffService;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/donStateReceiver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 211
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.google.glass.action.DON_STATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 213
    invoke-static {p2}, Lcom/google/glass/hidden/DonState;->isDonned(Landroid/content/Intent;)Z

    move-result v1

    .line 214
    .local v1, donned:Z
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/google/glass/home/ScreenOffService$3;->this$0:Lcom/google/glass/home/ScreenOffService;

    #getter for: Lcom/google/glass/home/ScreenOffService;->isInNotificationWindow:Z
    invoke-static {v2}, Lcom/google/glass/home/ScreenOffService;->access$500(Lcom/google/glass/home/ScreenOffService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    invoke-static {}, Lcom/google/glass/home/ScreenOffService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DonState switched to doffed inside notification window, closing window"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v2, p0, Lcom/google/glass/home/ScreenOffService$3;->this$0:Lcom/google/glass/home/ScreenOffService;

    const/4 v3, 0x1

    #calls: Lcom/google/glass/home/ScreenOffService;->closeNotificationWindow(Z)V
    invoke-static {v2, v3}, Lcom/google/glass/home/ScreenOffService;->access$100(Lcom/google/glass/home/ScreenOffService;Z)V

    .line 220
    :cond_0
    if-nez v1, :cond_1

    .line 221
    iget-object v2, p0, Lcom/google/glass/home/ScreenOffService$3;->this$0:Lcom/google/glass/home/ScreenOffService;

    #getter for: Lcom/google/glass/home/ScreenOffService;->ttsHelper:Lcom/google/glass/util/TtsHelper;
    invoke-static {v2}, Lcom/google/glass/home/ScreenOffService;->access$600(Lcom/google/glass/home/ScreenOffService;)Lcom/google/glass/util/TtsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/util/TtsHelper;->stopSpeaking()V

    .line 226
    .end local v1           #donned:Z
    :cond_1
    :goto_0
    return-void

    .line 224
    :cond_2
    invoke-static {}, Lcom/google/glass/home/ScreenOffService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown action received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
