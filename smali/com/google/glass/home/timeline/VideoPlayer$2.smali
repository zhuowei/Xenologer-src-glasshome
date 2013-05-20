.class Lcom/google/glass/home/timeline/VideoPlayer$2;
.super Lcom/google/glass/util/SerialAsyncTask;
.source "VideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/VideoPlayer;->playInternal()V
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
        "Ljava/lang/Void;",
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
    .line 165
    iput-object p1, p0, Lcom/google/glass/home/timeline/VideoPlayer$2;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    invoke-direct {p0}, Lcom/google/glass/util/SerialAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic serialDoInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/home/timeline/VideoPlayer$2;->serialDoInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs serialDoInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 192
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/VideoPlayer$2;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-object v6

    .line 197
    :cond_1
    iget-object v3, p0, Lcom/google/glass/home/timeline/VideoPlayer$2;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    #getter for: Lcom/google/glass/home/timeline/VideoPlayer;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;
    invoke-static {v3}, Lcom/google/glass/home/timeline/VideoPlayer;->access$900(Lcom/google/glass/home/timeline/VideoPlayer;)Lcom/google/glass/util/CachedBitmapFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/home/timeline/VideoPlayer$2;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    #getter for: Lcom/google/glass/home/timeline/VideoPlayer;->videoAttachment:Lcom/google/googlex/glass/common/proto/Attachment;
    invoke-static {v4}, Lcom/google/glass/home/timeline/VideoPlayer;->access$800(Lcom/google/glass/home/timeline/VideoPlayer;)Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Lcom/google/glass/util/CachedBitmapFactory;->getCachedAttachmentPath(Lcom/google/googlex/glass/common/proto/Attachment;Z)Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, videoPath:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/glass/home/timeline/VideoPlayer$2;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    #getter for: Lcom/google/glass/home/timeline/VideoPlayer;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;
    invoke-static {v3}, Lcom/google/glass/home/timeline/VideoPlayer;->access$900(Lcom/google/glass/home/timeline/VideoPlayer;)Lcom/google/glass/util/CachedBitmapFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/home/timeline/VideoPlayer$2;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    #getter for: Lcom/google/glass/home/timeline/VideoPlayer;->videoAttachment:Lcom/google/googlex/glass/common/proto/Attachment;
    invoke-static {v4}, Lcom/google/glass/home/timeline/VideoPlayer;->access$800(Lcom/google/glass/home/timeline/VideoPlayer;)Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/glass/util/CachedBitmapFactory;->cacheContainsAttachment(Lcom/google/googlex/glass/common/proto/Attachment;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 202
    :try_start_0
    const-string v3, "video/vnd.google-glass.stream-url"

    iget-object v4, p0, Lcom/google/glass/home/timeline/VideoPlayer$2;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    #getter for: Lcom/google/glass/home/timeline/VideoPlayer;->videoAttachment:Lcom/google/googlex/glass/common/proto/Attachment;
    invoke-static {v4}, Lcom/google/glass/home/timeline/VideoPlayer;->access$800(Lcom/google/glass/home/timeline/VideoPlayer;)Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 203
    invoke-static {v2}, Lcom/google/glass/home/timeline/VideoPlayer;->readVideoStreamUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, videoDataSource:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 211
    :goto_1
    invoke-static {}, Lcom/google/glass/home/timeline/VideoPlayer;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting video source to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v3, p0, Lcom/google/glass/home/timeline/VideoPlayer$2;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    #getter for: Lcom/google/glass/home/timeline/VideoPlayer;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/google/glass/home/timeline/VideoPlayer;->access$700(Lcom/google/glass/home/timeline/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 214
    iget-object v3, p0, Lcom/google/glass/home/timeline/VideoPlayer$2;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    #getter for: Lcom/google/glass/home/timeline/VideoPlayer;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/google/glass/home/timeline/VideoPlayer;->access$700(Lcom/google/glass/home/timeline/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 215
    iget-object v3, p0, Lcom/google/glass/home/timeline/VideoPlayer$2;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    #getter for: Lcom/google/glass/home/timeline/VideoPlayer;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/google/glass/home/timeline/VideoPlayer;->access$700(Lcom/google/glass/home/timeline/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 216
    iget-object v3, p0, Lcom/google/glass/home/timeline/VideoPlayer$2;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    #getter for: Lcom/google/glass/home/timeline/VideoPlayer;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/google/glass/home/timeline/VideoPlayer;->access$700(Lcom/google/glass/home/timeline/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    new-instance v4, Lcom/google/glass/home/timeline/VideoPlayer$2$1;

    invoke-direct {v4, p0}, Lcom/google/glass/home/timeline/VideoPlayer$2$1;-><init>(Lcom/google/glass/home/timeline/VideoPlayer$2;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 224
    invoke-static {}, Lcom/google/glass/home/timeline/VideoPlayer;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Preparing player."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v3, p0, Lcom/google/glass/home/timeline/VideoPlayer$2;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    #getter for: Lcom/google/glass/home/timeline/VideoPlayer;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/google/glass/home/timeline/VideoPlayer;->access$700(Lcom/google/glass/home/timeline/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 227
    invoke-static {}, Lcom/google/glass/home/timeline/VideoPlayer;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Starting playback."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v3, p0, Lcom/google/glass/home/timeline/VideoPlayer$2;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    #getter for: Lcom/google/glass/home/timeline/VideoPlayer;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/google/glass/home/timeline/VideoPlayer;->access$700(Lcom/google/glass/home/timeline/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 229
    .end local v1           #videoDataSource:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 230
    .local v0, e:Ljava/io/IOException;
    invoke-static {}, Lcom/google/glass/home/timeline/VideoPlayer;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed to start playback."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 208
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    move-object v1, v2

    .restart local v1       #videoDataSource:Ljava/lang/String;
    goto :goto_1

    .line 233
    .end local v1           #videoDataSource:Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/google/glass/home/timeline/VideoPlayer;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load video attachment: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/home/timeline/VideoPlayer$2;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    #getter for: Lcom/google/glass/home/timeline/VideoPlayer;->videoAttachment:Lcom/google/googlex/glass/common/proto/Attachment;
    invoke-static {v5}, Lcom/google/glass/home/timeline/VideoPlayer;->access$800(Lcom/google/glass/home/timeline/VideoPlayer;)Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/Attachment;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected serialOnPreExecute()V
    .locals 3

    .prologue
    .line 168
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 171
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer$2;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    #getter for: Lcom/google/glass/home/timeline/VideoPlayer;->videoView:Landroid/view/TextureView;
    invoke-static {v0}, Lcom/google/glass/home/timeline/VideoPlayer;->access$400(Lcom/google/glass/home/timeline/VideoPlayer;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/VideoPlayer$2;->cancel(Z)Z

    .line 188
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer$2;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    #getter for: Lcom/google/glass/home/timeline/VideoPlayer;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/google/glass/home/timeline/VideoPlayer;->access$700(Lcom/google/glass/home/timeline/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/util/Assert;->assertNull(Ljava/lang/Object;)V

    .line 180
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer$2;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    #setter for: Lcom/google/glass/home/timeline/VideoPlayer;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/google/glass/home/timeline/VideoPlayer;->access$702(Lcom/google/glass/home/timeline/VideoPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 183
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer$2;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    const/4 v1, 0x1

    #setter for: Lcom/google/glass/home/timeline/VideoPlayer;->shouldCallStartCallback:Z
    invoke-static {v0, v1}, Lcom/google/glass/home/timeline/VideoPlayer;->access$002(Lcom/google/glass/home/timeline/VideoPlayer;Z)Z

    .line 186
    invoke-static {}, Lcom/google/glass/home/timeline/VideoPlayer;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Adding surface."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoPlayer$2;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    #getter for: Lcom/google/glass/home/timeline/VideoPlayer;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/google/glass/home/timeline/VideoPlayer;->access$700(Lcom/google/glass/home/timeline/VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    new-instance v1, Landroid/view/Surface;

    iget-object v2, p0, Lcom/google/glass/home/timeline/VideoPlayer$2;->this$0:Lcom/google/glass/home/timeline/VideoPlayer;

    #getter for: Lcom/google/glass/home/timeline/VideoPlayer;->videoView:Landroid/view/TextureView;
    invoke-static {v2}, Lcom/google/glass/home/timeline/VideoPlayer;->access$400(Lcom/google/glass/home/timeline/VideoPlayer;)Landroid/view/TextureView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0
.end method
