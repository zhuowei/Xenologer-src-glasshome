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
    .line 249
    iput-object p1, p0, Lcom/google/glass/home/ScreenOffService$4;->this$0:Lcom/google/glass/home/ScreenOffService;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 297
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

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    .line 252
    iget-object v5, p0, Lcom/google/glass/home/ScreenOffService$4;->this$0:Lcom/google/glass/home/ScreenOffService;

    invoke-virtual {v5}, Lcom/google/glass/home/ScreenOffService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/glass/hidden/DonState;->isDonned(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 253
    invoke-static {}, Lcom/google/glass/home/ScreenOffService;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Device was not donned, dropping notification"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :goto_0
    return-void

    .line 258
    :cond_0
    new-instance v5, Lcom/google/glass/util/SettingsHelper;

    invoke-direct {v5, p1}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/google/glass/util/SettingsHelper;->isGuestModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 259
    invoke-static {}, Lcom/google/glass/home/ScreenOffService;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Device is in guest mode. Dropping notification."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 263
    :cond_1
    iget-object v5, p0, Lcom/google/glass/home/ScreenOffService$4;->this$0:Lcom/google/glass/home/ScreenOffService;

    #getter for: Lcom/google/glass/home/ScreenOffService;->lastNotifyingSoundTime:J
    invoke-static {v5}, Lcom/google/glass/home/ScreenOffService;->access$700(Lcom/google/glass/home/ScreenOffService;)J

    move-result-wide v5

    const-wide/16 v7, 0x7d0

    add-long/2addr v5, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_2

    .line 265
    const-string v5, "numNotifications"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-le v5, v9, :cond_3

    .line 266
    invoke-static {}, Lcom/google/glass/home/ScreenOffService;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Playing multiple notification sound."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    sget-object v4, Lcom/google/glass/sound/SoundManager$SoundId;->NOTIFICATION_MULTIPLE:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 272
    .local v4, sound:Lcom/google/glass/sound/SoundManager$SoundId;
    :goto_1
    iget-object v5, p0, Lcom/google/glass/home/ScreenOffService$4;->this$0:Lcom/google/glass/home/ScreenOffService;

    #getter for: Lcom/google/glass/home/ScreenOffService;->soundManager:Lcom/google/glass/sound/SoundManager;
    invoke-static {v5}, Lcom/google/glass/home/ScreenOffService;->access$200(Lcom/google/glass/home/ScreenOffService;)Lcom/google/glass/sound/SoundManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 273
    iget-object v5, p0, Lcom/google/glass/home/ScreenOffService$4;->this$0:Lcom/google/glass/home/ScreenOffService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    #setter for: Lcom/google/glass/home/ScreenOffService;->lastNotifyingSoundTime:J
    invoke-static {v5, v6, v7}, Lcom/google/glass/home/ScreenOffService;->access$702(Lcom/google/glass/home/ScreenOffService;J)J

    .line 275
    .end local v4           #sound:Lcom/google/glass/sound/SoundManager$SoundId;
    :cond_2
    iget-object v5, p0, Lcom/google/glass/home/ScreenOffService$4;->this$0:Lcom/google/glass/home/ScreenOffService;

    #getter for: Lcom/google/glass/home/ScreenOffService;->powerHelper:Lcom/google/glass/util/PowerHelper;
    invoke-static {v5}, Lcom/google/glass/home/ScreenOffService;->access$800(Lcom/google/glass/home/ScreenOffService;)Lcom/google/glass/util/PowerHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/util/PowerHelper;->isScreenOn()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/google/glass/home/ScreenOffService$4;->this$0:Lcom/google/glass/home/ScreenOffService;

    invoke-virtual {v5}, Lcom/google/glass/home/ScreenOffService;->isTtsSpeaking()Z

    move-result v5

    if-nez v5, :cond_4

    .line 276
    invoke-static {}, Lcom/google/glass/home/ScreenOffService;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Screen is off, checking if we are in a notification window already"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string v5, "item"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 279
    .local v2, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    const-string v5, "item_id"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/google/glass/timeline/TimelineItemId;

    .line 281
    .local v3, itemId:Lcom/google/glass/timeline/TimelineItemId;
    const-string v5, "bundle_item"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 283
    .local v0, bundleItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    const-string v5, "bundle_item_id"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/google/glass/timeline/TimelineItemId;

    .line 285
    .local v1, bundleItemId:Lcom/google/glass/timeline/TimelineItemId;
    iget-object v5, p0, Lcom/google/glass/home/ScreenOffService$4;->this$0:Lcom/google/glass/home/ScreenOffService;

    #calls: Lcom/google/glass/home/ScreenOffService;->openNotificationWindow(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/glass/timeline/TimelineItemId;)V
    invoke-static {v5, v2, v0, v3, v1}, Lcom/google/glass/home/ScreenOffService;->access$900(Lcom/google/glass/home/ScreenOffService;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/glass/timeline/TimelineItemId;)V

    goto/16 :goto_0

    .line 269
    .end local v0           #bundleItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .end local v1           #bundleItemId:Lcom/google/glass/timeline/TimelineItemId;
    .end local v2           #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .end local v3           #itemId:Lcom/google/glass/timeline/TimelineItemId;
    :cond_3
    invoke-static {}, Lcom/google/glass/home/ScreenOffService;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Playing single notification sound."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    sget-object v4, Lcom/google/glass/sound/SoundManager$SoundId;->NOTIFICATION:Lcom/google/glass/sound/SoundManager$SoundId;

    .restart local v4       #sound:Lcom/google/glass/sound/SoundManager$SoundId;
    goto :goto_1

    .line 287
    .end local v4           #sound:Lcom/google/glass/sound/SoundManager$SoundId;
    :cond_4
    invoke-static {}, Lcom/google/glass/home/ScreenOffService;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Screen is on, drop the notification"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v5, p0, Lcom/google/glass/home/ScreenOffService$4;->this$0:Lcom/google/glass/home/ScreenOffService;

    const-wide/16 v6, 0x0

    #setter for: Lcom/google/glass/home/ScreenOffService;->timelineItemNotifyTime:J
    invoke-static {v5, v6, v7}, Lcom/google/glass/home/ScreenOffService;->access$1002(Lcom/google/glass/home/ScreenOffService;J)J

    .line 291
    iget-object v5, p0, Lcom/google/glass/home/ScreenOffService$4;->this$0:Lcom/google/glass/home/ScreenOffService;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.google.glass.ACTION_NOTIFICATION_RECEIVED"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/google/glass/home/ScreenOffService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
