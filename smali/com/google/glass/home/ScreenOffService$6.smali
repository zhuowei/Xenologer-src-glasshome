.class Lcom/google/glass/home/ScreenOffService$6;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "ScreenOffService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/ScreenOffService;->triggerReadAloud()V
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
    .line 358
    iput-object p1, p0, Lcom/google/glass/home/ScreenOffService$6;->this$0:Lcom/google/glass/home/ScreenOffService;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 3
    .parameter "utteranceId"

    .prologue
    .line 370
    invoke-static {}, Lcom/google/glass/home/ScreenOffService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTS playback completed, scheduling listening window to close shortly"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService$6;->this$0:Lcom/google/glass/home/ScreenOffService;

    const-wide/16 v1, 0x1388

    #calls: Lcom/google/glass/home/ScreenOffService;->scheduleWindowClose(J)V
    invoke-static {v0, v1, v2}, Lcom/google/glass/home/ScreenOffService;->access$1300(Lcom/google/glass/home/ScreenOffService;J)V

    .line 372
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2
    .parameter "utteranceId"

    .prologue
    .line 364
    invoke-static {}, Lcom/google/glass/home/ScreenOffService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error playing TTS, closing listening window immediately"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v0, p0, Lcom/google/glass/home/ScreenOffService$6;->this$0:Lcom/google/glass/home/ScreenOffService;

    const/4 v1, 0x1

    #calls: Lcom/google/glass/home/ScreenOffService;->closeNotificationWindow(Z)V
    invoke-static {v0, v1}, Lcom/google/glass/home/ScreenOffService;->access$100(Lcom/google/glass/home/ScreenOffService;Z)V

    .line 366
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 0
    .parameter "utteranceId"

    .prologue
    .line 360
    return-void
.end method
