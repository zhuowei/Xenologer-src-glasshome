.class Lcom/google/glass/util/TtsHelper$1;
.super Landroid/os/Handler;
.source "TtsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/TtsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/TtsHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/util/TtsHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 40
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 63
    :goto_0
    return-void

    .line 42
    :pswitch_0
    invoke-static {}, Lcom/google/glass/util/TtsHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Speaking text"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    const/4 v1, 0x3

    invoke-static {}, Lcom/google/glass/util/TtsHelper;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Speaking text: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    #getter for: Lcom/google/glass/util/TtsHelper;->pendingTextToSynthesize:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/glass/util/TtsHelper;->access$100(Lcom/google/glass/util/TtsHelper;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    iget-object v2, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    #getter for: Lcom/google/glass/util/TtsHelper;->pendingTtsListener:Landroid/speech/tts/UtteranceProgressListener;
    invoke-static {v2}, Lcom/google/glass/util/TtsHelper;->access$300(Lcom/google/glass/util/TtsHelper;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v2

    #setter for: Lcom/google/glass/util/TtsHelper;->currentTtsListener:Landroid/speech/tts/UtteranceProgressListener;
    invoke-static {v1, v2}, Lcom/google/glass/util/TtsHelper;->access$202(Lcom/google/glass/util/TtsHelper;Landroid/speech/tts/UtteranceProgressListener;)Landroid/speech/tts/UtteranceProgressListener;

    .line 46
    iget-object v1, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    #getter for: Lcom/google/glass/util/TtsHelper;->textToSpeech:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lcom/google/glass/util/TtsHelper;->access$400(Lcom/google/glass/util/TtsHelper;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    #getter for: Lcom/google/glass/util/TtsHelper;->currentTtsListener:Landroid/speech/tts/UtteranceProgressListener;
    invoke-static {v2}, Lcom/google/glass/util/TtsHelper;->access$200(Lcom/google/glass/util/TtsHelper;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 52
    .local v0, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "utteranceId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v1, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    #getter for: Lcom/google/glass/util/TtsHelper;->textToSpeech:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lcom/google/glass/util/TtsHelper;->access$400(Lcom/google/glass/util/TtsHelper;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    #getter for: Lcom/google/glass/util/TtsHelper;->pendingTextToSynthesize:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/glass/util/TtsHelper;->access$100(Lcom/google/glass/util/TtsHelper;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 55
    iget-object v1, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    #setter for: Lcom/google/glass/util/TtsHelper;->pendingTextToSynthesize:Ljava/lang/String;
    invoke-static {v1, v6}, Lcom/google/glass/util/TtsHelper;->access$102(Lcom/google/glass/util/TtsHelper;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    #setter for: Lcom/google/glass/util/TtsHelper;->pendingTtsListener:Landroid/speech/tts/UtteranceProgressListener;
    invoke-static {v1, v6}, Lcom/google/glass/util/TtsHelper;->access$302(Lcom/google/glass/util/TtsHelper;Landroid/speech/tts/UtteranceProgressListener;)Landroid/speech/tts/UtteranceProgressListener;

    goto :goto_0

    .line 59
    .end local v0           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_1
    invoke-static {}, Lcom/google/glass/util/TtsHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Stopping speaking"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    iget-object v1, p0, Lcom/google/glass/util/TtsHelper$1;->this$0:Lcom/google/glass/util/TtsHelper;

    #getter for: Lcom/google/glass/util/TtsHelper;->textToSpeech:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lcom/google/glass/util/TtsHelper;->access$400(Lcom/google/glass/util/TtsHelper;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    goto/16 :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
