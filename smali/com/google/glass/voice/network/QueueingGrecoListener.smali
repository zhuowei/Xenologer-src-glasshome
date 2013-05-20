.class public Lcom/google/glass/voice/network/QueueingGrecoListener;
.super Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;
.source "QueueingGrecoListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/network/QueueingGrecoListener$1;,
        Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;
    }
.end annotation


# static fields
.field private static final ON_BEGINNING_OF_SPEECH:I = 0x1

.field private static final ON_DONE:I = 0x9

.field private static final ON_END_OF_SPEECH:I = 0x2

.field private static final ON_ERROR:I = 0xa

.field private static final ON_MAJEL_RESULT:I = 0x6

.field private static final ON_MEDIA_DATA_RESULT:I = 0x7

.field private static final ON_NO_SPEECH_DETECTED:I = 0x3

.field private static final ON_READY_FOR_SPEECH:I = 0x0

.field private static final ON_RECOGNITION_CANCELLED:I = 0x4

.field private static final ON_RECOGNITION_RESULT:I = 0x8

.field private static final ON_SPEECH_RECOGNITION_STARTED:I = 0x5

.field private static final QUEUE_PROCESSED:I = 0xb

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private handler:Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;

.field private handlerThread:Landroid/os/HandlerThread;

.field private isCanceled:Z

.field private listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

