.class Lcom/google/glass/home/timeline/VideoPlayer$2$2;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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
    .line 242
    iput-object p1, p0, Lcom/google/glass/home/timeline/VideoPlayer$2$2;->this$1:Lcom/google/glass/home/timeline/VideoPlayer$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v2, 0x0

    .line 245
    const/16 v0, 0x2bd

    if-ne p2, v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer$2$2;->this$1:Lcom/google/glass/home/timeline/VideoPlayer$2;

    iget-object v0, v0, Lcom/google/glass/home/timeline/VideoPlayer$2;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    #getter for: Lcom/google/glass/home/timeline/VideoPlayer;->listener:Lcom/google/glass/home/timeline/VideoPlayerListener;
    invoke-static {v0}, Lcom/google/glass/home/timeline/VideoPlayer;->access$200(Lcom/google/glass/home/timeline/VideoPlayer;)Lcom/google/glass/home/timeline/VideoPlayerListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/glass/home/timeline/VideoPlayerListener;->onBufferingStateChanged(Z)V

    .line 247
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer$2$2;->this$1:Lcom/google/glass/home/timeline/VideoPlayer$2;

    iget-object v0, v0, Lcom/google/glass/home/timeline/VideoPlayer$2;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    #getter for: Lcom/google/glass/home/timeline/VideoPlayer;->eventLogger:Lcom/google/glass/home/timeline/VideoEventLogger;
    invoke-static {v0}, Lcom/google/glass/home/timeline/VideoPlayer;->access$300(Lcom/google/glass/home/timeline/VideoPlayer;)Lcom/google/glass/home/timeline/VideoEventLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/VideoEventLogger;->onRebuffering()V

    .line 251
    :cond_0
    :goto_0
    return v2

    .line 248
    :cond_1
    const/16 v0, 0x2be

    if-ne p2, v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer$2$2;->this$1:Lcom/google/glass/home/timeline/VideoPlayer$2;

    iget-object v0, v0, Lcom/google/glass/home/timeline/VideoPlayer$2;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    #getter for: Lcom/google/glass/home/timeline/VideoPlayer;->listener:Lcom/google/glass/home/timeline/VideoPlayerListener;
    invoke-static {v0}, Lcom/google/glass/home/timeline/VideoPlayer;->access$200(Lcom/google/glass/home/timeline/VideoPlayer;)Lcom/google/glass/home/timeline/VideoPlayerListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/google/glass/home/timeline/VideoPlayerListener;->onBufferingStateChanged(Z)V

    goto :goto_0
.end method
