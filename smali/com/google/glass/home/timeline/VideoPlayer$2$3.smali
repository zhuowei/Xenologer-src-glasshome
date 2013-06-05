.class Lcom/google/glass/home/timeline/VideoPlayer$2$3;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 253
    iput-object p1, p0, Lcom/google/glass/home/timeline/VideoPlayer$2$3;->this$1:Lcom/google/glass/home/timeline/VideoPlayer$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 256
    invoke-static {}, Lcom/google/glass/home/timeline/VideoPlayer;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer$2$3;->this$1:Lcom/google/glass/home/timeline/VideoPlayer$2;

    iget-object v0, v0, Lcom/google/glass/home/timeline/VideoPlayer$2;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    #getter for: Lcom/google/glass/home/timeline/VideoPlayer;->listener:Lcom/google/glass/home/timeline/VideoPlayerListener;
    invoke-static {v0}, Lcom/google/glass/home/timeline/VideoPlayer;->access$200(Lcom/google/glass/home/timeline/VideoPlayer;)Lcom/google/glass/home/timeline/VideoPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/home/timeline/VideoPlayerListener;->onError()V

    .line 258
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer$2$3;->this$1:Lcom/google/glass/home/timeline/VideoPlayer$2;

    iget-object v0, v0, Lcom/google/glass/home/timeline/VideoPlayer$2;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    #getter for: Lcom/google/glass/home/timeline/VideoPlayer;->eventLogger:Lcom/google/glass/home/timeline/VideoEventLogger;
    invoke-static {v0}, Lcom/google/glass/home/timeline/VideoPlayer;->access$300(Lcom/google/glass/home/timeline/VideoPlayer;)Lcom/google/glass/home/timeline/VideoEventLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/VideoEventLogger;->onError()V

    .line 259
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer$2$3;->this$1:Lcom/google/glass/home/timeline/VideoPlayer$2;

    iget-object v0, v0, Lcom/google/glass/home/timeline/VideoPlayer$2;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    const/4 v1, 0x1

    #setter for: Lcom/google/glass/home/timeline/VideoPlayer;->isPlayerError:Z
    invoke-static {v0, v1}, Lcom/google/glass/home/timeline/VideoPlayer;->access$902(Lcom/google/glass/home/timeline/VideoPlayer;Z)Z

    .line 260
    const/4 v0, 0x0

    return v0
.end method
