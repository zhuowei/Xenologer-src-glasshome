.class Lcom/google/glass/home/timeline/active/GuardPhraseView$5;
.super Ljava/lang/Object;
.source "GuardPhraseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/active/GuardPhraseView;->checkForErrors()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/active/GuardPhraseView;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$5;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 163
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$5;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    #getter for: Lcom/google/glass/home/timeline/active/GuardPhraseView;->batteryHelper:Lcom/google/glass/util/BatteryHelper;
    invoke-static {v1}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->access$400(Lcom/google/glass/home/timeline/active/GuardPhraseView;)Lcom/google/glass/util/BatteryHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/util/BatteryHelper;->getCurrentState()Lcom/google/glass/util/BatteryHelper$BatteryState;

    move-result-object v0

    .line 164
    .local v0, currentState:Lcom/google/glass/util/BatteryHelper$BatteryState;
    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/glass/home/timeline/active/GuardPhraseView$5$1;

    invoke-direct {v2, p0, v0}, Lcom/google/glass/home/timeline/active/GuardPhraseView$5$1;-><init>(Lcom/google/glass/home/timeline/active/GuardPhraseView$5;Lcom/google/glass/util/BatteryHelper$BatteryState;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 215
    return-void
.end method
