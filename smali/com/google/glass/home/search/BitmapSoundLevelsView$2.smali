.class Lcom/google/glass/home/search/BitmapSoundLevelsView$2;
.super Ljava/util/TimerTask;
.source "BitmapSoundLevelsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/search/BitmapSoundLevelsView;->createTimerTask()Ljava/util/TimerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/search/BitmapSoundLevelsView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/search/BitmapSoundLevelsView;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/glass/home/search/BitmapSoundLevelsView$2;->this$0:Lcom/google/glass/home/search/BitmapSoundLevelsView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/glass/home/search/BitmapSoundLevelsView$2;->this$0:Lcom/google/glass/home/search/BitmapSoundLevelsView;

    invoke-virtual {v0}, Lcom/google/glass/home/search/BitmapSoundLevelsView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/glass/home/search/BitmapSoundLevelsView$2;->this$0:Lcom/google/glass/home/search/BitmapSoundLevelsView;

    #getter for: Lcom/google/glass/home/search/BitmapSoundLevelsView;->invalidateRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/glass/home/search/BitmapSoundLevelsView;->access$000(Lcom/google/glass/home/search/BitmapSoundLevelsView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method
