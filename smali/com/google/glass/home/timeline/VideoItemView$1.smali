.class Lcom/google/glass/home/timeline/VideoItemView$1;
.super Ljava/lang/Object;
.source "VideoItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/timeline/VideoItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/VideoItemView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/VideoItemView;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/glass/home/timeline/VideoItemView$1;->this$0:Lcom/google/glass/home/timeline/VideoItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoItemView$1;->this$0:Lcom/google/glass/home/timeline/VideoItemView;

    #getter for: Lcom/google/glass/home/timeline/VideoItemView;->videoPlayer:Lcom/google/glass/home/timeline/VideoPlayer;
    invoke-static {v0}, Lcom/google/glass/home/timeline/VideoItemView;->access$000(Lcom/google/glass/home/timeline/VideoItemView;)Lcom/google/glass/home/timeline/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoItemView$1;->this$0:Lcom/google/glass/home/timeline/VideoItemView;

    #getter for: Lcom/google/glass/home/timeline/VideoItemView;->videoAttachment:Lcom/google/googlex/glass/common/proto/Attachment;
    invoke-static {v0}, Lcom/google/glass/home/timeline/VideoItemView;->access$100(Lcom/google/glass/home/timeline/VideoItemView;)Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-static {}, Lcom/google/glass/home/timeline/VideoItemView;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Playing video: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/timeline/VideoItemView$1;->this$0:Lcom/google/glass/home/timeline/VideoItemView;

    #getter for: Lcom/google/glass/home/timeline/VideoItemView;->videoAttachment:Lcom/google/googlex/glass/common/proto/Attachment;
    invoke-static {v2}, Lcom/google/glass/home/timeline/VideoItemView;->access$100(Lcom/google/glass/home/timeline/VideoItemView;)Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/google/glass/home/timeline/VideoItemView$1;->this$0:Lcom/google/glass/home/timeline/VideoItemView;

    #getter for: Lcom/google/glass/home/timeline/VideoItemView;->videoPlayer:Lcom/google/glass/home/timeline/VideoPlayer;
    invoke-static {v0}, Lcom/google/glass/home/timeline/VideoItemView;->access$000(Lcom/google/glass/home/timeline/VideoItemView;)Lcom/google/glass/home/timeline/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/VideoPlayer;->play()V

    .line 51
    :cond_0
    return-void
.end method
