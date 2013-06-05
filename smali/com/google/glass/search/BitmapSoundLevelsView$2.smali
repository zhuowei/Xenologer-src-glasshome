.class Lcom/google/glass/search/BitmapSoundLevelsView$2;
.super Ljava/util/TimerTask;
.source "BitmapSoundLevelsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/search/BitmapSoundLevelsView;->createTimerTask()Ljava/util/TimerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/search/BitmapSoundLevelsView;


# direct methods
.method constructor <init>(Lcom/google/glass/search/BitmapSoundLevelsView;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/glass/search/BitmapSoundLevelsView$2;->this$0:Lcom/google/glass/search/BitmapSoundLevelsView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView$2;->this$0:Lcom/google/glass/search/BitmapSoundLevelsView;

    invoke-virtual {v0}, Lcom/google/glass/search/BitmapSoundLevelsView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/glass/search/BitmapSoundLevelsView$2;->this$0:Lcom/google/glass/search/BitmapSoundLevelsView;

    #getter for: Lcom/google/glass/search/BitmapSoundLevelsView;->invalidateRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/glass/search/BitmapSoundLevelsView;->access$000(Lcom/google/glass/search/BitmapSoundLevelsView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method
