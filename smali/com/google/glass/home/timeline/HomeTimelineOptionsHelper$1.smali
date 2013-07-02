.class Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$1;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "HomeTimelineOptionsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->onReply(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;

.field final synthetic val$sent:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$1;->this$0:Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;

    iput-object p2, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$1;->val$sent:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$1;->val$sent:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper$1;->this$0:Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;

    #getter for: Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;
    invoke-static {v0}, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;->access$000(Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;)Lcom/google/glass/app/GlassActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 81
    :cond_0
    return-void
.end method
