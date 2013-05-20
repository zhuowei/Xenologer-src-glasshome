.class Lcom/google/glass/home/timeline/VideoPlayer$2$1;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/VideoPlayer$2;->serialDoInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/home/timeline/VideoPlayer$2;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/VideoPlayer$2;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/google/glass/home/timeline/VideoPlayer$2$1;->this$1:Lcom/google/glass/home/timeline/VideoPlayer$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 219
    invoke-static {}, Lcom/google/glass/home/timeline/VideoPlayer;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Playback stopped after completion."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer$2$1;->this$1:Lcom/google/glass/home/timeline/VideoPlayer$2;

    iget-object v0, v0, Lcom/google/glass/home/timeline/VideoPlayer$2;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    #getter for: Lcom/google/glass/home/timeline/VideoPlayer;->listener:Lcom/google/glass/home/timeline/VideoPlayerListener;
    invoke-static {v0}, Lcom/google/glass/home/timeline/VideoPlayer;->access$200(Lcom/google/glass/home/timeline/VideoPlayer;)Lcom/google/glass/home/timeline/VideoPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/home/timeline/VideoPlayerListener;->onVideoPlaybackStopped()V

    .line 221
    return-void
.end method
