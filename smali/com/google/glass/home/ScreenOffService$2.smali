.class Lcom/google/glass/home/ScreenOffService$2;
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
    .line 113
    iput-object p1, p0, Lcom/google/glass/home/ScreenOffService$2;->this$0:Lcom/google/glass/home/ScreenOffService;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/glass/home/ScreenOffService;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/screenOffInputReceiver"

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
    const/4 v7, -0x1

    .line 116
    invoke-virtual {p0}, Lcom/google/glass/home/ScreenOffService$2;->getTag()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Intent received: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, action:Ljava/lang/String;
    const-string v4, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 121
    iget-object v4, p0, Lcom/google/glass/home/ScreenOffService$2;->this$0:Lcom/google/glass/home/ScreenOffService;

    #getter for: Lcom/google/glass/home/ScreenOffService;->soundManager:Lcom/google/glass/sound/SoundManager;
    invoke-static {v4}, Lcom/google/glass/home/ScreenOffService;->access$200(Lcom/google/glass/home/ScreenOffService;)Lcom/google/glass/sound/SoundManager;

    move-result-object v4

    sget-object v5, Lcom/google/glass/sound/SoundManager$SoundId;->POWER_CONNECTED:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v4, v5}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v4, p0, Lcom/google/glass/home/ScreenOffService$2;->this$0:Lcom/google/glass/home/ScreenOffService;

    invoke-virtual {v4}, Lcom/google/glass/home/ScreenOffService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/glass/hidden/DonState;->isDonned(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 127
    invoke-static {}, Lcom/google/glass/home/ScreenOffService;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Device was not donned, dropping screen off input."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    :cond_2
    const-string v4, "com.google.glass.LOG_HEAD_GESTURE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 132
    invoke-static {p2}, Lcom/google/glass/gesture/HeadGestureUtils;->getHeadGesture(Landroid/content/Intent;)Lcom/google/glass/gesture/HeadGestureUtils$HeadGesture;

    move-result-object v2

    .line 133
    .local v2, gesture:Lcom/google/glass/gesture/HeadGestureUtils$HeadGesture;
    invoke-static {}, Lcom/google/glass/home/ScreenOffService;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/google/glass/gesture/HeadGestureUtils$HeadGesture;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " was received..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget-object v4, Lcom/google/glass/home/ScreenOffService$7;->$SwitchMap$com$google$glass$gesture$HeadGestureUtils$HeadGesture:[I

    invoke-virtual {v2}, Lcom/google/glass/gesture/HeadGestureUtils$HeadGesture;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 147
    invoke-static {}, Lcom/google/glass/home/ScreenOffService;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "... is not handled."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 136
    :pswitch_0
    invoke-static {}, Lcom/google/glass/home/ScreenOffService;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "... taking no action."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v4, p0, Lcom/google/glass/home/ScreenOffService$2;->this$0:Lcom/google/glass/home/ScreenOffService;

    const-string v5, "7"

    #calls: Lcom/google/glass/home/ScreenOffService;->logScreenOn(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/google/glass/home/ScreenOffService;->access$300(Lcom/google/glass/home/ScreenOffService;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :pswitch_1
    invoke-static {}, Lcom/google/glass/home/ScreenOffService;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "... checking if we should show notification."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v4, p0, Lcom/google/glass/home/ScreenOffService$2;->this$0:Lcom/google/glass/home/ScreenOffService;

    const-string v5, "10"

    #calls: Lcom/google/glass/home/ScreenOffService;->showNotificationIfNeeded(Ljava/lang/String;)Z
    invoke-static {v4, v5}, Lcom/google/glass/home/ScreenOffService;->access$400(Lcom/google/glass/home/ScreenOffService;Ljava/lang/String;)Z

    move-result v0

    .line 142
    .local v0, accepted:Z
    if-eqz v0, :cond_0

    .line 143
    iget-object v4, p0, Lcom/google/glass/home/ScreenOffService$2;->this$0:Lcom/google/glass/home/ScreenOffService;

    const-string v5, "10"

    #calls: Lcom/google/glass/home/ScreenOffService;->logScreenOn(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/google/glass/home/ScreenOffService;->access$300(Lcom/google/glass/home/ScreenOffService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 152
    .end local v0           #accepted:Z
    .end local v2           #gesture:Lcom/google/glass/gesture/HeadGestureUtils$HeadGesture;
    :cond_3
    const-string v4, "com.google.glass.action.TOUCH_GESTURE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 153
    sget-object v4, Lcom/google/glass/home/ScreenOffService$7;->$SwitchMap$com$google$glass$util$ScreenOffGesture:[I

    invoke-static {p2}, Lcom/google/glass/util/ScreenOffGesture;->fromIntent(Landroid/content/Intent;)Lcom/google/glass/util/ScreenOffGesture;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/util/ScreenOffGesture;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_0

    .line 155
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/glass/home/ScreenOffService$2;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Screen off TAP gesture received."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v4, p0, Lcom/google/glass/home/ScreenOffService$2;->this$0:Lcom/google/glass/home/ScreenOffService;

    const-string v5, "9"

    #calls: Lcom/google/glass/home/ScreenOffService;->logScreenOn(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/google/glass/home/ScreenOffService;->access$300(Lcom/google/glass/home/ScreenOffService;Ljava/lang/String;)V

    .line 157
    iget-object v4, p0, Lcom/google/glass/home/ScreenOffService$2;->this$0:Lcom/google/glass/home/ScreenOffService;

    const-string v5, "9"

    #calls: Lcom/google/glass/home/ScreenOffService;->showNotificationIfNeeded(Ljava/lang/String;)Z
    invoke-static {v4, v5}, Lcom/google/glass/home/ScreenOffService;->access$400(Lcom/google/glass/home/ScreenOffService;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/google/glass/home/ScreenOffService$2;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "We are showing the notification, as such consuming the broadcast!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {p0, v7}, Lcom/google/glass/home/ScreenOffService$2;->setResultCode(I)V

    .line 160
    invoke-virtual {p0}, Lcom/google/glass/home/ScreenOffService$2;->abortBroadcast()V

    goto/16 :goto_0

    .line 165
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/glass/home/ScreenOffService$2;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Screen off LONG_TAP gesture received."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v4, p0, Lcom/google/glass/home/ScreenOffService$2;->this$0:Lcom/google/glass/home/ScreenOffService;

    const-string v5, "1"

    #calls: Lcom/google/glass/home/ScreenOffService;->logScreenOn(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/google/glass/home/ScreenOffService;->access$300(Lcom/google/glass/home/ScreenOffService;Ljava/lang/String;)V

    .line 169
    sget-object v4, Lcom/google/glass/util/Labs$Feature;->LONG_TAP_TO_SEARCH:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v4}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 174
    invoke-static {p1}, Lcom/google/glass/home/LongTapReceiver;->maySearchOnLongTap(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 180
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/google/glass/home/ScreenOffService$2;->this$0:Lcom/google/glass/home/ScreenOffService;

    const-class v6, Lcom/google/glass/home/search/VoiceSearchActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "called_by_press_to_search"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "should_play_initial_sound"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "trigger_method"

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 186
    .local v3, voiceSearchIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/google/glass/home/ScreenOffService$2;->this$0:Lcom/google/glass/home/ScreenOffService;

    invoke-virtual {v4, v3}, Lcom/google/glass/home/ScreenOffService;->startActivity(Landroid/content/Intent;)V

    .line 187
    invoke-virtual {p0, v7}, Lcom/google/glass/home/ScreenOffService$2;->setResultCode(I)V

    .line 188
    invoke-virtual {p0}, Lcom/google/glass/home/ScreenOffService$2;->abortBroadcast()V

    goto/16 :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 153
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
