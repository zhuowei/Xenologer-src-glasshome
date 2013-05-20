.class Lcom/google/glass/home/ScreenOffService$5$1;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "ScreenOffService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/ScreenOffService$5;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/home/ScreenOffService$5;


# direct methods
.method constructor <init>(Lcom/google/glass/home/ScreenOffService$5;)V
    .locals 0
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/google/glass/home/ScreenOffService$5$1;->this$1:Lcom/google/glass/home/ScreenOffService$5;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 3
    .parameter "utteranceId"

    .prologue
    .line 329
    invoke-static {}, Lcom/google/glass/home/ScreenOffService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTS playback completed, scheduling listening window to close shortly"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService$5$1;->this$1:Lcom/google/glass/home/ScreenOffService$5;

    iget-object v0, v0, Lcom/google/glass/home/ScreenOffService$5;->this$0:Lcom/google/glass/home/ScreenOffService;

    const-wide/16 v1, 0x1388

    #calls: Lcom/google/glass/home/ScreenOffService;->scheduleWindowClose(J)V
    invoke-static {v0, v1, v2}, Lcom/google/glass/home/ScreenOffService;->access$1000(Lcom/google/glass/home/ScreenOffService;J)V

    .line 331
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2
    .parameter "utteranceId"

    .prologue
    .line 323
    invoke-static {}, Lcom/google/glass/home/ScreenOffService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error playing TTS, closing listening window immediately"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService$5$1;->this$1:Lcom/google/glass/home/ScreenOffService$5;

    iget-object v0, v0, Lcom/google/glass/home/ScreenOffService$5;->this$0:Lcom/google/glass/home/ScreenOffService;

    const/4 v1, 0x1

    #calls: Lcom/google/glass/home/ScreenOffService;->closeNotificationWindow(Z)V
    invoke-static {v0, v1}, Lcom/google/glass/home/ScreenOffService;->access$100(Lcom/google/glass/home/ScreenOffService;Z)V

    .line 325
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 0
    .parameter "utteranceId"

    .prologue
    .line 319
    return-void
.end method
