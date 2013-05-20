.class Lcom/google/glass/voice/network/RecognizerController$1;
.super Landroid/os/Handler;
.source "RecognizerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/network/RecognizerController;-><init>(Lcom/google/android/speech/Recognizer;Lcom/google/android/speech/SpeechLevelSource;Lcom/google/android/speech/SpeechSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/network/RecognizerController;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/network/RecognizerController;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/glass/voice/network/RecognizerController$1;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 100
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 116
    :goto_0
    return-void

    .line 102
    :pswitch_0
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Manually timed out request after 20000ms."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$1;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;
    invoke-static {v0}, Lcom/google/glass/voice/network/RecognizerController;->access$100(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/network/QueueingGrecoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$1;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;
    invoke-static {v0}, Lcom/google/glass/voice/network/RecognizerController;->access$100(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/network/QueueingGrecoListener;

    move-result-object v0

    new-instance v1, Lcom/google/android/speech/exception/AudioRecognizeException;

    const-string v2, "Manually timed out"

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/google/android/speech/exception/AudioRecognizeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->onError(Lcom/google/android/speech/exception/RecognizeException;)V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$1;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->recognizer:Lcom/google/android/speech/Recognizer;
    invoke-static {v0}, Lcom/google/glass/voice/network/RecognizerController;->access$200(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/android/speech/Recognizer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/speech/Recognizer;->cancel()V

    .line 113
    invoke-static {}, Lcom/google/glass/net/NetworkUtil;->pingGoogle()Z

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