.field private queue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/google/glass/voice/network/QueueingGrecoListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/QueueingGrecoListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    .line 279
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/voice/network/QueueingGrecoListener;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnBeginningOfSpeech()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/glass/voice/network/QueueingGrecoListener;Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnRecognitionResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/glass/voice/network/QueueingGrecoListener;)Landroid/os/HandlerThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->handlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/voice/network/QueueingGrecoListener;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnDone()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/voice/network/QueueingGrecoListener;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnEndOfSpeech()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/voice/network/QueueingGrecoListener;Lcom/google/android/speech/exception/RecognizeException;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnError(Lcom/google/android/speech/exception/RecognizeException;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/voice/network/QueueingGrecoListener;Lcom/google/majel/proto/MajelProtos$MajelResponse;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnMajelResult(Lcom/google/majel/proto/MajelProtos$MajelResponse;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/voice/network/QueueingGrecoListener;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnMediaDataResult([B)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/glass/voice/network/QueueingGrecoListener;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnNoSpeechDetected()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/glass/voice/network/QueueingGrecoListener;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnReadyForSpeech(FF)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/glass/voice/network/QueueingGrecoListener;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnRecognitionCancelled()V

    return-void
.end method

.method private declared-synchronized addToQueue(ILjava/lang/Object;)V
    .locals 4
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 102
    .local v0, message:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 103
    if-eqz p2, :cond_0

    .line 104
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 107
    :cond_0
    sget-object v1, Lcom/google/glass/voice/network/QueueingGrecoListener;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding message to queue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v1, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v0           #message:Landroid/os/Message;
    :goto_0
    monitor-exit p0

    return-void

    .line 101
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 109
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private dispatchOnBeginningOfSpeech()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    invoke-virtual {v0}, Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;->onBeginningOfSpeech()V

    .line 137
    return-void
.end method

.method private dispatchOnDone()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    invoke-virtual {v0}, Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;->onDone()V

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    .line 153
    return-void
.end method

.method private dispatchOnEndOfSpeech()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    invoke-virtual {v0}, Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;->onEndOfSpeech()V

    .line 168
    return-void
.end method

.method private dispatchOnError(Lcom/google/android/speech/exception/RecognizeException;)V
    .locals 1
    .parameter "exception"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;->onError(Lcom/google/android/speech/exception/RecognizeException;)V

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    .line 184
    return-void
.end method

.method private dispatchOnMajelResult(Lcom/google/majel/proto/MajelProtos$MajelResponse;)V
    .locals 1
    .parameter "majelResponse"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;->onMajelResult(Lcom/google/majel/proto/MajelProtos$MajelResponse;)V

    .line 199
    return-void
.end method

.method private dispatchOnMediaDataResult([B)V
    .locals 1
    .parameter "bytes"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;->onMediaDataResult([B)V

    .line 214
    return-void
.end method

.method private dispatchOnNoSpeechDetected()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    invoke-virtual {v0}, Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;->onNoSpeechDetected()V

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    .line 230
    return-void
.end method

.method private dispatchOnReadyForSpeech(FF)V
    .locals 1
    .parameter "noiseLevel"
    .parameter "snr"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;->onReadyForSpeech(FF)V

    .line 246
    return-void
.end method

.method private dispatchOnRecognitionCancelled()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    invoke-virtual {v0}, Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;->onRecognitionCancelled()V

    .line 261
    return-void
.end method

.method private dispatchOnRecognitionResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V
    .locals 1
    .parameter "recognitionEvent"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;->onRecognitionResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V

    .line 276
    return-void
.end method


# virtual methods
.method getQueueForTest()Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    invoke-static {}, Lcom/google/glass/util/Assert;->isTest()Z

    .line 330
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method handlerHasMessagesForTest()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 335
    invoke-static {}, Lcom/google/glass/util/Assert;->isTest()Z

    .line 336
    iget-object v2, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->handler:Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;

    invoke-virtual {v2, v1}, Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->handler:Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->handler:Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->handler:Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->handler:Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->handler:Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->handler:Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->handler:Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;

    invoke-virtual {v2, v0}, Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->handler:Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->handler:Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->handler:Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->handler:Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public declared-synchronized onBeginningOfSpeech()V
    .locals 2

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    if-nez v0, :cond_1

    .line 128
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->addToQueue(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 130
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnBeginningOfSpeech()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDone()V
    .locals 2

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    if-nez v0, :cond_1

    .line 143
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->addToQueue(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 145
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnDone()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onEndOfSpeech()V
    .locals 2

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    if-nez v0, :cond_1

    .line 159
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->addToQueue(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 161
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnEndOfSpeech()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onError(Lcom/google/android/speech/exception/RecognizeException;)V
    .locals 1
    .parameter "exception"

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    if-nez v0, :cond_1

    .line 174
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->addToQueue(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 176
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnError(Lcom/google/android/speech/exception/RecognizeException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onMajelResult(Lcom/google/majel/proto/MajelProtos$MajelResponse;)V
    .locals 1
    .parameter "majelResponse"

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    if-nez v0, :cond_1

    .line 190
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->addToQueue(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 192
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnMajelResult(Lcom/google/majel/proto/MajelProtos$MajelResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onMediaDataResult([B)V
    .locals 1
    .parameter "bytes"

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    if-nez v0, :cond_1

    .line 205
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->addToQueue(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 207
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnMediaDataResult([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onNoSpeechDetected()V
    .locals 2

    .prologue
    .line 218
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    if-nez v0, :cond_1

    .line 220
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->addToQueue(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 222
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnNoSpeechDetected()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onReadyForSpeech(FF)V
    .locals 2
    .parameter "noiseLevel"
    .parameter "snr"

    .prologue
    .line 234
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    if-nez v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    if-nez v1, :cond_1

    .line 236
    const/4 v1, 0x2

    new-array v0, v1, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 237
    .local v0, args:[F
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->addToQueue(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    .end local v0           #args:[F
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 239
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnReadyForSpeech(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 234
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onRecognitionCancelled()V
    .locals 2

    .prologue
    .line 250
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    if-nez v0, :cond_1

    .line 252
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->addToQueue(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 254
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnRecognitionCancelled()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRecognitionResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V
    .locals 1
    .parameter "recognitionEvent"

    .prologue
    .line 265
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    if-nez v0, :cond_1

    .line 267
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->addToQueue(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 269
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnRecognitionResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetCanceledForTest()V
    .locals 1

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/glass/util/Assert;->isTest()Z

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCanceled()V
    .locals 1

    .prologue
    .line 116
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setListener(Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;)V
    .locals 6
    .parameter "listener"

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    if-eqz v2, :cond_0

    .line 66
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Listener was already set"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 69
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    .line 72
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "QueueingGrecoListener"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->handlerThread:Landroid/os/HandlerThread;

    .line 73
    iget-object v2, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 74
    new-instance v2, Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;

    iget-object v3, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;-><init>(Lcom/google/glass/voice/network/QueueingGrecoListener;Landroid/os/Looper;Lcom/google/glass/voice/network/QueueingGrecoListener$1;)V

    iput-object v2, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->handler:Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;

    .line 75
    iget-object v3, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 77
    iget-object v2, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 78
    .local v1, message:Landroid/os/Message;
    sget-object v2, Lcom/google/glass/voice/network/QueueingGrecoListener;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing message from queue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v2, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->handler:Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;

    invoke-virtual {v2, v1}, Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 81
    .end local v1           #message:Landroid/os/Message;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 84
    :try_start_5
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 85
    .local v0, done:Landroid/os/Message;
    const/16 v2, 0xb

    iput v2, v0, Landroid/os/Message;->what:I

    .line 86
    iget-object v2, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->handler:Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;

    invoke-virtual {v2, v0}, Lcom/google/glass/voice/network/QueueingGrecoListener$QueueHandler;->sendMessage(Landroid/os/Message;)Z

    .line 89
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->queue:Ljava/util/concurrent/LinkedBlockingQueue;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 90
    monitor-exit p0

    return-void
.end method
