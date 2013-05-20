.class Lcom/google/glass/home/ScreenOffService$4;
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
    .line 239
    iput-object p1, p0, Lcom/google/glass/home/ScreenOffService$4;->this$0:Lcom/google/glass/home/ScreenOffService;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/glass/home/ScreenOffService;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/timelineUpdatedReceiver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    .line 242
    iget-object v3, p0, Lcom/google/glass/home/ScreenOffService$4;->this$0:Lcom/google/glass/home/ScreenOffService;

    invoke-virtual {v3}, Lcom/google/glass/home/ScreenOffService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/hidden/DonState;->isDonned(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 243
    invoke-static {}, Lcom/google/glass/home/ScreenOffService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Device was not donned, dropping notification."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :goto_0
    return-void

    .line 248
    :cond_0
    new-instance v3, Lcom/google/glass/util/SettingsHelper;

    invoke-direct {v3, p1}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/google/glass/util/SettingsHelper;->isGuestModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 249
    invoke-static {}, Lcom/google/glass/home/ScreenOffService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Device is in guest mode. Dropping notification."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    :cond_1
    iget-object v3, p0, Lcom/google/glass/home/ScreenOffService$4;->this$0:Lcom/google/glass/home/ScreenOffService;

    #getter for: Lcom/google/glass/home/ScreenOffService;->lastNotifyingSoundTime:J
    invoke-static {v3}, Lcom/google/glass/home/ScreenOffService;->access$600(Lcom/google/glass/home/ScreenOffService;)J

    move-result-wide v3

    const-wide/16 v5, 0x7d0

    add-long/2addr v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    .line 255
    const-string v3, "numNotifications"

    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-le v3, v7, :cond_3

    .line 256
    invoke-static {}, Lcom/google/glass/home/ScreenOffService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Playing multiple notification sound."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->NOTIFICATION_MULTIPLE:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 262
    .local v2, sound:Lcom/google/glass/sound/SoundManager$SoundId;
    :goto_1
    iget-object v3, p0, Lcom/google/glass/home/ScreenOffService$4;->this$0:Lcom/google/glass/home/ScreenOffService;

    #getter for: Lcom/google/glass/home/ScreenOffService;->soundManager:Lcom/google/glass/sound/SoundManager;
    invoke-static {v3}, Lcom/google/glass/home/ScreenOffService;->access$200(Lcom/google/glass/home/ScreenOffService;)Lcom/google/glass/sound/SoundManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 263
    iget-object v3, p0, Lcom/google/glass/home/ScreenOffService$4;->this$0:Lcom/google/glass/home/ScreenOffService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    #setter for: Lcom/google/glass/home/ScreenOffService;->lastNotifyingSoundTime:J
    invoke-static {v3, v4, v5}, Lcom/google/glass/home/ScreenOffService;->access$602(Lcom/google/glass/home/ScreenOffService;J)J

    .line 265
    .end local v2           #sound:Lcom/google/glass/sound/SoundManager$SoundId;
    :cond_2
    iget-object v3, p0, Lcom/google/glass/home/ScreenOffService$4;->this$0:Lcom/google/glass/home/ScreenOffService;

    #getter for: Lcom/google/glass/home/ScreenOffService;->powerHelper:Lcom/google/glass/util/PowerHelper;
    invoke-static {v3}, Lcom/google/glass/home/ScreenOffService;->access$700(Lcom/google/glass/home/ScreenOffService;)Lcom/google/glass/util/PowerHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/util/PowerHelper;->isScreenOn()Z

    move-result v3

    if-nez v3, :cond_4

    .line 266
    invoke-static {}, Lcom/google/glass/home/ScreenOffService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Screen is off, checking if we are in a notification window already."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string v3, "item_id"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/google/glass/timeline/TimelineItemId;

    .line 269
    .local v1, itemId:Lcom/google/glass/timeline/TimelineItemId;
    const-string v3, "bundle_item_id"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/TimelineItemId;

    .line 271
    .local v0, bundleItemId:Lcom/google/glass/timeline/TimelineItemId;
    iget-object v3, p0, Lcom/google/glass/home/ScreenOffService$4;->this$0:Lcom/google/glass/home/ScreenOffService;

    #calls: Lcom/google/glass/home/ScreenOffService;->openNotificationWindow(Lcom/google/glass/timeline/TimelineItemId;Lcom/google/glass/timeline/TimelineItemId;)V
    invoke-static {v3, v1, v0}, Lcom/google/glass/home/ScreenOffService;->access$800(Lcom/google/glass/home/ScreenOffService;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/glass/timeline/TimelineItemId;)V

    goto :goto_0

    .line 259
    .end local v0           #bundleItemId:Lcom/google/glass/timeline/TimelineItemId;
    .end local v1           #itemId:Lcom/google/glass/timeline/TimelineItemId;
    :cond_3
    invoke-static {}, Lcom/google/glass/home/ScreenOffService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Playing single notification sound."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->NOTIFICATION:Lcom/google/glass/sound/SoundManager$SoundId;

    .restart local v2       #sound:Lcom/google/glass/sound/SoundManager$SoundId;
    goto :goto_1

    .line 273
    .end local v2           #sound:Lcom/google/glass/sound/SoundManager$SoundId;
    :cond_4
    invoke-static {}, Lcom/google/glass/home/ScreenOffService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Screen is on, drop the notification."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v3, p0, Lcom/google/glass/home/ScreenOffService$4;->this$0:Lcom/google/glass/home/ScreenOffService;

    const-wide/16 v4, 0x0

    #setter for: Lcom/google/glass/home/ScreenOffService;->timelineItemNotifyTime:J
    invoke-static {v3, v4, v5}, Lcom/google/glass/home/ScreenOffService;->access$902(Lcom/google/glass/home/ScreenOffService;J)J

    .line 277
    iget-object v3, p0, Lcom/google/glass/home/ScreenOffService$4;->this$0:Lcom/google/glass/home/ScreenOffService;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.google.glass.ACTION_NOTIFICATION_RECEIVED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/google/glass/home/ScreenOffService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
