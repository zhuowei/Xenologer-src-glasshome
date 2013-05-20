.class Lcom/google/glass/home/ScreenOffService$5;
.super Ljava/lang/Object;
.source "ScreenOffService.java"

# interfaces
.implements Lcom/google/glass/voice/VoiceServiceListener;


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
    .line 292
    iput-object p1, p0, Lcom/google/glass/home/ScreenOffService$5;->this$0:Lcom/google/glass/home/ScreenOffService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioData([BII)V
    .locals 0
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 367
    return-void
.end method

.method public onResampledAudioData([BII)V
    .locals 0
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 370
    return-void
.end method

.method public onVoiceAmplitudeChanged(D)V
    .locals 0
    .parameter "amplitude"

    .prologue
    .line 373
    return-void
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)V
    .locals 7
    .parameter "command"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 295
    invoke-static {}, Lcom/google/glass/home/ScreenOffService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recognized voice command while screen off: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    sget-object v2, Lcom/google/glass/voice/VoiceCommand;->OK_GLASS:Lcom/google/glass/voice/VoiceCommand;

    if-ne p1, v2, :cond_0

    .line 299
    iget-object v2, p0, Lcom/google/glass/home/ScreenOffService$5;->this$0:Lcom/google/glass/home/ScreenOffService;

    invoke-static {v2}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/home/HomeApplication;->stopSpeaking()V

    .line 300
    iget-object v2, p0, Lcom/google/glass/home/ScreenOffService$5;->this$0:Lcom/google/glass/home/ScreenOffService;

    const-wide/16 v3, 0x1388

    #calls: Lcom/google/glass/home/ScreenOffService;->scheduleWindowClose(J)V
    invoke-static {v2, v3, v4}, Lcom/google/glass/home/ScreenOffService;->access$1000(Lcom/google/glass/home/ScreenOffService;J)V

    .line 304
    iget-object v2, p0, Lcom/google/glass/home/ScreenOffService$5;->this$0:Lcom/google/glass/home/ScreenOffService;

    #getter for: Lcom/google/glass/home/ScreenOffService;->soundManager:Lcom/google/glass/sound/SoundManager;
    invoke-static {v2}, Lcom/google/glass/home/ScreenOffService;->access$200(Lcom/google/glass/home/ScreenOffService;)Lcom/google/glass/sound/SoundManager;

    move-result-object v2

    sget-object v3, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_PENDING:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v2, v3}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 305
    iget-object v2, p0, Lcom/google/glass/home/ScreenOffService$5;->this$0:Lcom/google/glass/home/ScreenOffService;

    #getter for: Lcom/google/glass/home/ScreenOffService;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;
    invoke-static {v2}, Lcom/google/glass/home/ScreenOffService;->access$1100(Lcom/google/glass/home/ScreenOffService;)Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    move-result-object v2

    sget-object v3, Lcom/google/glass/voice/VoiceConfig;->NOTIFICATION:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v2, v3, v5}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->setConfig(Lcom/google/glass/voice/VoiceConfig;Z)V

    .line 306
    iget-object v2, p0, Lcom/google/glass/home/ScreenOffService$5;->this$0:Lcom/google/glass/home/ScreenOffService;

    const-string v3, "1"

    #calls: Lcom/google/glass/home/ScreenOffService;->logVoiceCommand(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/google/glass/home/ScreenOffService;->access$1200(Lcom/google/glass/home/ScreenOffService;Ljava/lang/String;)V

    .line 358
    :goto_0
    return-void

    .line 307
    :cond_0
    sget-object v2, Lcom/google/glass/voice/VoiceCommand;->READ_ALOUD:Lcom/google/glass/voice/VoiceCommand;

    if-ne p1, v2, :cond_2

    .line 310
    iget-object v2, p0, Lcom/google/glass/home/ScreenOffService$5;->this$0:Lcom/google/glass/home/ScreenOffService;

    #getter for: Lcom/google/glass/home/ScreenOffService;->notificationWindowHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/google/glass/home/ScreenOffService;->access$1300(Lcom/google/glass/home/ScreenOffService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 311
    iget-object v2, p0, Lcom/google/glass/home/ScreenOffService$5;->this$0:Lcom/google/glass/home/ScreenOffService;

    #getter for: Lcom/google/glass/home/ScreenOffService;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;
    invoke-static {v2}, Lcom/google/glass/home/ScreenOffService;->access$1100(Lcom/google/glass/home/ScreenOffService;)Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    move-result-object v2

    sget-object v3, Lcom/google/glass/voice/VoiceConfig;->GUARD:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v2, v3, v5}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->setConfig(Lcom/google/glass/voice/VoiceConfig;Z)V

    .line 312
    iget-object v2, p0, Lcom/google/glass/home/ScreenOffService$5;->this$0:Lcom/google/glass/home/ScreenOffService;

    const-string v3, "9"

    #calls: Lcom/google/glass/home/ScreenOffService;->logVoiceCommand(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/google/glass/home/ScreenOffService;->access$1200(Lcom/google/glass/home/ScreenOffService;Ljava/lang/String;)V

    .line 316
    iget-object v2, p0, Lcom/google/glass/home/ScreenOffService$5;->this$0:Lcom/google/glass/home/ScreenOffService;

    #getter for: Lcom/google/glass/home/ScreenOffService;->soundManager:Lcom/google/glass/sound/SoundManager;
    invoke-static {v2}, Lcom/google/glass/home/ScreenOffService;->access$200(Lcom/google/glass/home/ScreenOffService;)Lcom/google/glass/sound/SoundManager;

    move-result-object v2

    sget-object v3, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_COMPLETED:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v2, v3}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 317
    new-instance v0, Lcom/google/glass/home/ScreenOffService$5$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/ScreenOffService$5$1;-><init>(Lcom/google/glass/home/ScreenOffService$5;)V

    .line 336
    .local v0, listener:Landroid/speech/tts/UtteranceProgressListener;
    iget-object v2, p0, Lcom/google/glass/home/ScreenOffService$5;->this$0:Lcom/google/glass/home/ScreenOffService;

    #getter for: Lcom/google/glass/home/ScreenOffService;->timelineNotificationBundleItemId:Lcom/google/glass/timeline/TimelineItemId;
    invoke-static {v2}, Lcom/google/glass/home/ScreenOffService;->access$1400(Lcom/google/glass/home/ScreenOffService;)Lcom/google/glass/timeline/TimelineItemId;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 337
    new-instance v2, Lcom/google/glass/home/timeline/ReadTimelineItemAloud;

    iget-object v3, p0, Lcom/google/glass/home/ScreenOffService$5;->this$0:Lcom/google/glass/home/ScreenOffService;

    invoke-direct {v2, v3, v0}, Lcom/google/glass/home/timeline/ReadTimelineItemAloud;-><init>(Landroid/content/Context;Landroid/speech/tts/UtteranceProgressListener;)V

    new-array v3, v5, [Lcom/google/glass/timeline/TimelineItemId;

    iget-object v4, p0, Lcom/google/glass/home/ScreenOffService$5;->this$0:Lcom/google/glass/home/ScreenOffService;

    #getter for: Lcom/google/glass/home/ScreenOffService;->timelineNotificationBundleItemId:Lcom/google/glass/timeline/TimelineItemId;
    invoke-static {v4}, Lcom/google/glass/home/ScreenOffService;->access$1400(Lcom/google/glass/home/ScreenOffService;)Lcom/google/glass/timeline/TimelineItemId;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/google/glass/home/timeline/ReadTimelineItemAloud;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 340
    :cond_1
    new-instance v2, Lcom/google/glass/home/timeline/ReadTimelineItemAloud;

    iget-object v3, p0, Lcom/google/glass/home/ScreenOffService$5;->this$0:Lcom/google/glass/home/ScreenOffService;

    invoke-direct {v2, v3, v0}, Lcom/google/glass/home/timeline/ReadTimelineItemAloud;-><init>(Landroid/content/Context;Landroid/speech/tts/UtteranceProgressListener;)V

    new-array v3, v5, [Lcom/google/glass/timeline/TimelineItemId;

    iget-object v4, p0, Lcom/google/glass/home/ScreenOffService$5;->this$0:Lcom/google/glass/home/ScreenOffService;

    #getter for: Lcom/google/glass/home/ScreenOffService;->timelineNotificationItemId:Lcom/google/glass/timeline/TimelineItemId;
    invoke-static {v4}, Lcom/google/glass/home/ScreenOffService;->access$1500(Lcom/google/glass/home/ScreenOffService;)Lcom/google/glass/timeline/TimelineItemId;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/google/glass/home/timeline/ReadTimelineItemAloud;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 343
    .end local v0           #listener:Landroid/speech/tts/UtteranceProgressListener;
    :cond_2
    sget-object v2, Lcom/google/glass/voice/VoiceCommand;->REPLY:Lcom/google/glass/voice/VoiceCommand;

    if-ne p1, v2, :cond_3

    .line 344
    iget-object v2, p0, Lcom/google/glass/home/ScreenOffService$5;->this$0:Lcom/google/glass/home/ScreenOffService;

    #getter for: Lcom/google/glass/home/ScreenOffService;->notificationWindowHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/google/glass/home/ScreenOffService;->access$1300(Lcom/google/glass/home/ScreenOffService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 345
    iget-object v2, p0, Lcom/google/glass/home/ScreenOffService$5;->this$0:Lcom/google/glass/home/ScreenOffService;

    #getter for: Lcom/google/glass/home/ScreenOffService;->voiceServiceBinder:Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;
    invoke-static {v2}, Lcom/google/glass/home/ScreenOffService;->access$1100(Lcom/google/glass/home/ScreenOffService;)Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    move-result-object v2

    sget-object v3, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v2, v3, v5}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;->setConfig(Lcom/google/glass/voice/VoiceConfig;Z)V

    .line 346
    iget-object v2, p0, Lcom/google/glass/home/ScreenOffService$5;->this$0:Lcom/google/glass/home/ScreenOffService;

    const-string v3, "10"

    #calls: Lcom/google/glass/home/ScreenOffService;->logVoiceCommand(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/google/glass/home/ScreenOffService;->access$1200(Lcom/google/glass/home/ScreenOffService;Ljava/lang/String;)V

    .line 349
    iget-object v2, p0, Lcom/google/glass/home/ScreenOffService$5;->this$0:Lcom/google/glass/home/ScreenOffService;

    #getter for: Lcom/google/glass/home/ScreenOffService;->soundManager:Lcom/google/glass/sound/SoundManager;
    invoke-static {v2}, Lcom/google/glass/home/ScreenOffService;->access$200(Lcom/google/glass/home/ScreenOffService;)Lcom/google/glass/sound/SoundManager;

    move-result-object v2

    sget-object v3, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_PENDING:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v2, v3}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 350
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.glass.ACTION_SEND_VOICE_MESSAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 351
    .local v1, replyIntent:Landroid/content/Intent;
    const-string v2, "REPLY_TO_ID"

    iget-object v3, p0, Lcom/google/glass/home/ScreenOffService$5;->this$0:Lcom/google/glass/home/ScreenOffService;

    #getter for: Lcom/google/glass/home/ScreenOffService;->timelineNotificationItemId:Lcom/google/glass/timeline/TimelineItemId;
    invoke-static {v3}, Lcom/google/glass/home/ScreenOffService;->access$1500(Lcom/google/glass/home/ScreenOffService;)Lcom/google/glass/timeline/TimelineItemId;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    const-string v2, "should_finish_turn_screen_off"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 354
    iget-object v2, p0, Lcom/google/glass/home/ScreenOffService$5;->this$0:Lcom/google/glass/home/ScreenOffService;

    invoke-virtual {v2, v1}, Lcom/google/glass/home/ScreenOffService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 356
    .end local v1           #replyIntent:Landroid/content/Intent;
    :cond_3
    invoke-static {}, Lcom/google/glass/home/ScreenOffService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown voice command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onVoiceServiceConnected()V
    .locals 0

    .prologue
    .line 361
    return-void
.end method

.method public onVoiceServiceDisconnected()V
    .locals 0

    .prologue
    .line 364
    return-void
.end method
