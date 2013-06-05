.class Lcom/google/glass/home/ScreenOffService$7;
.super Landroid/os/AsyncTask;
.source "ScreenOffService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/ScreenOffService;->triggerReply()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/ScreenOffService;

.field final synthetic val$itemId:Lcom/google/glass/timeline/TimelineItemId;


# direct methods
.method constructor <init>(Lcom/google/glass/home/ScreenOffService;Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/google/glass/home/ScreenOffService$7;->this$0:Lcom/google/glass/home/ScreenOffService;

    iput-object p2, p0, Lcom/google/glass/home/ScreenOffService$7;->val$itemId:Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 399
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/home/ScreenOffService$7;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .parameter "params"

    .prologue
    const/4 v8, 0x0

    .line 402
    iget-object v5, p0, Lcom/google/glass/home/ScreenOffService$7;->this$0:Lcom/google/glass/home/ScreenOffService;

    iget-object v5, v5, Lcom/google/glass/home/ScreenOffService;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    iget-object v6, p0, Lcom/google/glass/home/ScreenOffService$7;->this$0:Lcom/google/glass/home/ScreenOffService;

    invoke-virtual {v6}, Lcom/google/glass/home/ScreenOffService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/google/glass/home/ScreenOffService$7;->val$itemId:Lcom/google/glass/timeline/TimelineItemId;

    invoke-virtual {v7}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/glass/timeline/TimelineHelper;->queryTimelineItem(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v1

    .line 404
    .local v1, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getMenuItemList()Ljava/util/List;

    move-result-object v3

    .line 405
    .local v3, menuItems:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/MenuItem;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlex/glass/common/proto/MenuItem;

    .line 406
    .local v2, menuItem:Lcom/google/googlex/glass/common/proto/MenuItem;
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/MenuItem;->getAction()Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    move-result-object v5

    sget-object v6, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->REPLY:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    if-ne v5, v6, :cond_0

    .line 409
    iget-object v5, p0, Lcom/google/glass/home/ScreenOffService$7;->this$0:Lcom/google/glass/home/ScreenOffService;

    #getter for: Lcom/google/glass/home/ScreenOffService;->soundManager:Lcom/google/glass/sound/SoundManager;
    invoke-static {v5}, Lcom/google/glass/home/ScreenOffService;->access$200(Lcom/google/glass/home/ScreenOffService;)Lcom/google/glass/sound/SoundManager;

    move-result-object v5

    sget-object v6, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_PENDING:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v5, v6}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 410
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.google.glass.ACTION_SEND_VOICE_MESSAGE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 411
    .local v4, replyIntent:Landroid/content/Intent;
    const-string v5, "trigger_method"

    const/16 v6, 0xa

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 413
    const-string v5, "REPLY_TO_ID"

    iget-object v6, p0, Lcom/google/glass/home/ScreenOffService$7;->val$itemId:Lcom/google/glass/timeline/TimelineItemId;

    invoke-virtual {v6}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    const-string v5, "should_finish_turn_screen_off"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 416
    iget-object v5, p0, Lcom/google/glass/home/ScreenOffService$7;->this$0:Lcom/google/glass/home/ScreenOffService;

    invoke-virtual {v5, v4}, Lcom/google/glass/home/ScreenOffService;->startActivity(Landroid/content/Intent;)V

    .line 424
    .end local v2           #menuItem:Lcom/google/googlex/glass/common/proto/MenuItem;
    .end local v4           #replyIntent:Landroid/content/Intent;
    :goto_0
    return-object v8

    .line 422
    :cond_1
    iget-object v5, p0, Lcom/google/glass/home/ScreenOffService$7;->this$0:Lcom/google/glass/home/ScreenOffService;

    #getter for: Lcom/google/glass/home/ScreenOffService;->soundManager:Lcom/google/glass/sound/SoundManager;
    invoke-static {v5}, Lcom/google/glass/home/ScreenOffService;->access$200(Lcom/google/glass/home/ScreenOffService;)Lcom/google/glass/sound/SoundManager;

    move-result-object v5

    sget-object v6, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v5, v6}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    goto :goto_0
.end method
