.class Lcom/google/glass/home/timeline/VideoPlayer$3;
.super Lcom/google/glass/util/SerialAsyncTask;
.source "VideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/VideoPlayer;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/util/SerialAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/VideoPlayer;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/VideoPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/google/glass/home/timeline/VideoPlayer$3;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    invoke-direct {p0}, Lcom/google/glass/util/SerialAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs serialDoInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .parameter "params"

    .prologue
    .line 272
    const/4 v0, 0x0

    .line 274
    .local v0, shouldCallStopCallback:Z
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/VideoPlayer$3;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 290
    :goto_0
    return-object v1

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/google/glass/home/timeline/VideoPlayer$3;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    #getter for: Lcom/google/glass/home/timeline/VideoPlayer;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/google/glass/home/timeline/VideoPlayer;->access$700(Lcom/google/glass/home/timeline/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    invoke-static {}, Lcom/google/glass/home/timeline/VideoPlayer;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Stopping playback."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v1, p0, Lcom/google/glass/home/timeline/VideoPlayer$3;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    #getter for: Lcom/google/glass/home/timeline/VideoPlayer;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/google/glass/home/timeline/VideoPlayer;->access$700(Lcom/google/glass/home/timeline/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 281
    const/4 v0, 0x1

    .line 284
    :cond_1
    invoke-static {}, Lcom/google/glass/home/timeline/VideoPlayer;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Removing surface."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v1, p0, Lcom/google/glass/home/timeline/VideoPlayer$3;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    #getter for: Lcom/google/glass/home/timeline/VideoPlayer;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/google/glass/home/timeline/VideoPlayer;->access$700(Lcom/google/glass/home/timeline/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 287
    invoke-static {}, Lcom/google/glass/home/timeline/VideoPlayer;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Releasing player."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v1, p0, Lcom/google/glass/home/timeline/VideoPlayer$3;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    #getter for: Lcom/google/glass/home/timeline/VideoPlayer;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/google/glass/home/timeline/VideoPlayer;->access$700(Lcom/google/glass/home/timeline/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 290
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic serialDoInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 261
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/home/timeline/VideoPlayer$3;->serialDoInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected serialOnPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "shouldCallStopCallback"

    .prologue
    .line 295
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-static {}, Lcom/google/glass/home/timeline/VideoPlayer;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Playback stopped after interruption."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer$3;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    #getter for: Lcom/google/glass/home/timeline/VideoPlayer;->listener:Lcom/google/glass/home/timeline/VideoPlayerListener;
    invoke-static {v0}, Lcom/google/glass/home/timeline/VideoPlayer;->access$200(Lcom/google/glass/home/timeline/VideoPlayer;)Lcom/google/glass/home/timeline/VideoPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/home/timeline/VideoPlayerListener;->onVideoPlaybackStopped()V

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer$3;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    #calls: Lcom/google/glass/home/timeline/VideoPlayer;->releaseDestroyedSurfaces()V
    invoke-static {v0}, Lcom/google/glass/home/timeline/VideoPlayer;->access$1000(Lcom/google/glass/home/timeline/VideoPlayer;)V

    .line 303
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer$3;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    const/4 v1, 0x0

    #setter for: Lcom/google/glass/home/timeline/VideoPlayer;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/google/glass/home/timeline/VideoPlayer;->access$702(Lcom/google/glass/home/timeline/VideoPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 304
    return-void
.end method

.method protected bridge synthetic serialOnPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 261
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/home/timeline/VideoPlayer$3;->serialOnPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected serialOnPreExecute()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer$3;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    #getter for: Lcom/google/glass/home/timeline/VideoPlayer;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/google/glass/home/timeline/VideoPlayer;->access$700(Lcom/google/glass/home/timeline/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 265
    invoke-static {}, Lcom/google/glass/home/timeline/VideoPlayer;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Playback already stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/VideoPlayer$3;->cancel(Z)Z

    .line 268
    :cond_0
    return-void
.end method
