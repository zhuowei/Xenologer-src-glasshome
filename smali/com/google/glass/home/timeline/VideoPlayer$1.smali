.class Lcom/google/glass/home/timeline/VideoPlayer$1;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/VideoPlayer;->play()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/VideoPlayer;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/VideoPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/glass/home/timeline/VideoPlayer$1;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 135
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 136
    invoke-static {}, Lcom/google/glass/home/timeline/VideoPlayer;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Surface texture available now."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer$1;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    #getter for: Lcom/google/glass/home/timeline/VideoPlayer;->shouldStartPlayback:Z
    invoke-static {v0}, Lcom/google/glass/home/timeline/VideoPlayer;->access$500(Lcom/google/glass/home/timeline/VideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer$1;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    #calls: Lcom/google/glass/home/timeline/VideoPlayer;->playInternal()V
    invoke-static {v0}, Lcom/google/glass/home/timeline/VideoPlayer;->access$600(Lcom/google/glass/home/timeline/VideoPlayer;)V

    .line 140
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer$1;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    const/4 v1, 0x0

    #setter for: Lcom/google/glass/home/timeline/VideoPlayer;->shouldStartPlayback:Z
    invoke-static {v0, v1}, Lcom/google/glass/home/timeline/VideoPlayer;->access$502(Lcom/google/glass/home/timeline/VideoPlayer;Z)Z

    .line 142
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3
    .parameter "surface"

    .prologue
    const/4 v2, 0x0

    .line 120
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 121
    invoke-static {}, Lcom/google/glass/home/timeline/VideoPlayer;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Surface destroyed."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer$1;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    #getter for: Lcom/google/glass/home/timeline/VideoPlayer;->destroyedSurfaces:Ljava/util/Set;
    invoke-static {v0}, Lcom/google/glass/home/timeline/VideoPlayer;->access$300(Lcom/google/glass/home/timeline/VideoPlayer;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer$1;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    #getter for: Lcom/google/glass/home/timeline/VideoPlayer;->videoView:Landroid/view/TextureView;
    invoke-static {v0}, Lcom/google/glass/home/timeline/VideoPlayer;->access$400(Lcom/google/glass/home/timeline/VideoPlayer;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setKeepScreenOn(Z)V

    .line 130
    return v2
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 116
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .parameter "surface"

    .prologue
    .line 104
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 106
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer$1;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    #getter for: Lcom/google/glass/home/timeline/VideoPlayer;->shouldCallStartCallback:Z
    invoke-static {v0}, Lcom/google/glass/home/timeline/VideoPlayer;->access$000(Lcom/google/glass/home/timeline/VideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer$1;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    const/4 v1, 0x0

    #setter for: Lcom/google/glass/home/timeline/VideoPlayer;->shouldCallStartCallback:Z
    invoke-static {v0, v1}, Lcom/google/glass/home/timeline/VideoPlayer;->access$002(Lcom/google/glass/home/timeline/VideoPlayer;Z)Z

    .line 109
    invoke-static {}, Lcom/google/glass/home/timeline/VideoPlayer;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Playback started."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer$1;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    #getter for: Lcom/google/glass/home/timeline/VideoPlayer;->listener:Lcom/google/glass/home/timeline/VideoPlayerListener;
    invoke-static {v0}, Lcom/google/glass/home/timeline/VideoPlayer;->access$200(Lcom/google/glass/home/timeline/VideoPlayer;)Lcom/google/glass/home/timeline/VideoPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/home/timeline/VideoPlayerListener;->onVideoPlaybackStarted()V

    .line 112
    :cond_0
    return-void
.end method
